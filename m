Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4332AB35
	for <lists+linux-nvme@lfdr.de>; Sun, 26 May 2019 18:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=99XpdSqGnFbkSr/Mp6Q6MWtedGAQvBUfslxNaHkAPhU=; b=FVkytXBjq+INsbiotHkuezimXP
	mKjv3CETVWQRxY3JJeXM9co97ME4yTGVKWS9DedaJ+XaMHr4nYAhfssmm6fdEG7nK7wFGUOGfTwhS
	PtoQkGgw/3l3X7CGc6scsnl91jozm8MxhK2m/YJMcQa1ystQzinvp5PxK60yXbMReopHU44b0Zce/
	c4VQ9YdYHKePCFnPbmEv0qM8qmoRGeUZRHmorXnsBSUjwoF6fayJDdfp8piAEyDUE7gZUluRJowmC
	1AK1CYI0v2YmO++aQRRmgwGTo3bpokQj4eVg8PqhLZEY+G2VVJiHimZBZW4Evs/+hhV5f3cTEhwni
	BOdjk3kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUw2G-00021l-Tc; Sun, 26 May 2019 16:30:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUw1n-0001dC-PW
 for linux-nvme@lists.infradead.org; Sun, 26 May 2019 16:29:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id z26so8134443pfg.6
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 09:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d9UooUjAx6NBScigOGnH7Gz4QNuQjVumDoAAYHZwJ0I=;
 b=iJnOYm7COmsXgX5f8j5IS+0oQvSzQ6Yvq70wyjHOGa0RULDcfSKhqE2UWULKt2ZtgV
 STtCPlFp9E0CLBT8ESwbD4zGEKkUkHuJ3jdiVi+btWnIAXJo48wqrNxhYS9KDUbMiih4
 lP2AZzwpPDTDZsjns2zad7pxI4IEhtD5/3jrSIVK70CePseHq3V5Po8NIJpFXJzfOBQr
 SNO8IbtaNQ78kAceRNRrTvAytX3T1x8aATAq1Ceh6Qwdtl1dXPePywGHE57NFTjDgAWf
 YqsT3Ociq8yr2sylmrYDzmO2ZhZMXL1m9ynLr6r3HlEtP01InL9NBPYkWKbEfQ/LbQ+C
 Srsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d9UooUjAx6NBScigOGnH7Gz4QNuQjVumDoAAYHZwJ0I=;
 b=FBXpBm8svw1cgFh4iumgCrDnklLiOO5CRPeYQT5KX2ChgrEJL0mHONQMjk/Zdvicf/
 U3os/whxtSrlvNJceyDrQla0CmxLFR2Uqi+ayw4c6gd0StlCNCvA/ghEpQ/hRLLGahJm
 Qm9269ZATIkyA79HuNVxDoNdy3EnlGfYIuwow+TeCQdV/DbapR21+KlE6Ioe+slG0mA4
 84rep9SAqOU+M+JvRqaErl82QSD6xE2XDYTVPTIWNByG7XOYZJKSpHfJehbSAuhCqpCr
 /fzAuWvV+zyzF4TF63uG/Ds7zNdlCTnXL0JMdAD7LX7vxCxsuv1sk9HVoW2X02XAkI0t
 ix2Q==
X-Gm-Message-State: APjAAAUTJnrSWjUOoNjb23ymHn7rzBtEsPNK2JyTPXZXHH/mo2UBdn4b
 6Npwb6reiHkeOIsYbSY5m9qk/BAY/z8=
X-Google-Smtp-Source: APXvYqws+ecJtvqyZ24/vvgqtYW/1tC7KALjt0s11+al3CEJpigcuD4z8IOh5k+7gY1dQmXNq5KMpw==
X-Received: by 2002:a17:90a:25ca:: with SMTP id
 k68mr25990305pje.14.1558888182933; 
 Sun, 26 May 2019 09:29:42 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3427:8c7f:94e8:c445])
 by smtp.gmail.com with ESMTPSA id a11sm8671107pff.128.2019.05.26.09.29.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 09:29:42 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 3/3] nvme: notify thermal framework when temperature
 threshold events occur
Date: Mon, 27 May 2019 01:29:03 +0900
Message-Id: <1558888143-5121-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_092944_300417_D3F2D159 
X-CRM114-Status: GOOD (  16.75  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
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

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- No changes since v2

 drivers/nvme/host/core.c | 28 ++++++++++++++++++++++++++++
 include/linux/nvme.h     |  7 +++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4c8271a..26c8b59 100644
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
 
@@ -2470,6 +2473,16 @@ static void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 	}
 }
 
+static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		if (ctrl->tzdev[i])
+			thermal_notify_framework(ctrl->tzdev[i], 0);
+	}
+}
+
 #else
 
 static inline int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
@@ -2481,6 +2494,10 @@ static inline void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 {
 }
 
+static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+}
+
 #endif /* CONFIG_THERMAL */
 
 struct nvme_core_quirk_entry {
@@ -3901,6 +3918,16 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
 
+static void nvme_handle_aen_smart(struct nvme_ctrl *ctrl, u32 result)
+{
+	u32 aer_type = result & NVME_AER_TYPE_MASK;
+	u32 aer_info = (result >> NVME_AER_INFO_SHIFT) & NVME_AER_INFO_MASK;
+
+	if (aer_type == NVME_AER_SMART &&
+	    aer_info == NVME_AER_SMART_TEMP_THRESH)
+		nvme_thermal_notify_framework(ctrl);
+}
+
 static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
 {
 	char *envp[2] = { NULL, NULL };
@@ -3922,6 +3949,7 @@ static void nvme_async_event_work(struct work_struct *work)
 	struct nvme_ctrl *ctrl =
 		container_of(work, struct nvme_ctrl, async_event_work);
 
+	nvme_handle_aen_smart(ctrl, ctrl->aen_result);
 	nvme_aen_uevent(ctrl);
 	ctrl->ops->submit_async_event(ctrl);
 }
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 54f0a13..8e7d599 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -507,6 +507,7 @@ enum {
 };
 
 enum {
+	NVME_AER_TYPE_MASK		= 0x7,
 	NVME_AER_ERROR			= 0,
 	NVME_AER_SMART			= 1,
 	NVME_AER_NOTICE			= 2,
@@ -515,6 +516,12 @@ enum {
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
