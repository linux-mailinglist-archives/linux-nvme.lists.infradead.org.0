Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611A143A8B
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 17:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/iAFSONLKJcq/WCGJX6kvyg3qOgniov4Bcwop+tWuYQ=; b=KgFh1SxVV0RlJm4NbCgrzcQfHE
	+kqVnVyZ3vxK+U91NgnPjSxCVh+nCh0LkgEVK+Wn/gqhcK2U4Y9GCMjy3NmlobUryQG5BPgfNi7FD
	EGzXqwgaKDn69NSluJjjTKvX5Yo0rJltQxWuj2I6kBmqV/PhtJgD5cKb9bFxToXpFJKagJOOkCRJj
	Mh0UF7Cbf0ohm4Y4skFbnJriSsM++pwbn24BThwmk2zJFmBI7i3NY6GGwZi1kJ3H/RpRmSgR85uoN
	elMK/QfZcfxY9jvlNVlrpuPFMr74luKRV/Kfkpebb/wEe+hPCCROU+InG/vme9MgRnnsrRtVerZjh
	/dZwtnsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRYA-0007bI-EY; Thu, 13 Jun 2019 15:22:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRXD-0006zV-Eu
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 15:21:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so11218943pfa.4
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 08:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HnfFchC3wMAMcLtgIbxWv9S1iSlr9IyZ2/2qohCAJVA=;
 b=bA5pUCwh6BISRH4uZm6AxPfTDBlh7uVgQY65L66HTVf6CsQTKHS/LQk8V1bsb/2i+y
 x7tkXXDhtMjV05dBTodRZZrjy0steNn/xfCTbZjYdddE9jOYLwRkVLxkPFyL0S/MJyyf
 qn/igkqDZ0nh7juQUqdT7Acqylcr1I01HdlqmQ8TUKq3MZrdv8kRSB7DkdwHZ6OOXN7J
 13EQF5YvByiTfptfDCTX0pYs+C2G4z0i6NGLBE3h1vxkILOw+NjOFzaqLFuOOyfLKZFD
 72QoUXQPJgJSosT6P60QiNsL7+xyKHRw3uQc76P9WThgsxdrU77am0SBNJiQ8kfGTS0O
 DJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HnfFchC3wMAMcLtgIbxWv9S1iSlr9IyZ2/2qohCAJVA=;
 b=HAgnZhZrdIkaTW6Mft1cUfpZfzmOOq73hnaJvBsYVz952o2VVqfHwMW8WNIDU3/U6r
 sUIeYAchV+StFJeTavj7phZB0lFYwNV1xJKPDx0AgnjGLKEp69cHHCxaqpYJUTnZUb91
 2ErxCiG/R4EV+PzlaOizJPaoxAopyr6QmOU0VRzr4VjzyuxnmiYn6X+6RdeizHVzpbAs
 P+mXFW9nz+BdL988PDevV55Zwx/9QVIjubqEurfuZ4+xWtbPvuzK1jeZOeVgGd/RFG6M
 QdhMuTb+SZEeleSkn1OuXhUVJncTD/8YGTGuY9fbV/AHZFtMAwFMfzBJ3Z51ii1Qt572
 wIZQ==
X-Gm-Message-State: APjAAAVWLARgSI+PsvHCG77ZYYC0J0UySjmSXjqlgadefh5t+sWxaaEL
 8298R6wP727ehv0bL45BRCXgToc7QsY=
X-Google-Smtp-Source: APXvYqwoJfFV3B1i4a1JSo+0079Wyn4XTtUWy/7PFJHRvF2XRC4i5fZ+OyZfEbfMwwB8mJoRgeTmZg==
X-Received: by 2002:a17:90a:bf84:: with SMTP id
 d4mr6069546pjs.124.1560439262506; 
 Thu, 13 Jun 2019 08:21:02 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id n66sm40988pfn.52.2019.06.13.08.20.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 13 Jun 2019 08:21:02 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 3/3] nvme: notify thermal framework when temperature
 threshold events occur
Date: Fri, 14 Jun 2019 00:20:38 +0900
Message-Id: <1560439238-4054-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082103_746857_D54F353D 
X-CRM114-Status: GOOD (  16.83  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
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
* v4
- support DT thermal zone device.
- use bitmap to iterate over implemented sensors

 drivers/nvme/host/core.c    | 14 ++++++++++++++
 drivers/nvme/host/nvme.h    |  5 +++++
 drivers/nvme/host/thermal.c | 12 ++++++++++++
 include/linux/nvme.h        |  7 +++++++
 4 files changed, 38 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4be339b..44dadbb 100644
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
+		nvme_thermal_notify_framework(ctrl);
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
index a9c63ea..40325b6 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -605,6 +605,7 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
 
 int nvme_thermal_zones_register(struct nvme_ctrl *ctrl);
 void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl);
+void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl);
 
 #else
 
@@ -617,6 +618,10 @@ static inline void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 {
 }
 
+static inline void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+}
+
 #endif /* CONFIG_THERMAL */
 
 #endif /* _NVME_H */
diff --git a/drivers/nvme/host/thermal.c b/drivers/nvme/host/thermal.c
index 18d0e4c..b5e835d 100644
--- a/drivers/nvme/host/thermal.c
+++ b/drivers/nvme/host/thermal.c
@@ -309,3 +309,15 @@ void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 		__clear_bit(i, ctrl->tz_enabled);
 	}
 }
+
+void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for_each_set_bit(i, ctrl->tz_enabled, ARRAY_SIZE(ctrl->tz)) {
+		if (ctrl->tz[i].dev)
+			thermal_notify_framework(ctrl->tz[i].dev, 0);
+		if (ctrl->tz[i].of_dev)
+			thermal_notify_framework(ctrl->tz[i].of_dev, 0);
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
