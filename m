Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D68A88CA9
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y0wv+zG+63qlEtSx7rJ4hZGJY1E17c0Qr/LMopJPB7g=; b=d4lDe9Z0khb23U64u0uuHYzYCt
	pbVNWInE/APQaBvM+va8MRGn8TZlZgt7rj7aTukA1Dr9s9IULv/vQRFHNp9xeq7+VnelhX0/cbmxx
	LiVCeo0Td/q4YJHx/idpGYmWV3RczmXPPhjoGwg98aFgwLiYFxfhSINWFpaEtgUyU771wWWApJLB7
	azFij3Gnnvzti0e+kBzlLrPKeVPNZFxB1Wk1i+hSb44+oGMd187pluHXTGDKzVnVeA++FYlf91YJA
	OVn8mgTGFJuTNvTrKbn3lvFFW6NS4apMNiHsZ41zBufE/t1A0AhkBDHsVrtNTxM2HT5yAyfnD9Teg
	VjPY2Xig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVc0-0000Pz-DY; Sat, 10 Aug 2019 17:57:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVan-00082Z-2Z
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so47685978pfp.7
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AVfMX6QMV6PyqWsJPtDzTdoOO2jzzS21Op+O5L+8L7o=;
 b=N7lbfhIpqmHugedPRlThgo1zTW075TGIwh7ISCztXOsmWo2iYU1OgHE+ofsd7qa1/I
 6fvlqI2D+7kXkVNioAIo943hXTyRoAsOliSAWjjFQsNtyHYd32IOMv7ej+G6NkpCa8XE
 oSknfnlzP2WfM+jlXlv3AFdgHkQHas4YQ4Eprj8aWgu/gNc4EY7/mu9B1UMh2rikEfig
 WQGQ23hr9gYBNuyfm22FG/iFONSI8YseuZi+xVAA1KrdshYt4qTMr44wenru9uqRsXBS
 O/ki7++iCiLqOAteQutNBugglv031kPnL023+5Oc/nkdLTKInqQXjguHTGaUzgEwu/Zx
 zChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AVfMX6QMV6PyqWsJPtDzTdoOO2jzzS21Op+O5L+8L7o=;
 b=kiYQNcp6ICzBoRnelXXAkISb5mLWKpD6kf5EK45RUJGhzVkhuafXcrH1RcvxTOcogP
 YDcFNKqMnk+TqicW0cTgYX5Q3Bzd5Fc05xwGpBLGqKtQ4RRqL7maXha+opvPCwPXFEpG
 oWabeUObrkrLx1xA2MGscxoGAe/QownUfPa19UgEDbbPegCwdYcy52xuZANjLI053Qvz
 Oopqg+l24TY3BLviB+0a1KOv3IHYVLPN/CzolajhfluxLJUIBCTqf3TYLlwXd1tMXi/U
 XSFM95dGr2aN3C2Z3ryJgzYPGd01VKSI/zana4Rk56TKsKtUOfc04sd7eht5oerxmglY
 DyDQ==
X-Gm-Message-State: APjAAAVxsprkQhSvV0bhEELMsuLmI+ac2YT/FJCY2b6ZecVC8SpQi83d
 nuEUprK7+5q7vvEkTNVOUhc=
X-Google-Smtp-Source: APXvYqwjSdrkeXQ+uvDURUhSgaO64jF+/9IW/MzfGhAlKHO7CZudOuJ9DFi/SFDlARo2GpOcC9Z2lw==
X-Received: by 2002:a17:90a:cd03:: with SMTP id
 d3mr152787pju.117.1565459748683; 
 Sat, 10 Aug 2019 10:55:48 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:47 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 5/6] ledtrig-blk: add interface to stop and restart polling
 disk stats
Date: Sun, 11 Aug 2019 02:55:02 +0900
Message-Id: <1565459703-30513-6-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105549_524023_18B6A134 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 Akinobu Mita <akinobu.mita@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The LED block device activity trigger periodically polls the disk stats
to collect the activity.  However, it is pointless to poll while the
block device is in quiescent state.

This provides an optional interface to stop and restart polling disk stats
for the lower-level block drivers.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/leds/trigger/ledtrig-blk.c | 37 +++++++++++++++++++++++++++++++++++--
 include/linux/leds.h               | 11 +++++++++++
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/leds/trigger/ledtrig-blk.c b/drivers/leds/trigger/ledtrig-blk.c
index d5808c9..6b826ed 100644
--- a/drivers/leds/trigger/ledtrig-blk.c
+++ b/drivers/leds/trigger/ledtrig-blk.c
@@ -153,8 +153,9 @@ static void ledtrig_blk_work(struct work_struct *work)
 		trig_data->last_activity = activity;
 	}
 
-	schedule_delayed_work(&trig_data->work,
-			      atomic_read(&trig_data->interval) * 2);
+	if (atomic_read(&disk->led.enable_count))
+		schedule_delayed_work(&trig_data->work,
+				      atomic_read(&trig_data->interval) * 2);
 }
 
 static int ledtrig_blk_activate(struct led_classdev *led_cdev)
@@ -190,6 +191,36 @@ static void ledtrig_blk_deactivate(struct led_classdev *led_cdev)
 	kfree(trig_data);
 }
 
+void ledtrig_blk_disable(struct gendisk *disk)
+{
+	if (disk)
+		atomic_dec(&disk->led.enable_count);
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_disable);
+
+void ledtrig_blk_enable(struct gendisk *disk)
+{
+	struct led_classdev *led_cdev;
+
+	if (!disk)
+		return;
+
+	atomic_inc(&disk->led.enable_count);
+
+	read_lock(&disk->led.trig.leddev_list_lock);
+
+	list_for_each_entry(led_cdev, &disk->led.trig.led_cdevs, trig_list) {
+		struct ledtrig_blk_data *trig_data =
+			led_get_trigger_data(led_cdev);
+
+		schedule_delayed_work(&trig_data->work,
+				      atomic_read(&trig_data->interval) * 2);
+	}
+
+	read_unlock(&disk->led.trig.leddev_list_lock);
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_enable);
+
 int ledtrig_blk_register(struct gendisk *disk)
 {
 	int ret;
@@ -203,6 +234,8 @@ int ledtrig_blk_register(struct gendisk *disk)
 	disk->led.trig.deactivate = ledtrig_blk_deactivate;
 	disk->led.trig.groups = ledtrig_blk_groups;
 
+	atomic_set(&disk->led.enable_count, 1);
+
 	ret = led_trigger_register(&disk->led.trig);
 	if (ret) {
 		kfree(disk->led.trig.name);
diff --git a/include/linux/leds.h b/include/linux/leds.h
index 395fa61..fd2eb7c 100644
--- a/include/linux/leds.h
+++ b/include/linux/leds.h
@@ -523,8 +523,11 @@ struct gendisk;
 
 struct ledtrig_blk {
 	struct led_trigger trig;
+	atomic_t enable_count;
 };
 
+void ledtrig_blk_enable(struct gendisk *disk);
+void ledtrig_blk_disable(struct gendisk *disk);
 int ledtrig_blk_register(struct gendisk *disk);
 void ledtrig_blk_unregister(struct gendisk *disk);
 
@@ -533,6 +536,14 @@ void ledtrig_blk_unregister(struct gendisk *disk);
 struct ledtrig_blk {
 };
 
+static inline void ledtrig_blk_enable(struct gendisk *disk)
+{
+}
+
+static inline void ledtrig_blk_disable(struct gendisk *disk)
+{
+}
+
 static inline int ledtrig_blk_register(struct gendisk *disk)
 {
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
