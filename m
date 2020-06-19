Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A7A1FFF4A
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 02:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SDDpUFyqM8bvLopKpmJMRCKS3fFb7qxh1Xn7oG+TKoc=; b=RvHE317BDwDLZX
	2IKItuvyckBEa0bG5zLmaIOyfdqee/Qkw5zZRtGecTwB42cdVTxeu2ZqCAbQmO0kspjWndNK1uO52
	40psU+DZHqpcIaCOwvckXRZBcCoWXurIyWmuKYSe9W+ci/hg4vDE6JD7FZ+YaafPhqbk4qZNCjI3b
	DkNKhp+8A1iwaUdodM6G/378LiHCj/wgSjTjsS0ckgUr45ImYq2dhniQNTQZNYW2gfcsh5ULhPHPG
	t5StjrcYK0ds8h0+np9YCnmRE0IaAGU8HtSo1VsZqL3KL2dW19fB5/pUOX0X1I3vnjeaswOr5TtsP
	bMO1dnHS8XwjjV3ufzuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4vu-000357-8g; Fri, 19 Jun 2020 00:31:02 +0000
Received: from [2601:647:4802:9070:1cb6:2f11:eeb8:2d3d]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4vJ-0002b7-Vo; Fri, 19 Jun 2020 00:30:26 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 0/3] Some datapath optimizations for nvme-tcp host driver
Date: Thu, 18 Jun 2020 17:30:21 -0700
Message-Id: <20200619003024.153517-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey, some datapath micro-optimizations for nvme-tcp host driver.

Optimizations are:
1. make requests list for send operations a lockless list, and have the
   I/O thread pull from it to a local send_list in batches
2. Implement request plugging information
3. optimize msg flags to signal the stack more is coming if
   some more requests are expected to be sent soon.

A simple benchmark reveals a nice win in iops in high qd (32) with
batching applied (8 requests per batch). Still QD=1 latency is not
impacted.

Tested on ConnectX-4 device (LRO disabled).
CPU: Intel(R) Xeon(R) Gold 5120 CPU @ 2.20GHz

Baseline:
========
QDepth/Batch    | IOPs [k] 
--------------------------
1/1             | 43.2
32/8            | 106

with patchset:
=============
QDepth/Batch    | IOPs [k]  
--------------------------
1/1             | 43.3
32/8            | 165

Do note that in an alternative setup (different NIC, faster CPU) the
tests did not show a noticable difference, but overall the optimizations
do make the datapath somewhat more efficient.

Sagi Grimberg (3):
  nvme-tcp: have queue prod/cons send list become a llist
  nvme-tcp: leverage request plugging
  nvme-tcp: optimize network stack with setting msg flags according to
    batch size

 drivers/nvme/host/tcp.c | 78 +++++++++++++++++++++++++++++++----------
 1 file changed, 60 insertions(+), 18 deletions(-)

-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
