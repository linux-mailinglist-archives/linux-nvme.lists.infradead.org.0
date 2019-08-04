Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47511809C7
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aRSZQEFbkZpZvh2rUJBTZsQmIUObGlSVDi9OkAogcRo=; b=h2v9H3VwU0ZIqascxHYwv8HoNE
	RHNKdK1RBelahbcULXJs1q/PtzSatHq0qav61cCN68ZKwwxmPYK3kD8IdktHeS2z+lBj8152zuaVf
	kTaSpLrHLhGNCuMIB+0uKBijCk26Mp1qICRS6CNu7k7A8hD4MQqwiP08PZlKzLSG5rg13m68LZaKP
	33iF28ReWmxFmePQuMqjry6V523QyyihT40b84CgJIjcA0xrDXfZ7OM6Rj4MFsGqHRuZzZcZc4o9h
	CRhAqDaS/aPAwdhTXbf8nHql/gbplX4VHY0ejjexJOT8Z0l23V7/vWpGZSeWeEMClld6u6/k1jKVM
	ZcyVbBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huAgA-0004a3-U5; Sun, 04 Aug 2019 07:11:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huAfJ-0003wG-Mc
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:10:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so38058160pff.8
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HOu2v72Ssnzbh2gxZpycpIH64s67bIa2wo1Ht6Hrpts=;
 b=ZIp9mxJ5owXee6rckRGc5QYnsIfTJ4uYH4u7d5HISNla+wkX3bqRJfURak5EN0uYuo
 GwhxbFmbwgMx9waINOOJKrfpO05Cac+14v3h+ZqvXE5ralsx9iFhfEayUrzfbjmXPlh7
 CPodsrqgDXG1gm9QgKQbrcoOIcYIU0O0CRJqLqsJI4w0Ovt8PnbNj74bsJHnVYnhKqWJ
 ocD5/HnBP9J3/b/MBQC6yP/e1Uml6LQxsqvv0IosNMGgZgXMJlSAbL2nocEYLoDoq5Rl
 +yh0l/4+rW+ctJIImwhW6+Ecd7Nbs7xZioPf+VT2tN0xDT35nIg6tZyMIEiGuGptxs3G
 C82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HOu2v72Ssnzbh2gxZpycpIH64s67bIa2wo1Ht6Hrpts=;
 b=Wp3FOR05MdOco+YMt81HnfR7DW3xDgQmaQWew46nqWPVHK3ESj3p1I59W11vxDO2E7
 k4zFaRla3fgn73LMp1/hBNax5BuYX82C+torRfkk1zrkZqzrWrRuXM5sPFx0dTVE1XaZ
 RwHhW+uJD5uXteniawCJI5XuF8hDPVUREV30+LaDu3SfYu6tIMdUtMaqRhfQyUmsB5y7
 i4ZHYN24i4HxxpUCbHwM8/fSf7P2/vH8nT0cfOMMRhR1f6o9DSXM/Xrey6aY+HMBsDfK
 MxxNB1Y2Qxwj4hVamSafhSFo6bjmSC9p9v/7cQQem3foWgGW4BOHgI1Kp7iw030GgQSP
 yrnQ==
X-Gm-Message-State: APjAAAVAmmQ//qGXEScTbB8+T6hJ3GxiAWD5B92fWguGHx5mKtjc6CnD
 2151lHkf5yoxcmB0mqWu3nxR5qEZ7r0=
X-Google-Smtp-Source: APXvYqztRAhvjOa+sLQpes4JV34I62bm0RZ4wO/K2BRXxPzeNbWzrLzGrOxZXkntoQA80ThyB1nS8A==
X-Received: by 2002:a65:504c:: with SMTP id
 k12mr133240354pgo.252.1564902644911; 
 Sun, 04 Aug 2019 00:10:44 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm88033964pfp.131.2019.08.04.00.10.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:10:44 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/3] id-ctrl: add 1.4 features to OAES
Date: Sun,  4 Aug 2019 16:10:25 +0900
Message-Id: <20190804071026.16149-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
References: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_001049_737579_164DF035 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Optional Asynchronous Events Supported now has few more fields from 1.4.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-print.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index b6e18d488a8e..91eb326157f2 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -122,13 +122,27 @@ static void show_nvme_id_ctrl_cmic(__u8 cmic)
 static void show_nvme_id_ctrl_oaes(__le32 ctrl_oaes)
 {
 	__u32 oaes = le32_to_cpu(ctrl_oaes);
-	__u32 rsvd0 = (oaes & 0xFFFFFC00) >> 10;
+	__u32 rsvd0 = (oaes & 0xFFFF8000) >> 15;
 	__u32 nace = (oaes & 0x100) >> 8;
 	__u32 fan = (oaes & 0x200) >> 9;
+	__u32 anacn = (oaes & 800) >> 11;
+	__u32 plealcn = (oaes & 0x1000) >> 12;
+	__u32 lbasin = (oaes & 0x2000) >> 13;
+	__u32 egealpcn = (oaes & 0x4000) >> 14;
 	__u32 rsvd1 = oaes & 0xFF;
 
 	if (rsvd0)
 		printf(" [31:10] : %#x\tReserved\n", rsvd0);
+	printf("[14:14] : %#x\tEndurance Group Event Aggregate Log Page"\
+			" Change Notice %sSupported\n",
+			egealpcn, egealpcn ? "" : "Not ");
+	printf("[13:13] : %#x\tLBA Status Information Notices %sSupported\n",
+			lbasin, lbasin ? "" : "Not ");
+	printf("[12:12] : %#x\tPredictable Latency Event Aggregate Log Change"\
+			" Notices %sSupported\n",
+			plealcn, plealcn ? "" : "Not ");
+	printf("[11:11] : %#x\tAsymmetric Namespace Access Change Notices"\
+			" %sSupported\n", anacn, anacn ? "" : "Not ");
 	printf("  [9:9] : %#x\tFirmware Activation Notices %sSupported\n",
 		fan, fan ? "" : "Not ");
 	printf("  [8:8] : %#x\tNamespace Attribute Changed Event %sSupported\n",
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
