Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480C55BDDA
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 16:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yGM8a5Pgz8jSOKuhFUpTejuFyWO4QfagbRl2fBCFx1c=; b=kglNKxC3TOiJVUyEK671nbhBCn
	5OOC2JVz2zHYX0LJnKtTyU3CLZXnE6kmw3KfADsc4XAca7wsAU1kAiUNgXF9aHKzjSDS1V3dTUqaw
	Z/JUqHDGkvlnQA/4HaeBBvL5rkwrelyX6c/WUWEtakZWW4sIXbkHMb8ZogUfIcyz4e1dOm6FOBSvK
	rNoWBlbqyv331tdDQgRSL6FZHwcYIIRq78uar68FfcvsStNMIFrWcmZhbqv6vkzFOc1Cq8MfUwwoV
	+gXTNpiKHkrUhWS3t8c1kfsJYc8CG6CIJlKEJUZIMp4sEQF5XiW6TOwQcv/yCDC6vUU2CrMcF/aY4
	kRj2fYmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx4Q-0001V5-Ru; Mon, 01 Jul 2019 14:14:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx3V-0000wd-CI
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 14:13:20 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so6652140pff.9
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=scZ5GnTV8I7bOvJ6lzl+PSHZYfBr3KBNNf2b3zoQP2M=;
 b=IEW5Alr41ArZ5PfR+ZqGq0LtqjgRi1vEzrncCFpZ2J2dKJ8NTr8sdMEgJt0IO7HSYM
 4nEtEY8karNOZGxFWHFngFBMgxNTzEkzn9ZZkIC78JCn98lI+WHi1lBYNpMKFd5lvLgE
 6NvF06MwOlVup0WmvGqPcbV434RTmQtkILrHGbX6NYvZSINpIAlnBRLuSJhEty/5G5TH
 DQWzLZZh5yuYPOIYedNXa+PwfksTl0OJpbYVRh87WS5sheBfiDo5B2G4nLiz8rZ+VX0m
 kVssbS4cP845QmDUGproNkaz3TGQgaNSl1s4QWJp1yGl5swG419QPAH5K7XLUNma6Pbj
 xJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=scZ5GnTV8I7bOvJ6lzl+PSHZYfBr3KBNNf2b3zoQP2M=;
 b=gbjE9Um+itj3gU/p2hOJSCcoH3EChsi38pvU4m0tnhQJ+b/QPmf7qDNACH+83quk3V
 0YI7ykGVgGdmEjhbLXrhhb2F6+ZY8GjQ4kDJNbsS1t1CaMpRIbHMJnECx49Vc5cUjNqx
 QnfTRUjXI2q56JWGqaOuFLcsIPrvICXvTHp9Y50mmOuMnddrZN3Pps/KHwqfS23FXS2O
 1Pa68kTDtvHlRr3RCEviLDMtGWA10qRIXqyqbDE++zkn/l2bjPq0E8n6E8EbPBJMFl+r
 MrBWsEWU4EplNlIsAI1bdxjkY1MRGtIAX0TUzIctsoU0JnRi+aNFdW32PbmIYBNvFLy6
 I5DA==
X-Gm-Message-State: APjAAAWn3DrpjtAPP4ldCouI2PEMyENFOfq6kfYOrF9Q5o4oNNTLAOw5
 kTGYk1kgStntFW5gfHVDCWqfJNxJ
X-Google-Smtp-Source: APXvYqxsYoEGGmCNHNAQBQFZgb/0R2hySZHxPiAq5C8OpABF8vxdTvdpQEcQZU6xSh5uHEVKOcaetQ==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr12570537pjp.47.1561990395984; 
 Mon, 01 Jul 2019 07:13:15 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id n19sm11383871pfa.11.2019.07.01.07.13.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 07:13:15 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v5 4/4] nvme: notify thermal framework when temperature
 threshold events occur
Date: Mon,  1 Jul 2019 23:12:34 +0900
Message-Id: <1561990354-4084-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071317_564729_2A66D463 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The NVMe controller supports the temperature threshold feature (Feature
Identifier 04h) that enables to configure the asynchronous event request
command to complete when the temperature is crossed its corresponding
temperature threshold.

This enables the reporting of asynchronous events from the controller when
the temperature reached or exceeded a temperature threshold.
In the case of the temperature threshold conditions, this notifies the
thermal framework.

The main purpose of this is to turn on a fan when overheated without
polling the device for the smart log that could prevent the lower power
state transitions.

Cc: Rob Herring <robh@kernel.org>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v5
- use thermal_zone_device_update() instead of thermal_notify_framework()

 drivers/nvme/host/core.c    | 14 ++++++++++++++
 drivers/nvme/host/nvme.h    |  5 +++++
 drivers/nvme/host/thermal.c | 14 ++++++++++++++
 include/linux/nvme.h        |  7 +++++++
 4 files changed, 40 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1d84685..80403c3 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1186,6 +1186,9 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
 	int status;
 
+	if (IS_ENABLED(CONFIG_THERMAL))
+		supported_aens |= NVME_SMART_CRIT_TEMPERATURE;
+
 	if (!supported_aens)
 		return;
 
@@ -3561,6 +3564,16 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
 
+static void nvme_handle_aen_smart(struct nvme_ctrl *ctrl, u32 result)
+{
+	u32 aer_type = result & NVME_AER_TYPE_MASK;
+	u32 aer_info = (result >> NVME_AER_INFO_SHIFT) & NVME_AER_INFO_MASK;
+
+	if (aer_type == NVME_AER_SMART &&
+	    aer_info == NVME_AER_SMART_TEMP_THRESH)
+		nvme_thermal_zones_update(ctrl);
+}
+
 static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
 {
 	char *envp[2] = { NULL, NULL };
@@ -3582,6 +3595,7 @@ static void nvme_async_event_work(struct work_struct *work)
 	struct nvme_ctrl *ctrl =
 		container_of(work, struct nvme_ctrl, async_event_work);
 
+	nvme_handle_aen_smart(ctrl, ctrl->aen_result);
 	nvme_aen_uevent(ctrl);
 	ctrl->ops->submit_async_event(ctrl);
 }
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index d501567..f29bc77 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -611,6 +611,7 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
 
 int nvme_thermal_zones_register(struct nvme_ctrl *ctrl);
 void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl);
+void nvme_thermal_zones_update(struct nvme_ctrl *ctrl);
 
 #else
 
@@ -623,6 +624,10 @@ static inline void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 {
 }
 
+static inline void nvme_thermal_zones_update(struct nvme_ctrl *ctrl)
+{
+}
+
 #endif /* CONFIG_THERMAL */
 
 #endif /* _NVME_H */
diff --git a/drivers/nvme/host/thermal.c b/drivers/nvme/host/thermal.c
index 431aeb4..9dcc1dc 100644
--- a/drivers/nvme/host/thermal.c
+++ b/drivers/nvme/host/thermal.c
@@ -327,3 +327,17 @@ void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 		__clear_bit(i, ctrl->tz_enabled);
 	}
 }
+
+void nvme_thermal_zones_update(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for_each_set_bit(i, ctrl->tz_enabled, ARRAY_SIZE(ctrl->tz)) {
+		if (ctrl->tz[i].dev)
+			thermal_zone_device_update(ctrl->tz[i].dev,
+						   THERMAL_EVENT_UNSPECIFIED);
+		if (ctrl->tz[i].of_dev)
+			thermal_zone_device_update(ctrl->tz[i].of_dev,
+						   THERMAL_EVENT_UNSPECIFIED);
+	}
+}
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index f29728b..069b962 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -476,6 +476,7 @@ enum {
 };
 
 enum {
+	NVME_AER_TYPE_MASK		= 0x7,
 	NVME_AER_ERROR			= 0,
 	NVME_AER_SMART			= 1,
 	NVME_AER_NOTICE			= 2,
@@ -484,6 +485,12 @@ enum {
 };
 
 enum {
+	NVME_AER_INFO_SHIFT		= 8,
+	NVME_AER_INFO_MASK		= 0xff,
+	NVME_AER_SMART_TEMP_THRESH	= 0x01,
+};
+
+enum {
 	NVME_AER_NOTICE_NS_CHANGED	= 0x00,
 	NVME_AER_NOTICE_FW_ACT_STARTING = 0x01,
 	NVME_AER_NOTICE_ANA		= 0x03,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
