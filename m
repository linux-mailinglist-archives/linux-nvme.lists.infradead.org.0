Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCFDFCA18
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 16:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1fewdG/IKdf9ATRtW4p7Ruu+U570gPnqh1PNVedT9cA=; b=YKa9LwTUVqRhFFk/SVpf9EC/z2
	JQ0paOfNhSbjEyusxoXcfEHaR5aUVcCuO81eNGJq9DLvL1qsVvCwWNfekZZS83Gs2nJcV8omzOLo2
	XZSB/1ZTyQ/r/3jCNB4DXMto3WBT3ElpaWAx4mhgwco4HImHm+dGoU5WH4k1GzlXdP7tNES7+Q4s/
	287EjlxDMkEOcQ+lHRHcUF+wL04z/PKtODH5PbsFGvu92dCpHUoqLddnVQ2MBcldk2cvEaCIT6OTU
	aNxg+bZQK7eXONFVfNup7QwLAyW75eTJTH4CqBCybCc0nh3AHJmUcOCX3U5VmAjcm/r0SO6Kao5qd
	w22VQW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHEv-0006lB-JT; Thu, 14 Nov 2019 15:40:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHEU-0006Uw-NQ
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 15:40:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id c184so4505588pfb.0
 for <linux-nvme@lists.infradead.org>; Thu, 14 Nov 2019 07:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=A4NRqu6zws6KkURROJRW0VATYcbC+KyB15HofBr/wys=;
 b=Y+xBAAGLX4WygKle40zc9ZmYpP48uqkXfFsE3p3vX/ywPsUla/8sB1BaYNo1ZxTbGt
 nIvGuyfhyGo/w1cATKx8o41Yaar6VTqC7RcIXH2WG8v7u9tOy/1bSO3mn7hYgMmPa0ID
 IMU3EqNn2j9UFzhKOgaUAlTOXQb2dvHtcw9Jox6r7Oeqel+EfaBvPgJFWhYHzoadzm9q
 WrHuDpO6xq59fMI36z6p+OeUuwsXE9FPsybeoS4jEguFuoFBNe/I1+mBVpkge6CD+P5b
 TMZi4DjXXL1DGnrQgM2lXldbLabujcXPVqemoWBA06UfsIZiasGMb3f1cvXSs+IfLLtT
 flGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=A4NRqu6zws6KkURROJRW0VATYcbC+KyB15HofBr/wys=;
 b=ADZtMTVmXQsueAJ/G3AmDY11PHJ333wPLX5G0gcvOaGGXpWP1AmYgUIDiOMV7qPCg0
 wcSK1pZclIha2W6Gp0gmHGeAlGLiF32KwzfVN4eeLeK3t8skCm57G2knIyVcTTxzSwmU
 DU2tXK3pbeq8A7js7Dj+UciF1lgVxJKFd1s/SIRt8tJAiHruGQHf4PW/9MWR9Zo3yVIV
 2OKJQsXynJSG/5iqnwPBjiROY0scWuh6ah3mYrqcuwJxeRKMBj5r57W2C4QfuiM7nCGr
 iaUD+XGs6/Sc3Ax0mysXGtbtEGj4FNGJukbdJ9GIOckSy4YcBnW43HTeQt6D3WT3iHU6
 mDsQ==
X-Gm-Message-State: APjAAAXE2e1iiAlEpc9afysR+dTSWjc8TbdA3bhUIVi1jcrclkv8Ktod
 H9YrEU3BOzyAF2qgTpl1/dExkmgC
X-Google-Smtp-Source: APXvYqyjMMrRI9rys1iq0eE3cRa4eB7Uqinv0HfWx/0amoG24FlMaaEFRRuyl2cas81/MlDXOoAx0g==
X-Received: by 2002:a63:e412:: with SMTP id a18mr10693717pgi.241.1573746029551; 
 Thu, 14 Nov 2019 07:40:29 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id 206sm11490858pfu.45.2019.11.14.07.40.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:40:28 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-hwmon@vger.kernel.org
Subject: [PATCH v2 2/2] nvme: hwmon: add quirk to avoid changing temperature
 threshold
Date: Fri, 15 Nov 2019 00:40:01 +0900
Message-Id: <1573746001-20979-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
References: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074030_769889_0D9169E4 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This adds a new quirk NVME_QUIRK_NO_TEMP_THRESH_CHANGE to avoid changing
the value of the temperature threshold feature for specific devices that
show undesirable behavior.

Guenter reported:

"On my Intel NVME drive (SSDPEKKW512G7), writing any minimum limit on the
Composite temperature sensor results in a temperature warning, and that
warning is sticky until I reset the controller.

It doesn't seem to matter which temperature I write; writing -273000 has
the same result."

The Intel NVMe has the latest firmware version installed, so this isn't
a problem that was ever fixed.

Reported-by: Guenter Roeck <linux@roeck-us.net>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/nvme/host/nvme-hwmon.c | 6 +++++-
 drivers/nvme/host/nvme.h       | 5 +++++
 drivers/nvme/host/pci.c        | 3 ++-
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/nvme-hwmon.c b/drivers/nvme/host/nvme-hwmon.c
index 97a84b4..a5af21f 100644
--- a/drivers/nvme/host/nvme-hwmon.c
+++ b/drivers/nvme/host/nvme-hwmon.c
@@ -170,8 +170,12 @@ static umode_t nvme_hwmon_is_visible(const void *_data,
 	case hwmon_temp_max:
 	case hwmon_temp_min:
 		if ((!channel && data->ctrl->wctemp) ||
-		    (channel && data->log.temp_sensor[channel - 1]))
+		    (channel && data->log.temp_sensor[channel - 1])) {
+			if (data->ctrl->quirks &
+			    NVME_QUIRK_NO_TEMP_THRESH_CHANGE)
+				return 0444;
 			return 0644;
+		}
 		break;
 	case hwmon_temp_alarm:
 		if (!channel)
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 000a3d9..19e5e87 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -115,6 +115,11 @@ enum nvme_quirks {
 	 * Prevent tag overlap between queues
 	 */
 	NVME_QUIRK_SHARED_TAGS                  = (1 << 13),
+
+	/*
+	 * Don't change the value of the temperature threshold feature
+	 */
+	NVME_QUIRK_NO_TEMP_THRESH_CHANGE	= (1 << 14),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 931d4a9..2c0206b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3529,7 +3529,8 @@ static const struct pci_device_id nvme_id_table[] = {
 				NVME_QUIRK_DEALLOCATE_ZEROES, },
 	{ PCI_VDEVICE(INTEL, 0xf1a5),	/* Intel 600P/P3100 */
 		.driver_data = NVME_QUIRK_NO_DEEPEST_PS |
-				NVME_QUIRK_MEDIUM_PRIO_SQ },
+				NVME_QUIRK_MEDIUM_PRIO_SQ |
+				NVME_QUIRK_NO_TEMP_THRESH_CHANGE },
 	{ PCI_VDEVICE(INTEL, 0xf1a6),	/* Intel 760p/Pro 7600p */
 		.driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
 	{ PCI_VDEVICE(INTEL, 0x5845),	/* Qemu emulated controller */
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
