Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282DB1F71A1
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 03:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=clTgt5PGs6C9MMsxsteux70NrQ9pPFAxw+2bkNldpUU=; b=TwYl7xt1CQeh2n
	G9jNg4BfchltTRKZet1ZBK9y4L25FwBbpzb875M5EmL4/W/1LFnq/fOH0ik+XZBSpyTN+1JkHjIlO
	AEIQ4Z1KWLnJhT5nJugNY8WDPiDI1k361Fctdvd1ohQbNIi91CqHbdGQ8iYmMea2G2+MlZE+yaNUH
	YZ3XwiUQGv9QYIh7rTtWRrguRTxtcWms/iickqWxYhfj38AXc/JujBetniTg21KaO6pGksXbs99Jp
	qgxoexPf/SWbEPUKHYHwXnpslquz/fzF+lsafRCPHOwqaGdwqSxhQ1V/wZCZpIYH+L8KHlVg4AKPL
	WSYriZjozgSL5L5QSWKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjYJu-000322-Rx; Fri, 12 Jun 2020 01:17:22 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjYJq-00031d-Sv
 for linux-nvme@lists.infradead.org; Fri, 12 Jun 2020 01:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591924638; x=1623460638;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n2fhHT1kuwyTgMERc9GPUgH+A68lC8mnNdKRjsPC9fk=;
 b=l8n8Jvh0sSr1MHNbQQgcbaaTVqwJQRmzMbI1Zo331Mrdz3wCqvSj4hi+
 STK3YEs7TMEWU7wAT0bfaTa5lZobkW0YddIAd4b28kHM6EzP6bTc7RrZL
 G8xEdb2R56n8CVUH8MGrM8Qolb8GBZz1zJJ/1ELaO5H+ndZb18T9vJSAd
 /EqUaQ0rcMsB9WrS+jKhmIylTd2y8RGU2sgDTF84e6BnrrqU8zu9AX6Rg
 frQTNNwq9fhoGMZ2v0lYQ67tmgef25+mAXsBmIAGruYlft6PX48a7Xwo7
 dcMrb8HZAayFeLSuuodPKeRj1iiPO+wpV4UuuMuiPDA37ieVFgFz+L37e A==;
IronPort-SDR: IIlZKY76DIPAACRihWrzKU8j8hRPtCJGiF0btdO3p3PzbilrXwJ3Gag4ujtkBJ3gT9eIqm8ozS
 iWqUOqpH73FcX+ptnlnyVNJelvRarzCXzM3XtiZ7JpM3kYCgFKpGzzGGKbRO43XVOH/KqqE91R
 0m/ik8QkUanl6xY+4y/QJ0MDL8kiqpMKz9EqsiZbgKFYl79D9VWk022kfYrudOaZdrXRYSuk9i
 WUY1ZkNsL9a3whehVkNW9vkoE25Zb+jV4sQ0DU0H+uwjBWT+y80oJPsbi49KAlhSPWHE3taNXX
 TB4=
X-IronPort-AV: E=Sophos;i="5.73,501,1583164800"; d="scan'208";a="139782063"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jun 2020 09:17:15 +0800
IronPort-SDR: me+6MfCMr3nRK44xO+cHWXYJuxnHVNBZgL2O+wW+Zh6VHbys9dLcy7KZxW++e1sEMLqUK542ic
 l6vYKD43olLJZ+Fj2HPWOKyP9YbK10DA0=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 18:06:39 -0700
IronPort-SDR: lLy91OzLg71P60Nz4kRhjrPie5ZdWr8GfmquIXBWJ725ULBXe+NUohVcGGEjm/rzqTM6Sye8Hz
 kq0kYnyBbvpA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 11 Jun 2020 18:17:16 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: use unsigned type for u64
Date: Thu, 11 Jun 2020 18:16:59 -0700
Message-Id: <20200612011659.11247-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_181719_020057_703C1F2F 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In function nvmet_subsys_atte_version_show() which uses the NVME_XXX()
macros related to version (of type u64) get rid of the int type cast
when printing subsys version and use appropriate format specifier for
u64.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 419e0d4ce79b..cdec47de89ed 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -862,14 +862,14 @@ static ssize_t nvmet_subsys_attr_version_show(struct config_item *item,
 	struct nvmet_subsys *subsys = to_subsys(item);
 
 	if (NVME_TERTIARY(subsys->ver))
-		return snprintf(page, PAGE_SIZE, "%d.%d.%d\n",
-				(int)NVME_MAJOR(subsys->ver),
-				(int)NVME_MINOR(subsys->ver),
-				(int)NVME_TERTIARY(subsys->ver));
-
-	return snprintf(page, PAGE_SIZE, "%d.%d\n",
-			(int)NVME_MAJOR(subsys->ver),
-			(int)NVME_MINOR(subsys->ver));
+		return snprintf(page, PAGE_SIZE, "%llu.%llu.%llu\n",
+				NVME_MAJOR(subsys->ver),
+				NVME_MINOR(subsys->ver),
+				NVME_TERTIARY(subsys->ver));
+
+	return snprintf(page, PAGE_SIZE, "%llu.%llu\n",
+			NVME_MAJOR(subsys->ver),
+			NVME_MINOR(subsys->ver));
 }
 
 static ssize_t nvmet_subsys_attr_version_store(struct config_item *item,
-- 
2.27.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
