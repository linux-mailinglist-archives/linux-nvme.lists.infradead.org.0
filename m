Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986735BDD3
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 16:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xwCK96myMtN2TFI8YjY6OIvyqcKQtW47fOtc1k1TF/g=; b=NLkq4CqHmuANKXEdacYnoqucgi
	qTSEo9fU7a8hvdKzuqJIU0xDRkZJ73ibC2unkwvYlRiZ+zIwSXq8Y7QKvSSbyxqjuffu97UxUVs7Y
	p87yLmbc0CVLYA/O0ZBB9MG4etWOOUdK22SHbnZ5qT5xOIUfwGz7iGwNl01x0GUe4Y6A3GhNi9KRe
	lNiOEoSTkm7QhyKR1gPRAMgssd+dL1N7/JaUOZSX2sviAAlJFKjbpd+T1JbOviRZIPdUikyhfxaNd
	WsXQf3XS8NvQaRVBwW/BzYrAYcNFrpUnqLzAJWlvCmeXlyNDy60gPWZHFzEoGKPumUM1OocTfIyn5
	cZxhBcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx4A-0001K3-MU; Mon, 01 Jul 2019 14:13:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx3Q-0000rU-GQ
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 14:13:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so7404741pls.8
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 07:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Np8t2ahuf6PSMMAtQnfPXPhzxV6M5y5kKeRAo/FYD1c=;
 b=KgcTHsMFOwmh3UnuXrsJF1EA2VSVVmNtZLBxlMR8hyWdERYGMcLjbinOPhZkaJPI/1
 v0Rgz9Zm0FYAbCn/iyTDWCzkbf1cKwuCHNiFD0FZ4hfyyIPEU7cQ7RVh/m6Nvn1sfQzC
 +ji8X3mFWZBXgrDnRHWSNIPlUPaoRxsuN/ZLEjw8YzrwxLW5bnWTjCb4IkjdyHBIAcJ0
 pZAGFkK0Bnza/lkcDKg7dq/5YkD3rBvxqKu4PbZG0sZBApv6PPIFKLAIJKbZBfAC368y
 qYZnC7LsA0vwefjKRN6LaBZ0JDEuL7GGzdOX6ET2ufoxB5CKqmm94Xk7RZwz3jg6SMnW
 iP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Np8t2ahuf6PSMMAtQnfPXPhzxV6M5y5kKeRAo/FYD1c=;
 b=cG0DCDxL4XC/dgQV0t+vL5c+Mc2uni0D4dwyIxgSIl8OinDYXpWXYe1+d6jy0uI1Zh
 k7EXFbqMxrm/CB6vv8YzqrMEAg26QBxWq42RuRptHsn9UOP+jA7Re+XgRn50afgFaa8o
 GHRxNHXBWNZlZNQYdd3VCD8baPoMeTdnsMFSxZNHz1dsXdvZi8D2LSWx48ETJslDI43V
 C+fMTqIZbDpKUW+80qfdIoFhuDpIyapjzGFpfIyoMxAg2duUiQNS5dnZD7EFAB8qkKiv
 yX9Dpf9qyRqMgYUMww3bmlvWx3SPFfwQW4PXwr9c75T1ommZaISh7gkFtJRZvPJZw994
 d4ig==
X-Gm-Message-State: APjAAAXc03KYlTtP9PxKANZoYJs8zJmGqdA6M3aJw14ocxCb3igzMpZm
 i8RJW9SRsdOTKhyXz9EhukCMKGa4
X-Google-Smtp-Source: APXvYqxR8ijDX+vYdEqlei8m9p262FyDtdBtj0wEjAJ3RyOplcr2PCl47Dwcp3UQ42+H9ufLUaELfw==
X-Received: by 2002:a17:902:112c:: with SMTP id
 d41mr28901493pla.33.1561990391753; 
 Mon, 01 Jul 2019 07:13:11 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id n19sm11383871pfa.11.2019.07.01.07.13.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 07:13:11 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v5 3/4] nvme: support DT thermal zone device
Date: Mon,  1 Jul 2019 23:12:33 +0900
Message-Id: <1561990354-4084-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071312_573282_7F4B4489 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

In addition to the standard thermal zone device, this adds support for
registering the DT thermal zone device.

If there is a device tree thermal zone node with the nvme temperature
sensor, the standard thermal zone device is not created.
Because we don't need two thermal zone devices for the same sensor.

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
- split the DT thermal zone support into separate patch
- don't register both standard and DT thermal zone

 drivers/nvme/host/nvme.h    |  1 +
 drivers/nvme/host/thermal.c | 38 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 49dd59ec..d501567 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -159,6 +159,7 @@ struct nvme_fault_inject {
 struct nvme_tz {
 	struct thermal_zone_params params;
 	struct thermal_zone_device *dev;
+	struct thermal_zone_device *of_dev;
 	unsigned int sensor;
 };
 
diff --git a/drivers/nvme/host/thermal.c b/drivers/nvme/host/thermal.c
index c3608f6..431aeb4 100644
--- a/drivers/nvme/host/thermal.c
+++ b/drivers/nvme/host/thermal.c
@@ -150,6 +150,11 @@ static struct thermal_zone_device_ops nvme_tz_ops = {
 	.set_trip_temp = nvme_tz_set_trip_temp,
 };
 
+static struct thermal_zone_of_device_ops nvme_tz_of_ops = {
+	.get_temp = nvme_tz_of_get_temp,
+	.set_trip_temp = nvme_tz_of_set_trip_temp,
+};
+
 static const struct thermal_zone_params nvme_tz_params = {
 	.governor_name = "user_space",
 	.no_hwmon = true,
@@ -164,6 +169,36 @@ static int nvme_thermal_zone_register(struct nvme_ctrl *ctrl,
 	int ret;
 
 	tz->sensor = sensor;
+
+	tzdev = thermal_zone_of_sensor_register(ctrl->dev, sensor, tz,
+						&nvme_tz_of_ops);
+	if (!IS_ERR(tzdev)) {
+		int trip_temp;
+
+		ret = tzdev->ops->get_trip_temp(tzdev, 0, &trip_temp);
+		if (ret) {
+			dev_err(ctrl->device,
+				"Failed to get trip temp: %d\n", ret);
+			return ret;
+		}
+
+		ret = tzdev->ops->set_trip_temp(tzdev, 0, trip_temp);
+		if (ret) {
+			dev_err(ctrl->device,
+				"Failed to set trip temp: %d\n", ret);
+			return ret;
+		}
+
+		tz->of_dev = tzdev;
+
+		return 0;
+	}
+
+	if (PTR_ERR(tzdev) != -ENODEV)
+		dev_warn(ctrl->device,
+			 "Failed to register thermal zone of sensor %d: %ld\n",
+			 sensor, PTR_ERR(tzdev));
+
 	tz->params = nvme_tz_params;
 	snprintf(name, sizeof(name), "nvme%d_temp%u", ctrl->instance, sensor);
 
@@ -286,6 +321,9 @@ void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
 			tz->dev = NULL;
 		}
 
+		thermal_zone_of_sensor_unregister(ctrl->dev, tz->of_dev);
+		tz->of_dev = NULL;
+
 		__clear_bit(i, ctrl->tz_enabled);
 	}
 }
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
