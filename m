Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AF91ACE1
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=21nyIvu0vWt31zO3DacMc1cIButyw2YD4Z0Z9viKVKw=; b=ItUWh40nuDHFqNiWuq3UcNXmeH
	AF0J7LykWKNIWCf78nVsjyX3NsymO+qnYulVPUPXU4CkesFO4Y9+OA1wnZvwFBfgCwoSXaH4CXpJG
	zWfXEb6qSIBo8/gHwOYwS+6HedoU0wdy8YoeotVrtxudWu9Vg9+ejq1OvHMC3N5kxXSFK1L96CqZB
	fI9e2nr/AXl8Ho7F9kvzYyh6thPmLIuAOMqilKkQuiyA4GpwhtQMv5PKlFNOAto0T/zfKqzU5cJyx
	0TgZMQn2o2YOMqc0qpPjdGq9+GVWgSd2IC4WA/t0G3m6myRTDIM15y9cHDICnmwEWGOWqYAOlB0Fs
	ArcCR6IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqou-00022Z-1G; Sun, 12 May 2019 15:55:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoN-0000Ns-E9
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:55:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id z28so5818582pfk.0
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d2wWJz4YMrtwlEJecuuUCAduDMfeNvXVgccKamh1L2Q=;
 b=HTyF8V1iLjPVxWHbZrbWrT5ZaAU4mLUUHpZIcejE7e9hY0xzp+108g1aABAR2PpEDY
 8uWGlXfcIjem/w4djblB78fN/3fnWfukobhZ9J8uuYyhMwEuyDm+PP1c+VfkG4mJNgw1
 f2bR7qdWIgGUQbyYzd120QyA4Is98EqOVYY3Q54LyOzkZRe+Mnu4BwYCjwJoOt05/Q55
 7uDUOpg6E3LZNgsQONUlaiV1XwFPvFd29eGU2fXe4qHtkCZyuU7YYBUEl8Xr5Ga9GKKJ
 jsxv/C8j05CN9Oq3RiF2lUuUWvrvMiTSMWJntkP6+S+pr0OYdWRitmmeeQuZhYY1C18v
 qU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d2wWJz4YMrtwlEJecuuUCAduDMfeNvXVgccKamh1L2Q=;
 b=OX5Uu8dfVKl45UgicG/NEG+kPBguv6XUB0Pw9w7uCbE7gI0AqBqZ6o3bHHHx2P7Hu6
 wjcTT16fO2AxWqgjlH7L81rQl0+r5Uwr5hDbHiT4QwCdIzKpRSQSolZIbysRXRKmT2O5
 Kj0rGKtfiXfJ/Jkt9GpXt4MP8lTNA+ao7Po0v7y8QoIwzNzw+FlSBtfEkRnyF4OT3/5z
 LcV3T0kvD/jKFdY6GCWAQ6Oa+UkUSmCwDiHr2JPucDDv+gyvIyur1WGuyX6qEU1fctqv
 14D7nGZbB3XJMci3VSNZRWYD2T25piTKwegn25Loc99UT82tjCBVYXib8qK9RPFU91d+
 I3jg==
X-Gm-Message-State: APjAAAWEdr8BX0dNrQ2aZk2dJMw+Ja8ngOD3CmeEWkz34mpzVY/26ark
 eP9IKRVqp3vBdfVdPO6mcC7+2KjT
X-Google-Smtp-Source: APXvYqzBUPLt00KkhehGsTxNtdxkDAU5B9QsWEqMfdCFnVl++gjx41xIRjsfCsqqGnGEyfkPFHcNZg==
X-Received: by 2002:a63:1a03:: with SMTP id a3mr26445478pga.412.1557676490807; 
 Sun, 12 May 2019 08:54:50 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:50 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/7] nvme: add basic facility to get telemetry log page
Date: Mon, 13 May 2019 00:54:14 +0900
Message-Id: <1557676457-4195-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_085451_986092_D874EA17 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This adds the required definisions to get telemetry log page.
The telemetry log page structure and identifier are copied from nvme-cli.

We also need a facility to check log page attributes in order to know
the controller supports the telemetry log pages and log page offset field
for the Get Log Page command.  The telemetry data area could be larger
than maximum data transfer size, so we may need to split into multiple
transfers with incremental page offset.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- Merge 'add telemetry log page definisions' patch and 'add facility to
  check log page attributes' patch
- Copy struct nvme_telemetry_log_page_hdr from the latest nvme-cli
- Add BUILD_BUG_ON for the size of struct nvme_telemetry_log_page_hdr

 drivers/nvme/host/core.c |  2 ++
 drivers/nvme/host/nvme.h |  1 +
 include/linux/nvme.h     | 17 +++++++++++++++++
 3 files changed, 20 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a6644a2..0cea2a8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2585,6 +2585,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 	} else
 		ctrl->shutdown_timeout = shutdown_timeout;
 
+	ctrl->lpa = id->lpa;
 	ctrl->npss = id->npss;
 	ctrl->apsta = id->apsta;
 	prev_apst_enabled = ctrl->apst_enabled;
@@ -3898,6 +3899,7 @@ static inline void _nvme_check_size(void)
 	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
 	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
 	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_telemetry_log_page_hdr) != 512);
 	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
 	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
 	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5..7f6f1fc 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -195,6 +195,7 @@ struct nvme_ctrl {
 	u32 vs;
 	u32 sgls;
 	u16 kas;
+	u8 lpa;
 	u8 npss;
 	u8 apsta;
 	u32 oaes;
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index c40720c..8c0b29d 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -294,6 +294,8 @@ enum {
 	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
 	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
 	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
+	NVME_CTRL_LPA_EXTENDED_DATA		= 1 << 2,
+	NVME_CTRL_LPA_TELEMETRY_LOG		= 1 << 3,
 };
 
 struct nvme_lbaf {
@@ -396,6 +398,20 @@ enum {
 	NVME_NIDT_UUID		= 0x03,
 };
 
+struct nvme_telemetry_log_page_hdr {
+	__u8    lpi; /* Log page identifier */
+	__u8    rsvd[4];
+	__u8    iee_oui[3];
+	__le16  dalb1; /* Data area 1 last block */
+	__le16  dalb2; /* Data area 2 last block */
+	__le16  dalb3; /* Data area 3 last block */
+	__u8    rsvd1[368];
+	__u8    ctrlavail; /* Controller initiated data avail?*/
+	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
+	__u8    rsnident[128];
+	__u8    telemetry_dataarea[0];
+};
+
 struct nvme_smart_log {
 	__u8			critical_warning;
 	__u8			temperature[2];
@@ -832,6 +848,7 @@ enum {
 	NVME_LOG_FW_SLOT	= 0x03,
 	NVME_LOG_CHANGED_NS	= 0x04,
 	NVME_LOG_CMD_EFFECTS	= 0x05,
+	NVME_LOG_TELEMETRY_CTRL	= 0x08,
 	NVME_LOG_ANA		= 0x0c,
 	NVME_LOG_DISC		= 0x70,
 	NVME_LOG_RESERVATION	= 0x80,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
