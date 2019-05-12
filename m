Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582C1ADDF
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/elSAy3l10y+1UTzc9VCa8TOKiM+4P/yUa7I1I2K2as=; b=M3Au9BdmAQr65HpSsHKBvbrwMf
	nX/hSI8/BzuLtU7kfp8cjihpFu3k0Ov6eWaldurnCAsHytxdV3K5Ugbty3W/HXXSZCa7zKHrmqCCI
	kfcgM+AQV/XaPsJPQFL5x5jdQoMj3NG6CLkqUX7+sC2d2xf6AUEflxEGtzqkGaD4quog3WzZv4P/I
	oYGoBv0U5AOK8khC99u3rEw3q9ccmgNtPS5cAHudPp+wSYLt+JAfH5yoFhKl9YnvirIxlaPa1409F
	sGY8yk/TPrCzvkuR78LG/8PZTHC68sUF0NIWbL3J54BSC0ylBSNxKN3edn5WWGfk5SEIjMiKcgBP/
	DmTBogLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgV-0005N4-Nx; Sun, 12 May 2019 18:58:55 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgH-00058M-6t
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687521; x=1589223521;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=TKZU9g0+AX8eyUcdyp36mxk0sor0RdkzH6izRLP5Qf4=;
 b=O7aIaHbKQDuHUaUGCKCI768bh3/rP915tKQz7IL8OpQIsUIjxj1CaEMn
 V/TUKiqwaBrPyja/Pr6M0Nw/IvEYW1+VUOMUpwo0bJd3hY6mMJp4YIGaD
 PRpG61aTKqSkb5x6EmyIyCGyagYwLD2I6E9m7w59xLpPD4og8i9eP5EjA
 4xcnGfJNn09SH8ADH9A5/UzAmBHgaGwGTzSU+/jnIlM3qXSVNcrDgKz8l
 F8byvWdjE420PhQzT/nHIXLGXFgWXWRWYbduMSCVN5wCMXEVxsyR00Gi5
 b9kN77j57aVqtxI+aB/yZbLsqeyc077IpYrlOp+uIZOxbeedV2fEaQiL6 A==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="214151054"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 02:58:41 +0800
IronPort-SDR: b5qvGQU/WT1tyQusWZr2yiEeJGDd13GcYxvGlTg4JTaw6uEevAXfKItMK5O4/OHeIuOG1i8t+q
 E/ofcVDeeEhgqWlcchSCT25ONAF7hdfiZng36xM9hUttZ83j03uFd0flm1eToKPoViX1ZOMPFJ
 Y/2iiA6lZG1RTWO+ghYtvIAXBHRSolZwOtsn4FS3k+1Pom5sYmqDaNcAIrifS+uitwMC2bYd2f
 BbZsOSCZWBM/2BYjhWrGjtUqeXpBcc33Q5/fWybIs6SHHuq9b7uzJTUovkQpxcgmY8Mlktq26o
 dcRNVla5rmJw2b9fYCO30cDG
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 12 May 2019 11:34:36 -0700
IronPort-SDR: oxIuXuJn18z5BN+yoT3lI/wYTmEkaAHOCciz+7c3FHZ2MKHtOWbnD67o1/93lR6TrKhZpP54ZB
 K9IeTp94kMH8vTnbNCCxh7a4UPb4TQ9fzXJ8kaBAvYFKChwHZ5aJ/hVJjiNklEXMWS8dtedq3W
 pOV4w2tkEFWUqGmxv29LwLo6H0Ol9843f8c3KMs97/Lg28Ik1mxEJR5mGIBOYc15N1WOsUFz9l
 jhsVwX1AYX4S+eh+/CIZ3M6aV5CsG+7DaO9xD5hbepxEcTv02ddPaWhBm8gJXn23hq4JEABlf+
 P+Y=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:41 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/6] nvme-cli: code cleanup adjust if statement
Date: Sun, 12 May 2019 11:58:16 -0700
Message-Id: <20190512185820.20098-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115841_631635_DA248C06 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
 nvme-ioctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme-ioctl.c b/nvme-ioctl.c
index 242a01f..f3a56dc 100644
--- a/nvme-ioctl.c
+++ b/nvme-ioctl.c
@@ -563,7 +563,7 @@ static int nvme_property(int fd, __u8 fctype, __le32 off, __le64 *value, __u8 at
 
 	if (fctype == nvme_fabrics_type_property_get){
 		cmd.nsid = nvme_fabrics_type_property_get;
-	} else if(fctype == nvme_fabrics_type_property_set) {
+	} else if (fctype == nvme_fabrics_type_property_set) {
 		cmd.nsid = nvme_fabrics_type_property_set;
 		cmd.cdw12 = *value;
 	} else {
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
