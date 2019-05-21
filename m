Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D81254ED
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h83neVH6PN0nOX5B6J8HidiT800JirXCMyRas5MOWn0=; b=PlkjFnxoEj9Swu1PFsPCzCsnro
	R8FmujYapKmTyizLqvYcIo3cstBQ3ZNL9VL0kfG0egmWxq3SuohAMT1ZJJRVDUiRKiOO0rB3Ahj6B
	xWhI2dxHFXpVpXj4yJPacmGVsJmpBdKpfrP423112UMJntr6QaXwMUNRRmSDoQknXeHZWo/NonwTc
	v9rmhtpoYdsU5IBvm3MOa+Cxs8i4k9vNH9Q4qasyN2Zi69gid24yXIWVoTybcrKhPmnFqnqTPFQpt
	oli027s75/MCHV28//lFDhdOfZEcKvPYHnTXdQzsYSyLLHOEvn+l0fMgPQAb3pMI7Gtr0xhFEl774
	7L1xETsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Kp-0004mS-JQ; Tue, 21 May 2019 16:09:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Kl-0004hb-1P
 for linux-nvme@bombadil.infradead.org; Tue, 21 May 2019 16:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wQFG8hw3y3EIs2QpnKA67CdoA7uCJM+M7ssUQOFNLw8=; b=NTQjmUwyi37GtKkwOz6CGieXV
 YPtW5QwPwZo6/ktUdBrugvY0p9YY9/wr65JhPocldpMYsmCkwtYwKHgM9/whrL2DWSJhI8o5uHOKp
 aMhtbMa7FoDEP7p0h6nT9UKq6RC1wPp52khuyP2LqOHhn8MoZ5Iy7/QHRE/I21sCVxVeIoaSo22Ps
 Ib2cX2Asnr+TEtSGOit+6QVeMkHchhLXCsr36lw34G6spBeW+nZguWp9vQaLbzYpIbo5NsnZe6BHV
 DLXNERgDScacbK2KCJXvoWCG9tiGOJogCCmxG3laBNmTbq+77mI5SiPtTcGsdi+zkgfiPqlZclOEg
 +F7IXXGEQ==;
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Fp-0001aA-M5
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:04:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id gn7so4495895plb.10
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wQFG8hw3y3EIs2QpnKA67CdoA7uCJM+M7ssUQOFNLw8=;
 b=i0+RdiALkQzzsbo6liTzoG7avWVdVxZzLhgx3Zh6KUZDrdLDq8+3A21zLJcalT5tAe
 RtBw9250vMHrbAsxL68KHF4YobIsqlUsph8BK82pfPYM165MrcgfAhmNo1ThTVQgPSnZ
 sEDY8iTGzThjHdCBvxYM5iAhHTHPNr1NsqoluLGdZuzo5K1TPcVgPqOCSy+kkJY3AOxn
 x07aziY7s8sFxXmf6AnCCk377ssvAfySPCBegJhBZKHSjYRkoCTIM54J6jJM4xsD6KqU
 khQ3UvV/a3ZEKAU/m15hT6Eogk8OI9A23eQjHh3zXALyCME1neq8WZi8bDRT1EivmfVA
 UNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wQFG8hw3y3EIs2QpnKA67CdoA7uCJM+M7ssUQOFNLw8=;
 b=LgO61/TjTceQvWkcLXoDtctT9XvIH56KDDdFW1P+WhqBxkxJUcVNnr+0+pKNypvmjP
 ZG2GhJi0URm3l5scmjfJcwWIj0RCuUBFrWCNTjSSJweGIhOJ1Xoggv0EqmvOHhLyPZ7e
 +L3qBzf5omW+K+5nED8vXLiWbgfIunrCHNUaStJShDZ2ItnJwfGRMweZJ9AoS77rX2au
 lx0smH0YUjPrPVDFcX9Clhey3jQZDruPUH+zffRfvyDTnnaVxvKRXe4iLHUhURrEnRQ6
 sXGdyq9Om6lLJYU49SDqoDOoidddddBMKG2eCWhcxL3E9a/4SbQYt0/moBh1elqkx2v4
 MCYQ==
X-Gm-Message-State: APjAAAUE7pwD2f40DgwhowPZuftzG4B/5Erblrc1NgrDhtr7mhCWwFAu
 dMtTcQZ6nEV8ChdrayLZpd1q7K1ZPcQ=
X-Google-Smtp-Source: APXvYqwvWcDIl+aU/XA5TANKkfW/YI2ev5NCjho/Az9gHQL6o/RAfqGH1SFq1Bdb3sFt20t5XqDvIA==
X-Received: by 2002:a17:902:e9:: with SMTP id
 a96mr57111148pla.37.1558454679338; 
 Tue, 21 May 2019 09:04:39 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:9cd0:73e8:b74a:624e])
 by smtp.gmail.com with ESMTPSA id j5sm28954786pfa.15.2019.05.21.09.04.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 09:04:38 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 3/4] nvme: notify thermal framework when temperature
 threshold events occur
Date: Wed, 22 May 2019 01:04:08 +0900
Message-Id: <1558454649-28783-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_170441_837915_1145CC3C 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
* v2
- New patch since v2
- Extracted from 'add thermal zone infrastructure' patch

 drivers/nvme/host/core.c | 30 ++++++++++++++++++++++++++++++
 include/linux/nvme.h     |  7 +++++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 0ec303c..a86f9f4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1184,6 +1184,9 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
 	int status;
 
+	if (IS_ENABLED(CONFIG_THERMAL))
+		supported_aens |= NVME_SMART_CRIT_TEMPERATURE;
+
 	if (!supported_aens)
 		return;
 
@@ -2442,6 +2445,22 @@ void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_thermal_zones_unregister);
 
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
+#else
+
+static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+}
+
 #endif /* CONFIG_THERMAL */
 
 struct nvme_core_quirk_entry {
@@ -3857,6 +3876,16 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
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
@@ -3878,6 +3907,7 @@ static void nvme_async_event_work(struct work_struct *work)
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
