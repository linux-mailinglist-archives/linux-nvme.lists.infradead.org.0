Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C796220D38
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JXpmudy3/X0UBZln8+CWSeYUM269MtH6bvEOqB2dQys=; b=JlG
	8T+vdQE9ilPv7wm3QCIEoUkxfMbe/yQEywn8BZ7ZJUSSfwdvEphqwYaNGg50Qx7d89ABFCsE6pQlL
	7bjWZY+txilCfOVkCbs/yAZRrxCsdKlhc/HZzo9jyhXxwdeOLkYG5UhQ+M6+aJCEuZpmb2IyraOoA
	zcoXhVqkcJQbYx9QuSuBLQS7clxfFxbaDQLnQGz59EHQaT3FgQKBmFN9CtDLXbOmvyL+mr90v4E1t
	kKH8NPtSPUNMBl+HjQPCpcds4hTaguusLMMMcdgPw1/ORXU+b6VLD3So3gW9QD/QRNOG+EXKL/oMA
	tgRKdHym09+PrpuKlQV3Ml4npG1083g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJRT-0007sl-5c; Thu, 16 May 2019 16:41:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJQu-0007Ii-Hw
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:40:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so1909716plz.1
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iWj5jX+wLHJqt8TwsFWV/uO25f6wwUsC7/NYkme4xE4=;
 b=MmWWWp55jd71Blvh4MqWtQMMjLIOBIdJrt5yIamNH+Qtdb5xlSFFdw6fZGs9TZv7px
 C0Vioxvh9B5/oYA4/zH21CU0eTe8wg9UQoC9MeGRKl9QrK8biauL6crYsvrbFBOJh/nC
 NnUAKJRAZNnhwgCWZv0guoJr5M62dL0hlQz/o105Ydk2At6riS4qPR018dwx9IxTAyHq
 gm+WdqZuEOi9JpfLqxFg5cKUdw7Z9Advx5ReAviKIzsZpCXVsNQ+p3sZ/3290VesAW8X
 q26n8+otXxp608gnn1XwMq1tQlg+ymFjzPfdxjh5/0iWSkdRVOgUgmoKyeCUvA1HuD1j
 46kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iWj5jX+wLHJqt8TwsFWV/uO25f6wwUsC7/NYkme4xE4=;
 b=U4YjLG5U9EH7mb+u1wuTziTB6BTmaOlqK0bvRSfzM6dl7NgC/QtkzQgg+iIFhnqzo+
 /aPW6K44SHUx7e754F19xeHfdLZK10d2s6mEGKnFrhJR3ZmYVCV4rKOLo7Mqd2yi8Seb
 sqOPhEJJbiRiCL7VewBtd2N/ZbhhICl9cHghxFtF8rp6NdHMvr6YLB6tm1Z6Rx1Z7tUu
 xFvNB0mWa2HhjHlzNDxSEzLF6aCTOawCLVl7p6fozLHojWDLa5qoF7wRihtVJHSBt0gt
 RPWBn+UWza+NIwjqohuPRBgZuYn39URg9dEV0wCi3h1zJGRGJqdIMO4Dp7E52LB3ZDZZ
 k/zg==
X-Gm-Message-State: APjAAAXZgYkNLIHv6b8jc4sZclhWXN1j5G8lTrFmN8TOAOr82pch/B6U
 4LmyYmhBIxQNrgsCIa2sDvLBJ1Y4
X-Google-Smtp-Source: APXvYqxRtAywIBjSkq88MePYqGdzRL6XA1smCjuXwBvvDfeEm9v9O/M4DdMjSa+FsufaZx5jKoTCng==
X-Received: by 2002:a17:902:8698:: with SMTP id
 g24mr53392101plo.151.1558024839658; 
 Thu, 16 May 2019 09:40:39 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:25a3:512f:3aff:cdaa])
 by smtp.gmail.com with ESMTPSA id o7sm9860603pfp.168.2019.05.16.09.40.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 09:40:38 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: add kernel-doc comment for struct
 telemetry_log_page_hdr
Date: Fri, 17 May 2019 01:40:28 +0900
Message-Id: <1558024828-9356-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094040_606374_56D7E442 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Akinobu Mita <akinobu.mita@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This adds the kernel-doc data structure comment for struct
telemetry_log_page_hdr.

This also replaces spaces with tabs to align the structure fields.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Suggested-by: Bart Van Assche <bvanassche@acm.org>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 linux/nvme.h | 37 ++++++++++++++++++++++++++-----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index 2c840b9..cac4d19 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -426,18 +426,33 @@ struct nvme_id_nvmset {
 	struct nvme_nvmset_attr_entry	ent[NVME_MAX_NVMSET];
 };
 
+/**
+ * struct nvme_telemetry_log_page_hdr - structure for telemetry log page
+ * @lpi: Log page identifier
+ * @iee_oui: IEEE OUI Identifier
+ * @dalb1: Data area 1 last block
+ * @dalb2: Data area 2 last block
+ * @dalb3: Data area 3 last block
+ * @ctrlavail: Controller initiated data available
+ * @ctrldgn: Controller initiated telemetry Data Generation Number
+ * @rsnident: Reason Identifier
+ * @telemetry_dataarea: Contains telemetry data block
+ *
+ * This structure can be used for both telemetry host-initiated log page
+ * and controller-initiated log page.
+ */
 struct nvme_telemetry_log_page_hdr {
-	__u8    lpi; /* Log page identifier */
-	__u8    rsvd[4];
-	__u8    iee_oui[3];
-	__le16  dalb1; /* Data area 1 last block */
-	__le16  dalb2; /* Data area 2 last block */
-	__le16  dalb3; /* Data area 3 last block */
-	__u8    rsvd1[368];
-	__u8    ctrlavail; /* Controller initiated data avail?*/
-	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
-	__u8    rsnident[128];
-	__u8    telemetry_dataarea[0];
+	__u8	lpi;
+	__u8	rsvd[4];
+	__u8	iee_oui[3];
+	__le16	dalb1;
+	__le16	dalb2;
+	__le16	dalb3;
+	__u8	rsvd1[368];
+	__u8	ctrlavail;
+	__u8	ctrldgn;
+	__u8	rsnident[128];
+	__u8	telemetry_dataarea[0];
 };
 
 struct nvme_endurance_group_log {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
