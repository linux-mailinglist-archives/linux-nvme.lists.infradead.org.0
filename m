Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A4FABF31
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wg5WaNUAY8vNzuBsCu5v+8Wk2iSd9RqH14KjuqOCMjc=; b=eW02hwnVGyHW5VkNuj1Xia5MQ2
	oeC+A75lSxbHwPRq5Pf54RWyfCmym+gmvEdxEeX3MQIsx2LTQmE//OZHJWxudKLNje76XqlCyzTQO
	j4vr+LFDvg/+KuXlUx3QFG1LhaPAnD6AZ9xOtIF8e/bzBciEm+hT9KAT+Fg55aXbmkiIOLe9Nskzf
	SqxWVSV2XaSvZZ07ZwrJB/hFhLMilPD60pUntWlZ0nA4VXidfUTExS5V5x9Lv/BUG2CMURAMNVv4q
	S4krpvA4NlIjmm+VSyd7+Lsfv8fPRY4nsE3dKejXa02qoLzGYbgumo8XDX6IdQSYD3ykA8L8sYBBE
	V4PL38Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IjQ-0001uD-Tt; Fri, 06 Sep 2019 18:13:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Iiq-0001O2-Dm; Fri, 06 Sep 2019 18:12:36 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v5 3/4] nvme: add uevent variables for controller devices
Date: Fri,  6 Sep 2019 11:12:33 -0700
Message-Id: <20190906181235.20365-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906181235.20365-1-sagi@grimberg.me>
References: <20190906181235.20365-1-sagi@grimberg.me>
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

Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 23cc0fd6f667..a00b4314f218 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3639,6 +3639,33 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
 
+static int nvme_class_uevent(struct device *dev, struct kobj_uevent_env *env)
+{
+	struct nvme_ctrl *ctrl =
+		container_of(dev, struct nvme_ctrl, ctrl_device);
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
+				opts->trsvcid ?: "none");
+		if (ret)
+			return ret;
+
+		ret = add_uevent_var(env, "NVME_HOST_TRADDR=%s",
+				opts->host_traddr ?: "none");
+	}
+	return ret;
+}
+
 static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
 {
 	char *envp[2] = { NULL, NULL };
@@ -4077,6 +4104,7 @@ static int __init nvme_core_init(void)
 		result = PTR_ERR(nvme_class);
 		goto unregister_chrdev;
 	}
+	nvme_class->dev_uevent = nvme_class_uevent;
 
 	nvme_subsys_class = class_create(THIS_MODULE, "nvme-subsystem");
 	if (IS_ERR(nvme_subsys_class)) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
