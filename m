Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFD810CAEB
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 15:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NgnQaKrgTZMQ33+hncHwu2V63Etq62Tc2SWl4ZZmOkw=; b=Ql1+adyvoo+FzGKB69Ttdx9hES
	RIgatPoi0Pstmjjlcn6PZG+dVmq0oCvzvPsUGSDSIGSq7V/UVWslyAtW1zJEJH1Vc7ipQRYT+Gp1d
	tDTBNlsrT0PMp4hytbp747DKAAB0d/Yh5L6w7nRRZK0iU1gLN962faqVgOplo/ab5KUACYONJRZ6+
	+QhfiUlhwbNfayinJgOxZWvpbbpaijMpdx+f86QTFoUzjs3bWJS3pI/Sq7QmBaz+bjmSR40itghJS
	D4xj3HmqvggCaUItZ6PcoDnRA/m/bVRTTb+JhOyFqve+7rpSycPRcCJF1U7GxDcPlwuz8sR+idIAq
	mvjLYO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLEo-0000lc-Lb; Thu, 28 Nov 2019 14:57:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLCf-0007sF-K1
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 14:55:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id e6so13006753pgi.11
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 06:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9drT9CU5cZN6dzbiFt4dm2bln4hYnigDIHpJhrBGGI4=;
 b=CTpe8s2xCUn55c5tx7AZUMZmQFZTo7qTzSlyyhWDRNZHydZxvqwsQmL6ogW1652b52
 OACTjH44RQmVeLfHQbVyDLx8Vd83i7kIhU5hCKICNON6BtISh6E/d89zNjqNe/4t6PCt
 DkGm6SqPiTF7LJLoBwW5c/DTDfeYgEdPZalDfSNxcqcytKwwumIHhYnxLeZzeXSQEbzQ
 7I+e22yZDZ2zGxogtzTv46Lxa5jBexMH65DJUi/Ypu9ToRrl0FwiB5zOuH4NCj3syD97
 8By4nqa2uYdz6Hv17AqYwA/K9SbsTu5rqes1cHVKZr6Q/aXZ4/NiU2A8noQ8XiorPir+
 8u0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9drT9CU5cZN6dzbiFt4dm2bln4hYnigDIHpJhrBGGI4=;
 b=U9uXNpXCVqT6KGsqveI23RP+Nn3hN1lhvHt4V3doW/GNorZVejSqvolM9dcTBqyKf9
 6Yw8qDcaYgYa5G40rBjre/g7N8AkKDLGQkAq3YhDRzt9svKsuCXYsmZSB/Rhw6+4fFCq
 RpbsR+x0fUkLTvVwgtNRqeP+QHdRUc7PkFRnrLQgDDpRGqVVefbEJVmeHs/yag3dmoUO
 dzL4eXLe2u2yZu5RXfWwURtZ8mpCd1OJFPe08V2hnvTBfWspghUDAXb7OifFZMgeOsgQ
 EcOv32OWbfsC6Cg3qtvDux2SYpG71xvk/YchkeqfT0hQLy81Hg4gaecgmnLVTLHayonD
 V1Qw==
X-Gm-Message-State: APjAAAUvgVtvwmlYZbqyL3x+18tkAJKyuVe0BoVkAYr/8T2f1HhRIamA
 vgIVRZ+QEO0wX7rxo8IdNVT/L7VumFA=
X-Google-Smtp-Source: APXvYqz5GDqSUvR11svaKL3mV9F7NGqWfJiFhxG9BLX8Gx4vc1cLuLg0Od4+rsbz5kbxFJNVK+mzmA==
X-Received: by 2002:a63:642:: with SMTP id 63mr6907260pgg.73.1574952931743;
 Thu, 28 Nov 2019 06:55:31 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:8015:e854:5ef0:f52e])
 by smtp.gmail.com with ESMTPSA id z11sm22282563pfg.117.2019.11.28.06.55.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 28 Nov 2019 06:55:30 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] thermal: remove kelvin to/from Celsius conversion
 helpers from <linux/thermal.h>
Date: Thu, 28 Nov 2019 23:54:39 +0900
Message-Id: <1574952879-7200-9-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065533_710602_E90E36A1 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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

This removes the kelvin to/from Celsius conversion helpers in
<linux/thermal.h> which were switched to <linux/temperature.h> helpers.

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
- don't preserve DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET()

 include/linux/thermal.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index e45659c..da272fa 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -32,17 +32,6 @@
 /* use value, which < 0K, to indicate an invalid/uninitialized temperature */
 #define THERMAL_TEMP_INVALID	-274000
 
-/* Unit conversion macros */
-#define DECI_KELVIN_TO_CELSIUS(t)	({			\
-	long _t = (t);						\
-	((_t-2732 >= 0) ? (_t-2732+5)/10 : (_t-2732-5)/10);	\
-})
-#define CELSIUS_TO_DECI_KELVIN(t)	((t)*10+2732)
-#define DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(t, off) (((t) - (off)) * 100)
-#define DECI_KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(t, 2732)
-#define MILLICELSIUS_TO_DECI_KELVIN_WITH_OFFSET(t, off) (((t) / 100) + (off))
-#define MILLICELSIUS_TO_DECI_KELVIN(t) MILLICELSIUS_TO_DECI_KELVIN_WITH_OFFSET(t, 2732)
-
 /* Default Thermal Governor */
 #if defined(CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE)
 #define DEFAULT_THERMAL_GOVERNOR       "step_wise"
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
