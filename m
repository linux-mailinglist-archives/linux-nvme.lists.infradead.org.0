Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6B31ADE3
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ae1OqGJ36LpFVb6lJ2DNXVjYE1wy/DBuTUnMpQefdto=; b=Y4qa7DBv1ymGfloO/6VHJI+iVv
	FakOF4+cFDEP5s4FXmtyL/D3FdFRrgLZmoYmestmcWNCi0RnJnBsgj41UUyVhEzkijizyr9n/Fe5D
	Xv0Fx6Ms3aWonorJbKIMwWC7ckkk4JQuiSy4YF5tBeBgf1KKSt/LVzLv1rH0zCoVNydzQ40fgwHV6
	v3/XX65/kraO5kL6TcCzuCYrz7Wef35CUmEch9826LG65tRW1oihk8cRSufdsVrlS2ne5s0WQp57x
	y1CAeOCx/JaKsXqf27vvSnA4wooCt5XghB4C1RUT47oUbSRBnwQkyXTL7/DllOO9KBmlj+0RnLwCI
	sjYgWDmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPth4-000637-6N; Sun, 12 May 2019 18:59:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgW-0005YE-R7
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687614; x=1589223614;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=kzsFsTIqqb710oucq0aqW6p08KabZ0rpd8HJTFI9l/Y=;
 b=aia9E/j9WBZcTuZ6/THziq+kj4V5AQta7qpkQuoibKixsP3A7kknZdOW
 lgfOFx1r8uRNcoDrzqg7e71/Dw/+YNqn1L0rCBc5/EPOFQle1eKxNSH9I
 T2d0725BpQG4/hWMX8r3dAql70GmebCSxTkO5wVpxUnGRw2iVe6IyiFFu
 Yp3j/aWX2Viakr9bgjBqaCbMXdDVkjh4R7e5sXyljndJwjqN7At5r22xd
 PYM1wMYv5csEKryR7svvG+lK6XfPmujwJIqR2qmu51yHF5o3VtGV5yaPe
 9L58B3VofvwchyrEoTmP7qRKHZUTuEp081IlnhgjfUH7YwmHAnnyG717a g==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207452170"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 03:00:13 +0800
IronPort-SDR: ztwPjQbLIIYftX9mE4uTQ5U8wEK4a+QkFT0jKDpw1bKRpEv21cTz/xQ3zeBgFy3AIRvLYWrRc1
 VraeF71Ccm2s7RQFVtRrCqLnZWqQuj3CYJxi5MBY17BWWAIOfpf8Y8X9NOGBbmNvl6pX/TkP5F
 yA4Fk/X7FIvmuKot+xq7X3I4K0mQC6XPiMLq18kLYQxuGINiOZjnoNhDtDdfYHecPJHZ0A12FX
 xAVDkIECht14zA+I7W1Uo6YhuSVsaZq7pW1aqn1ljQfyyM6pmd7RI0j3bok97Br+wxy4uOuS/n
 KcoX8EfAluONFIIWFeRFGVAo
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 May 2019 11:36:59 -0700
IronPort-SDR: DDPBJ+Ryo+/I0PXdawMhzOJ1dmIkUkQ3KtK7V/H5RHUGR4yiqC2wIZPr13aZc5ViARV+Ekc/QL
 I61m9qRruwGYxXdTe8G2kxNBYYgmIx4sZbzDemKdb8e8X8eX5XzthNL5XIg1maSBxdaF43w6SU
 A1DpV6c2RVj++hwx0/K23BYg5weeMeFRJ2pj2DBAHZBJWOkiwDQ2c4T+w8B8ijeY4aqJeZY6HK
 o7PxWT83G+sDDS6ln7MWr1WXUQprZPRP2qnRBK/BZefpgzMxjjngjNox/QvxAldE0elvR5iBn9
 byM=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:56 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 5/6] nvme-cli: use uniform if .. else format
Date: Sun, 12 May 2019 11:58:19 -0700
Message-Id: <20190512185820.20098-6-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115857_347690_F9C7E9D2 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme-models.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/nvme-models.c b/nvme-models.c
index 5006f7a..f90ab95 100644
--- a/nvme-models.c
+++ b/nvme-models.c
@@ -259,8 +259,7 @@ static FILE *open_pci_ids(void)
 	if ((pci_ids_path = getenv("PCI_IDS_PATH")) != NULL) {
 		if ((fp = fopen(pci_ids_path, "r")) != NULL) {
 			return fp;
-		}
-		else {
+		} else {
 			/* fail if user provided environment variable but could not open */
 			perror(pci_ids_path);
 			return NULL;
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
