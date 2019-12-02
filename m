Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA5210F2C8
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YmBb9P5AvWCwy0OCtX3zHCvo13nO/YhceenyBKqPWQ=; b=CK+TAIIb9SJ+at
	sJZtGlo3GhGB4ObpH+z4S047LIvMHBLVFbu/HHerx/go+SALm/Ree7CpWcWbTNeNn+qChGjm/kSxL
	uSvoD/bArGzZA9PNLa33YdT2as4cDM5+uEnBLBkiAv/6KZl3hrx7G5CJISFb61+PAw0ywOvFTHrDH
	h4MoF74x1364xqAJ72dO6OhxAADuQkS+oX0x99EF9RzP9BQrUxqXU1QVoIKeH4z/ayezFmOhAunCX
	hT5iYHGbOQfj85Tva/HM1P3TlK+u3AlpHfAx0b7o5N+9mQ+9HJk5IpqwVEsm+DMQVshZP4Oz2yXtr
	Lw6ffZ7y3TBS5UNnDM9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibu4T-0006No-JX; Mon, 02 Dec 2019 22:21:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibu4D-0006JC-KV
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:21:18 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04825207DD;
 Mon,  2 Dec 2019 22:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325277;
 bh=a8FkatPi+aYRRFcf7HJekf+9PFmFkdBwz8iXiI5cSOc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bSFJgDP54R8vJJ9SNCcWFhmQAGnaNy3Au9lrUlUIQDkYL+mHvurcaBp5BhHS8PjEc
 PP4b5hMMPzCD9WNpt4ETvZg9tQ0icFKwrk9T0AsYTIBxXqSJqIDoCzfvMwCf1fTfqG
 r5+19LWj9EkaNvg8J3rNtYZXaTEb9QKTzsUlNjM0=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv2 1/2] PCI/MSI: Export __pci_msix_desc_mask_irq
Date: Tue,  3 Dec 2019 07:20:57 +0900
Message-Id: <20191202222058.2096-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191202222058.2096-1-kbusch@kernel.org>
References: <20191202222058.2096-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_142117_690169_B8BF407F 
X-CRM114-Status: UNSURE (   8.89  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, ming.lei@redhat.com,
 helgaas@kernel.org, Keith Busch <kbusch@kernel.org>, tglx@linutronix.de,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Export the fast msix mask for drivers to use when the read-back is
undesired.

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
