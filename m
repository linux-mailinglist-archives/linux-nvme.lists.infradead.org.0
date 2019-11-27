Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C486210B4EC
	for <lists+linux-nvme@lfdr.de>; Wed, 27 Nov 2019 18:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KiPTBcZivJRHacqxk0Py83sqnKme5nI4CbHcjkUeK9k=; b=YG97093UkJ3Xlo
	yR1s2V1ZOpmkBBmJybibkgVuu8hzIApV1hUkC2xDA7Ewbmz/8lC/ESlWQhlAfmoo9rijI1p10RO6c
	KTNweJtiJhcjiVunvrFOx5aLCr8ubvILR3spZzI1aBQGWTA9jhGn5xGbD7mxsqLxWhZmdkdUddoiB
	NGt/vd3Oy0tSySo3JuAi1y1EiNsOVwbz3ZC8UFSN1TGpibansNRl0h7C2ltZvbBwY5jknlGR/tkWr
	aRW+FWP7OijHuRG2/6EnvdHiakNxhBICizjrv8DCgh8yT8ZJGz/K8kGgAq7AJbgNQh2YZj2TKTAzb
	jeSS7Zq30RSkGZvHFZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1an-0006tq-71; Wed, 27 Nov 2019 17:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1aS-0006oR-W2
 for linux-nvme@lists.infradead.org; Wed, 27 Nov 2019 17:58:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21BBE207DD;
 Wed, 27 Nov 2019 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574877526;
 bh=5bBUuWt8k+tMDxAalgLNBcBfSHCeWrE9R8ITZ6kZFjs=;
 h=From:To:Cc:Subject:Date:From;
 b=maA1IQh3n3TrO6+pTQCHFyfqZs8gp+B6dAUVW/bylcS8eC7FZNpBBEUvQGOxYeDFf
 A9rWxKvTbh1S65HY98/w6n4+er0lNdrRppZmh4DYZJmtSQfgxvUGmLZvhWNYTxht39
 lyXtX9KI1k8H9YIZVO16mA+6x09SOz8Nu4uG8vXI=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Date: Thu, 28 Nov 2019 02:58:20 +0900
Message-Id: <20191127175824.1929-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_095849_055675_E240C57C 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, bigeasy@linutronix.de, helgaas@kernel.org,
 ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Threaded interrupts allow the device to continue sending interrupt
messages while the driver is handling the previous notification. This
can cause a significant amount of CPU cycles unnecessarily spent in hard
irq context, and potentially triggers spurious interrupt detection to
disable the nvme interrupt.

Use the appropriate masking for the interrupt type based on the NVMe
specification recommendations (see NVMe 1.4 section 7.5.1.1 for more
information).

The first patch just exports the fast MSIx masking so that low-depth
workloads don't suffer so much when using threaded interrupts.

The next two use the interrupt masking on the device for the different
types of interrupts.

The last patch is a performance improvement for high-depth workloads.

Keith Busch (4):
  PCI/MSI: Export __pci_msix_desc_mask_irq
  nvme/pci: Mask legacy and MSI in threaded handler
  nvme/pci: Mask MSIx interrupts for threaded handling
  nvme/pci: Spin threaded interrupt completions

 drivers/nvme/host/pci.c | 50 +++++++++++++++++++++++++++++++++++++++--
 drivers/pci/msi.c       |  1 +
 2 files changed, 49 insertions(+), 2 deletions(-)

-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
