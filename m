Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C6588CAB
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3r9QU06iJp4vuMkg55PyVplc0rvsxM7ZfcilNYQksC8=; b=dBRfFI8d0AeDzUIJBDK//SA8oa
	m71ssERfWniHHt6aswWwyNl+BOE2FvgOEbX0rFMTvbzeAw2DI9NDGu8lrYjY2MJp2NpNKil/DoR5Y
	t4WGbQmw/ieKFbqqqIR+a0fvLuDppGim9WBDABWpNnLv+GmGqECh1d6TSxk47o0H19Fsh8XJQ9yZi
	N0uOjwstkcQC3Y7ePuk+TaDDCUXVwnybxK8Rp3bL8Nfru5zOqcUEzfyIlijcS6I8pQcgwFef+jn3G
	RS2qjWTEFXkg/D9Kyj4h7e4kLBY6138IECm9qx3wivhps3jFeoai+HbM7vsTmmaHrd6tZzYzem35V
	5m/QASeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVcK-0000g4-RO; Sat, 10 Aug 2019 17:57:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVas-00086g-Dj
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id n4so5680696pgv.2
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h/9CsJGmHC2k7mkEH3qy3JiPzHPuCIzjhAVDf1/O6Fc=;
 b=ezPjll7Lb5sAV1hP9STQ2H5TEWxJogWsWbSW7y+KFt8hKb48Uc6nbNCEiJHuxAeqHA
 7UzTKft2gkU9gK1+83GaQU5HrmqlshJxETLy3P6NAhzmzEBEszr7pLK7w25zRBbjySqp
 OZOQE4fBLDV0iLkIPzRy4UWpRD4RDqG+pn3hclJ0igWjzJuvdukgkXmHdZ7VVK0P/BA2
 /0ZLPBDn1A2xu1bW572g7bTPIXOw96XakrAKTDe99583c+Y+UWTiUSPe8IfmYwMdFpj2
 +v/drnpSO1KPgGt3c2SzbPrWFp4r2t5jFN6KYVe88i03JTpkqghSKG8o7sK8+4HN3b3T
 +V3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h/9CsJGmHC2k7mkEH3qy3JiPzHPuCIzjhAVDf1/O6Fc=;
 b=HVGfVuKXPMNQ+d896G1+J9T8VhJPdV/+j1QE3MUnC6a64Gw8SCEwJ2mcvRqCK5sXrg
 +wLltfBbbi7aXUvKzY3NcqvNDqDzEDN2VlC5c0tATaNLm7Jordn8PoJO/eguYNIs0XTV
 rbNk2Om4GPfnHjrKpsI424iZMxSx3nev71AVCgVVndw6t4GpcD2cqRZtZJIKRdY4QZyM
 Nw8e6JUFxTAqxVdXL3ver+aMMccnnuo0C1BicVivZpeNZPsy+yAtmy9d69LvYPTy07eZ
 QggrRIVOGK40EoEF9dGOcYGPRJ4aMyIa9+ITrc8ZX+/n1cVe3EGN9GPVYMsIKt4H+mHd
 /8gA==
X-Gm-Message-State: APjAAAVnONqAbvpOKi3jjLXYshvcAIy3VgwlV6k1gJi0TJgNjLhk+W/8
 KQX0lwaNgEg68HXdD1N/H+k=
X-Google-Smtp-Source: APXvYqzF2UwGISoFhldo7ZZvtdBY4gBhWZntLgvppdH9tAoUWH7GgkeTyFQlSEYAwteeWPypa4ORuA==
X-Received: by 2002:a17:90a:2041:: with SMTP id
 n59mr15025439pjc.6.1565459753633; 
 Sat, 10 Aug 2019 10:55:53 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:53 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 6/6] scsi: sd: stop polling disk stats by ledtrig-blk
 during runtime suspend
Date: Sun, 11 Aug 2019 02:55:03 +0900
Message-Id: <1565459703-30513-7-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105554_570794_2C284E9C 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
scsi device is in runtime suspend.

This stops polling disk stats when the device is successfully runtime
suspended, and restarts polling when the device is successfully runtime
resumed.

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
 drivers/scsi/sd.c | 40 +++++++++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 17 deletions(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 149d406..5f73142 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3538,7 +3538,7 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
 {
 	struct scsi_disk *sdkp = dev_get_drvdata(dev);
 	struct scsi_sense_hdr sshdr;
-	int ret = 0;
+	int ret;
 
 	if (!sdkp)	/* E.g.: runtime suspend following sd_remove() */
 		return 0;
@@ -3550,18 +3550,16 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
 		if (ret) {
 			/* ignore OFFLINE device */
 			if (ret == -ENODEV)
-				return 0;
-
-			if (!scsi_sense_valid(&sshdr) ||
-			    sshdr.sense_key != ILLEGAL_REQUEST)
-				return ret;
+				goto success;
 
 			/*
 			 * sshdr.sense_key == ILLEGAL_REQUEST means this drive
 			 * doesn't support sync. There's not much to do and
 			 * suspend shouldn't fail.
 			 */
-			ret = 0;
+			if (!scsi_sense_valid(&sshdr) ||
+			    sshdr.sense_key != ILLEGAL_REQUEST)
+				return ret;
 		}
 	}
 
@@ -3569,11 +3567,14 @@ static int sd_suspend_common(struct device *dev, bool ignore_stop_errors)
 		sd_printk(KERN_NOTICE, sdkp, "Stopping disk\n");
 		/* an error is not worth aborting a system sleep */
 		ret = sd_start_stop_device(sdkp, 0);
-		if (ignore_stop_errors)
-			ret = 0;
+		if (ret && !ignore_stop_errors)
+			return ret;
 	}
 
-	return ret;
+success:
+	ledtrig_blk_disable(sdkp->disk);
+
+	return 0;
 }
 
 static int sd_suspend_system(struct device *dev)
@@ -3589,19 +3590,24 @@ static int sd_suspend_runtime(struct device *dev)
 static int sd_resume(struct device *dev)
 {
 	struct scsi_disk *sdkp = dev_get_drvdata(dev);
-	int ret;
 
 	if (!sdkp)	/* E.g.: runtime resume at the start of sd_probe() */
 		return 0;
 
-	if (!sdkp->device->manage_start_stop)
-		return 0;
+	if (sdkp->device->manage_start_stop) {
+		int ret;
+
+		sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
+		ret = sd_start_stop_device(sdkp, 1);
+		if (ret)
+			return ret;
 
-	sd_printk(KERN_NOTICE, sdkp, "Starting disk\n");
-	ret = sd_start_stop_device(sdkp, 1);
-	if (!ret)
 		opal_unlock_from_suspend(sdkp->opal_dev);
-	return ret;
+	}
+
+	ledtrig_blk_enable(sdkp->disk);
+
+	return 0;
 }
 
 /**
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
