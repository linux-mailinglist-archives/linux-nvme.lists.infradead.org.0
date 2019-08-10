Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1600388CA4
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yZ8tKjcDZBvAQdm2HcKXBGMuSCf0E6OpMs8Etdo/Smw=; b=scZ
	S+/0e7be11hLO/S8hkO+GWDkzBf6lmj7ZB4ypY61UgdIWdQLfwJngdMwS8nzAeMPsdyS6SkSHo2bM
	Lg2P0+vpZPM4hWrRGZVu9EKWnZdTI3kLtkFsrsOjvtqOR6/9DOohztIyXwYwIQ7HxSkQwHORGdNkI
	emcHnCYw60KDQctekiHEx8PmaoU2Z4I7g1zXT+YIQhgxBZ2fQX8L/l0D2f7fOHGayCnjq7yo3XE+9
	hmC0YGvT0VBfJwWdghu3MT1VxakMBihGjnpLMXX+X/khH5j4BjbkDYxBT30JPA7IgAK2+gw7K5Wva
	N31QZ1E3PvPdlIlRaXRzli1suanPxpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVaj-0007t2-QP; Sat, 10 Aug 2019 17:55:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVaT-0007sF-AA
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so47692854pfq.0
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nsf9ZthSXv1/yV9kWDWDkPOUB22nzlZHkBRY4IpkC3Y=;
 b=MkIw/oIzRQHLiwxtGLO1OG9EuDmoIfVErNB+BpwxFrJYS0GkK3RdHfifyD1uhLorkU
 Wff5R05mvV62CccEa3xyzAIr8qCxAX+4TwlaJ2D2QJcmbi6vSsXbzBHGg81AQwcSpoFJ
 hcwfeuFU+BHYPpvvElJRA31BPhEPz3JDOZG7S1QC+xm9FFI8fFlb03RWj+vMYJCmHzZ/
 5fAB/GuGbEW1PyHszJdWZENiZODfUpKvNAZwYJJF3S3UTonpsBTnangCXo137ns6jjP0
 mxg6ZX4gX9RgTZp8UyeqLKVXhnPGuewwdjtubWzX+ehb7QHEa8zPWh1dhFp9MiegGwE1
 vhag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nsf9ZthSXv1/yV9kWDWDkPOUB22nzlZHkBRY4IpkC3Y=;
 b=sHEg71/X5e3rz7uTFQR03As2e8l4pYt6Tze38nGltos0iAHEBbeNWqMEoNJx7Qs898
 GliSHAigHxaqpeL5tuZurNiHno9pXNFHMoskIX4fCxsilGwLxuQhrn0Mj4BEgDyY5YIq
 YgCxGEup0/Zu73NdThINGPx8v1FS1caqwFPLgSocXwT1MVgprEMJKI98NInSgpdZZyp8
 /YjJ56RN24OQlVspfj8n3Z1aJSA6FQPMsJbRfRWpw7nD+kYtnEJ65aDoh38ea1IAlY58
 heq8Pqof2wahuWWKZVFX5WhJRrp5b3I18cJ8AN0ndDbmCPvRRRpeJ+9J/pq7Ws484smY
 L+ZQ==
X-Gm-Message-State: APjAAAW+Z3vvo/aI9hUpvBdHUsjjiAEyN/anSpUALKVnGorKY3fKup6a
 HrDhU1gE3g7FnGIgEhMV6+M=
X-Google-Smtp-Source: APXvYqztQuW+miBcLyquIukVLXl0rpEMoNL1syXrbuxcI7kdqMTay3sJfxoJOroudOACkS0lbFJrzw==
X-Received: by 2002:a17:90a:b312:: with SMTP id
 d18mr15181170pjr.35.1565459728092; 
 Sat, 10 Aug 2019 10:55:28 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:27 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 0/6] introduce LED block device activity trigger
Date: Sun, 11 Aug 2019 02:54:57 +0900
Message-Id: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105529_381563_602BC0D5 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, GOTO Masanori <gotom@debian.or.jp>,
 YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This work is inspired by the report on linux-nvme mailing list.

disk-activity trigger not working for nvme disk:
http://lists.infradead.org/pipermail/linux-nvme/2019-July/025253.html

This LED block device activity trigger works with any block devices.

* v3
- Avoid the name collision with LED_OFF and LED_ON
- Add ABI documentation
- Add more detail to Kconfig help text

* v2
- Remove "move declaration of led_stop_software_blink() to linux/leds.h" patch
- Move the trigger implementation to drivers/leds/trigger
- s/blk_ledtrig/ledtrig_blk/
- Add CONFIG_LEDS_TRIGGER_BLOCK
- Fix wrong bitops usages
- Add interface to stop and restart polling disk stats
- Stop polling disk stats for scsi disk during runtime suspend

Akinobu Mita (6):
  block: umem: rename LED_* macros to MEMCTRL_LED_*
  scsi: mvsas: rename LED_* enums to SGPIO_LED_*
  scsi: nsp32: rename LED_* macros to EXT_PORT_LED_*
  block: introduce LED block device activity trigger
  ledtrig-blk: add interface to stop and restart polling disk stats
  scsi: sd: stop polling disk stats by ledtrig-blk during runtime
    suspend

 .../ABI/testing/sysfs-class-led-trigger-blk        |  37 +++
 block/genhd.c                                      |   2 +
 drivers/block/umem.c                               |  20 +-
 drivers/block/umem.h                               |  20 +-
 drivers/leds/trigger/Kconfig                       |   9 +
 drivers/leds/trigger/Makefile                      |   1 +
 drivers/leds/trigger/ledtrig-blk.c                 | 258 +++++++++++++++++++++
 drivers/scsi/mvsas/mv_94xx.c                       |   2 +-
 drivers/scsi/mvsas/mv_94xx.h                       |  24 +-
 drivers/scsi/nsp32.c                               |   7 +-
 drivers/scsi/nsp32.h                               |   4 +-
 drivers/scsi/sd.c                                  |  40 ++--
 include/linux/genhd.h                              |   3 +
 include/linux/leds.h                               |  38 +++
 14 files changed, 410 insertions(+), 55 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-class-led-trigger-blk
 create mode 100644 drivers/leds/trigger/ledtrig-blk.c

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: GOTO Masanori <gotom@debian.or.jp>
Cc: YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>
Cc: Hannes Reinecke <hare@suse.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
