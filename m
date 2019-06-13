Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047F943A6B
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 17:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JyJOBXK5z9F2htndfgSRp9xMS6iA2jBC25z9McPl4iE=; b=spt
	oIVc6Ypjl4IGLiY8pBGwOad+bqdUm5glwqY3/Cx5qXRZKzwZGI/2GNB32tFegOXgbZivZjpOpAv5o
	5oiOoM/7CsBOI15VOK8ROor/g3VYLMTDkpS50lR4TUbhmYx2pJvP3tMKnPjWFUlwaDwtN46cbhzqW
	JoEWPeKmzRR9ZL7+R8e95N3+k6CSq5Cuq0vbrbB35BLRoweiVf11k/7KxaBBriN9srghz9ZBYhrTE
	vQmjzbKh8kvMKXuXnUE7t5OHbKKVS4wQNJiohFETV27D2UGztvPhF6r5aTjKZeXcM65eEjDt6SRKi
	ccRpk22krOqLMVQEWn8UcKKNl67yBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRXK-0006wd-L5; Thu, 13 Jun 2019 15:21:10 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRX4-0006w3-DW
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 15:20:55 +0000
Received: by mail-pf1-x42b.google.com with SMTP id q10so12040090pff.9
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 08:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cbSuT3oGjvIR+sARU/EqP3cMk9NkxTMi+chkMo+Xgd8=;
 b=GYA4QfzJ31sVC8bg4WMlTmsKR3+wJ8uwWET9uagjisTWVAClgEliYyv/f2O3o0eRvg
 bymAHZqdaqAG1CDba+CVbJatnn7I0gWpnRbLaJNmLXpX+7+RPJ9ZDP5b4NxW3S9KJcf1
 8DGvndPgDdrJgVO/10D/XQpe9XfV1UTEU/I5G3TVyZDMDjWrR3zT/tQsJ3ZloGsOMEk7
 DMqeeVHCXVtIdzuFl7ZoIk4XbyVuO4NcieAkx0Z82icsqTQHZCIt7YsDt2khWN66Do0y
 zKi8hGs3OIzZ5yzNsqexf1HO58Yrn1h3YpfFD+pEdlee3Luwj7YNbtARGnD6NhvM6atw
 7VEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cbSuT3oGjvIR+sARU/EqP3cMk9NkxTMi+chkMo+Xgd8=;
 b=bS0mHwFuw+fSlkjcyK5gdNXsNWxQljzAyGTyXaAbu/YO9V08BO+a393YmTPqDSmSvK
 4h7bDBXSPgWn2ru5AC7tqTlK5HofWvdAEcCERNqwGIwL8J58jVjV5hUcpIitzh7x0PeA
 VByy7l77BxELGO5BnIfVhZJTKGdWra7q6IMAckAYiiHbOPN+KYW4awSUahsy62E7CeEL
 RaG8CBS0qja+qGu1qhulOLpQBS0gXyxeYjwlrqwDkbG40IvuMb62emFnf82/TC9fbgeS
 jiuhZbA7rq//17zB051387fievFrG2PRKCuufvLdRB+nqcOtYWCuhJbfkOF4lvAyoDss
 F6oA==
X-Gm-Message-State: APjAAAWUItPH06p/DA+puifLE/WfcMcpqkMp55yJKqEpr4e2IS4LZeah
 TzhURtN27R0IRF+H6WL/xgHzpjmLF24=
X-Google-Smtp-Source: APXvYqzNOnMaVi7qOjPVkmsbyB3V+/+fmz5KZPffUlYIhLBfW2iLsgeeqzSSiSki2WpfBGDP/uOrcQ==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr6177041pjs.101.1560439253201; 
 Thu, 13 Jun 2019 08:20:53 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id n66sm40988pfn.52.2019.06.13.08.20.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 13 Jun 2019 08:20:52 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 0/3] nvme: add thermal zone devices
Date: Fri, 14 Jun 2019 00:20:35 +0900
Message-Id: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082054_462260_B5E104E8 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
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

In addition to the standard thermal zone device, this also adds support for
registering the DT thermal zone device. (This is currently untested, but
I plan to get a SBC with PCIe to test with DT)

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

Akinobu Mita (2):
  nvme: add thermal zone devices
  nvme: notify thermal framework when temperature threshold events occur

Keith Busch (1):
  nvme: Export get and set features

 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/Makefile  |   1 +
 drivers/nvme/host/core.c    |  43 +++++-
 drivers/nvme/host/nvme.h    |  46 +++++++
 drivers/nvme/host/thermal.c | 323 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/nvme.h        |  12 ++
 6 files changed, 423 insertions(+), 3 deletions(-)
 create mode 100644 drivers/nvme/host/thermal.c

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
