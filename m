Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D1611583C
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 21:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ioOCpR/CfTI51AToELWPVkSmyl/7Kows72tixLeRXhE=; b=EwiJnrOCicvP9C
	VXmUgH+WiIjR4dl/42F8DuKl/4dtL8z9s2wKQghO8ZhDuA3XjFD+pR++Wa/Ue/WzaQdoyNKbo5s4C
	xs/IoI5qpw5T/UUEzF7xZDAFSJ5GNYiY4BuDG//+MwcIci+UGI7QpYWD8r5KdR+8QWykMW52tlvh9
	OSWFFCzU+rc3h9/jrWY2qKjbV8OooA16VSOtw/0rXyFvrYDBDnMlt5/4l1CSo36l497MmPocFu50F
	62A7cvpe7gnOX6iPg09EaLE5qke6oDbeSRumuGXOQqsGfE6XoFDIr4jdBZg94+eGATq+Xzpl8mSto
	q1h49LWNKYT8tHQEx4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idKOb-00029y-PJ; Fri, 06 Dec 2019 20:40:13 +0000
Received: from forward102j.mail.yandex.net ([5.45.198.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idKOR-00016j-Rh
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 20:40:07 +0000
Received: from mxback7o.mail.yandex.net (mxback7o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::21])
 by forward102j.mail.yandex.net (Yandex) with ESMTP id B565FF203E0
 for <linux-nvme@lists.infradead.org>; Fri,  6 Dec 2019 23:39:54 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback7o.mail.yandex.net (mxback/Yandex) with ESMTP id SrpXjsQPKf-dr5CSFkd; 
 Fri, 06 Dec 2019 23:39:53 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1575664793; bh=TRl2/yyCZU40S0zUkf9bUu6ehiv0r1omsbnvzecPE90=;
 h=Message-Id:Date:Subject:To:From;
 b=E+oJFPfQ7l8lq3fdQJR22IYdSeiV2anooFXdeTj15/rcPEKubpBQgtwSxtccmRTkB
 cNKkmS8oBK0SRpo/ZJpoGNuh1krTUltq41hyJzTa7Ry1VDD43TVzEvlQHYNcC3cjwO
 N7v9jj8xW8HjIUhkz59Lq0TRteg8QpDO0A2vqz5k=
Authentication-Results: mxback7o.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by iva7-8a22bc446c12.qloud-c.yandex.net with HTTP;
 Fri, 06 Dec 2019 23:39:53 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvmet: fix null-pointer when removing a referral
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 06 Dec 2019 23:39:53 +0300
Message-Id: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_124005_024312_ACE1492C 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

nvmet_referral_release() was called after item->ci_parent
and item->ci_group were set to NULL by configfs internals.
This caused oops on older kernels and possibly on the mainline too.

Tested on CentOS 7.7 (kernel 3.10) and Ubuntu 18.04.3 (kernel 4.15)
by means of MLNX OFED sources.

This patch is mainly wanted in Mellanox OFED as in-tree nvmet.ko for
mentioned kernel behaves proper as the bug was introduced about
a year ago.

I haven't found information about bug-reporting into the Mellanox OFED
but after taking a look in the mainline I thought that it might need
this patch too.

I have never before sent a kernel patch so
feel free to tell me if I did something improper.

Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>
---
 drivers/nvme/target/configfs.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 98613a45bd3b..00f30ab40e69 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -970,17 +970,19 @@ static struct configfs_attribute *nvmet_referral_attrs[] = {
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
+
+	config_item_put(item);
 }
 
 static struct configfs_item_operations nvmet_referral_item_ops = {
-	.release	= nvmet_referral_release,
 };
 
 static const struct config_item_type nvmet_referral_type = {
@@ -1006,6 +1008,7 @@ static struct config_group *nvmet_referral_make(
 
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
