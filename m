Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCCC1DA771
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 03:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbajH4FWOuuyvL6Zelq/097ICNAozE8YqoJsONXodUM=; b=TPiHTtwNFKElPK
	b+LodHaMryvU5hk9K5e6L93ptQ+a8o9jYOK01rm0V/gLnmg5kirl3RUiH/L+/KbbiMbrRRLIEa5io
	MKAbLURg/m3pinfj/WVSaER2oD4Uz7uJXG9q1i1qZpP1ZbBPq1r3ZDalSINb/U+JWqgqfyikP4Q+e
	Y4Jc1D+1O20Kz897+mDV2rWAErPeFSotCKoCirBr1kdh/7al59KRS3n5jCjdo2pmoTnFKzv3Tq5XI
	pQb4QNp1xMAqr/PjRZcKBdXHi6Y1BvTivlXi0ZtO1EQTJ1ZNt41RSSosFQL/iHdW4Re04Z4022Bmk
	OrBWtxwjd+N8M9CHkTvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDp2-0001I3-Ts; Wed, 20 May 2020 01:47:04 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDox-0001HX-OL
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 01:47:01 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A4FCEE172FAF073E8907;
 Wed, 20 May 2020 09:46:48 +0800 (CST)
Received: from huawei.com (10.21.225.247) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Wed, 20 May 2020
 09:46:40 +0800
From: l00293085 <liuzhouhua@huawei.com>
To: <kbusch@kernel.org>, <linux-nvme@lists.infradead.org>
Subject: [PATCH nvme-cli] edit huawei ssd filter
Date: Wed, 20 May 2020 09:39:23 +0800
Message-ID: <20200520013922.101374-1-liuzhouhua@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.21.225.247]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_184659_957121_188DBFB1 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: liuzhouhua@huawei.com, wangzan@huawei.com, kangwenhong@huawei.com,
 Michael.wangchong@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, I'd like to modify command: nvme huawei list, add huawei vendor id as filter

Signed-off-by: Andy Liu <liuzhouhua@huawei.com>
Reviewed-by: Wang Zan <wangzan@huawei.com>
---
 plugins/huawei/huawei-nvme.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/plugins/huawei/huawei-nvme.c b/plugins/huawei/huawei-nvme.c
index c935f47..c7f3307 100644
--- a/plugins/huawei/huawei-nvme.c
+++ b/plugins/huawei/huawei-nvme.c
@@ -41,6 +41,7 @@
 #define CREATE_CMD
 #include "huawei-nvme.h"
 
+#define HW_SSD_PCI_VENDOR_ID 0x19E5
 #define ARRAY_NAME_LEN 80
 #define NS_NAME_LEN    40
 
@@ -80,16 +81,15 @@ static int huawei_get_nvme_info(int fd, struct huawei_list_item *item, const cha
 		return err;
 
 	/*identify huawei device*/
-	if (strstr(item->ctrl.mn, "Huawei") == NULL) {
+	if ((strstr(item->ctrl.mn, "Huawei") == NULL) \
+		&& (le16_to_cpu(item->ctrl.vid) != HW_SSD_PCI_VENDOR_ID)) {
 		item->huawei_device = false;
 		return 0;
 	}
-	else
-		item->huawei_device = true;
 
+	item->huawei_device = true;
 	item->nsid = nvme_get_nsid(fd);
-	err = nvme_identify_ns(fd, item->nsid,
-							0, &item->ns);
+	err = nvme_identify_ns(fd, item->nsid, 0, &item->ns);
 	if (err)
 		return err;
 
-- 
2.22.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
