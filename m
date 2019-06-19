Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1D4C02A
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TT5I8hdM22BPWn1ounqyEA2B4ODY6MqXSEVr/ALnQ0Q=; b=VYiwxurtoWtD3V
	AbojRhwXLg0fFK6kxQ3VwHU2tJRXbu5dNmV78deGfpjkZu3sQxAJJ1818Asd2NLZbaQC1eeIeQohE
	bRxOT/PNvtuK9+Wy+8dMX+pna9D4LQSAfuENltjd0+sjSA2us6AeA1Jhh537Yb3I63RnQJ1LiXAD9
	c+evG38coe/EJlR8lD2YMNERKljgIIbS1zrGCVHUjpcxYE1bpsZQVXUqB/hn15CSomaDCuW5o93by
	ulXwkPh0t2SJeFW1lbTZeF9dw/bYDqAzQgZseDo5gbwBHjLBo/UbJ35L8w0D8fbJ2PdRdMn+WRLXf
	W+k7ZdP5sSgJIEoHHgFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdegG-0003bq-Si; Wed, 19 Jun 2019 17:47:32 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWO-0006ih-96
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:22 +0000
Received: by mail-pg1-f195.google.com with SMTP id v9so37394pgr.13
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V+RWW/gxcfoVl+RCXrFp201kiLZHmbLA1mmKn2+NczA=;
 b=jJJQemvlOsKQeMHkyWpf4plBTpPUk43IoKuWbwUHEnTb0U6Q7RyCRjbn+NddHJYuZr
 gvE9HHE9GblgwtpCMjcj+gEIHYEiNsmsRANBk6/ahROd5Is/6zTbsJIuQQI3zQZmqdNr
 J4xSaQCyGOyqDBpkgEn/JjNMyBTd4qurZCYk66prz/MGeDowpI564To6Ood/NQyw+y3F
 2Vdkwa7QGDMhIUDGppIgrHadQwnOPTi/qHdNIvddq1Ulo9upsk5wzgeNJbLOJ1m3973K
 YawJ87T2e7dBEnPrYbFZO/3yU4utadrMJc3dBX9hXtgTVvlCpj7M7qezibXjcu9GjMgV
 IKfg==
X-Gm-Message-State: APjAAAViLw8VZ/4eFO1jQ+U5/zbWSAhppqPaZ1XTlgAue9Q1dvzevpGX
 BQkDjcCF9K7X1ki2ElceNDs=
X-Google-Smtp-Source: APXvYqw4m9kSF6a4RDYcCi2PqQ1JJKtRuZRuTRGqdzgXIwbyk+BpCWtkpVTTUQ1eCM79JPzxnVzzyA==
X-Received: by 2002:a63:3688:: with SMTP id d130mr2084146pga.216.1560965838867; 
 Wed, 19 Jun 2019 10:37:18 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:18 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 08/13] wdc: Fix endianness bugs
Date: Wed, 19 Jun 2019 10:36:56 -0700
Message-Id: <20190619173701.8263-9-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103720_398308_15D95D04 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Ho <Dong.Ho@wdc.com>, Hannes Reinecke <hare@suse.com>,
 Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Insert le16_to_cpu() / le32_to_cpu() where required.

Cc: Dong Ho <Dong.Ho@wdc.com>
Fixes: 6bd8ab436693 ("wdc: Add data area extraction for DUI command").
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 plugins/wdc/wdc-nvme.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/plugins/wdc/wdc-nvme.c b/plugins/wdc/wdc-nvme.c
index a9c86b6eced2..ba90fc09e0fe 100644
--- a/plugins/wdc/wdc-nvme.c
+++ b/plugins/wdc/wdc-nvme.c
@@ -914,7 +914,8 @@ static bool get_dev_mgment_cbs_data(int fd, __u8 log_id, void **cbs_data)
 	if (le32_to_cpu(hdr_ptr->length) > WDC_C2_LOG_BUF_LEN) {
 		/* Log Page buffer too small, free and reallocate the necessary size */
 		free(data);
-		if ((data = (__u8*) calloc(hdr_ptr->length, sizeof (__u8))) == NULL) {
+		data = calloc(le32_to_cpu(hdr_ptr->length), sizeof(__u8));
+		if (data == NULL) {
 			fprintf(stderr, "ERROR : WDC : malloc : %s\n", strerror(errno));
 			return false;
 		}
@@ -1290,9 +1291,12 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 		/* parse log header for all sections up to specified data area inclusively */
 		if (data_area != WDC_NVME_DUI_MAX_DATA_AREA) {
 			for(int i = 0; i < WDC_NVME_DUI_MAX_SECTION; i++) {
-				if (log_hdr->log_section[i].data_area_id <= data_area &&
-				    log_hdr->log_section[i].data_area_id != 0)
-					log_size += log_hdr->log_section[i].section_size;
+				__u16 data_area_id = le16_to_cpu(log_hdr->log_section[i].data_area_id);
+				__u16 section_size = le16_to_cpu(log_hdr->log_section[i].section_size);
+
+				if (data_area_id <= data_area &&
+				    data_area_id != 0)
+					log_size += section_size;
 				else
 					break;
 			}
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
