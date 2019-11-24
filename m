Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCBD108434
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 17:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/WiaLF8XQMmoZ4zlbSWGjO3zIlQ4KkMH4dICeuAu0rU=; b=AiT
	Nz7u6QETo+CwpoidG/KFu1YUzKN3ZIUFVYazHKrqJJw4CScLDWjoHUJiZqPUxF9EZsgDBx8LHqsLP
	BrEQZFCAuXWzm9sbGbekk4rBxJSMSomuK36t5VbOCXSy0Hepp3nLdPcAG2DSmqJ/cnK45qpWYeJko
	U6x4pL7QhRGB6/CGqDOkD/TsUJzecvNYgdQOZbcJ7yxWqbFUKnZpHjAAIcSTYquebrL42m4Kb9m0i
	TEeJUSXZRymETByjMBAKDNSJVE+bcOnsnkTNoIMeLysFRAinX54FEE/xVHIjmJp+083OGnYS0f1nv
	LkUmhMigha4z+6I2Z6dVWdpyh1vgLhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYuuh-0005qg-Sj; Sun, 24 Nov 2019 16:39:07 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYuuc-0005pI-PD
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 16:39:04 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Nov 2019 18:38:48 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xAOGcm6I029897;
 Sun, 24 Nov 2019 18:38:48 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>,
 James Smart <jsmart2021@gmail.com>, Keith Busch <kbusch@kernel.org>
Subject: [PATCH 0/3] nvme: Avoid preallocating big SGL for data
Date: Sun, 24 Nov 2019 18:38:29 +0200
Message-Id: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_083903_222318_1C586C05 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When nvme allocates a tagset it preallocates a big buffer for the IO SGL
based on SG_CHUNK_SIZE.

Modern DMA engines are often capable of dealing with very big segments so
the SG_CHUNK_SIZE is often too big. SG_CHUNK_SIZE results in a static 4KB
SGL allocation per command.

If a controller has lots of deep queues, preallocation for the sg list can
consume substantial amounts of memory. Switch to runtime allocation for SGL
for lists longer than 2 entries. This is the approach used by NVMe PCI so
it should be reasonable for NVMeOF as well. Runtime SGL allocation has
always been the case for the legacy I/O path so this is nothing new.

The preallocated small SGL depends on SG_CHAIN so if the ARCH doesn't
support SG_CHAIN, use only runtime allocation for the SGL.

Israel Rukshin (3):
  nvme-rdma: Avoid preallocating big SGL for data
  nvme-fc: Avoid preallocating big SGL for data
  nvmet-loop: Avoid preallocating big SGL for data

 drivers/nvme/host/fc.c     |  8 ++++----
 drivers/nvme/host/nvme.h   |  6 ++++++
 drivers/nvme/host/rdma.c   | 10 +++++-----
 drivers/nvme/target/loop.c |  8 ++++----
 4 files changed, 19 insertions(+), 13 deletions(-)

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
