Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F0815385A
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9BjN3wknnt+W6oM1iNPAVpCGlHn6I40S/J1OH/KWhJg=; b=EKmJNPCq3rNvoNUpXBuBNvm4f2
	iqSldAjPq0tS2NzgDv4QrGaTOHTuZA+KGvxnoErTcqK41YJ5RlAHlGMS7xF+4hQ61UHrTNBf/Uswi
	sKH8qME8NPX6B2/r5VE7xJcsPVSKHbEvCy01mfBXXqHdw1ij3l8TwUJgwUoEjG9grYi3bFIN0br0/
	Z2hHx0NONxmgK0m+5aTKmujv5FG5H0Av39o9q7ygAil3nStMrUj6kpdBTxLZwezsJsdafNW5HxvIH
	vXSHg6ejxnrn8RzQLTk9nyksAYkRK1gWHRUC06XgUr3W7GmgunlCo8N90+CycbJQPPLmTSLzMqQCa
	yuMopVLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPcd-0007Y8-Jf; Wed, 05 Feb 2020 18:41:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPZA-0003hX-0F
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so3582660wmj.5
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y9CAxUvUYguBbY/6hBL0L80UFFLoX69mKfHjLagc4D0=;
 b=p7YcVolq4XKl1yTsBT5GmiquSwc0zdPalMb4Y2FExQ7+PMynodWdlsIkZ7PG6TMnfb
 GCTOfS96sK7iEk8oER1oMEklXrWkHhRXcQH+GtdXN42rTEu9oU3m8zU1Me5Kyb0AkqON
 JDOaRhpcadI7fsuMJgPh3FWM9TuktlWoL2BlG+JpKiTcJuaBZc9l9Mu7DlfUQiSfWIQS
 kQRy6c/7DrD/Mq0Gd/AkXph8tGaXtvJjygrc6eSo2oq37ly0C7TJ9BbKdgFYZvyALPZ7
 dmH+7nd9F4oAyYNL6x20IDeM8FN8LuH3Ulo0q5FM1uF9GSn9ZPITqsSPW2I0aPoSg/pu
 Tf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y9CAxUvUYguBbY/6hBL0L80UFFLoX69mKfHjLagc4D0=;
 b=J1taaRVf2wR+h0UkNzoyuqVvMsieAbYq1gh71kZXT2/HxtDZaIQ196CeF22b/JqQc/
 4XPI0YeUVLM8JIb1QB9sGERy3Lx4bKmlJUBX70H8gek8frnH79sBhv1wsLB3EVmpkXJX
 mVDaK5Z+NZJA5SQXbIUNLNoJa50m/C/yW+JjgfpFH/2EGGlEzMpTwCO2FceeT5pfivJ5
 vlDN6zCJM/oq89FsaCE+5WNCOLsuw2XfO6eGxaMOdIf/IGrjEpKvIXOZfg3EkPOFgjUL
 YqBFaE4AiuyQUmM65Rk6MVrCIMw5P5mDqRMtJctrU1JuqJTY9SUI+qYZj3ffUTfP7Oxp
 dz/A==
X-Gm-Message-State: APjAAAXfcxUCxAV+zvhHrarRMDhY67Kd0+FcqzAkFlEXfCDAaDeVEkOo
 qRVwPncsYlpKWEcyeVDDMd6csEUT
X-Google-Smtp-Source: APXvYqz+CtAe9xaRCuivFsClKFlTqjtm8HutKbj672YJjGGwLVlZXwJCEUjmw7Viq0DMf2n8oZ6+6A==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr6859920wml.44.1580927902155;
 Wed, 05 Feb 2020 10:38:22 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:21 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 13/29] nvmet-fc: add LS failure messages
Date: Wed,  5 Feb 2020 10:37:37 -0800
Message-Id: <20200205183753.25959-14-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103824_355848_21ACFA56 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Add LS reception failure messages

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fc.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index 5739df7edc59..a91c443c9098 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -1598,15 +1598,31 @@ nvmet_fc_rcv_ls_req(struct nvmet_fc_target_port *target_port,
 {
 	struct nvmet_fc_tgtport *tgtport = targetport_to_tgtport(target_port);
 	struct nvmet_fc_ls_iod *iod;
-
-	if (lsreqbuf_len > sizeof(union nvmefc_ls_requests))
+	struct fcnvme_ls_rqst_w0 *w0 = (struct fcnvme_ls_rqst_w0 *)lsreqbuf;
+
+	if (lsreqbuf_len > sizeof(union nvmefc_ls_requests)) {
+		dev_info(tgtport->dev,
+			"RCV %s LS failed: payload too large (%d)\n",
+			(w0->ls_cmd <= NVME_FC_LAST_LS_CMD_VALUE) ?
+				nvmefc_ls_names[w0->ls_cmd] : "",
+			lsreqbuf_len);
 		return -E2BIG;
+	}
 
-	if (!nvmet_fc_tgtport_get(tgtport))
+	if (!nvmet_fc_tgtport_get(tgtport)) {
+		dev_info(tgtport->dev,
+			"RCV %s LS failed: target deleting\n",
+			(w0->ls_cmd <= NVME_FC_LAST_LS_CMD_VALUE) ?
+				nvmefc_ls_names[w0->ls_cmd] : "");
 		return -ESHUTDOWN;
+	}
 
 	iod = nvmet_fc_alloc_ls_iod(tgtport);
 	if (!iod) {
+		dev_info(tgtport->dev,
+			"RCV %s LS failed: context allocation failed\n",
+			(w0->ls_cmd <= NVME_FC_LAST_LS_CMD_VALUE) ?
+				nvmefc_ls_names[w0->ls_cmd] : "");
 		nvmet_fc_tgtport_put(tgtport);
 		return -ENOENT;
 	}
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
