Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9246319B8DB
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 01:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mtxsDJ1VjkMrvgZgJLfzD83ohaGJJgQOwhAFJq7Kknw=; b=OYhSXWscoUp4O4
	sJfzxqbZrAJqSfH5Q30WzIsMfVC3eF2arwg3pZgCOLtsB28wu609u9UXrmtAcVppn2myfgFgElTc4
	fHzKVUMPsxhzRnVP8nj3jKBKetC32rM3mi4lvFghr/o+Jh1UPXM3tckddda0YF7+wOp6Fjiu9upVX
	TeksvJkJH7q4HBw9eCIyPY6EasrS4QEhpj4vQIu05kQcHuo9IDrAvyuR60fEHZz0aGqsBGGPGuNFI
	MTdz2x1boWcbddNVdrlCaRc3W3JVsS5rAXR/Qr2W90JyiqxyHv8ZbMnUpzUWrwY/NiIgec1TEouyD
	E5sq13e9RhevJX60bVDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJmb3-0002jg-Lz; Wed, 01 Apr 2020 23:16:33 +0000
Received: from [2601:647:4802:9070:a836:db4c:a7ac:3d7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJmaz-0002jE-Kr; Wed, 01 Apr 2020 23:16:29 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: fix NULL dereference when removing a referral
Date: Wed,  1 Apr 2020 16:16:27 -0700
Message-Id: <20200401231627.23553-1-sagi@grimberg.me>
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
Cc: Keith Busch <kbusch@kernel.org>, Tony Asleson <tasleson@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When item release is called, the parent is already null.
We need the parent to pass to nvmet_referral_disable so
hook it in .disconnect_notify.

Reported-by: Tony Asleson <tasleson@redhat.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/configfs.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 7aa10788b7c8..6705706265fa 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -1098,12 +1098,19 @@ static struct configfs_attribute *nvmet_referral_attrs[] = {
 	NULL,
 };
 
-static void nvmet_referral_release(struct config_item *item)
+static void nvmet_referral_notify(struct config_group *group,
+	struct config_item *item)
 {
 	struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
 	struct nvmet_port *port = to_nvmet_port(item);
 
 	nvmet_referral_disable(parent, port);
+}
+
+static void nvmet_referral_release(struct config_item *item)
+{
+	struct nvmet_port *port = to_nvmet_port(item);
+
 	kfree(port);
 }
 
@@ -1134,6 +1141,7 @@ static struct config_group *nvmet_referral_make(
 
 static struct configfs_group_operations nvmet_referral_group_ops = {
 	.make_group		= nvmet_referral_make,
+	.disconnect_notify	= nvmet_referral_notify,
 };
 
 static const struct config_item_type nvmet_referrals_type = {
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
