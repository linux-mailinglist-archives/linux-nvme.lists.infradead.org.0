Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB12D8F16D
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V9kGShB+FlhiEgPLbq4JASc3c+5B92CnMuoJmqwktbc=; b=bua
	EWXUTzm99jJYpOJP58VLD8Bphb8rjPDlS5LowyehkCRKAaNZJ77qkGAnKOK9g65UNFy+VLfC4h1fB
	IpKdeFeDoiuonJKyAcbkxmY4MLcoyo7AS4NAn1KjmcAM8WSyLFAwgwelMEZo4MevjJjuRiwqKXG1k
	YX8YyCmT4FUMVVtH5TfDmN2sIOC7ODLTCNeAob/TvM+G8fE0zwqQ+dPbYXEdT/Kl37X/gc2Pt3ftq
	W4SzQ/9utn+A4WSA+VkpBktw3hiSKlw3ApPZpkXrguPa2CTR2sX31eyqcGa6tNrzLofuJHCzf8SDx
	e/YHCKktzCD9sUMXP9fK8bzn5rlDpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJ6z-00004y-05; Thu, 15 Aug 2019 17:00:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJ6q-0008VD-5z
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:00:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so1533493pgl.11
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ph3z3OX8TOm5fwkAgRwuk2oCHCA8KPoeo401VRgwoe0=;
 b=ZQ/7Hu4/sNsp8P9rB8y0CcfXjOCycDWN9wMK1l3dxNYCOfXGLJfJoSLk2m5ZxIgDI9
 6hvcMsvosXJeqRB9oAinRqmjqE3aAXn+tgtapg9cbek2Q7hw5Id0q8X+zopGl6EkEf9X
 ed0vzgfaWGDtww7QZa8gT6ijqkvs2CZg25ntL8/gJQx7WeW2YyI/ThflGKeFlQEsMbMd
 b9vVrUUc0qbbld2fTyVB7qG8D+uKTn0lFyuOG0ps4lphlxNA7M3Wxv9DvEm+4wdvsgOF
 4GfGXlr6+WVKtxmDqLnMRlh/ZC3z9SviTVLtXk9CyPStuMj3EvDGeNGYVruj2yOzXymT
 canA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ph3z3OX8TOm5fwkAgRwuk2oCHCA8KPoeo401VRgwoe0=;
 b=hN8kzgN6GGah50A9TYN73faFgio+r3YMaW6VT8aeB/RX173mhV/aJtekTP7YG7TNb2
 EdqmJQ7joYg2c+fLwN/f6A+NY4khpaDEworK70eVkx6EYLB7tDg/vBwAmCXKrtGzm497
 p2NLiqtgitQ6B9Sxphm9wjWWj8A3/dr2BLAWJhz8qQLMIJZtxlUyHdm3pX3N8Dd84iJu
 tRVf6Wam0sSqktHXV55zWLwJO8Wy4vJgfNwMJRre3vq0ZtW5B1J+Q8ATxZjlzmI6z5AG
 e/6SF0RIAhDzh388xPJD467KiiUTIbWhbsDUUrq0l0OF2mDRlCv+fpkHAVoHVgbuUojp
 TBNw==
X-Gm-Message-State: APjAAAUK327UBGD72jZVEH2Mq6f15DpLRY5YNVDoHdk5qap/0m5E/sD9
 jP2q8c6UOnYhpknHKaUT29A=
X-Google-Smtp-Source: APXvYqz/zgCzBeEtq6Iu3Pe068aerxZosiJXoZW7RjfE1TBygzwr+M+jnrQhmwlssyfQxZDRWNxBAQ==
X-Received: by 2002:a17:90a:2764:: with SMTP id
 o91mr3128474pje.57.1565888419088; 
 Thu, 15 Aug 2019 10:00:19 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:12:b19f:559d:7305])
 by smtp.gmail.com with ESMTPSA id b30sm3943942pfr.117.2019.08.15.10.00.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 15 Aug 2019 10:00:17 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 0/5] introduce LED block device activity trigger
Date: Fri, 16 Aug 2019 01:59:54 +0900
Message-Id: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_100020_245971_6E7363C0 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

* v4
- Squash patch 'add interface to stop and restart polling disk stats' into
  the ledtrig-blk introduction patch
- Rename 'led' to 'led_trig' in struct ledtrig_blk

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

Akinobu Mita (5):
  block: umem: rename LED_* macros to MEMCTRL_LED_*
  scsi: mvsas: rename LED_* enums to SGPIO_LED_*
  scsi: nsp32: rename LED_* macros to EXT_PORT_LED_*
  block: introduce LED block device activity trigger
  scsi: sd: stop polling disk stats by ledtrig-blk during runtime
    suspend

 .../ABI/testing/sysfs-class-led-trigger-blk        |  37 +++
 block/genhd.c                                      |   2 +
 drivers/block/umem.c                               |  20 +-
 drivers/block/umem.h                               |  20 +-
 drivers/leds/trigger/Kconfig                       |   9 +
 drivers/leds/trigger/Makefile                      |   1 +
 drivers/leds/trigger/ledtrig-blk.c                 | 259 +++++++++++++++++++++
 drivers/scsi/mvsas/mv_94xx.c                       |   2 +-
 drivers/scsi/mvsas/mv_94xx.h                       |  24 +-
 drivers/scsi/nsp32.c                               |   7 +-
 drivers/scsi/nsp32.h                               |   4 +-
 drivers/scsi/sd.c                                  |  40 ++--
 include/linux/genhd.h                              |   3 +
 include/linux/leds.h                               |  38 +++
 14 files changed, 411 insertions(+), 55 deletions(-)
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
