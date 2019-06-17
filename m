Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D98D4886C
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 18:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cauu6SqIfYi3wtT2JtcjzhZGycv57UV+LH9gyQssBSA=; b=UGV+GPhexJPDPh
	5ZhEfqk0t6ZOjm3b442xSPreGEqngIzVQpU5CjpBXsjjhABA+3l4cmAR1t2PlukM79Ha5HQGKWwvA
	QJkAIS82gLZrJIlUi67AX68VcSYazKci8Kyw3FsTHebgP3vDHFwsXkNGp2dq7skV1UQm063+k0Qo9
	/XFPbq2cwhxqGZq83UXL3NU8RGhf+11/TBB9VbHnW/R1x4xdZC6Z/Ao8ZR2ohZ8+3n7hIB7SuppmG
	t2I9DULxe5Sha1g4FnHQl7auHPIT7+WLJKzaHa9q2XWjlKf5hjpKu8jg8Hn5NyyGBQML9jhx83wE7
	4uJ0lcqpHf05Mpv5G/HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuFZ-000237-RU; Mon, 17 Jun 2019 16:12:53 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuFE-0001ws-Dy
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 16:12:33 +0000
Received: by mail-pf1-f193.google.com with SMTP id r7so5952972pfl.3
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 09:12:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zdEqCx2SOTLaEf61AJiVrxocRHYgHZS21FqZJQE/2E=;
 b=uYgSdQ0bNXlQL/v80xRHySn4iR19zWD4K9rs0itbHwNwiuSV7whgsN2wpJ8d2yQEYm
 tcVGhz4Wa8orlYHhB4O9ufG43tq2mBKRNB+f1PxvJqxp4PFFVXgpCHpIS9faiplf2XkX
 g7Xbty4Cm/sDUqoyPxxVvfzlDj7o0+yAMEDorz7fw5rx1m+pJ7FQwbuUPby+6v6du2vv
 YH/ckMzElZJMcVjchwpVTb20k977BuhNIsGyjw5hZ8EuEelZ7lmODjpZmL8YlO2DZlBS
 nOGREL15C1/NFC3eqHNXWA6Vvg2MCu6paZKGgPLxqDo//VfHypoDskX+RXS2FSJForI7
 Mzuw==
X-Gm-Message-State: APjAAAUs9ljMwn3No0WJqvMRnD/4sPEOonfGVQRDpqEv3pXOrL2jOqHQ
 wirNivp4o6B/d5nF656HmP3VObJK5HQ=
X-Google-Smtp-Source: APXvYqxzTwPeWvfXwZ03xi6+qmPd2cwRjrnQxEjc1aiSYH12XGIqiuseuny2IwAlESFnHk3qE2Y0HA==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr16804194pjb.51.1560787949949; 
 Mon, 17 Jun 2019 09:12:29 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y19sm11416069pfe.150.2019.06.17.09.12.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 09:12:29 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v3 1/3] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Date: Mon, 17 Jun 2019 09:12:20 -0700
Message-Id: <20190617161222.253849-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190617161222.253849-1-bvanassche@acm.org>
References: <20190617161222.253849-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091232_470640_A5960377 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
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
