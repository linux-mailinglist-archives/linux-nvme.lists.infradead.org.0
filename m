Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CA3702E2
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=goEQtTk9mlrcoKt40ew9D5TM7Dx+YEHFewOk4tHiFqs=; b=LJM
	dwNJjJ881dWNysZmVm0AkPavjMb3lYbTGRJxRtbuonJCyKvZ6pSQUCPh25fFivfPfUczW4oz40Zxd
	yfSrkXTMxFEcEYoxgS8zkanQ1xlZFc1zQbdAeiIb1qgNiDMQeM4i2WalLsw9GeXcGoZpfa/nRXngE
	rMpjNSDU9QUonEQnzlHGYPvbR/YejsXZ1nGsxnze+aVFJwhtK9c9PlqqLmvf85EIwh8WZcXnK78OB
	zgrr1Mk8Jz2dtNwue45AptVpUz/vppk8sDMKwPP2OZQZfKmJTTBmeJOquhFz6LBATwsgZ3efucaQS
	tRQ225B0XWsN9K8nlEWtLb8oYQie5BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZnB-0004qL-G2; Mon, 22 Jul 2019 14:59:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZmn-0004pj-TS
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 14:59:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so17492212pfq.12
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 07:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CSY0GIGjxOGwbMhm3bGvidcWT9sCWPIvO8wnBMqQ0JE=;
 b=rwjc3keFlsWaPBmJ8jLB4C3po38Ym8n1XBk8VgQd9HJCKrQLggoj2eeHBebKXJCEWw
 +5/fTyM/6UEYMfsibbR0twX2KHz5JoDBXYNvBeSolov9t9iTajKhkkNsIm1vQQwr8jcd
 tqa9IZgzyyRNZ6M3Kzkaub6HVd5EYu3HjDtENdnS8VDIrm51OL2Z+IYhmoHg+zpNIMPe
 DoW0O0OrTzQPuwICT2QSIkOb7VjHUHRzoTSGO7cP+F6dTkacuH41xWkkRUmOQJoiarjA
 PMBa1GzvEg9l9BIZjCcYtamQaNznWJHTophD77077rgCxWIiXvB2U/sKiBhN3SCfUxvF
 z/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CSY0GIGjxOGwbMhm3bGvidcWT9sCWPIvO8wnBMqQ0JE=;
 b=ZzhG6AWeW20ZYN9/uOAio+j3zmZz8xvzVFmY1swSk96+l+7y/mcLasqUCq1kgGBDPR
 98ME2VNexVPGio2URWWCqi6o8Jdyhntc+YZzndQjeun6Ttu6x51gAT8yDX2UWgyrJ4LP
 x0LaU1THnHpzk2IbShvrIqegFFtAKkub6iO0d0NqFbpbZiounee0Xktqy2tz+sb+xAfi
 qER7Z7y2EYhKcNMa1HxTbf/wjfLEcpc78AifFmX+EsyAkQSGBFq/giRPbUfMS9uuxBPC
 cCnXqttFa65usoFMUUbvo2r0WCXM+OlMjpw7HLuDoyqzkKDp2CPsDDcahzChadKxtolI
 /YDw==
X-Gm-Message-State: APjAAAVFC3nYLIQpQ28tkG13kCeqbv9KK/Z9UC5zajjohJKZCfoiZ6wj
 g5PDz39LNrsofaHsyF158ms=
X-Google-Smtp-Source: APXvYqwdWhKl99dnVa7COvkAeKns+UC3ecDFUj5QGoWmZsb3trQe6iycfl33UfSdS3TCLbM2sMM3ow==
X-Received: by 2002:a17:90a:d997:: with SMTP id
 d23mr74094110pjv.84.1563807571097; 
 Mon, 22 Jul 2019 07:59:31 -0700 (PDT)
Received: from mita-MS-7A45.lan (KD027092233113.ppp-bb.dion.ne.jp.
 [27.92.233.113])
 by smtp.gmail.com with ESMTPSA id a16sm42533174pfd.68.2019.07.22.07.59.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 07:59:30 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 0/3] introduce LED block device activity trigger
Date: Mon, 22 Jul 2019 23:59:09 +0900
Message-Id: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075933_976276_BFC8FEF9 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, Dan Murphy <dmurphy@ti.com>,
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

* v2
- Remove "move declaration of led_stop_software_blink() to linux/leds.h" patch
- Move the trigger implementation to drivers/leds/trigger
- s/blk_ledtrig/ledtrig_blk/
- Add CONFIG_LEDS_TRIGGER_BLOCK
- Fix wrong bitops usages
- Add interface to stop and restart polling disk stats
- Stop polling disk stats for scsi disk during runtime suspend

Akinobu Mita (3):
  block: introduce LED block device activity trigger
  ledtrig-blk: add interface to stop and restart polling disk stats
  scsi: sd: stop polling disk stats by ledtrig-blk during runtime
    suspend

 block/genhd.c                      |   2 +
 drivers/leds/trigger/Kconfig       |   7 +
 drivers/leds/trigger/Makefile      |   1 +
 drivers/leds/trigger/ledtrig-blk.c | 258 +++++++++++++++++++++++++++++++++++++
 drivers/scsi/sd.c                  |  40 +++---
 include/linux/genhd.h              |   3 +
 include/linux/leds.h               |  38 ++++++
 7 files changed, 332 insertions(+), 17 deletions(-)
 create mode 100644 drivers/leds/trigger/ledtrig-blk.c

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
