Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D07E141AB
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 19:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0ksDIDioEbaQTqJFB6Mm2KnoiyDFF8vY9N4+AzjcTyw=; b=XjB
	FdhCG3JQyqdZWewZX4xNjZnCS6angV/hZKaGqrDcMhOTaP0vfyjtc+JBtr6zqstD0VkcfIT7QCuUE
	vwF2qcJMC4G/rb/HRPcr7M5P+vttKUuQB7r5kRj4UXPijQF6Y9760f2+uGg2u0Wdtpm6RiaHCNckl
	IzqheM55XVP/LGiyYNqz+lbxGUxo69h/UBYMLMDT1963U/Gw9sGdqDJtW77MeqD4dymDtBJCm92zZ
	DnzwktOaaJXIV22+DVXp20kqYwlp8jo6sURULu3rU6hRJY60YWe4jODp/mGEKvcixtf4MKewNh4ca
	xUi7HffdxHztN4hNc0nfce0jp/ZTbRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLMj-00065g-G2; Sun, 05 May 2019 17:55:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLMf-00065K-8X
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 17:55:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id 85so5278632pgc.3
 for <linux-nvme@lists.infradead.org>; Sun, 05 May 2019 10:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=W7LJu/QDDtBQhMz0R9UZNmXZwkZeA+SLpK2Wsbdr+nk=;
 b=tvZNC/svY5y/6S+K09LTqGhklAJlZIEMnLdGuJ0ug7nlqqt/EQwYHmWaZLn2UK3Unv
 4m1c5BWWfAzYxtIaDR076iEuKPnYAI6BXlqcbV6VMnIvlD7i54v4jJWDHa0X+pPMK0FT
 oE3k5ZQFD/4yVrt+xhQnO2OqMK5P47slIueGIODS+pFCcBfN1pafnb3BQAXVD6mLF9Y/
 b0I9DWC7P+e/MFiSUPM7DBYID4eSw9FG8nFtcyx6gDEd9aYuk+4lVyGTM0V29Ab1NGT3
 mZ0LSRTqI5kubO4dv9tw1ubjsYyQ7QhYFxRdvpn04OIylCoMdX1l2Kc8Jc3kLI6Iqltm
 CAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=W7LJu/QDDtBQhMz0R9UZNmXZwkZeA+SLpK2Wsbdr+nk=;
 b=h9y+XTs6cEJiLAJtOH56uBAVbG4GHiFAKLNSaHnYrswfuj7PtvIMv+VtROYd6g4aBQ
 6O9BYRMVEe4HLDxgcCFpZiKJKUM81tUNqw2jqW58IFwyy6h4MO+hpQfZUy39/3em49CG
 t/9zD6Ly6odsFZysFDVwbRcLnUxiRYAczaEStUXLGem5/hkJ0a7Fj24MVbWt09eWyr4H
 vuuqwUTFLZoz7ZzrW1ul4nTXQOLhSpveQC4OQH4f4ERTmTeyw9Z/k+LRHS3zItvJj8fk
 /mXhAYU/HxsgkbT6uVabXe5MLYUuLt4t0ahWN1amtxPR0xmuydZOEhs187XwQhnInyKM
 +tLQ==
X-Gm-Message-State: APjAAAUf0Xb5s2sJUriklJ6v3tv4bnSH1bCYPkSoQ4jHwIYbyvFnbwSb
 NeJexhC3z4KBz5qgN8IB33vrMUSV
X-Google-Smtp-Source: APXvYqx2GwWyZW9lQUKGiVLQ3HTf7ovHRmCZyf13AWFrBmkwICjgd1+gqpMjnE7efyXSj69yUt73dw==
X-Received: by 2002:a65:518d:: with SMTP id h13mr26617640pgq.259.1557078952064; 
 Sun, 05 May 2019 10:55:52 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id p7sm10181815pgn.64.2019.05.05.10.55.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 05 May 2019 10:55:50 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: add missing endianness conversions for telemetry
 log page
Date: Mon,  6 May 2019 02:55:27 +0900
Message-Id: <1557078927-4101-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_105553_329962_CD4EDD6C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, Akinobu Mita <akinobu.mita@gmail.com>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add missing endianness conversions for data area last block fields of
telemetry log page.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 linux/nvme.h | 6 +++---
 nvme.c       | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index a1422a7..f6d7341 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -433,9 +433,9 @@ struct nvme_telemetry_log_page_hdr {
 	__u8    lpi; /* Log page identifier */
 	__u8    rsvd[4];
 	__u8    iee_oui[3];
-	__u16   dalb1; /* Data area 1 last block */
-	__u16   dalb2; /* Data area 2 last block */
-	__u16   dalb3; /* Data area 3 last block */
+	__le16  dalb1; /* Data area 1 last block */
+	__le16  dalb2; /* Data area 2 last block */
+	__le16  dalb3; /* Data area 3 last block */
 	__u8    rsvd1[368]; /* TODO verify */
 	__u8    ctrlavail; /* Controller initiated data avail?*/
 	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
diff --git a/nvme.c b/nvme.c
index f4c027b..220fb18 100644
--- a/nvme.c
+++ b/nvme.c
@@ -376,13 +376,13 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 
 	switch (cfg.data_area) {
 	case 1:
-		full_size = (hdr->dalb1 * bs) + offset;
+		full_size = (le16_to_cpu(hdr->dalb1) * bs) + offset;
 		break;
 	case 2:
-		full_size = (hdr->dalb2 * bs) + offset;
+		full_size = (le16_to_cpu(hdr->dalb2) * bs) + offset;
 		break;
 	case 3:
-		full_size = (hdr->dalb3 * bs) + offset;
+		full_size = (le16_to_cpu(hdr->dalb3) * bs) + offset;
 		break;
 	default:
 		fprintf(stderr, "Invalid data area requested");
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
