Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC5BFF473
	for <lists+linux-nvme@lfdr.de>; Sat, 16 Nov 2019 18:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lSW1zc4uaRGbf6CoXco2NE9+ZrS6JXdylM3meHs9jDc=; b=F1TAzfGoh6VLF5
	HtySnp1dhMRUy1X2RnjiZFS/FjzImErTliZjwgOSUqvnkuddUXKdqkoboqNfB8nbQO9KtC5idKm1S
	Dd3soNPjsSzkCxJUOEov/NcKCFAt4ZyFqs7M+ikI67j5Zpxli0dzAjcRKEtyZS2j8DxlGA5lOWPVD
	/L4voKXRoJyb64z2q/SQnOkuDlH/N0+RYobuC+SwpzxZsP50jv9ZX+/iYM4Nuk0PMjfJ4QU98PWr+
	gkshQrkImfGsimfPS2Lvr6Kq+HUeq3HZIdKwDYe5uZckRc4uVB5t8dq8DMExYe5LDlVedeP/sGXAf
	W9cvD63jnv6JQpYKxz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW2Db-0006Fc-KS; Sat, 16 Nov 2019 17:50:43 +0000
Received: from [2001:4bb8:180:3806:c70:4a89:bc61:6] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW2DY-0006FI-7A; Sat, 16 Nov 2019 17:50:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: sagi@grimberg.me
Subject: [PATCH] nvmet: add another maintainer
Date: Sat, 16 Nov 2019 18:50:38 +0100
Message-Id: <20191116175038.6105-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
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
Cc: linux-nvme@lists.infradead.org, chaitanya.kulkarni@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sagi and I have been pretty busy lately, and Chaitanya has been
helping a lot with target work and agreed to share the load.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef7fa74..1e9439377485 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11633,6 +11633,7 @@ F:	drivers/nvme/target/fcloop.c
 NVM EXPRESS TARGET DRIVER
 M:	Christoph Hellwig <hch@lst.de>
 M:	Sagi Grimberg <sagi@grimberg.me>
+M:	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com
 L:	linux-nvme@lists.infradead.org
 T:	git://git.infradead.org/nvme.git
 W:	http://git.infradead.org/nvme.git
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
