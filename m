Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA1311CB03
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 11:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPUeR2XeUjyFwY52Zhs/lc6mxYugXqy0WNTtMzwHXEQ=; b=hJI2akeTxz1pwM
	RBpnpra2jj7vPWXlf3mBWGMA2+vzLw0imYBMU12ce88yyI7QC/Er74S9GbZcEiKwwCDJMqjz8tvY9
	0UB9wof371ofTeqlQWWB1SRhfqn2KtRRDFi3fXGkh19LIM5BLO6//eiiD1wEb9iPRTeykIumeZIG/
	25RUNinzpSrziQqr2tk+Vj0CGw6ELKBz3jqkI8iNGTfYd9AStTWRhyBxUng5wA5ZYTaov3C0QPqFO
	DDY51q6Qf6V1QLjmwoRDzFBvqaWMPZg0uxnIABXkTvRUG38jjTY6wW76hzQfN3xw5lY7yKth5a2Kk
	UvHnm5wT/WSuhq3cXbLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLpr-0001lF-DO; Thu, 12 Dec 2019 10:36:43 +0000
Received: from forward501o.mail.yandex.net ([37.140.190.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLpm-0001k2-6c
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 10:36:40 +0000
Received: from mxback26o.mail.yandex.net (mxback26o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::77])
 by forward501o.mail.yandex.net (Yandex) with ESMTP id B63141E80626;
 Thu, 12 Dec 2019 13:36:29 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback26o.mail.yandex.net (mxback/Yandex) with ESMTP id LAornX0gwZ-aSGC9kDh;
 Thu, 12 Dec 2019 13:36:29 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1576146989; bh=lkjETiR4ZQCz4+eIphOnXNXNqqpKvzb/n6q/S+oxHFA=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=PDJQr4fxlB6W5zps0AgQHZWW4BMKg3mpbAJBWHB3No03Vp3En+WGZqffLR1RxBhwY
 whtHKBC4AU9F/qGdW3xHyzJuWcbZEjL8ATKqqNSXSMG+mKr6wc32dEwJdURRDKVfw7
 7I3PK3K6x/HIZJvt8EmoRkaEaWXpPbmO9bHO+j4s=
Authentication-Results: mxback26o.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by sas8-ed615920eca2.qloud-c.yandex.net with HTTP;
 Thu, 12 Dec 2019 13:36:28 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: linux-nvme <linux-nvme@lists.infradead.org>
In-Reply-To: <20191212093341.GA20683@infradead.org>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
 <20191212093341.GA20683@infradead.org>
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 12 Dec 2019 13:36:28 +0300
Message-Id: <3861821576146988@sas8-ed615920eca2.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_023638_567143_9A4AF6B6 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [37.140.190.203 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvmet_referral_release() was called when item->ci_parent
or item->ci_group were already set to NULL by configfs internals.

Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>
---
 drivers/nvme/target/configfs.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 98613a45bd3b..20e4a660684f 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -970,23 +970,21 @@ static struct configfs_attribute *nvmet_referral_attrs[] = {
 	NULL,
 };
 
-static void nvmet_referral_release(struct config_item *item)
+static void nvmet_referral_release(struct config_group *group,
+		struct config_item *item)
 {
-	struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
+	struct nvmet_port *parent = to_nvmet_port(group->cg_item.ci_parent);
 	struct nvmet_port *port = to_nvmet_port(item);
 
 	nvmet_referral_disable(parent, port);
 	kfree(port);
-}
 
-static struct configfs_item_operations nvmet_referral_item_ops = {
-	.release	= nvmet_referral_release,
-};
+	config_item_put(item);
+}
 
 static const struct config_item_type nvmet_referral_type = {
 	.ct_owner	= THIS_MODULE,
 	.ct_attrs	= nvmet_referral_attrs,
-	.ct_item_ops	= &nvmet_referral_item_ops,
 };
 
 static struct config_group *nvmet_referral_make(
@@ -1006,6 +1004,7 @@ static struct config_group *nvmet_referral_make(
 
 static struct configfs_group_operations nvmet_referral_group_ops = {
 	.make_group		= nvmet_referral_make,
+	.drop_item		= nvmet_referral_release,
 };
 
 static const struct config_item_type nvmet_referrals_type = {
-- 
2.17.1

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
