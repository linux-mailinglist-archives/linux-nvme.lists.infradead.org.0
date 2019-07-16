Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99BE6A024
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 03:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GRRfLMGUnzmD4fhykDMCl9LZBIX4ddieyDodW5FWwh0=; b=nd0MJ/I+X6CeEN
	1UsUs6J0TsFG4NAeZn27VE8rQ38MicJ57OBxkF3o3PArB+DQtI6+VcnBjKFWu3kfpKl/rRr17Rghr
	QVXzdre1KTMnZ2+YHOJfNcMvoD3oivrFvs/qfLbG+7xBZU1cTO0y0FNDvqLy2nZFhTOQq2Veb/rXR
	dHdRG6aV9Sim+LjpVZEMoiYRssYdTWaXU28fzfyZmpylF/rpxCwAdsUb1NrOGZDRivM+j+AgzGljs
	lOCTw62IKOXMXOvVso8n/JMxbEldfTwtzbc57kUm/n4M6eScuNAPEUCfrJ4R1X0vifkIKMjtVHBP6
	+JHlMkoupWK6MrXfbXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBtr-0005yy-Vl; Tue, 16 Jul 2019 01:05:00 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBtg-0005yJ-Mh
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 01:04:50 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6G14aTI002191;
 Mon, 15 Jul 2019 20:04:37 -0500
Message-ID: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
Subject: nvme-5.3 ssd performance regression
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Date: Tue, 16 Jul 2019 11:04:36 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_180448_893147_A07DBE43 
X-CRM114-Status: UNSURE (   4.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi !

Something I noticed while testing those patches for the Apple drives.

With 5.2.0 (and those patches):

[benh@mini ~]$ sudo hdparm -tf /dev/nvme0n1

/dev/nvme0n1:
 HDIO_DRIVE_CMD(identify) failed: Inappropriate ioctl for device
 Timing buffered disk reads: 5960 MB in  3.00 seconds = 1986.22 MB/sec

(The numbers are reasonably stable accross multiple runs)

With nvme-5.3 (and those patches & the ctrl->opts NULL fix)

[benh@mini linux]$ sudo hdparm -tf /dev/nvme0n1

/dev/nvme0n1:
 HDIO_DRIVE_CMD(identify) failed: Inappropriate ioctl for device
 Timing buffered disk reads: 4520 MB in  3.00 seconds = 1506.63 MB/sec
[benh@mini linux]$ sudo hdparm -tf /dev/nvme0n1

Here too, the numbers are quite stable during a given boot but
interestingly they seem to change from boot to boot, I also observed
1700 MB/s for example. It's a rather major regression.

The .config is identical in both cases (an x86_64-defconfig with a
small tweak or two, I removed more drivers mostly and made nvme a
module)

In both cases the io scheduler is mq-deadline. The device has a single
IO queue.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
