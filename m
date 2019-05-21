Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5843E254D4
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kWNPgwtrPX+YNj6J/9kdDCYas4YKsm9e6GI8SXbUX+w=; b=knZ
	jhCbEWwRHXzGj00NWcqyYxTic5B+DXAASBagfgTnYrIDgdVAuWiP5jmlskh+PPZLtfGQ1WKVCyPmh
	1hry5pZq5fxPv5EhzJQZdh7D0br4vdeYSDgwHaPz2skUW09X2lfFCL9/4rDrWaV5R0R9DW6rJtF+W
	VrHtJc6FvpI1w5A1radUAdyR4qnl62YnZvXKE/769Xt1Ioi9JMeD7AdOUA0Ps/szc362ngz55xp9d
	MThZ915WfBLaGeHmIqgkjxUiaAJr2Fh3paQ9csGiSwQk5znxdJRQCe/fOtwPbb5zKnjGO+Pqh5vrZ
	xpTQg7V79Fmke7v7a+Xx2AsFE+LMSLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7G2-0001y8-8G; Tue, 21 May 2019 16:04:54 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Fd-0001Xl-9Y
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:04:48 +0000
Received: by mail-pl1-x635.google.com with SMTP id gn7so4495654plb.10
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nk+/ciJTmIcBRGNtwKGKAlhXjyIqj/WCax4ZAyWNJvI=;
 b=n8itc6KpW9b62d7kZTafU9Be8Rh6F3YYh0MblP5v2Rd3atB0SxQyAo+DvmdmP+IL0R
 Ti0i4Ry9D7v/OBhYDoRsK6Zs8SnwsSMrz8XebxeNVkjS1CV0YwkyjX13IlgXGUOw3B6V
 nVL7MAFl0h/IGpEO72nqYRMyhRLiUo1DAxWluV6a8BPXmpHArCgujY7t/5xCJdgj3CBP
 EjtSZWYrcWw/AxoepLPYIFWeeLk1gY+Kj1C5bG+f7d8yAgbS3zoVVd1ua8RcV5bM6CTf
 sEvp7jpYUF3HV8J5wPHuL+khaX2bVmtd+9JJ8ddmZl/TlXVI24O76xeFZ8ERRHZrQwGF
 n4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nk+/ciJTmIcBRGNtwKGKAlhXjyIqj/WCax4ZAyWNJvI=;
 b=i2hs/3PslPaNyZw+oiDwJum60QqJyxiCl1qrN4dFSC4XYqhAqY9cxgm1wVoMouzgTA
 NyKeq3FXCEtCT3iv3plLMU73K8XLP4lKwG02C1QMv22+jXM37PVK8SmCSDVZ52ZA3lBg
 OMPCFvRZZygT+fzijw6Ainv3YKPA3rN2Ckw7IaX2tl6KsIRRwGg8R3Fk1WIGQlLcxMf5
 rBmBfNJe0ASV/rcg9OFsXYINcW+RTCN5HfVIlrHhPDTWs4p3KtAq4VekSuv7uYOiyyCt
 LieC+nMldRU1YxNT1SSLOi1elC8TBniwxORDGmkqDTODCGrWblMbRYjHuUGBYkBHyaSf
 jmzg==
X-Gm-Message-State: APjAAAXHv47RjhXJBvWlP8ETLfEPx6RKbw2bFORivXJJ8D2vpxrSE9BU
 MvK6J7HT44B4xiNYmYUmkx0gyUSvEVI=
X-Google-Smtp-Source: APXvYqxRakC6491Var96axSgPs7513lbbFuXi1FP2lOh833bGTyI8P9IlnxdSUuvQR3n5FsuxgeA6A==
X-Received: by 2002:a17:902:1021:: with SMTP id
 b30mr45020517pla.324.1558454667844; 
 Tue, 21 May 2019 09:04:27 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:9cd0:73e8:b74a:624e])
 by smtp.gmail.com with ESMTPSA id j5sm28954786pfa.15.2019.05.21.09.04.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 09:04:27 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 0/4] nvme: add thermal zone devices
Date: Wed, 22 May 2019 01:04:05 +0900
Message-Id: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090430_045970_0F530AEE 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The NVMe controller reports up to nine temperature values in the SMART /
Health log page (the composite temperature and temperature sensor 1 through
temperature sensor 8).
The temperature threshold feature (Feature Identifier 04h) configures the
asynchronous event request command to complete when the temperature is
crossed its corresponding temperature threshold.

This provide these temperatures and thresholds via thermal zone devices.

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

Akinobu Mita (3):
  nvme: add thermal zone infrastructure
  nvme: notify thermal framework when temperature threshold events occur
  nvme-pci: support thermal zone

Keith Busch (1):
  nvme: Export get and set features

 drivers/nvme/host/core.c | 317 ++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  31 +++++
 drivers/nvme/host/pci.c  |   5 +
 include/linux/nvme.h     |  12 ++
 4 files changed, 362 insertions(+), 3 deletions(-)

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
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
