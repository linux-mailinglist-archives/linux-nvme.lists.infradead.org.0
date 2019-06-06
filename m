Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCE237F95
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvCPua6pXYJoFeOItd+OHvFEcn+52ysOXeqbipspOnU=; b=tlis+16gk2fyFn
	H2drwHvPF3JbWEydx5MZ4XIAmsEv4ZoVMl+fwy4ADFkW0hyZagDZIZNCMB/0NyX9qODdatkA84CM3
	QTB1z6Ul7PSTz8u5+JyRmgh65FoRqJ42nxRyUjbV+7qjYOCPhXDnl1x3NG9Td86S52IXCuBdF+2V3
	AUYKTxbOS8d8mBOVeHu8MOEzrkXPdTAstpsQn5hKUsZmOnifbAkZ/lPxQ1HbBYLAaJySBvfbJBYOt
	7ab9BP38kN3dzD7g1oT+5I4vfdoep5JxNKDUOh79x6Kf/n+Y+iw8RFYHG6eUT3jbNITSAl2M058F6
	V3leYYE0YZq6aolifZ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzwl-0006uT-QE; Thu, 06 Jun 2019 21:29:19 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzwa-0006qz-JY
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:29:10 +0000
Received: by mail-pg1-f194.google.com with SMTP id n2so2048954pgp.11
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 14:29:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tfDuPbOppHo1e+Fp1NmRtfJAJnz8Bnt2bzU7Xfxu9TA=;
 b=cRYrEkKzw8SA3kzzi/w9DjkJBlWvlM8iKZYk2z8PNsj5fGJYS9esYNdEYRncSEfHIL
 RpgO2xgQKiU3ZgbSRAoPu+wXbiRnoTUMVMPESp63sIvAF1YR5tvTrq3GDGyOxuB+qMFH
 QQ+X+nhmGE8XyvJJjPGMsKvctDZnW4/i7jLTbXqyp4jUseRmsNxROomwDjeW5Sbw3thD
 A2FmR7aWvWWxE2w5I4431ntNlM+gcA5odOf5ocytHS01p++dBVczEkFazGRdq6jvcULL
 cBhzYd5HHvKvCelZEQe8ITjFqR7qBqzRkyo+2kxAe3Bw/HdO7PbCI1Ke5aVmcKifzxhi
 ohfg==
X-Gm-Message-State: APjAAAWKAAsgxivBMX4N+rCIuVCv0mX3wT8A2UGTRdVihERL0yA84zu4
 r2p8goOG0z8itxHxsw/2cnY=
X-Google-Smtp-Source: APXvYqwm62w3NJFTddBIq16hy23bVdmBbu4xDwsl+OhKBkaXSGuVMaAhV5SZJo39M17rOPTLaFIBWQ==
X-Received: by 2002:a17:90a:ad41:: with SMTP id
 w1mr1933669pjv.52.1559856546024; 
 Thu, 06 Jun 2019 14:29:06 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id u1sm85940pfh.85.2019.06.06.14.29.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 14:29:04 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 1/2] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Date: Thu,  6 Jun 2019 14:28:53 -0700
Message-Id: <20190606212854.122478-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190606212854.122478-1-bvanassche@acm.org>
References: <20190606212854.122478-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142908_637497_BFD4B80E 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Several new fields have been introduced in version 1.4 of the NVMe spec
at offsets that were defined as reserved in version 1.3d of the NVMe
spec. Update the definition of the nvme_id_ns data structure such that
it is in sync with version 1.4 of the NVMe spec.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 include/linux/nvme.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 8028adacaff3..2b5072ec4511 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -315,7 +315,7 @@ struct nvme_id_ns {
 	__u8			nmic;
 	__u8			rescap;
 	__u8			fpi;
-	__u8			rsvd33;
+	__u8			dlfeat;
 	__le16			nawun;
 	__le16			nawupf;
 	__le16			nacwu;
@@ -324,11 +324,17 @@ struct nvme_id_ns {
 	__le16			nabspf;
 	__le16			noiob;
 	__u8			nvmcap[16];
-	__u8			rsvd64[28];
+	__le16			npwg;
+	__le16			npwa;
+	__le16			npdg;
+	__le16			npda;
+	__le16			nows;
+	__u8			rsvd74[18];
 	__le32			anagrpid;
 	__u8			rsvd96[3];
 	__u8			nsattr;
-	__u8			rsvd100[4];
+	__le16			nvmsetid;
+	__le16			endgid;
 	__u8			nguid[16];
 	__u8			eui64[8];
 	struct nvme_lbaf	lbaf[16];
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
