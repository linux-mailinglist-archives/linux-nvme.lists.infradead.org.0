Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FFA10CABD
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 15:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pwoSK5Cgs3RnSsjCwzorH8tQ2m9hHxUpXk96wjWlcMg=; b=pEY
	Q/CJEvQAdlgoP9ZgaQht0Xorac0enZmdalOtjlMdIkhjDAzrXjEDHzbdyv8FLyUW23RftPjKrghRs
	PI1f98yJD+jAXqdyf+II3KJDSr66QIdQoWvqOy2SEUJ5G9wfzLftyGigA41VI1g3oDrgSaq7J4z7c
	NYX2hRxwtAAJb8u2CCftPiUWJlZvP1pymZbN3p/10QSHWVVBwmsQjRhyZMvk+8pIXPjDdHFSFYxEd
	bRxC7ETCoBK0WGiJ6EltIS2HTQtzth9qtPPFYjqv7bu2+gmo99Cozkh27E3wTHbUGDAwVe6NWhTN9
	3YxbN0FwWr2D6ZzO3yMm/TG913u+H0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLCE-0006HX-BD; Thu, 28 Nov 2019 14:55:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLC7-0006FB-Gd
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 14:55:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id e17so13013394pgd.7
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 06:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=P/DvvVqY88h8qjrElwC+TntQygBRJpTMf+ORNvfk45c=;
 b=aLMIKFsQBEJTDmAuiv03bBxl3ZQHr8Ul++QJpS0rglPgjm3TOucl7IiAJ9VoZSgc0L
 cFNNax3aV+x03ClsZiRfPlMwN1Rgy6XaQfl8avt9y+uwfmv5k7Yobo0nc/YdyJMU6CNv
 yMWMWCplcAOMELOOEVc6U0TJRzw8ZnWuFQ2qbe7CSZXgD0w+gL2WpEiiiXoBDLKiOZeg
 q/xShB+c2VVujjtJr8M59ZnJclyk+Hm19fowaq8vIJhzFqRcxFxr1L0ecAefvJK3TpC0
 IBSsEkaoinBZNCYsKyuLVWzAtSAx9pphtl+2nEO8CcCLzqLaYyRhT4Sfq488m1RLXQGe
 Qxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=P/DvvVqY88h8qjrElwC+TntQygBRJpTMf+ORNvfk45c=;
 b=otdggaI/b6e86eJvATY8/GzM4Vq+gGaiLdC07E74qqNWfGYboLx+yJJeOBE/nSpCOI
 QsW0qhx8fI/D6YY2ahdJd5ITz4EyXRlVEbXQ0yAFYRL49hMxubZCtWtszHEh7chjNb7w
 XnzNDsM58rt67n2Qe2AeoS5XrIPWRJg/CYZTZh0bKDxRsr//EVKmTrB4xG13PYbRa/TS
 mv3oB7hdEZUYoKP4VWkeduUn95Ob2WVat5Wcgm1IjZAFbF6l9LuXLWq3/4oH60NTygRE
 rRr08Lzs3DvkqoKwVfnT9bwB9IV7q2ZgUKqSQv+/QAHfL5HSDxZgWPUo+8J3/m45lwaN
 osgw==
X-Gm-Message-State: APjAAAXaKyI1WOV4fJiDUBek7C4dZXB68LGirIzVY7zXEoM9b13dwsVm
 9olTbP9BycstGK+olGhe6a7jcGcuvi8=
X-Google-Smtp-Source: APXvYqwuNtOJ51bQrQY+Kw3mlYu1GrcIS6mWU2lAq/0U7uWjbvcok0PMGch3BZ5vsUAJyWT226vUgw==
X-Received: by 2002:a63:1953:: with SMTP id 19mr5926293pgz.157.1574952896376; 
 Thu, 28 Nov 2019 06:54:56 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:8015:e854:5ef0:f52e])
 by smtp.gmail.com with ESMTPSA id z11sm22282563pfg.117.2019.11.28.06.54.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 28 Nov 2019 06:54:54 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/8] add header file for kelvin to/from Celsius conversion
 helpers
Date: Thu, 28 Nov 2019 23:54:31 +0900
Message-Id: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065459_590945_4A1EDDC8 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

There are several helper macros to convert kelvin to/from Celsius in
<linux/thermal.h> for thermal drivers.  These are useful for any other
drivers or subsystems, but it's odd to include <linux/thermal.h> just for
the helpers.

This adds a new <linux/temperature.h> that provides the equivalent inline
functions for any drivers or subsystems, and switches all the users of
conversion helpers in <linux/thermal.h> to use <linux/temperature.h>
helpers.

* v2
- add deci_kelvin_to_millicelsius_with_offset() in linux/temperature.h
- stop including linux/temperature.h from linux/thermal.h
- include <linux/temperature.h> explicitly from thermal drivers
- fix s/temprature/temperature/ typo in commit log
- use deci_kelvin_to_millicelsius_with_offset() in ACPI thermal zone driver
- don't mix up another fix (format string for cellsius value)
- add Acked-by and Reviewed-by tags

Akinobu Mita (8):
  add header file for kelvin to/from Celsius conversion helpers
  ACPI: thermal: switch to use <linux/temperature.h> helpers
  platform/x86: asus-wmi: switch to use <linux/temperature.h> helpers
  platform/x86: intel_menlow: switch to use <linux/temperature.h>
    helpers
  thermal: int340x: switch to use <linux/temperature.h> helpers
  thermal: intel_pch: switch to use <linux/temperature.h> helpers
  nvme: hwmon: switch to use <linux/temperature.h> helpers
  thermal: remove kelvin to/from Celsius conversion helpers from
    <linux/thermal.h>

 drivers/acpi/thermal.c                             | 36 ++++++++-------
 drivers/nvme/host/hwmon.c                          | 13 +++---
 drivers/platform/x86/asus-wmi.c                    |  7 ++-
 drivers/platform/x86/intel_menlow.c                |  9 ++--
 .../intel/int340x_thermal/int340x_thermal_zone.c   |  7 +--
 drivers/thermal/intel/intel_pch_thermal.c          |  3 +-
 include/linux/temperature.h                        | 51 ++++++++++++++++++++++
 include/linux/thermal.h                            | 11 -----
 8 files changed, 91 insertions(+), 46 deletions(-)
 create mode 100644 include/linux/temperature.h

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
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
