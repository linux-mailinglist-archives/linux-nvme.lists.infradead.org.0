Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B232375
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5NBrtyMl/o+lk7Gee0JqG06vPB8L32uT3urBjSRQ/gM=; b=MJbvkpEAof6nwM2qskygWWJXz9
	6zj0c6I+JaqW2FE0iol+6RimQiimQPOKAwvMtSu2r173VV9v0I4gaqcPvMrJSsCK1F9ZjnUAIwdjA
	vVxZNU1SHUcnNbbDz7IFMqG48PRxh7TjbagGgr3I8lB2iCnJynWqaBeRGAqPVti3adepUIiSViSG5
	DBnLY8IKTF8ZjqGEy2cKoNsL8lHVleZElYYZ6HEZKYy4FVzUdcvkSq7GSScvk3K/j4N0MMX5kcl+W
	z6oO60zIZljE3WFpQySPDKigLKWYJdMglwesu14FLYqIyCLwHztZnv5RZ9VWIXBxF3mbfQ40hN4c4
	CpvE/G5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQt4-0003y6-Ec; Sun, 02 Jun 2019 13:51:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQsn-0003lR-HN
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:50:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id a23so9035050pff.4
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0zgvmLvpFRHGRbngmZ3dv80j8BBYCwe5M8/ZQYu5cOo=;
 b=M46dRDpp4n/JojEhrZjHilwTqvGDp8dgfcSOHCalPxE/VnVOoJ622iJP/4ZGpj+aqs
 QykW/VkRGUbfGafaLNlNQDdnUXa5i5BW6qHEgLODFtIWUASRNiUkYhVfYLh5unV0HfwF
 S02qJza46T7Wyph0ErV2XDq9cPVBeTWzNxjZw2ot+5SgEdVcZEmdcFmcEsDPi/KNN2je
 7aidUCCl2rKVd8unk0IB1juZyFV08CFyIZ811zjfwe0PEUJtCNBsRziL+DTqIZAUWyIU
 IwlfpFr+d6IP/YeViU/ED/7p1/PYHu6qznwhVeK1Jyqm1KVu8RF0ux3QlqOjdwcKEIqe
 Z7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0zgvmLvpFRHGRbngmZ3dv80j8BBYCwe5M8/ZQYu5cOo=;
 b=gLbdE9z12gsihKCNy6NcIDnU7IhciVZC233xBQCijunF3asTP49T/+MKp+gOSititE
 aeQ5CEFM6a1SIzPKRJrIKTjJ3EgfcMnI50A9TpXV+V9V71Ncn44mCiEjzJqFmmuKDxPF
 brLIDVPRf0Z/y5I5u0Bc48jIyIxgpsRL8+YJam8vmhfV8D3aqKgszGzMqZFMn44LZ03G
 fvcBAL/er+fzLDmHR8IW2undKWTWfMo3t9MpuGzEN3/7KBOeraD7B11h2JzxQRfHv+1d
 j1oU/50TQ/SvO8c3tFuSgqvPYc2VZ1uUhjpxOwDbDekVc1JCyZu5Qfx7eujtJl+MNGpj
 a2QA==
X-Gm-Message-State: APjAAAVoSr96fms5cMdgW/vomDmUos9GWNCwgRZDrA1qgjdNzmu65eAY
 dINrQG4757a4VlAmhTZG+AqqVlxcFxU=
X-Google-Smtp-Source: APXvYqzXuBHjqDBk0GyJBFHKr2mRPTVwu0xPAHqL3v2tPL/TDcrhfAlp7v9PbPQLzUdxAEygfRpaew==
X-Received: by 2002:a65:52c8:: with SMTP id z8mr21736684pgp.10.1559483444780; 
 Sun, 02 Jun 2019 06:50:44 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:383f:1f19:d982:1b59])
 by smtp.gmail.com with ESMTPSA id m21sm7023871pfa.104.2019.06.02.06.50.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 02 Jun 2019 06:50:44 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/3] nvme: enable to inject errors into admin commands
Date: Sun,  2 Jun 2019 22:50:20 +0900
Message-Id: <1559483421-11361-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_065046_043519_7E5E5C4F 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to inject errors into the commands submitted to the admin
queue.

It is useful to test error handling in the controller initialization.

	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
	# nvme reset /dev/nvme0
	# dmesg
	...
	nvme nvme0: Could not set queue count (16385)
	nvme nvme0: IO queues not created

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
* v2
- add Reviewed-by tags

 drivers/nvme/host/core.c         |  3 +++
 drivers/nvme/host/fault_inject.c |  5 ++---
 drivers/nvme/host/nvme.h         | 20 +++++++++++---------
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 9fca8457..66d8199 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -4093,6 +4093,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
 void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 {
+	nvme_fault_inject_fini(&ctrl->fault_inject);
 	dev_pm_qos_hide_latency_tolerance(ctrl->device);
 	cdev_device_del(&ctrl->cdev, ctrl->device);
 }
@@ -4188,6 +4189,8 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
 		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
 
+	nvme_fault_inject_init(&ctrl->fault_inject, dev_name(ctrl->device));
+
 	return 0;
 out_free_name:
 	kfree_const(ctrl->device->kobj.name);
diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
index 18ad983..5868edf 100644
--- a/drivers/nvme/host/fault_inject.c
+++ b/drivers/nvme/host/fault_inject.c
@@ -60,14 +60,13 @@ void nvme_should_fail(struct request *req)
 	struct nvme_fault_inject *fault_inject = NULL;
 	u16 status;
 
-	/*
-	 * make sure this request is coming from a valid namespace
-	 */
 	if (disk) {
 		struct nvme_ns *ns = disk->private_data;
 
 		if (ns)
 			fault_inject = &ns->fault_inject;
+	} else {
+		fault_inject = &nvme_req(req)->ctrl->fault_inject;
 	}
 
 	if (fault_inject && should_fail(&fault_inject->attr, 1)) {
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index c1658ed..e710829 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -147,6 +147,15 @@ enum nvme_ctrl_state {
 	NVME_CTRL_DEAD,
 };
 
+struct nvme_fault_inject {
+#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
+	struct fault_attr attr;
+	struct dentry *parent;
+	bool dont_retry;	/* DNR, do not retry */
+	u16 status;		/* status code */
+#endif
+};
+
 struct nvme_ctrl {
 	bool comp_seen;
 	enum nvme_ctrl_state state;
@@ -257,6 +266,8 @@ struct nvme_ctrl {
 	 */
 	struct thermal_zone_device *tzdev[9];
 #endif
+
+	struct nvme_fault_inject fault_inject;
 };
 
 enum nvme_iopolicy {
@@ -323,15 +334,6 @@ struct nvme_ns_head {
 #endif
 };
 
-struct nvme_fault_inject {
-#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
-	struct fault_attr attr;
-	struct dentry *parent;
-	bool dont_retry;	/* DNR, do not retry */
-	u16 status;		/* status code */
-#endif
-};
-
 struct nvme_ns {
 	struct list_head list;
 
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
