Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A0EA95B2
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 00:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QvGLIidQ42pINMhULeYgU7fujx+v5DAor6MJVXkrQPA=; b=IJ5P8+RSIK20nmC2l59Qoj7zYP
	yUV/lvWZaPUvUYbXffVyEy/bCo3HezdldSMvNnuuLLS3w4kMqgh3loBObtJFefCN4k3uKehiin5yX
	ZwCD+jmfGNkqzwFfmounklKOwKweWbuC0BOdDCtgjzsP+AxAFm2tgrJXkfg9AnzrximPBcDojV88G
	ONJB6+lNvIQn1UkE58HYT1IgjpXB0/HHQ9kpQ3LbFA6GMuNqbibHVuJOIf3m4bY9lrB0cwrNmbkFL
	qkj3S8uGBjsDCy0afFC4Rlqu5ZYERf6HKwNsZjaJOK1eksGO0+hLe+1JyAKo4zSh7v5MNLCjM+oWd
	RPztkMZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dJt-0005qc-8E; Wed, 04 Sep 2019 22:00:05 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dJn-0005pf-6l; Wed, 04 Sep 2019 21:59:59 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 3/4] nvme: add uevent variables for controller devices
Date: Wed,  4 Sep 2019 14:59:52 -0700
Message-Id: <20190904215954.15423-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904215954.15423-1-sagi@grimberg.me>
References: <20190904215954.15423-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we send uevents to userspace, add controller specific
environment variables to uniquly identify the controller beyond
its device name.

This will be useful to address discovery log change events by
actually verifying that the discovery controller is indeed the
same as the device that generated the event.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fccf28d77c03..7a1df95ec840 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3630,6 +3630,33 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
 
+static int nvme_class_uevent(struct device *d, struct kobj_uevent_env *env)
+{
+	struct nvme_ctrl *ctrl =
+		container_of(d, struct nvme_ctrl, ctrl_device);
+	struct nvmf_ctrl_options *opts = ctrl->opts;
+	int ret;
+
+	ret = add_uevent_var(env, "NVME_TRTYPE=%s", ctrl->ops->name);
+	if (ret)
+		return ret;
+
+	if (opts) {
+		ret = add_uevent_var(env, "NVME_TRADDR=%s", opts->traddr);
+		if (ret)
+			return ret;
+
+		ret = add_uevent_var(env, "NVME_TRSVCID=%s",
+			(opts && opts->trsvcid) ? opts->trsvcid : "none");
+		if (ret)
+			return ret;
+
+		ret = add_uevent_var(env, "NVME_HOST_TRADDR=%s",
+			(opts && opts->host_traddr) ? opts->host_traddr : "none");
+	}
+	return ret;
+}
+
 static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
 {
 	char *envp[2] = { NULL, NULL };
@@ -4063,6 +4090,7 @@ static int __init nvme_core_init(void)
 		result = PTR_ERR(nvme_class);
 		goto unregister_chrdev;
 	}
+	nvme_class->dev_uevent = nvme_class_uevent,
 
 	nvme_subsys_class = class_create(THIS_MODULE, "nvme-subsystem");
 	if (IS_ERR(nvme_subsys_class)) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
