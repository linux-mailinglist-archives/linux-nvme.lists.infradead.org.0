Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418D1254DB
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GhY4zCZHeGpfAjH0DYLSQFjJIDGgBqQcPpUQCBAg0/s=; b=CBUkEA3C14UV0OR/EWbvWE2pgm
	W/P6V7iS1m5jObynEh9ATZDp1HJoXoz+qWND8Uh8HVesJO2lZCNLgvOlOKg0BtnCBFUPka1paX2Qr
	rssF/FsLfB4sonA4w1wp1DReOxnYUlG5gSMUO74Ss6brzlMi+ooFago9d/RyqKaZtPHuZFzgo3J3p
	9ISwwfcKFbUED65Nqojwo1SFRvwc0w68woft5+VUmov/TdwJVJ1cmixnQiTHzogIiWxKHEtrb6chQ
	C/faE9uviEXHIMFTIUGEfjaP7WzBreplu3EMgBPxwdc/R+7hCgifLZDCA0rR+sXeLGihdOyKWk7sM
	TdVsXXvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7GT-0003RK-Vm; Tue, 21 May 2019 16:05:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Ft-0001vB-Pq
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:05:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so8812112pgi.6
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=il/JXoP4aW4WFFHOxr0Tpp4Ev1osrOA1IE5f6L08DkI=;
 b=vcQdl09QHQy5NCYrsBFsiiAUnQpK6sJjCqv3YPoyJcfJnHY6edGZLWqmsdMWoE5qpC
 FUtKaDv9Qm3MYF+cwwS2rQUr3eEzqSZCSalIBV/qrebvVtSiwpRL5G+WrxJ9SyGMGeT2
 LEXiDMuzONxJ1irNpO+YU/6RsdTtjrFTwvD4p0gUKWZXIB3+C2UzPELQNvmguuxVIhKS
 PEEq1+gxJP/kAPD8sOPPT2FptzjD8+vR9pwo7x2HU0nnVui6gedrIZR3FiekjYJ6XFUR
 zYGHyGFS1Y7JAdD8BcuyU0Vj8RKoaP9iWAk6vCX6Hn9/54J6VY7mUZ5rYKFjzHIyKkWr
 D7LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=il/JXoP4aW4WFFHOxr0Tpp4Ev1osrOA1IE5f6L08DkI=;
 b=Gm0OwQ0xQdfOy4FWxnU60Ek6u2n0Wx8NyfGxQLfE10iNnmP+G6lwyHkxhmyGM8jbmq
 nK/T2ZZNInSeL641zjRVTCOjHXj1opsF6J3xtkTMOkHumy3OD1iLyGuj8p+avg/7tDlK
 eRuWytMBkrg8L258wUSPFMTSvQQMsP6wirWoi92UR5ZApIx9CCX4fPZIV5zJZ9xFUZvS
 khl+qTu+nF4MOvxWchDi0hKlx+8s/8dpDIrCN2ZtlrV7gpUTrGAL4315jNLMDl9XCUJv
 U82mvVZcFT8EbPQqs6hd4/mt5l3U4gJdZh+DUM+0pN4926LIIXrTnjT56ZynECGqKvap
 //cQ==
X-Gm-Message-State: APjAAAU9sWp1cRBdfaNGtizn8tHiuriSEp4yrXcPoHoh17DkuyxLIS+N
 nIbFVpXK8qjot3/TXYtwApO33GWFbsQ=
X-Google-Smtp-Source: APXvYqwX1tzSTRG+WCXtNpV2F+N566SicxZ0ovg2pY8O3qxjQzcztQeDDyBKAexFfbKzwzd7zWXzlA==
X-Received: by 2002:a63:ee0a:: with SMTP id e10mr69278554pgi.28.1558454684956; 
 Tue, 21 May 2019 09:04:44 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:9cd0:73e8:b74a:624e])
 by smtp.gmail.com with ESMTPSA id j5sm28954786pfa.15.2019.05.21.09.04.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 09:04:44 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 4/4] nvme-pci: support thermal zone
Date: Wed, 22 May 2019 01:04:09 +0900
Message-Id: <1558454649-28783-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090446_038770_8E91EAC5 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to use thermal zone interfaces for NVMe
temperature sensors.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- Call nvme_thermal_zones_unregister() earlier than the last reference
  release

 drivers/nvme/host/pci.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 04084b9..108b022 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2555,6 +2555,10 @@ static void nvme_reset_work(struct work_struct *work)
 		dev->ctrl.opal_dev = NULL;
 	}
 
+	result = nvme_thermal_zones_register(&dev->ctrl);
+	if (result < 0)
+		goto out;
+
 	if (dev->ctrl.oacs & NVME_CTRL_OACS_DBBUF_SUPP) {
 		result = nvme_dbbuf_dma_alloc(dev);
 		if (result)
@@ -2833,6 +2837,7 @@ static void nvme_remove(struct pci_dev *pdev)
 	flush_work(&dev->ctrl.reset_work);
 	nvme_stop_ctrl(&dev->ctrl);
 	nvme_remove_namespaces(&dev->ctrl);
+	nvme_thermal_zones_unregister(&dev->ctrl);
 	nvme_dev_disable(dev, true, false);
 	nvme_release_cmb(dev);
 	nvme_free_host_mem(dev);
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
