Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D31CAA19
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 13:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=07TXkbgAjBQlls8siZtk/I3Gj5GPFzOBClg2e4b84uo=; b=CFbvq4OTy6FMrv
	TUkirEYr1TFfSMJin+cXylyftNA0NB1SRioeZZ+fqQmJcnkznFb4MnYBeExa4oee3em2EOZctTNSf
	k2NOwW1TZnc5k0lOAgC446oHLHQpk6C4PFKBiDtpUpLqA++gB7gPFu9qG3bBF3C/ttliBw2sCgbkJ
	OnPhi6MruSUiQVZ/5YlEX3+dJNDoccOzQGItWtweScEY8/QWLGL5m+Y+Wok5Fyq/KmYc85nKHUttc
	UTTavRQDraGddx6pNVV5BN6RA9zWrxkmaAX+SgOdhDHQ9IxVKvAGGU4/iMx5vRjepSYXsv+zFkplc
	CLI6cot6UoWxETDzX+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX1bO-0002iX-2X; Fri, 08 May 2020 11:55:38 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX1bJ-0002go-9C
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 11:55:34 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EF558C8FB18C28E54B87;
 Fri,  8 May 2020 19:55:19 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Fri, 8 May 2020 19:55:12 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <hch@lst.de>, <sagi@grimberg.me>, <chaitanya.kulkarni@wdc.com>
Subject: [PATCH -next] nvmet: replace kstrndup() with kmemdup_nul()
Date: Fri, 8 May 2020 19:59:06 +0800
Message-ID: <20200508115906.165223-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_045533_494012_E3CC62F0 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: chenzhou10@huawei.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It is more efficient to use kmemdup_nul() if the size is known exactly.

The doc in kernel:
"Note: Use kmemdup_nul() instead if the size is known exactly."

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 drivers/nvme/target/configfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 58cabd7b6fc5..9894668a40e7 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -327,7 +327,7 @@ static ssize_t nvmet_ns_device_path_store(struct config_item *item,
 
 	kfree(ns->device_path);
 	ret = -ENOMEM;
-	ns->device_path = kstrndup(page, len, GFP_KERNEL);
+	ns->device_path = kmemdup_nul(page, len, GFP_KERNEL);
 	if (!ns->device_path)
 		goto out_unlock;
 
@@ -963,7 +963,7 @@ static ssize_t nvmet_subsys_attr_model_store(struct config_item *item,
 			return -EINVAL;
 	}
 
-	new_model_number = kstrndup(page, len, GFP_KERNEL);
+	new_model_number = kmemdup_nul(page, len, GFP_KERNEL);
 	if (!new_model_number)
 		return -ENOMEM;
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
