Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00438115BD4
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Dec 2019 11:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=W95Fpf/jl9rMLkj/HNbN/TERjySJQqcNm7T/QAHpqVg=; b=H1LYDGGZ2c7ZnM
	xolpiMccNZG48DMCN6wycXwuWPBbaiJsM9rNfI6AlNS4UuaXyqf2PkErRW26SSd5Gh/EsZAolL+1e
	OKW/9rYO0svbxv2xJ5EMMbwPZ+fDhwojrI/2/B33SbJENwbJrI4xS/sZ66hg3DbgTg5bnIGiaY9ud
	Z1hQgN5E59hlWPdFOETkJvgzblA+s+UJfweq8qwnJ+Mwicd/f++2gSwE7AL0hQjh9VSkJ2hrVbrDP
	J9ldLE2XgA24JazN39Ka1aE5TGBnfKNkQmYXZLbtiJqpCDgs7BftoBkDZYHCJ4R7ff6/mGDnTJ0/v
	zm2yDHYwfRmW910z+tYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idXE1-0002N2-BL; Sat, 07 Dec 2019 10:22:09 +0000
Received: from forward501j.mail.yandex.net ([5.45.198.251])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idXDu-0002Mg-MP
 for linux-nvme@lists.infradead.org; Sat, 07 Dec 2019 10:22:06 +0000
Received: from mxback13j.mail.yandex.net (mxback13j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::88])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id 024C433805EB;
 Sat,  7 Dec 2019 13:21:57 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback13j.mail.yandex.net (mxback/Yandex) with ESMTP id hEbvZlzebH-LtHCvfug;
 Sat, 07 Dec 2019 13:21:56 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1575714116; bh=xRkjXeJBfBO+fSJrg7DcneR5LAJZ3zWV1dI+/0N+NNM=;
 h=References:Date:Message-Id:Cc:Subject:To:From;
 b=QN5HV4FdCI6hkJvVj7namOgulcx1TvawnzzOg4QK0RYjq8Nm+Xnf5VJb4o7djY3Rr
 svODjRttHBvOzVfzm9p7UnJSCMzIOiO0S6ACk5HaS3wWu12l+OsyZYm5PxJWBHwHVi
 tuBB9O19XQUyFxcc9MvQDrl1vbk2dsoHxlnJ4F70=
Authentication-Results: mxback13j.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by iva5-64778ce1ba26.qloud-c.yandex.net with HTTP;
 Sat, 07 Dec 2019 13:21:55 +0300
From: Talker Alex <alextalker@yandex.ru>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
 <c797a78a-c9d4-266a-e0ec-bc0baf86e379@grimberg.me>
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Sat, 07 Dec 2019 13:21:55 +0300
Message-Id: <34676161575714115@iva5-64778ce1ba26.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_022203_289657_E74DBC7A 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>
> No need to mention irrelevant distro you tested.
>

I just wanted to make a point that older software(native distro kernel)
has no such problem but the MLNX OFED back-port does.
Also, mail list rules as I remember said to test patches before sending,
so I mentioned where precisely I tested it.

> The below section should not exist in the change-log, so you can place
> it under the "---" separator.

So, the correct version of message body would look like that?

>nvmet_referral_release() was called after item->ci_parent
>and item->ci_group were set to NULL by configfs internals.
>This caused oops on older kernels and possibly on the mainline too.
>
>Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>
>---
>
>Tested on CentOS 7.7 (kernel 3.10) and Ubuntu 18.04.3 (kernel 4.15)
>by means of MLNX OFED sources.
>
>This patch is mainly wanted in Mellanox OFED as in-tree nvmet.ko for
>mentioned kernel behaves proper as the bug was introduced about
>a year ago.
>
>I haven't found information about bug-reporting into the Mellanox OFED
>but after taking a look in the mainline I thought that it might need
>this patch too.
>
> drivers/nvme/target/configfs.c | 9 ++++++---
> 1 file changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
>index 98613a45bd3b..00f30ab40e69 100644
>--- a/drivers/nvme/target/configfs.c
>+++ b/drivers/nvme/target/configfs.c
>@@ -970,17 +970,19 @@ static struct configfs_attribute *nvmet_referral_attrs[] = {
> 	NULL,
> };
> 
>-static void nvmet_referral_release(struct config_item *item)
>+static void nvmet_referral_release(struct config_group *group,
>+		struct config_item *item)
> {
>-	struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
>+	struct nvmet_port *parent = to_nvmet_port(group->cg_item.ci_parent);
> 	struct nvmet_port *port = to_nvmet_port(item);
> 
> 	nvmet_referral_disable(parent, port);
> 	kfree(port);
>+
>+	config_item_put(item);
> }
> 
> static struct configfs_item_operations nvmet_referral_item_ops = {
>-	.release	= nvmet_referral_release,
> };
> 
> static const struct config_item_type nvmet_referral_type = {
>@@ -1006,6 +1008,7 @@ static struct config_group *nvmet_referral_make(
> 
> static struct configfs_group_operations nvmet_referral_group_ops = {
> 	.make_group		= nvmet_referral_make,
>+	.drop_item		= nvmet_referral_release,
> };
> 
> static const struct config_item_type nvmet_referrals_type = {
>-- 
>2.17.1

Also, am I correctly understood that now I just need to wait for this patch to be accepted?
Or there required some activity on my side to make it happen?
My main goal is to get nvmet module provided by Mellanox OFED fixed
but I'm do know nothing about its development process. I saw some people from
the company mentioned here, so this might be it.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
