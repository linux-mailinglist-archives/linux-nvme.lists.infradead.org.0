Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ABA11733C
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Dec 2019 18:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uieGNJUgkuHXdHe1/8MiLUepcZ4axZdmue6PZIxVyAY=; b=rdASAdoOez7ik0
	Jn3JG+Mwq9Ysj+o6gv5Cahbk6+B1xNCSiwYY/x1mQEtMq0S8yFwKBfp8gIuk9+ELVv+DEdWVlGwxn
	a6MsSFSWxcyaPY3I79si1AzYyaukLK3hcd6Myxm6SadwtONUVNEx3khX5eIGLwvvioLVk5DjKVF2R
	4IWmDxaprG/1XaLA75MyCHAvfcxDpm22MYIO4ODUCnNKp/IdC1Y0VPkAXaq4y9o0hsVeL8wI3Kmpd
	j43tPWF+v62Eg5CweoXfyHb/MFbtOZ5vrRH3VLl5Dr3geg9GHUTTSGsJjrXvl8+NMqlL3d5oegTFd
	5jdZS6b8Q/GYn0L2bsFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNH3-0005lt-NU; Mon, 09 Dec 2019 17:56:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNGy-0005ka-Lq
 for linux-nvme@lists.infradead.org; Mon, 09 Dec 2019 17:56:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76B69214D8;
 Mon,  9 Dec 2019 17:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914200;
 bh=z5ftB3YlGeWTvRYPfD2c/zoFeDOo05RuTn7tOuFXNd0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0LUeJLzkEkcG9IueYtgv9VIX85431Q+RGr+E601NIi5QnDV1R2pTRRLXg+ckKlDfC
 QWNUVHDwXMK0X30NKMtKgQeYLydk7X9SYuzAX8IL0oW503hvST2MqVw/tu3UZMjbDq
 IIZ+5WMsrinfLZ3DLKkr8xdg2m/9IaXdZAAPxAJA=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
Date: Tue, 10 Dec 2019 02:56:20 +0900
Message-Id: <20191209175622.1964-3-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209175622.1964-1-kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095640_782226_8ADB254B 
X-CRM114-Status: UNSURE (   8.74  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Keith Busch <kbusch@kernel.org>, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The context switch to wake the threaded interrupt handler has enough
overhead to harm latency for low queue depth workloads. Complete one cycle
through the completion queue in the primary handler to ensure threaded
interrupts have no disadvantage compared to not using threaded interrupts. Wake
the thread only if more completions remain after processing the queue
once since that indicates a higher queue depth workload that may trigger
frequent interrupts which would be better completed in the handler thread
with device interrupts disabled.

Completing requests from two different contexts is safe since nvme driver
disables entry to the primary handler when it returns IRQ_WAKE_THREAD.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index a0138e3ca0b9..e415fadf7331 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1055,6 +1055,10 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
 	if (!nvme_cqe_pending(nvmeq))
 		return IRQ_NONE;
 
+	nvme_irq(irq, data);
+	if (!nvme_cqe_pending(nvmeq))
+		return IRQ_HANDLED;
+
 	if (!to_pci_dev(nvmeq->dev->dev)->msix_enabled)
 		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMS);
 
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
