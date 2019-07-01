Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D71B5BDCC
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 16:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=33qDBLOD5Rnb2GlHhWS6daBZ78tRnvBxXrlFpDlfZL4=; b=NAA7eyQxUpgqsb11/IcOH7VeVp
	wJoGm5CVRuSZ4P7r16eAwnD69QgFfTT3J4VpqlYC9Loo6HN0oFTb7w+jUSGHPP9DzAc9lWuaFhZje
	MvUGWK3fhh+pmVLDMG3SxnhQLedrpDHNisWwW/5+A/O9B8ZdiFPjPzWhDwuuMSYdajgeZNCt/JTb6
	Sfxj6BEglzPzqvLs+iyAfDIMSMCEOodDyD4rjWhOKklmL0JgBtKonvXrnrbHXBlY84dZU+nyWv2XO
	TCxGRXztXrcLzemL7QfA5OANHeXr+MlgfKabVPx24DyaUkji2fMCGuznfbQq78d+RpYTZqF1mEphf
	4wuiHqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx3p-00012R-VD; Mon, 01 Jul 2019 14:13:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx3O-0000nr-O5
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 14:13:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so7424587plr.11
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 07:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ABKX75OjoI/drYi7g1T9gujM5GgZzvWrhlpWZ5iT72I=;
 b=HfuK/NeDPjSzXaiehf3+R9ap0zoStELMasKK9LEPlnFCnePRrf4BoU+7c4M4IWT9Wi
 H9pK+PMAXGBcmMHfGsxHUMdIHS3Ka7TuPHiy+tvr1C4HZ1jvRRO8y2nvVOxmmcd3BX/d
 /ZcNei6CvUgAUk4D3fehlq+zlSunMPs62VfadgOyyEJpPne5Tv1ZA9wDYn8L9ZIHO1y5
 tVtZ2tCbqO3qx/eynkJ/WdjrTsLbwaw32/iIFFOJ3Gsh0u6MeE24+2cBBNvDoztUsDiw
 1/Ps9eXbOwuMlJ6WB/EbDXFXJDZlKCW/ZikM/S4Q8w9oiKmqUgvBbp0isCNQOF0NQ8Fg
 4tWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ABKX75OjoI/drYi7g1T9gujM5GgZzvWrhlpWZ5iT72I=;
 b=lZvK2ou+o70wdNhOPYhRpj9P6bL2JKriWFSRjbiCJR66V5Hs71GUO/tTEQZlIy1d9P
 WIGhz7eu5r9hEldhJIDEys80qHYNMZ/bBam4Kjik+JnYjAmPGTAH/XFiWwRl/N8wgIrf
 gjTo1DQtvBli7g9x286H/B1O11Oun10PayjQqLVrsCd9saeTkN63206U6gCL8VRJBlpl
 mNcHtF1v4mtuNe5EG+Du842PhQ+zkPmHYX//2qQTY1CmeNLFBqQ6jMdPPU5UKmQpC/jm
 g58kVPo2D58LS4VMJONuzQEFZCZldLQ+iW3GlR5i+nUs3bq97FiVcikS29myWOTTbQJB
 FI1g==
X-Gm-Message-State: APjAAAXVgvt6o8JbAzVNtAnh2M1frg3D6bcTUhzHi+lF/eFjNEBNA5SU
 DPliCSpjMaGsKLx20IwFog6uMacU
X-Google-Smtp-Source: APXvYqymfe41rO+LAzdfCkwWUQVxxkz33YfcMQpy8dexI8rEYYWxAOyBNTmHwUINZ2slQh41R1MYEQ==
X-Received: by 2002:a17:902:2aa9:: with SMTP id
 j38mr28101901plb.206.1561990387588; 
 Mon, 01 Jul 2019 07:13:07 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id n19sm11383871pfa.11.2019.07.01.07.13.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 07:13:07 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v5 2/4] dt-bindings: thermal: nvme: Add binding documentation
Date: Mon,  1 Jul 2019 23:12:32 +0900
Message-Id: <1561990354-4084-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071310_846130_3894F14F 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Add thermal binding documentation for NVMe temperature sensor.

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
- New patch

 Documentation/devicetree/bindings/thermal/nvme.txt | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/nvme.txt

diff --git a/Documentation/devicetree/bindings/thermal/nvme.txt b/Documentation/devicetree/bindings/thermal/nvme.txt
new file mode 100644
index 0000000..60b90de
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/nvme.txt
@@ -0,0 +1,56 @@
+Binding for NVMe temperature sensor
+
+An NVMe controller reports up to nine temperature values in the SMART / Health
+log.
+
+Required properties:
+- reg: A five-cell address encoded as (phys.hi phys.mid phys.lo size.hi
+  size.lo). phys.hi should contain the device's BDF (Bus/Device/Function)
+  as 0b00000000 bbbbbbbb dddddfff 00000000. The other cells should be zero.
+  See also Documentation/devicetree/bindings/pci/pci.txt
+
+- #thermal-sensor-cells: Must be 1. See ./thermal.txt for a description.
+  In the thermal-sensors property, the sensor ID 0 for composite temperature,
+  1 through 8 for NVMe temperature sensor N.
+
+Example:
+
+&pcie0 {
+	...
+	nvme: nvme@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		nvmetemp: nvmetemp {
+			reg = <0x0000 0 0 0 0>; /* DEVFN = 0x00 (0:0) */
+			#thermal-sensor-cells = <1>;
+		};
+	};
+};
+
+&thermal_zones {
+	nvme_thermal: nvme {
+		polling-delay-passive = <2000>; /* milliseconds */
+		polling-delay = <0>; /* asynchronous event driven */
+
+				/* sensor	ID */
+		thermal-sensors = <&nvmetemp	0>;
+
+		trips {
+			nvme_alert0: nvme_alert0 {
+				temperature = <80000>; /* millicelsius */
+				hysteresis = <2000>; /* millicelsius */
+				type = "passive";
+			};
+		};
+
+		cooling-maps {
+			map0 {
+				trip = <&nvme_alert0>;
+				cooling-device =
+				<&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
