Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FAA15385D
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cWOAOgHi/zpzNOAuA/stccAqjXnk6RHrH3taGLfaxS0=; b=celww5YFMB1Ry8lHr8n2hKK+RN
	rOKU/0L5/1dPQaWBJU5MWuoPrcI4kM8z1amRzmsCY0lH3SFMmlwGasWvVCljqg5yS232NwhB3Q+74
	PuTrIzuDm95Qbo4R7va48m04qkwtKRhHZ7TeVxfzrBByifiC1RvKq+Ef5ZOPyd+7zThYOeInoQsLE
	Q/RnxEELd9y4hwpbd6hhkZ8IhejwZRrCHcb3lOGs3pzEDw+mBCSj8FSF+fnN4sCAQBGwPCMmKfItl
	ZJu9lvWCwMc+yrFU+VikEvNvEfHTFVmgGRrUyP4DzeHpRQFWdOq+B+LKKCeA0iTXb34/oANExLenc
	ZFCTjGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPdQ-00088r-KM; Wed, 05 Feb 2020 18:42:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPZE-0003m4-Mi
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id g1so3580983wmh.4
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C637woN4V1xgsnwiY8ygC5i+/P8UmHrEf7gqlMYQG5A=;
 b=lRwZLBTSBU5NiZg2cTmsKws7jZCmRDbZKiJF21Pcc0A0PLRK6HaUGyvv7YKdUsxETn
 PvvdZX6Il4qRYfCbgwX/gZAI7oRFw4323yeqEY1bkt6jDMQpFEjARCTABcZCimurfBjS
 7ikgApPSJNpGvC8uEfDxctpQfmkaMgf7/F7elz5FPzIW4C6MqwFpmS2L/MZ6vEi3PCNb
 pzGjqJV930AERwAmL8dirABLdeYHgH0mZC9bXNCeRLb5GD5jWvT4g35mBojf7VxdHgHB
 KI9WmqaJQjYf2BHXFHLVmxS6u+OQ3t4tVHQvhnVF62H3Ce9e60jdGR8zDJ3T35dFmFWJ
 XApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C637woN4V1xgsnwiY8ygC5i+/P8UmHrEf7gqlMYQG5A=;
 b=V4jeuGK9UwUhnS0WjB+LCmAu6G6cTvt8Aj2+r1bUf9bc9VzmyK7uneISL4knN0MWKX
 +/b3W+XZS/AnVrDfERHBSiqzAxsJ6N8+TOqQtmhcF/azaZEdUwcCA5UiIElJHOT8wNrX
 Q9pEwC/dis+jH0cssVmb4QgR9hMCiXliftg9v7KNOL6mfpR4/adPb8rTL5a2B8idewW2
 7kWSHNDCw8vxdZ+sNchCaJ03eSnzA+AE9WePKeWhkBUQwRW7v44rozhAxVjPNaa5jRH0
 vNjegrnkFpkG0Ye97u8fBwRYf5eB9WbrYfvIfojTkGtgf85/JTzdBXEM48PotXOKnvIj
 v6jg==
X-Gm-Message-State: APjAAAXlTdDCeqndEUZclL8mg7UpbYAeRo85SXt95SnzU6ZBX3XOvSA+
 gFFmdMYjeCa+MNICONGdlVcaAZ1I
X-Google-Smtp-Source: APXvYqxXlf+X/7bKA5D4nElZvSU1ijvF8uGVnbq5htXtKWGpLyaaL397zGJvW4YCOAMhQPlZH8P70Q==
X-Received: by 2002:a05:600c:294a:: with SMTP id
 n10mr7307592wmd.11.1580927906842; 
 Wed, 05 Feb 2020 10:38:26 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:26 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 16/29] nvmet-fc: rename ls_list to ls_rcv_list
Date: Wed,  5 Feb 2020 10:37:40 -0800
Message-Id: <20200205183753.25959-17-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103828_762827_F8C1D5D4 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation to add ls request support, rename the current ls_list,
which is RCV LS request only, to ls_rcv_list.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fc.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index 2c5b702a8561..d52393cd29f7 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -29,7 +29,7 @@ struct nvmet_fc_ls_iod {
 	struct nvmefc_ls_rsp		*lsrsp;
 	struct nvmefc_tgt_fcp_req	*fcpreq;	/* only if RS */
 
-	struct list_head		ls_list;	/* tgtport->ls_list */
+	struct list_head		ls_rcv_list; /* tgtport->ls_rcv_list */
 
 	struct nvmet_fc_tgtport		*tgtport;
 	struct nvmet_fc_tgt_assoc	*assoc;
@@ -90,7 +90,7 @@ struct nvmet_fc_tgtport {
 
 	struct nvmet_fc_ls_iod		*iod;
 	spinlock_t			lock;
-	struct list_head		ls_list;
+	struct list_head		ls_rcv_list;
 	struct list_head		ls_busylist;
 	struct list_head		assoc_list;
 	struct list_head		host_list;
@@ -346,7 +346,7 @@ nvmet_fc_alloc_ls_iodlist(struct nvmet_fc_tgtport *tgtport)
 	for (i = 0; i < NVMET_LS_CTX_COUNT; iod++, i++) {
 		INIT_WORK(&iod->work, nvmet_fc_handle_ls_rqst_work);
 		iod->tgtport = tgtport;
-		list_add_tail(&iod->ls_list, &tgtport->ls_list);
+		list_add_tail(&iod->ls_rcv_list, &tgtport->ls_rcv_list);
 
 		iod->rqstbuf = kzalloc(sizeof(union nvmefc_ls_requests) +
 				       sizeof(union nvmefc_ls_responses),
@@ -367,12 +367,12 @@ nvmet_fc_alloc_ls_iodlist(struct nvmet_fc_tgtport *tgtport)
 
 out_fail:
 	kfree(iod->rqstbuf);
-	list_del(&iod->ls_list);
+	list_del(&iod->ls_rcv_list);
 	for (iod--, i--; i >= 0; iod--, i--) {
 		fc_dma_unmap_single(tgtport->dev, iod->rspdma,
 				sizeof(*iod->rspbuf), DMA_TO_DEVICE);
 		kfree(iod->rqstbuf);
-		list_del(&iod->ls_list);
+		list_del(&iod->ls_rcv_list);
 	}
 
 	kfree(iod);
@@ -391,7 +391,7 @@ nvmet_fc_free_ls_iodlist(struct nvmet_fc_tgtport *tgtport)
 				iod->rspdma, sizeof(*iod->rspbuf),
 				DMA_TO_DEVICE);
 		kfree(iod->rqstbuf);
-		list_del(&iod->ls_list);
+		list_del(&iod->ls_rcv_list);
 	}
 	kfree(tgtport->iod);
 }
@@ -403,10 +403,10 @@ nvmet_fc_alloc_ls_iod(struct nvmet_fc_tgtport *tgtport)
 	unsigned long flags;
 
 	spin_lock_irqsave(&tgtport->lock, flags);
-	iod = list_first_entry_or_null(&tgtport->ls_list,
-					struct nvmet_fc_ls_iod, ls_list);
+	iod = list_first_entry_or_null(&tgtport->ls_rcv_list,
+					struct nvmet_fc_ls_iod, ls_rcv_list);
 	if (iod)
-		list_move_tail(&iod->ls_list, &tgtport->ls_busylist);
+		list_move_tail(&iod->ls_rcv_list, &tgtport->ls_busylist);
 	spin_unlock_irqrestore(&tgtport->lock, flags);
 	return iod;
 }
@@ -419,7 +419,7 @@ nvmet_fc_free_ls_iod(struct nvmet_fc_tgtport *tgtport,
 	unsigned long flags;
 
 	spin_lock_irqsave(&tgtport->lock, flags);
-	list_move(&iod->ls_list, &tgtport->ls_list);
+	list_move(&iod->ls_rcv_list, &tgtport->ls_rcv_list);
 	spin_unlock_irqrestore(&tgtport->lock, flags);
 }
 
@@ -1170,7 +1170,7 @@ nvmet_fc_register_targetport(struct nvmet_fc_port_info *pinfo,
 	newrec->dev = dev;
 	newrec->ops = template;
 	spin_lock_init(&newrec->lock);
-	INIT_LIST_HEAD(&newrec->ls_list);
+	INIT_LIST_HEAD(&newrec->ls_rcv_list);
 	INIT_LIST_HEAD(&newrec->ls_busylist);
 	INIT_LIST_HEAD(&newrec->assoc_list);
 	INIT_LIST_HEAD(&newrec->host_list);
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
