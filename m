Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774743BE06
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 23:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cauu6SqIfYi3wtT2JtcjzhZGycv57UV+LH9gyQssBSA=; b=YrU++WJH82axNz
	B/wjqAlx3ZGHKxx9IPMjZQxlsaAOD6DOjU16n9gwhSoVlq2EQOHHPeyc8xnsafRb6HTW4NenmlHUf
	XgEBMdUxo/6qBE0NDMW4pcsHGlXVXW2IoTm4e527u0Db23EVuFHycot4IwS01XXLKymkfLEMFXxrq
	/Ppp+k4fQUs9SIyAQCtBztCwZt5fMNOAZ7SIfZyCEzBLsOLIWQJZr84xGoRAcMZG94EbWFMQ8HHCG
	/te3GwvpbCfSOz2wT+JaDkbrbK1gb7BQIR7T/4ykMzV8jzxF3/MMI553LWI6Gl0ehICgJQC4dnTmJ
	x7P3kpfQeml4R/oh4TPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRVA-0002wT-6R; Mon, 10 Jun 2019 21:06:48 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRUl-0002pR-QD
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 21:06:25 +0000
Received: by mail-pg1-f196.google.com with SMTP id a3so5672586pgb.3
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 14:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zdEqCx2SOTLaEf61AJiVrxocRHYgHZS21FqZJQE/2E=;
 b=uGtfROy/+43kDmiO/HWL9J+gnWxy6uAiDBSEdtt/o3OWWAtZawe/Y1zgQ3QxJqmBtY
 RTWpLU8kJvpqjKraKcCDkw5H4RNUMQD+rS//8iug5QVzWBVjPjwWwRtuWacPmg14NkN+
 v8amMAqdUMD/YvthxwM1T7u8h1uZX6LQpF62jRcMFoIJopBmwxmjqj9a9tHCMr0tIBq9
 M0rtqDWK+3mwbpRWh5VbR7p5VFJnIysJIlNjY39ImF9erzJb4Xh2M1ozXPpGGe5UNdvN
 q9zEvSO28CHmr+Rup3kqEt3I1U5juBPc6DtJ+lKnPS2H3IAgA0rFMcQ7yCSOTvZPyw8r
 5ONg==
X-Gm-Message-State: APjAAAUXvLvwzhmBIf9tcB6UYk67z9+/zpyxfuyYOKwsGFCNcR/hH6Ll
 Y09RLZXeRwUVTMWyBx+SPQM=
X-Google-Smtp-Source: APXvYqy2eXfraEMxF3JhNcAKhaCcjN9Pd330pXB3iMInTQrryhbOvkrIMV5NmWjt3Z8qF96jLXOiZA==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr22920850pjp.51.1560200782998; 
 Mon, 10 Jun 2019 14:06:22 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id d19sm332208pjs.22.2019.06.10.14.06.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 14:06:21 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 1/3] nvme: Introduce NVMe 1.4 Identify Namespace fields in
 struct nvme_id_ns
Date: Mon, 10 Jun 2019 14:06:10 -0700
Message-Id: <20190610210612.103952-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190610210612.103952-1-bvanassche@acm.org>
References: <20190610210612.103952-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_140623_845806_8349C86E 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
