Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63412CD08
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 19:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WPCXX47EAR7bl77qk66Bqgvn0oRV7DOLegmvekO1eAw=; b=phWM+GPEH36JiZyeCNBYwhKFjw
	T53JzeQvsrN5JJ8gS9bxvpwQv7wA0oRgeX8Oj+N5AYiWCiBFsbn8cUQt2S9ObtDEapVmTnrK17IxM
	hhEOkJDVNUbtTVUCpoyzKSbG3bOfFq7NY2EoitgaRId1x/CYh3G5VMUUHIDXmIQYpHCSm1s3L4Qvy
	nwMd4lMhfBTtiLhoHvbxK1m/P+nV5d8JLgtaeCcCvAqCPbSF1rNE1mh3TJXAZ8d9kXAeIejLVMdNa
	c060ldeMfzYapiuP4BQ499KIill+T7HhBY5h38vuQjF89ae3cJffnnngrEe4TuktT0czuNN4Ozz5V
	TyFA2TOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfWK-0008AS-SD; Tue, 28 May 2019 17:04:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfW0-0007sI-JI
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 17:04:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id u22so4557799pfm.3
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 10:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4GMDq+krAmBETsVFUcVuiqe8o776xyPKd2IYKXZtmzk=;
 b=bLATmJYq6Vo0dCZenjx7ShExDm0d4TIukj8AMwmFxxIBgCE/Pz1QRKAd49tRjf7MRG
 ISfFSWnt0845EYRx9lUI6PQQCQI7XTm212RF1cTedZTQe/XNacwVbAABEw0+7D/VUUO3
 Dnzr+9pmDyZdpfinY2U56jNE3Bn6J8ld4wJG5GA8U1QpBxBMM8R8aIQ3T3TmKhHLwkqj
 abzilIBEhf+QIKDRQPZj8D6tO5Lfbh5rOsr1+7e2ChlppdcE0rRWihIDD/4w8okejryO
 q8AW6F4K4+/6f8ESiQpc5992kB4n6Z8K5eLuskUxkToO1l7t+4Il1l4KWRDdjplmfBOA
 mOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4GMDq+krAmBETsVFUcVuiqe8o776xyPKd2IYKXZtmzk=;
 b=VUpx7Slop0hd6TBRBvp7pwN3jGosNyOra+euRBi144BE+W7IIfqNWpLPHuQdaaiXBS
 0tYzrYduhey6jtyYVz2UNueT7QAyKzLzg0xpBQmgeg6lFX9ExR9d/013F/BtnejvdI7L
 wKojF1nIAL2XNjYzCKu3qqn4On0kw7lFl4MY9T4pA1fiakuUHqReQFiBCGkobNci3QhP
 +OHJaXKi5IQUPkgsubjp6aDgeWDO5g9OToLkgckBYzsj0YwO55oKchAVav2pgiOOGvLZ
 F3Qu9mMujTy/HaFGC01M5AMM5yqm3xYYEFUBPRhTlAbjSiiJ/MxwfpUuwHL/ncbL8dSU
 oaqQ==
X-Gm-Message-State: APjAAAV81npFltf4lmed0txmKIvX/QWu6SR6wpnNVF10o9l/Sbb/maBm
 REX18QUnYPH+W6j4mHLK5kEKxFVm+a4=
X-Google-Smtp-Source: APXvYqzrYTwzb2Bx7mznsaj7+nUJOeDppmv++/T90+ju8N8zQ0udK2hVC0XNHzewA4TYgHFRRxypWQ==
X-Received: by 2002:a17:90a:b78b:: with SMTP id
 m11mr7166590pjr.106.1559063035553; 
 Tue, 28 May 2019 10:03:55 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3c36:ee5f:9fff:3b5e])
 by smtp.gmail.com with ESMTPSA id g8sm16898425pfk.83.2019.05.28.10.03.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 10:03:54 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvme: enable to inject errors into admin commands
Date: Wed, 29 May 2019 02:03:38 +0900
Message-Id: <1559063018-3682-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100356_889157_150408D4 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
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
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
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
index e8d8da9..2f038e7 100644
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
index 3a48b94..6535fd8 100644
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
