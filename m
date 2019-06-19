Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980844C02B
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIw12b4WdUB9dNpT981FOUtoyVl3J9J5WFlY5xnmcBM=; b=nyOM5Lq1j1hWqs
	Uy3Zh6q0s9EwHE+cjo7/Ncpolrzme1NbUGElu5oJYirwMP3uWVYrBlZy9949Ur7l/Q++uIyvtUBGj
	B9oUk2+XTkfPTuM8UfjDKgKlCh2BBbyw9GiWbFxDx7dpzHlOi/cZdQ4F4vbSUnJG3OZfXitNXX5j/
	dGLu12L/xn85z+6TrYAn1TtneQa4cWhsKl4JJPBydx3BhrCpWUQetcowXPZCUPXyE0t4u7p2CwC6W
	VGsQroVU9Z+7nG3MRXftHcWnlOmvzbPz0I85JDnJ4N4BEVWD9aSCYrtUKFquX+n5JKQY/fG+1286d
	NDHoptdgDwfBAfitBntw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdegS-0003lb-VL; Wed, 19 Jun 2019 17:47:44 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWM-0006hY-Gt
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:20 +0000
Received: by mail-pf1-f194.google.com with SMTP id 81so10164821pfy.13
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZvapEgzfva7Wm9OIMftj0FOL17LJ2q3Rm+epF8gFwug=;
 b=Mzj302b4/0iVyMseNJLXhtsERS1KUbsitO6Ix37XBEDT/i1uyJYq18gpmYFM/MLnCd
 5pPjuVeLcn9Az02qG3ECu2qFgzNoBlBQamCs5Tj/8R2JP0gTcseV/MC/UURJVuUGMPhu
 mFQ5qxavs3Nx0IUjbiqofMcFHcw0FMmZluIRZTr5EL6wm1AzlMCWBM9+7PHvy2957oXI
 ZMfl1Kj3VAl8AFHrtvVoSLhZn6zew2neaoAX+T6DdQoM7ESCqUi+PR5ErLcoonsJp205
 bh3mSp7pOYxu1WSHvlHhNeF2xiK3j20WXxSDMfasg8JX/fEvb4gD+hq62uYnEkGdgfUN
 s+Kw==
X-Gm-Message-State: APjAAAXIqfcEuTd3l0/heaHHPSkFzaLL3ns1vFadhwJtEsY9i9XcGO2o
 IEfFQBL5O4XQWYyeI+fRIHQ=
X-Google-Smtp-Source: APXvYqx0vzJRX7S0VD4Mmy4P83jk2zAvCIkutKZIDSJL30LuF8fgefNhjhmniwJOu4Mnm907lp6CEQ==
X-Received: by 2002:aa7:8b17:: with SMTP id f23mr92368186pfd.194.1560965837636; 
 Wed, 19 Jun 2019 10:37:17 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:16 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 07/13] virtium: Fix an endianness issue
Date: Wed, 19 Jun 2019 10:36:55 -0700
Message-Id: <20190619173701.8263-8-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103718_679428_44EE0648 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Quyen Truong <quyen.truong@virtium.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Convert nsze from little endian to CPU endian before using it.

Cc: Quyen Truong <quyen.truong@virtium.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 plugins/virtium/virtium-nvme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/virtium/virtium-nvme.c b/plugins/virtium/virtium-nvme.c
index 7d91ef8d29dd..5b295e2a47eb 100644
--- a/plugins/virtium/virtium-nvme.c
+++ b/plugins/virtium/virtium-nvme.c
@@ -132,7 +132,7 @@ static void vt_convert_smart_data_to_human_readable_format(struct vtview_smart_l
     snprintf(tempbuff, sizeof(tempbuff), "log;%s;%lu;%s;%s;%-.*s;", smart->raw_ctrl.sn, smart->time_stamp, smart->path, \
             smart->raw_ctrl.mn, (int)sizeof(smart->raw_ctrl.fr), smart->raw_ctrl.fr);
     strcpy(text, tempbuff);
-    snprintf(tempbuff, sizeof(tempbuff), "Capacity;%f;", (double)smart->raw_ns.nsze / 1000000000);
+    snprintf(tempbuff, sizeof(tempbuff), "Capacity;%f;", (double)le64_to_cpu(smart->raw_ns.nsze) / 1000000000);
     strcat(text, tempbuff);
     snprintf(tempbuff, sizeof(tempbuff), "Critical_Warning;%u;", smart->raw_smart.critical_warning);
     strcat(text, tempbuff);
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
