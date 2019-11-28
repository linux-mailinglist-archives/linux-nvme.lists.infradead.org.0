Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43510CACE
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 15:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vXMYUA0Wd05QSZxCFMzK7ZzlfQj1GlCbGjWM2H6gfKQ=; b=lEEq1GvUyAqlKzWJwURCvXeh6P
	hY2aCB3qiDYPtSlOI43NP2kqt775tKLphOmvq10pZEZ/5YoPbVREbu5QP1lrl0AD0nKIu1mM6wCIh
	dJ0j1Or86NNtNRZDF7eZuLb4gLrj7zv7DsZi8q3wUgVnOv3Zn1G+FW+1SPIqjaOs0Hx4DnhpUSGRC
	caGiZNoxksxX5hjhI9Fz8ccj2agotF9qwzuJfE9tjDP8oaiIVM7TgT1HfmwJKLVCjI+faZ9joCOo6
	lhJtY8o+IvPKb9C2e5pKUf8xtfadmjeZfJtrd+VTtLIlhJz2Yrio6ANQe8b0fSwuo9gNTaxC6IH2p
	V1MQwjZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLCa-0006MS-0j; Thu, 28 Nov 2019 14:55:28 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLC9-0006GF-UN
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 14:55:03 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bo14so12005496pjb.1
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 06:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g0HiFEqIr34ap3Bh6iBqZPv3kmztxiAkeFZgF3cKXMU=;
 b=uiVu1qxsLxyPYPoq+O64OM6AHYD3Bo6KqoMZ3JLMT5lLAJOhBs5sZYiog6g3UcNpht
 4TR1HNXXKqSgpj+SWe7c7HEulw0LAiORFfq0cChrdGDGczV+SsU2JZ7HQ+ziNQT9wJ4Y
 MB7NcLDAssHLAZzKKyWDhP1JsLR1j4AN2Z7uedi3TVVqn0N6kDtsGenJktAVbo9yd0Ld
 WfHv7NZjr2/nBCN4P6UZVcHEHfRC/JE18aY7IkPJTJBFHWQcbHN6RXbLLujov3a+Sda0
 PZpGMBGIANYl3N1CGMyOPYLww9mOgZtSxc+1CSWJ9aAa3WfuFENMCy2tpfPz6GWN1MQI
 y+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g0HiFEqIr34ap3Bh6iBqZPv3kmztxiAkeFZgF3cKXMU=;
 b=d7OJKUp6Z7tJSOxwXUrf+BOnoyEtCk8G2IDZ5/hxGHTYG+T9ZHOTPecZYb/2Clyblq
 iRhfqsFzdlz3UPBdTqLkKm1CdQ7mIfMs/ap15Vq31g8jH8RlShv/FI7yTc9mbZO9AJ0I
 eX9VNLDlpxLrfoueX5qk8k9rdLvTWCwHMHYPqEpCrYyOm6+4MEtJe/KZ9n4e8fmC9zAW
 foPYpDYzG3WXkrNLGP95r5k8w6YyaYAztFADyMIN5FpQq9t73EaexItwNwt1KRU/CpXs
 5pm/QMhxKOI96T7cUgoP9GmAizg6l7RByeJslImuFMpOpxDVjJF5Vvo1+c90LKI6BdEC
 gx2g==
X-Gm-Message-State: APjAAAVBVhkMraSe+RD2O685CXpC8zzfmCw7ets4egXiMdfHmPLGtTyt
 VpRNWfIbr7ZeECd2aXX6j32XmXNVQyE=
X-Google-Smtp-Source: APXvYqxwvjfJwJ9RVZBGU55qS1UZ7w101xpLRriZKYh/OSQlyuip6R8NkJJ+WBD7ODgUVFOLfSnyGg==
X-Received: by 2002:a17:90a:330c:: with SMTP id
 m12mr13090381pjb.18.1574952900858; 
 Thu, 28 Nov 2019 06:55:00 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:8015:e854:5ef0:f52e])
 by smtp.gmail.com with ESMTPSA id z11sm22282563pfg.117.2019.11.28.06.54.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 28 Nov 2019 06:55:00 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] add header file for kelvin to/from Celsius conversion
 helpers
Date: Thu, 28 Nov 2019 23:54:32 +0900
Message-Id: <1574952879-7200-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065502_042068_67ECEA29 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

There are several helper macros to convert kelvin to/from Celsius in
<linux/thermal.h> for thermal drivers.  These are useful for any other
drivers or subsystems, but it's odd to include <linux/thermal.h> just for
the helpers.

This adds a new <linux/temperature.h> that provides the equivalent inline
functions for any drivers or subsystems.  It is intended to replace the
helpers in <linux/thermal.h>.

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
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- add deci_kelvin_to_millicelsius_with_offset() in linux/temperature.h
- stop including linux/temperature.h from linux/thermal.h

 include/linux/temperature.h | 51 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 include/linux/temperature.h

diff --git a/include/linux/temperature.h b/include/linux/temperature.h
new file mode 100644
index 0000000..679e70a
--- /dev/null
+++ b/include/linux/temperature.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_TEMPERATURE_H
+#define _LINUX_TEMPERATURE_H
+
+#include <linux/kernel.h>
+
+#define ABSOLUTE_ZERO_MILLICELSIUS -273150
+
+static inline long kelvin_to_millicelsius(long t)
+{
+	return t * 1000 + ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+static inline long millicelsius_to_kelvin(long t)
+{
+	return DIV_ROUND_CLOSEST(t - ABSOLUTE_ZERO_MILLICELSIUS, 1000);
+}
+
+static inline long deci_kelvin_to_celsius(long t)
+{
+	return DIV_ROUND_CLOSEST(t * 100 + ABSOLUTE_ZERO_MILLICELSIUS, 1000);
+}
+
+static inline long celsius_to_deci_kelvin(long t)
+{
+	return t * 10 - DIV_ROUND_CLOSEST(ABSOLUTE_ZERO_MILLICELSIUS, 100);
+}
+
+/**
+ * deci_kelvin_to_millicelsius_with_offset - convert Kelvin to Celsius
+ * @t: temperature value in decidegrees Kelvin
+ * @offset: difference between Kelvin and Celsius in millidegrees
+ *
+ * Return: temperature value in millidegrees Celsius
+ */
+static inline long deci_kelvin_to_millicelsius_with_offset(long t, long offset)
+{
+	return t * 100 - offset;
+}
+
+static inline long deci_kelvin_to_millicelsius(long t)
+{
+	return t * 100 + ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+static inline long millicelsius_to_deci_kelvin(long t)
+{
+	return DIV_ROUND_CLOSEST(t - ABSOLUTE_ZERO_MILLICELSIUS, 100);
+}
+
+#endif /* _LINUX_TEMPERATURE_H */
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
