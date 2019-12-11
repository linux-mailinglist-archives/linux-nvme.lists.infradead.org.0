Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4087B11ADF2
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 15:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3hJPxMHTMU68+zI1rZhCogungBIqSa1s1KLdWBdpRBk=; b=Blr+1QV/xHT3jz3hY15peHxnIi
	MSL9JivJBDt/61B5BN9jv8z7dZ6LR2JyqGduhL1NeCvjkJEvMY96eboEazI5AI2SwTQVd7uo7sfRM
	kGsqfPndz4Fhn1FyW7JhRJeAyFFpbjhLPo3gRztTdqS9ZlOSUpPQaGC6OFAxjHBjdXS3vv3Ke1JBR
	0YxNFu7yr8+RCQeF5TS2ihn+TgUPRgu4dAGB0mMgscQIWJE8YfOP2EZ52D6fJriR1Nyv3JDh40QDc
	aweY/I4zYwQPRuOo996thEMBPu4Jl31gID5h/RbD+ofaULVcKF6kOmxBMv5Q5cfWyUH88WYniH5Ed
	Odqg6jbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3A1-00079K-8f; Wed, 11 Dec 2019 14:40:17 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if38z-0006XM-6Q
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 14:39:16 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l4so9015123pjt.5
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 06:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wO3jkH+pH7VdbFARKta9bxoSsbke4b8Zl03d1mXFCcM=;
 b=TD38CrYzoOsQjlzXB2cRRd9HRMMDxp/xytFAH/OIzDUwWaAkxa4/eFqTBtP/67AZPk
 4Cb+kTlTIFDeKa5EbUk3bL883UV4w4DnKx5+iIGYC5bjeArB1QqBJeKqt/SXfFn7m2XF
 XqX/7RxhHaTIJTZn7f8PKyerSkxDJR6+DutaZhebcyVWAmtxb6L0DPh/mspVZQkW5qyP
 WtpwxDzi8FXsr2Bg0te7lsyN58AUxi/7W7OGFKQawgqAdVsWF+TKZLpXZocEiHDha8j8
 0LQWIchLb46fnZagkhhjL/h/ZgywDXrQ9noPfS9l3XIPha4u59zKcCe2mCmy52hJnNNr
 gfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wO3jkH+pH7VdbFARKta9bxoSsbke4b8Zl03d1mXFCcM=;
 b=VatpZpPf7/n6L64ZSrJsB4OenwBMgLZTJMqGg6JQ+sYm51ewyV3m+NtZ54nmZ762g1
 SJSu1aZIc+9mJqt7uh39MALtO8pwrE45spKoFy1rBhJKMP96fHppcqnK6yb+K2RSpPlP
 v9xsM3oLNUEjBjjbBbzLx0II7qNA0Mo9SqFTviGMKF1FZE+fyA7MdfkAx4flwldZrKVG
 PVJourFsfyba+SrlRn8jElACPGOYZM2AusHyWQF7jNHwliFNhEqChSjggN+SBzUIcqMR
 MyVhZlfzunglNZ+/bIE89rc/dbhhlTzE109NNPhuudqFxwN6S6JlZnlFi1d53sapZ1oL
 ZArA==
X-Gm-Message-State: APjAAAWz44bPlpej/CjJRctkIO5J39Ed697Lfvxa/dPkWQu0cHf1ydI8
 xR1UEVOXiRW7ilo9oodvvozVF+igLTQ=
X-Google-Smtp-Source: APXvYqxT+/d6//9eH3ZYvjUMxrZPNz60pNUqUzbihUXUSGTG82cKy/Rxgy6yRUUjVA8t32UcmaqAxw==
X-Received: by 2002:a17:902:8d83:: with SMTP id
 v3mr3552557plo.205.1576075151675; 
 Wed, 11 Dec 2019 06:39:11 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id q11sm3444239pff.111.2019.12.11.06.39.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Dec 2019 06:39:10 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/12] platform/x86: intel_menlow: switch to use
 <linux/units.h> helpers
Date: Wed, 11 Dec 2019 23:38:11 +0900
Message-Id: <1576075099-3441-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_063913_294447_1F3F4CFF 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Guenter Roeck <linux@roeck-us.net>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This switches the intel_menlow driver to use deci_kelvin_to_celsius() and
celsius_to_deci_kelvin() in <linux/units.h> instead of helpers in
<linux/thermal.h>.

This is preparation for centralizing the kelvin to/from Celsius conversion
helpers in <linux/units.h>.

This also removes a trailing space, while we're at it.

Cc: Sujith Thomas <sujith.thomas@intel.com>
Cc: Darren Hart <dvhart@infradead.org>
Cc: Andy Shevchenko <andy@infradead.org>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amit.kucheria@verdurent.com>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- rename new header name from <linux/temperature.h> to <linux/units.h>

 drivers/platform/x86/intel_menlow.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/intel_menlow.c b/drivers/platform/x86/intel_menlow.c
index b102f6d..101d7e7 100644
--- a/drivers/platform/x86/intel_menlow.c
+++ b/drivers/platform/x86/intel_menlow.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/thermal.h>
 #include <linux/types.h>
+#include <linux/units.h>
 
 MODULE_AUTHOR("Thomas Sujith");
 MODULE_AUTHOR("Zhang Rui");
@@ -302,8 +303,10 @@ static ssize_t aux_show(struct device *dev, struct device_attribute *dev_attr,
 	int result;
 
 	result = sensor_get_auxtrip(attr->handle, idx, &value);
+	if (result)
+		return result;
 
-	return result ? result : sprintf(buf, "%lu", DECI_KELVIN_TO_CELSIUS(value));
+	return sprintf(buf, "%lu", deci_kelvin_to_celsius(value));
 }
 
 static ssize_t aux0_show(struct device *dev,
@@ -332,8 +335,8 @@ static ssize_t aux_store(struct device *dev, struct device_attribute *dev_attr,
 	if (value < 0)
 		return -EINVAL;
 
-	result = sensor_set_auxtrip(attr->handle, idx, 
-				    CELSIUS_TO_DECI_KELVIN(value));
+	result = sensor_set_auxtrip(attr->handle, idx,
+				    celsius_to_deci_kelvin(value));
 	return result ? result : count;
 }
 
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
