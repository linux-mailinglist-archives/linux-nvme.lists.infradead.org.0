Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAA51CB8C
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 17:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8BbYiKz8Im37N8l8gN6WSaJI6lS87yENGD1QoABG/6c=; b=WIP
	9envnuJzyt8SgEOIboWT3ONpdrw5EfZKiKOwVkUU5bqV3bV6u+xLOtIhgZqcxRI/muT6QaP72d1sn
	qUAezBXk6PjOGuDGyzE/EDH0wSD/sRglgiEc8xPNqwL0gEiE22Vz/Dwl1hIbrKiFI8NcAQyovrIuh
	hZwgmTApfhXi8IKpvyfC1idI8epBJ9OeQHqExO0F2tDc7smO8SOOfgD9RIRxN88CAtZkiXoLlrIWT
	Nf2FIKTi5GsLswLhcFtk+b/counWM41dDSnEblmRCI6/D4tWDH26rgIXT3cx1hdZ6J1yVjM+SLacm
	awTbomeXLc5b7CM1SmiDLmp2WeOPaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZ8r-0005tE-LJ; Tue, 14 May 2019 15:14:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZ8m-0005so-1u
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 15:14:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id h1so8799408pgs.2
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 08:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vYHMM9F4dxvXTqbuWpfdjHd8ZAnHWV7x8tTQJc/mjYM=;
 b=oD3O57peUqagcuo4gcQrUGqCYIVB4YYOUD4JJVn441TCOomEZd5J5L3khLDGMPdHwX
 zhpZQlwoN3uzSTnwdBogQBmVFe0EKdOfOdC8bflUEYcCFLcfZry5yf+BwEG4O7vbNAbe
 tRmrp6DMDdbz3ZxVQaPlrQXoQoFj7ZKWqqb4CfhLCNoeJ1esOIM9q0KrksS9RVzCw7MV
 eer+JB4vvEyaR0JbLyUGcUQMQY7IEZSFelfp2boSe6cqB9PlRej24fQhHFaZA6jLzSkc
 1ccwgvwQvSinSUEicc2/w7JNlj7ELBDjGRl31STLC6yI/0q3XC0hligA3W6CzuMh36FH
 1Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vYHMM9F4dxvXTqbuWpfdjHd8ZAnHWV7x8tTQJc/mjYM=;
 b=YHsdr+/A2RXfBTBN5KyXqMwAKN0PsPf+VzhVmscIhCifYbe6/H0vRIbA+B5FlUHdm0
 DZDfGLDGuLmmZbH1/sulULBYTYmsFaIhUwnYaELcamZjoR1NTEcxiHvq3WiGMtZKTPVN
 nKqkkeiB1YdAmoHje/DlXakO2C+YPs0cJI2WsN/jWIS8+EBIrX8b6UQDXKtUHYkhGscR
 XtxZxQXN5/48aqioSkff0NrEaTBfnDxqNoWe6ufpVStT0tn/QKZS3y+SZYpDVGS6xbzQ
 +eS0D+M1TNY5uQkj5QiMOHqiP0nPne6oiQ+xf4ohr629HBzH/NhHcOAfvH3XufPjzJi7
 kmJQ==
X-Gm-Message-State: APjAAAUY1ZWwbU70sacXZoAIYCY3aZcvGLfWs3tcwOyOMUiRl7E/CgvS
 1upGzAF0BtjpCkcifwcGLJLLqy97
X-Google-Smtp-Source: APXvYqxFsXLhsX3XAJxPirmF6uYPz4twF4re1rP2UU92aIqj7+ealpw/3BY91Q1kBXTE814yt06NQw==
X-Received: by 2002:a62:38d3:: with SMTP id f202mr37426600pfa.41.1557846891098; 
 Tue, 14 May 2019 08:14:51 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:9593:acc2:64a9:fa16])
 by smtp.gmail.com with ESMTPSA id m123sm30322936pfm.39.2019.05.14.08.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 08:14:50 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: align comments for struct telemetry_log_page_hdr
Date: Wed, 15 May 2019 00:14:38 +0900
Message-Id: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_081452_097720_BA2A3EF4 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Align the field member comments for struct telemetry_log_page_hdr.
This also uses tabs instead of spaces to align field members.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Suggested-by: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 linux/nvme.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index 2c840b9..118095a 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -427,17 +427,17 @@ struct nvme_id_nvmset {
 };
 
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
+	__u8	lpi;		/* Log page identifier */
+	__u8	rsvd[4];
+	__u8	iee_oui[3];
+	__le16	dalb1;		/* Data area 1 last block */
+	__le16	dalb2;		/* Data area 2 last block */
+	__le16	dalb3;		/* Data area 3 last block */
+	__u8	rsvd1[368];
+	__u8	ctrlavail;	/* Controller initiated data avail? */
+	__u8	ctrldgn;	/* Controller initiated telemetry Data Gen # */
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
