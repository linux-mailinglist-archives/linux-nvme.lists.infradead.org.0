Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24208702F0
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R/EKF5iESFmtxtvIMKyzeMIL7LcYkpMis4cjC8q6Dcc=; b=fNk0h4e9PkCuNTaKpkqAthKSBt
	wmkZjveV/v9LpyeCabN7cHyxDjMBGgRTlRc0ouwfrFc0WCcfFF/PeVX82Jt+BECJJzpm7xrlQMj+L
	UXurkCPrweZTFXyxPk/kpYI9M6UdC7GxCZj0z5D0G5euX8Wr/1GgY5xZyyCw/TJsem+ueAZ97jCu1
	z2NerooRzkwQwrDvQyt6X0+mlhOPkuIIsv7hVBcIkPfX8mWOolUQNz4z8tGCHHZ9eniEoLyUl5uYU
	FDLIQ27J3MxmyuKrXEz3FNdZ0Ku9rTwVvGOuppatHSDs6ENJBX2inkJtFzaqDdrfQncZ95cuf+OKb
	4lfKvqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZon-0006iJ-9U; Mon, 22 Jul 2019 15:01:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZnI-0005Au-In
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 15:00:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so19341240plb.9
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 08:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H/mgA5Q6Tay1+ixdoqgmaZ9E59OoWK8q1G0jb5mfWTU=;
 b=T/wva0ycJqMHPLQKhAXy5V2lfzKN76yWpvWsrPHtca0NDIyzmovmqZgvwVqF14v2L8
 fBrD47foZqJBwmOlF5kvBbL5MtnGVvtp6/bOZvyElrrjnl63poUJtgV/ycVD0VAkKCe0
 IJWuezmPWL2Onh1qDU+eD3K5ATWu2YrINCgSIrdoGFLXUa5IyTfvzNGUJAblJbCNi3p5
 8fPvWMfBE8yA5Y1Gts097/nIort/T/1wP1L1J4wFIhOKveGGWVIYyN8/YbCTc6HmCYI5
 r7xdAi1ReLdIIJwpHR+9VK//9e7Uz4d7vSNv9p/9skFEMIpNHEgnPE1wGq4kbPK2N+3H
 Pqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H/mgA5Q6Tay1+ixdoqgmaZ9E59OoWK8q1G0jb5mfWTU=;
 b=Zv++3BDwCnKpJTdaYg/YAn0B3Ag76gpki7UKpxrdO9blUlH13pAxmVuAKFrAxYt/kX
 hLGwpOT6ljkRoe3KKF73FMfdHU0qVEqt72gN04zB/ClLIqByyPqytXA33rDeS+1V73SH
 6DTiGblESCSgHjFI0UOODvxxA4j9suo4x1J1nVFoopLxUAOXIbkmvRiUVU9bcJkuIF7o
 9l199YDJ9iplTtp5BaqL12XNv4zlDAUSyfVuRCbz8974/3Jj/S7eC+amJbj7kQSb5fVG
 /J6PJVnjkyCZEc1MGRb5bqRM5a4gXtlzwz4eVt3khHqNJRUilL6yOMJrLy+DQ8pHaeJx
 v6FA==
X-Gm-Message-State: APjAAAUBJ9CjKcJN0Z0qSWRBYvbdOV6KkWd70y9qsgIr178ik7S6m+El
 LovOWD6JORtvulIvKC9lkkk=
X-Google-Smtp-Source: APXvYqxgJ+C74y1G4cEu9kZN1sEr0LOAv6Ih4XmhsV8n8HLqX2VM3eQps23ZbUAPOuHVbaq3um9WrQ==
X-Received: by 2002:a17:902:8ec3:: with SMTP id
 x3mr74560918plo.313.1563807602716; 
 Mon, 22 Jul 2019 08:00:02 -0700 (PDT)
Received: from mita-MS-7A45.lan (KD027092233113.ppp-bb.dion.ne.jp.
 [27.92.233.113])
 by smtp.gmail.com with ESMTPSA id a16sm42533174pfd.68.2019.07.22.07.59.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 08:00:02 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 3/3] scsi: sd: stop polling disk stats by ledtrig-blk
 during runtime suspend
Date: Mon, 22 Jul 2019 23:59:12 +0900
Message-Id: <1563807552-23498-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
References: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_080005_045451_AB46C493 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
