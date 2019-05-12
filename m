Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A2A1ADDE
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gGhZNVFyglOX3peb7z4xNCpBZwddKAmKowBB63tlMOw=; b=HOH9Cwsg2DsA+G3za0H+dpBUMZ
	vSkEi8ekMUGTH+K3JyBCj4AWazzN1JUnlBjWA8ACZhdNmMgz2lznIVh9c15BVIrTjnM7oNwJoqD7e
	FxdJ9nLFWKX886/rU7x2G4tlFNAekllXiiU1B8wWoByZ0eYRXdxuvpNjzc5JsNfE913P6jHpTK6tk
	1oMqDnP/f4MCfgaRFIoPL7KV6QZiW+ivWoCQ8AwNlimiJ+EW1HNaz/ThIT4AuiXL5UnvHPP/eI+/e
	ZvXymXRhvSh/XRfjJ8ayyUqFmOVE21rwx8qUuto7da38SXdJtjcoR26MFh360JLa1k33A5as9LD6g
	y49RMzIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgO-0005BE-E7; Sun, 12 May 2019 18:58:48 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgD-00058M-6o
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687517; x=1589223517;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=ncpSb8BrcuFELtq1ScyetNg+UwZklxI6TtXfsCvrWG8=;
 b=dUYnqm/ZjqBQimshdBRuacWJoZWIjNAGpAerJcDIg9Z49HNaWQdQ0TQ8
 aT1ly5o3zbNGttETc3MblywcF76a/lpxBgksM9MnkPwJgZueKCZhU3iAn
 Xu5s4kfc5FwpA3IioQBzJGXyNFdnsvhguVQswav6aPgGo1odRSRxdNgf3
 mGNco7YQ0CcY6NpmJH2oSqQ/ZDkdjdr74g19q3UTZeDWWzcE000kTB/1l
 zBHMpvEWOueK4nktSd/gN4cffP0LH4QVVE3AOKnGqv+41vfcK+Ds+V2sk
 TBqfHPRuWNH+aH1ZFi8fg52OSt700zMnW4peIy0y3yLRhxdWIELHxZ18Y A==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="214151051"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 02:58:37 +0800
IronPort-SDR: c7JzluhjUcE95BU+3mS04fUMSm+TUuvZ9mKyw5n3bBoeCl0//MWiDyW+o2gEYcjrdYKdmh6cHp
 7BHlTU0e3mejyn2PtGqOfeu44xp+9z5wwvF5V4PSIMgpCC7cAm4Htl8V4R+4eXg8WTAva8M6SY
 vzagYxqYCdxGsNBXuE30e6KR9U7bMQL850a/K5LdjRiDoEKQXMHU1vONKbxODCbtcy71uvfn9l
 skW7CxmmITHDBYHEhMO/aj0Mk/sfhOQZQeXT7ax5v/T0uSTta2VscnJnNZEM53colP/sr0aZCm
 2F39KUNDwQf/JEODKYbAwmqg
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 12 May 2019 11:34:32 -0700
IronPort-SDR: 6a6VJ/WFdFquCYaAtzHjzL1ug6SR8USruXgR008bDTmpEdCGUALkGUpiYbvbwTVsBrb395Ri3k
 AqZIRMb6tpcD7ER1ZdwGkZciKn23Z1SzjG7p4A9ID7DzCoEqAmEbsvOku0llFFsmBjaCdhmZmt
 Da6IaMysymYXwlanBIpjvsiqG4p0Uqrg2E2Y/Aio1tvh03VzQHbiu9IA795usr9zW/9csA1gsB
 FeAArhgWEXm9kmejb1B5ISVHj4NZBf62yKbq/yZZFdoq00FL2tcCY7wp/uozhuSBC5CvJu3jW0
 UAs=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:37 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/6] nvme-cli: cmbloc code cleanup
Date: Sun, 12 May 2019 11:58:15 -0700
Message-Id: <20190512185820.20098-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115837_256064_839A15DF 
X-CRM114-Status: GOOD (  10.10  )
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

This patch removes the unnecessary else condition which is out of
format anyway.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme-print.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/nvme-print.c b/nvme-print.c
index c038355..d9512c8 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -3031,12 +3031,11 @@ static void show_registers_cmbloc(__u32 cmbloc, __u32 cmbsz)
 {
 	if (cmbsz == 0) {
 		printf("\tController Memory Buffer feature is not supported\n\n");
+		return;
 	}
-	else {
-		printf("\tOffset                 (OFST): %x (See cmbsz.szu for granularity)\n",
+	printf("\tOffset                 (OFST): %x (See cmbsz.szu for granularity)\n",
 			(cmbloc & 0xfffff000) >> 12);
-		printf("\tBase Indicator Register (BIR): %x\n\n", cmbloc & 0x00000007 );
-	}
+	printf("\tBase Indicator Register (BIR): %x\n\n", cmbloc & 0x00000007 );
 }
 
 static const char *nvme_register_szu_to_string(__u8 szu)
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
