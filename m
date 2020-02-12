Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5BE15B17D
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 21:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wgY4HXeuiQ0lvPo+iam5QS5G8C7vya2Y2fV1NgnimcY=; b=VpXyz97H06lS6/
	RPHGVmbMuzivm/zbtDbp+uZ+RUdjcCcqiOvuJ6moNJErQ2VY3OZJil84TcuLqoEwwQSpN6J8YJrcU
	kKIy8EPpUYkXT8UnJ95xb6TfEmLWIYJpgeaKuFOKwsKsqeKSl/Xf357SWl5jDcXc3ogTvMkxqiUwY
	3HTg+hQvvSIluzZTcV15RBJysVq4BNG4mBxwSB120TgmRwCAkXCBjSHxMmeSPnKhIRy5rC/cZYxFA
	gtyBATiO92Qqo8v1aF1+EG5qLbdxMtrIcnzqiEf2ilAjGU5Y7nB3yTdeEiEbMaCrUUC3B5BwpkPlg
	nT2myE/g08bQ9H/nOADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yD4-0007co-W7; Wed, 12 Feb 2020 20:02:10 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yCx-0007bx-Cm; Wed, 12 Feb 2020 20:02:03 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH 1/2] fabrics: ignore hostnqn file if its empty
Date: Wed, 12 Feb 2020 12:01:57 -0800
Message-Id: <20200212200158.14237-1-sagi@grimberg.me>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If we read an empty string from /etc/nvme/hostnqn we should
ignore it instead of passing an empty string to the
driver resulting in the error:

nvme_fabrics: unknown parameter or missing value 'hostnqn=' in ctrl creation request

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index 254a2be615ac..4b5c9669edc7 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -677,7 +677,8 @@ static char *hostnqn_read_file(void)
 	if (f == NULL)
 		return false;
 
-	if (fgets(hostnqn, sizeof(hostnqn), f) == NULL)
+	if (fgets(hostnqn, sizeof(hostnqn), f) == NULL ||
+	    !strlen(hostnqn))
 		goto out;
 
 	ret = strndup(hostnqn, strcspn(hostnqn, "\n"));
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
