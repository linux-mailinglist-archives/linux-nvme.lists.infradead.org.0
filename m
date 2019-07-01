Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FC95BDCA
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 16:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CzX5nxYzJ0FFQApjX6jNJcErDhKMXqsaVBs/AJeecJU=; b=EX/
	973ITXW5LGAe4zrRKQrcvd1uCpXcvqYWZAl/fFT1yq+ETvLI5kvgmumNUEUIFKD67aB5gCiErHchc
	KXN0r3PpNFbtm576hRLSu2Yn7YQSsaa3Y1IAGRBQngm7wnMBFIXTGC5Wq/2cofVj73jjxGvLg4Xq/
	P+RO1e2KXslOmM4m4+eCT8mo/Fe96uhQ8FxLfJJkkbxmgqvUu3oc0KYfKAtxS6IQ++obd44acOXC2
	KYsAyqCIK3cis+elaUGZvTUZ0KpvOvNVBLpxfucLKOvbLsb4TiOd+mgDjGLNC13VTEJs2zICrFT4N
	6HWSDwRRidB/5jOtqO1xi3NPjajeT5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx3L-0000ge-5v; Mon, 01 Jul 2019 14:13:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx3D-0000cO-Nl
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 14:13:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id p10so6137291pgn.1
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 07:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=h+XSHd4b1fCkppqiY9xI9ITE6SRy55kX3ODXtBhYc4Y=;
 b=b6xtPlncDUrIYZX6zf/4Q5H9OUfmXC/4aphzSS8PvxnTReap814Ol1dXShonlKeSnB
 11LQ0HCF2+9yz2dtQsG9ULWaUYPTe8Nh6q9Lv26xWHYJP9l4qBH5vSxSxgptrXQt+zCl
 uqGlYngieFglTkBshLGYaLDkle22HW+EbxCp9IBbh0djsPk0ntS5CnbweYAUuiQGZPgp
 y3Dm637tX/0gR0NNmG7gw5BejYKYQ/RyQjzPO/GN9emqiyPefSoqRscferZNy0RBqW9Z
 hz+yeyrHJGOL25aV54Wv78MFCzmd3RTrQAxra4Gm6THquFeIgKm2xiNWMUL6PvInheoe
 +KLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=h+XSHd4b1fCkppqiY9xI9ITE6SRy55kX3ODXtBhYc4Y=;
 b=owq2/WZY/zPYxd09wdOcE66Utf6LSSi3m23OHYvNcHDbv6TGlADJ1QL5shWn4jZLui
 RC6Rllj5v6s9xCetO9AxMLAubpu6eAZ9wkklPRYR36ecd7aWtqO/2FHWOOU4u4zxplPf
 QWBVBQ8MO0BOFqB+nn6SalPavIG0DLBHmXy94rpkeqC+xY0vevx6/R8m97YtMYKxjhjN
 J7ABg4cNj0sKecY6mkqNJ9E2mlHR4JuiszVVok8To0uFg8q5oYPdxZwA5AwdsDfXWS5M
 5D4N0zDm7BjZ4SWu4Q7WeWmHkZfoGwJ+f4Dk5WsGIj/4+fA1/LjChvxJw5A2WtXKg1eh
 F1SQ==
X-Gm-Message-State: APjAAAV3AKYeFKsPZToG3Oq27wYh5Gd+JPlCDm/TBFRpVu/iMSe/NJak
 YLvbsFsT/0CoHnW6M2RjmTMLHDr9
X-Google-Smtp-Source: APXvYqxRq/1gXDaWEnyYxzo3l2cPbCJtiGPUMJ/+a7VBlfAQOYU32bUQ+MFApH+victAg0twkrGN6A==
X-Received: by 2002:a65:510c:: with SMTP id f12mr24221010pgq.92.1561990378431; 
 Mon, 01 Jul 2019 07:12:58 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id n19sm11383871pfa.11.2019.07.01.07.12.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 07:12:57 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v5 0/4] nvme: add thermal zone devices
Date: Mon,  1 Jul 2019 23:12:30 +0900
Message-Id: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071259_801559_74384538 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

The NVMe controller reports up to nine temperature values in the SMART /
Health log page (the composite temperature and temperature sensor 1 through
temperature sensor 8).
The temperature threshold feature (Feature Identifier 04h) configures the
asynchronous event request command to complete when the temperature is
crossed its corresponding temperature threshold.

This provides these temperatures and thresholds via thermal zone devices.

The main purpose of this is to turn on a fan when overheated without
polling the device for the smart log that could prevent the lower power
state transitions.

In addition to the standard thermal zone device, this adds support for
registering the DT thermal zone device.

* v5
- remove 'Export get and set features' patch as it has been merged in -next
- split the DT thermal zone support into separate patch
- round up temperature when writing trip point
- add DT binding documentation
- don't register both standard and DT thermal zone
- use thermal_zone_device_update() instead of thermal_notify_framework()

* v4
- add thermal.c to hold thermal zone related code
- add 'use_thermal_zone' module parameter
- add CONFIG_THERMAL_WRITABLE_TRIPS dependency
- add comment about the return value of nvme_thermal_zones_register()
- support DT thermal zone device.
- use bitmap to iterate over implemented sensors

* v3
- Change the type name of thermal zone devices from 'nvme_temp<sensor>' to
  'nvme<instance>_temp<sensor>'
- Pass a NULL to the status argument of nvme_set_feature()
- Change the name of symbolic link from 'nvme_temp<sensor>' to 'temp<sensor>'
- Don't make it fatal error if the device provides a response
- Don't register thermal zone for composite temperature if smart log reports
  zero value
- Move the thermal zones registration and unregistration into the core module.

* v2
- s/correspoinding/corresponding/ typo in commit log
- Borrowed nvme_get_features() from Keith's patch
- Temperature threshold notification is splitted into another patch
- Change the data type of 'sensor' to unsigned
- Add BUILD_BUG_ON for the array size of tzdev member in nvme_ctrl
- Add WARN_ON_ONCE for paranoid checks
- Fix off-by-one error in nvme_get_temp
- Validate 'sensor' where the value is actually used
- Define and utilize two enums related to the temperature threshold feature
- Remove hysteresis value for this trip point and don't utilize the under
  temperature threshold
- Print error message for thermal_zone_device_register() failure
- Add function comments for nvme_thermal_zones_{,un}register
- Suppress non-fatal errors from nvme_thermal_zones_register()
- Add comment about implemented temperature sensors 
- Instead of creating a new 'thermal_work', append async smart event's
  action to the existing async_event_work
- Add comment for tzdev member in nvme_ctrl
- Call nvme_thermal_zones_unregister() earlier than the last reference
  release

Akinobu Mita (4):
  nvme: add thermal zone devices
  dt-bindings: thermal: nvme: Add binding documentation
  nvme: support DT thermal zone device
  nvme: notify thermal framework when temperature threshold events occur

 Documentation/devicetree/bindings/thermal/nvme.txt |  56 ++++
 drivers/nvme/host/Kconfig                          |   1 +
 drivers/nvme/host/Makefile                         |   1 +
 drivers/nvme/host/core.c                           |  19 ++
 drivers/nvme/host/nvme.h                           |  40 +++
 drivers/nvme/host/thermal.c                        | 343 +++++++++++++++++++++
 include/linux/nvme.h                               |  12 +
 7 files changed, 472 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/nvme.txt
 create mode 100644 drivers/nvme/host/thermal.c

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
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
