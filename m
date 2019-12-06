Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DDC11563F
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 18:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqkQFzMYoqQmOeYv7SFvqTTb4cOXEURptp4pZ2xqDlo=; b=PF8Qh9ISWwdOzl
	8nukpbQrAB7Adty3kdRflrmePDZFL+ARDL9O/45PeykwVEPuW7Fq/X50vo2mXZctEiYOpu7CX2d3K
	xDOuhSkpCpxgsQQgkPVn8GGelGwGjdDHIpDBXi8VR+xt8YHjqaNA/UuJ7ZBnEBc7gbP9CPs/Qo/lP
	LfiTN7Ui8cZYJdReEHVpCpmQ7ptZ9eq5upbZzCDjxicRoEdteaqGjSmkHmtRUM+rCJZoszXznDzME
	LAc65D5csLaNrnSx1p7jNqyWMCtpD572khV0i1A+yTmdwhrZf7FdBKAQ2A8rBe0OuMV90BKVt8ZNd
	OfTi9jS3ctMQyduchZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHBB-0000WB-T2; Fri, 06 Dec 2019 17:14:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHAX-0008Tw-Fb
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 17:13:30 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6152521835;
 Fri,  6 Dec 2019 17:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575652409;
 bh=DICca46Z51kZ11zqL/iT6HHqtKInVqISQBqaDz+sOW4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2voOd97v8ebOgwWoa8zFqbNTgVVsb9zOTzFuCFgrPV+rsue3P9wuNiIkw9cenhn8b
 FWuR8mbo10061QGjgwRD2dzkBufgqKS6tQMOzQjzMp7T0GDkgoEwChQlNPpEwi++kU
 C1qoRr5vFHGiEGBiRLPaDCbrP3EDoreQEhxJfE1g=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 3/3] nvme/pci: Fix read queue count
Date: Sat,  7 Dec 2019 02:13:16 +0900
Message-Id: <20191206171316.2421-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191206171316.2421-1-kbusch@kernel.org>
References: <20191206171316.2421-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_091329_547757_A3ED10A4 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If nvme.write_queues and poll_queues are specified, we expect the driver
may request more queues than CPUs if the device's queue count feature
is large enough. The driver, however, had been decreasing the number of
possible interrupt enabled queues, artifically limiting the number of
read queues even if the controller could support more.

The driver doesn't request more IO queues than CPUs for each queues type
anyway, so remove the cpu count comparison to the number of interrupt
enabled io queues.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 6b6452486155..d3bed5df9ef1 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2062,7 +2062,6 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		.priv		= dev,
 	};
 	unsigned int irq_queues, this_p_queues;
-	unsigned int nr_cpus = num_possible_cpus();
 
 	/*
 	 * Poll queues don't need interrupts, but we need at least one IO
@@ -2073,10 +2072,7 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		this_p_queues = nr_io_queues - 1;
 		irq_queues = 1;
 	} else {
-		if (nr_cpus < nr_io_queues - this_p_queues)
-			irq_queues = nr_cpus + 1;
-		else
-			irq_queues = nr_io_queues - this_p_queues + 1;
+		irq_queues = nr_io_queues - this_p_queues + 1;
 	}
 	dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;
 
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
