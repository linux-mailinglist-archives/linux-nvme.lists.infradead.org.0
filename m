Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F9A5A173
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 18:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3pv+5gzUKR1wdxcYbgpUsqbSAdMemZZi+0MWBWnOFM=; b=mrzWtHbWO3ns4X
	GGUjazme8sb+NRxvdV6RxG8A8xkkzWEXaHI9lzhYzYcPeURS++s8G6ZAJrincAlQ2LcG/+dqzs770
	CbPBXezduGb8STASuYcEArVI36DXlfQ3CUON+T2VeMnHQT+1fxMSHuL47J+xSKgTSrVb3nmLFmH4x
	C7YhCx1HnSKybTxNc3n77gMiaPnI7AMvvP/P2m9HjShD8mivqEX/jWdeWGbfJSdNTP8Tay2CdIe6Z
	YWzpSflbqwllDqdIc/HyDEQrURFZJO/+VJLXQ9w9bHo+s5gMKDSB0rotsJP7AHcKnLWwSgRM8K7Pv
	qQzubNvl7cJF0o3PefAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgu8u-0002VZ-1s; Fri, 28 Jun 2019 16:54:32 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgu89-00022Q-2c
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 16:53:49 +0000
Received: by mail-pf1-f194.google.com with SMTP id p184so3269862pfp.7
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 09:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Bkev02GuFyin5iNEmGnJImMsYn5CfoqkJ6SGix0qvI=;
 b=d0Gh+lZVB1jtjAE8+rt93c9WHuG5sB30eDzIzrhpg6k+mLC3RDOd9SqxKAvp5oitTP
 rk8u5Gj2MmhMz3q7NBAB5td3xAes+2LVoeWW0G9kBEuvx+L2GmOxZJ3jq2eM2TehtZGR
 Q6Yx7pNuUHuKXWkj9Ww+QpKni8BLl6eWObE3/WSXLoVHxUlK2ki5Frfe+HCgcoXxC9fv
 9syAGyGuDmXiSUIbX+QpILMkotIKRhH+GaV5SIHqabyW7QSKUBm3f0s/8wftxrHEltwD
 X+nO1To+1sfaIAINevwUjlbWM6zCCjGxEdMWLBnnG6Eyu8cwNNfO5x/u36imnZm+CFjb
 gKxA==
X-Gm-Message-State: APjAAAUSpJ8yb5pZr2PgAGLIa5Agzg6+wWkYnslWAowqPYOhN30QeK1u
 hFkFzmIir+E7gOjS2YGffBM=
X-Google-Smtp-Source: APXvYqxmT8kVKHAZD/V0K7/523+g8ehPv5ffr3ESp3/A/iECtCnk68MayA1NJxZcpx4DdNLzexEkNA==
X-Received: by 2002:a17:90a:2190:: with SMTP id
 q16mr13963122pjc.23.1561740820161; 
 Fri, 28 Jun 2019 09:53:40 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y5sm2100700pgv.12.2019.06.28.09.53.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 09:53:39 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v5 1/3] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Date: Fri, 28 Jun 2019 09:53:29 -0700
Message-Id: <20190628165331.163919-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190628165331.163919-1-bvanassche@acm.org>
References: <20190628165331.163919-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095345_124003_5AA85271 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Hannes Reinecke <hare@suse.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Several new fields have been introduced in version 1.4 of the NVMe spec
at offsets that were defined as reserved in version 1.3d of the NVMe
spec. Update the definition of the nvme_id_ns data structure such that
it is in sync with version 1.4 of the NVMe spec. This change preserves
backwards compatibility.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 include/linux/nvme.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index d98b2d8baf4e..01aa6a6c241d 100644
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
