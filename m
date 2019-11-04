Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032AEEB69
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 22:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mjynpWN9tV5LM35O4AXxUqxIDlkysluJy9MvKaDYKq8=; b=CObMEG9uVEwux5
	yzASLrfAxGZdLLH6ZT5/YsnnmPO5JOvdr4PoDaB+90O+kJkfHdF/iyCZsjbgSoZtIFPzjtsu6pnOl
	qdwPl7M3nt0pWj+GnOrxjbOa0bge7hQp9fevBbxEpONx4+T3VI9MbadeohT53n+55Dxp3yvx3zN0s
	nbZP8AT3+H7yhyCQ59BA53QuL1mO/laNxPY1oDfEH4mi0LMN9OzYZmBEDb1e64LWlkBz6hViqDXp4
	FVygAZMYdyHN0ybfCyyO4YDo/g/XeK+xDmKIHaNspqTQAUgK8Ep0eTtt19LZwKv7SDxHtel0NOpXN
	vW7EVKMmnolWFGDXJKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkCO-0002mN-Tk; Mon, 04 Nov 2019 21:47:44 +0000
Received: from hodge.hasenleithner.at ([88.99.36.100])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkCI-0002lU-VG
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 21:47:40 +0000
Received: from [IPv6:2001:470:584d::10] (unknown [IPv6:2001:470:584d::10])
 by hodge.hasenleithner.at (Postfix) with ESMTPSA id 61108760021
 for <linux-nvme@lists.infradead.org>; Mon,  4 Nov 2019 22:47:35 +0100 (CET)
To: linux-nvme@lists.infradead.org
From: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: [RFC PATCH] Workaround for discard on non-conformant nvme devices
Message-ID: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
Date: Mon, 4 Nov 2019 22:47:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_134739_156654_AD685F51 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

As documented in https://bugzilla.kernel.org/show_bug.cgi?id=202665 
there are lots of Linux nvme users which get IO-MMU related errors when 
performing discard on nvme. So far analysis suggests that the errors are 
caused by non-conformat nvme devices which are reading beyond the end of 
the buffer containing the segments to be discarded.

Until now two different variants of this behavior have been observed: 
The controller found on an Intel 660p always reads a multiple of 512 
bytes. If the last chunk exceeds a page it continues with the subsequent 
page. For a Corsair MP510 the situation is even worse: The controller 
always reads a full page (4096) bytes. Then when the address is not 
aligned to 4096 it will continue reading at the address given in PRP2 
(which is most of the time 0).

This patch makes the nvme_setup_discard function always request a 
multiple of a page size (4096) from the kernel for storing the segment 
array. Since this makes the buffer always page-aligned the device 
reading beyond end of a page is avoided.

Patch is based on linux-5.3.7 tarball. Note: patch itself is not tested 
yet; for my tests some time ago I just hard-coded 256 segments. For now 
this email is meant for informing the nvme kernel developers about the 
topic.

Signed-off-by: Eduard Hasenleithner <eduard@hasenleithner.at>

--- drivers/nvme/host/core.c.orig	2019-11-04 21:53:20.758837001 +0100
+++ drivers/nvme/host/core.c	2019-11-04 22:05:54.409415849 +0100
@@ -561,9 +561,9 @@ static blk_status_t nvme_setup_discard(s
  	unsigned short segments = blk_rq_nr_discard_segments(req), n = 0;
  	struct nvme_dsm_range *range;
  	struct bio *bio;
+	size_t aligned_size = round_up(sizeof *range * segments, 4096);

-	range = kmalloc_array(segments, sizeof(*range),
-				GFP_ATOMIC | __GFP_NOWARN);
+	range = kmalloc(aligned_size, GFP_ATOMIC | __GFP_NOWARN);
  	if (!range) {
  		/*
  		 * If we fail allocation our range, fallback to the controller


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
