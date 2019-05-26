Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7821B2AB2F
	for <lists+linux-nvme@lfdr.de>; Sun, 26 May 2019 18:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eqSCHYB6i5wOl7565BezLVaJ8LR5Rd+Ii+0BV4xuUT8=; b=Rmx
	ln+zekHKSJZTERbzJFePxowyVNaQ8JxjaqjEzGacAZHSaJx3X2rZ0q63Jndtl3nEG6onOim7ZK7XB
	sZX6rkEbybY97eMgsJ3emZW/TRcQO5LcUB1LGsThEAZR5R1aGXVrKYvk7f1SSBPPKZ3TDlBqp0MxV
	qXm3ewul9iGCUsrcVgl9E35zeKamvDB8Dr8enWAjUOEM1zs3pRjnlJHti8KL0YAmMPIXSFshrd0Ug
	MDkq6TXn9leqhwWxteJl4ExE7cwRuiwQ4kz7Fx3obssUiblI1TXnXmW3qMD1Gg2Lzy0R4CN8125bW
	+X+rox71KeqAUxTsKwpyE7Be5u3RDYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUw1m-0001Z2-1X; Sun, 26 May 2019 16:29:42 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUw1f-0001YA-F3
 for linux-nvme@lists.infradead.org; Sun, 26 May 2019 16:29:36 +0000
Received: by mail-pg1-x529.google.com with SMTP id h2so4645960pgg.1
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 09:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=T6jGh4vtBMzLEIRqeEw5NmUw7G/n3dUFkmIaIlYlyhU=;
 b=pvDcUP0IFCmOOZ+fGMZEfRspF6k69A/kKLwbarjwdembNQ992KMoQHqFEGozjVysd4
 4wP4CoEAD1Nf3SxxQPK6ggYAOmSdvrSpDhF6rys1WtndgOi7nrIxwMxpaDeDXqB/NRRl
 WA8ajJEKneEikNVT53eV1HciLIAVdQXtGuXUwYADIszb9w7y7Kj6FaBWWUVTbEkWB87D
 utzrHMNjP02RUXQxWFyNzSFhjp1h0iwjG/SpJ4DH3X4eKXb+3BRODHuyXiofj0Wmej0o
 pZ8dmS9l6FM8FL8AlhuT3kvGBn+JtKHzuWuiUPBGQvXyCCTNd7OUvTpn6V33okEZ8SGC
 tlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=T6jGh4vtBMzLEIRqeEw5NmUw7G/n3dUFkmIaIlYlyhU=;
 b=tA3aCTKBdW6PJ+rsMDJ+yvjQcLaRdsSIdV7HQ/BFHZabn6ztHDhPX8+2TvSzHHL7LL
 6TajaBYTiHgPgJeuq4Px1DAA52OOVYrREh02xXDcYrfzmpins0Zj9IUK84B5H3eK8eJ1
 THROD1ecAHRwZkixkU5fJu+iVEeaY+E4CBJo6cBl4H9Y3fPJFBj02/pqvQlN8YjScJ1D
 yikptMFB4wYkv5N2isowVNeI3aQ40oPpCaY0dSdLaGFrxkpu6+GT3T+F5kV33JSZ4NjC
 nJ4xzeJfTpWFAZ3mwT0AxksKKfltu8ZUH/U97LgFgVXZTC+MmpVCEZxfHuMONcgGgNe+
 3YjQ==
X-Gm-Message-State: APjAAAWqwF/RvgEYI0fzLdZZSe1KLH0v55cLYhzE6xi45/VNkyHINwZ/
 eE+8jjouSkiDb1P/3gENxQ9izV/Sb/Y=
X-Google-Smtp-Source: APXvYqzo9ANzPz82Dcgqs1n9U9ZqotbRH45DeS9JJxyi0qCKNQ1T5VQONm6qAltrR44Aj1I6JCvv0Q==
X-Received: by 2002:a17:90a:c587:: with SMTP id
 l7mr24830185pjt.50.1558888173428; 
 Sun, 26 May 2019 09:29:33 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3427:8c7f:94e8:c445])
 by smtp.gmail.com with ESMTPSA id a11sm8671107pff.128.2019.05.26.09.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 09:29:32 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 0/3] nvme: add thermal zone devices
Date: Mon, 27 May 2019 01:29:00 +0900
Message-Id: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_092935_530313_8FFADA5F 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This provides these temperatures and thresholds via thermal zone devices.

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

 drivers/nvme/host/core.c | 340 ++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  15 +++
 include/linux/nvme.h     |  12 ++
 3 files changed, 364 insertions(+), 3 deletions(-)

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
