Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5875B10B4EB
	for <lists+linux-nvme@lfdr.de>; Wed, 27 Nov 2019 18:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDNz9k74CqwLrLR8AUF6DqpJfFQLi4OO1nCmxECQrUM=; b=O8Edj1IdFy6RxE
	WlprkdL163fliZhp91sb115dggAQyZdTt80RDiTPETSVXH3aS4QkP31XtIpxSov01AXD/WIh0fQhY
	XGsirSDkxw4hotj6XnYxfyFSLTDCQFQfCfz2+PF95QiHvCxkCHUZcJzsCU8/xQLow1QAj71BCdBww
	zW7TNigkEcNt9bEd/dOXPRCp9KK5TSQieG8MSg9HamoE1Z9nUAttvK5fbtQ8EYDkAAl0gtB5ihcqz
	N9aDMWOim3ri5eOPK07jGZI/UYSZ2Ks0TukUfa5I6CAj7WAo1JoNKsf8pZDNCbJ8Sc0Vvu4rfC4b+
	QlSTjHG+DzsNtNrVpUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1aY-0006pf-Lq; Wed, 27 Nov 2019 17:58:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1aS-0006oS-Sx
 for linux-nvme@lists.infradead.org; Wed, 27 Nov 2019 17:58:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EC6520862;
 Wed, 27 Nov 2019 17:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574877527;
 bh=t6krqhTDOQbA3ccYV42rHwI8py0lNr+pInJfmGl6yLY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qQnMMN0/X1NzxPHgboVGfR/19OokLsHFgkBg7co3L9l2FBZfZm3tCKTYS87K+1/2+
 Z6ZQ7tAPpbCwv9XFCGFS1gCaWPiRi9gnco/zuKk8VvXNE8R53gAbDu3Bps7edP8x3J
 CLGph2ZEfbiEIMDDXWk2iP8A/ipOWI/mFRYdX71Q=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 1/4] PCI/MSI: Export __pci_msix_desc_mask_irq
Date: Thu, 28 Nov 2019 02:58:21 +0900
Message-Id: <20191127175824.1929-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191127175824.1929-1-kbusch@kernel.org>
References: <20191127175824.1929-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_095848_957258_CF13A15E 
X-CRM114-Status: UNSURE (   8.38  )
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

Export the fast msix mask so that drivers may use these in timing
sensitive contexts.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/pci/msi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 0884bedcfc7a..9e866929f4b0 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -225,6 +225,7 @@ u32 __pci_msix_desc_mask_irq(struct msi_desc *desc, u32 flag)
 
 	return mask_bits;
 }
+EXPORT_SYMBOL_GPL(__pci_msix_desc_mask_irq);
 
 static void msix_mask_irq(struct msi_desc *desc, u32 flag)
 {
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
