Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6F317FEF
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dejn3iFvZCLZX02xotYkgjPgzKLSlHei5ueaWnSmDEU=; b=ucd3uRa6WGeyNG74UO4HMZR2lt
	NSl1xowAfA/4Z4z3tcPa09mD+HFRxQQY3YNE2lpVu8aAPVe5Sj0LZpgTEprPBqNa9pnGeu6ji6kt/
	M6vLCAzm7MCeFxi7AhQgEHhE7IflLx4xZV7Te3J77d1eLlnQwbrl/BHFbS/0Vs1XdwHnimlMhBzcp
	y/gjgkAVQh/OUufxtmSG1RfRkhURkTZ5Syn3IQsew+6GrR2zMcVJ4yo/dIM+t+qsKPtApOmDsyDWA
	Otll6YpE/QXP7upiKdeO0jkIpmGpMBOH/fiF1oHc3JmyiNj2MfQtd0Z0GFw95mLTOgKhzrmPLn3wA
	W6Z8pHUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORQy-0004gj-6V; Wed, 08 May 2019 18:36:52 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORQs-0004fv-Vd
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557340607; x=1588876607;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=foh7KP35GUiHgustRUa6eqDSPyC8HKiyNsdaCqaBXOw=;
 b=ift3jafj5nyXFjWZO+Ykx6LRpgncjlnuA3EMKDn+ciV2blxH3yqdGPU/
 q9o0XeIpIMDfZzFDylLmYzwAzRSUdFh242fefhBwuyJEQGzUMQTpQ6A62
 jEDr+V0ApgoL97/kRffil8P290zSUThMzV9YDS7iL9gCcAXuIpqwsyTGJ
 OFo7603zDKgUlSaWOhTLFgQ6Btp2uKhP2ao5fYwSlQFAVVZMA8ITaPqQ7
 v4/xqLIEsxqzrB6+vlaZNYHiVDuza3Zmi14mi6krJ3t2w/ExY2qK8pesc
 nO7qMlnbNu80jYLgkfH4segVoXTlc4/olm3IHohUEnPQCQ4MPWz8yc+A2 Q==;
X-IronPort-AV: E=Sophos;i="5.60,446,1549900800"; d="scan'208";a="109543224"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:36:43 +0800
IronPort-SDR: kj3YtkF8wfJdZ/C6PSTo25/3NRsWmcFVS86glRNqiFTYkZzJV0iGH3hsB/F38cMyxYdl3bU4U1
 JijdOGUMPFd/0UkdsQm2E6uIEETJ2WE68qqkftZMlAQhWufRDJt3z4ZYh1t8id+KmSn9YLptco
 GJpF2WujURCbpnFd9QTyUplkoCKmz875pXsVaLZlab/5x3WvupNCzTnrhVbi6p7ReRKVuWq8Ys
 urHxUPEbxoTrF9gluZ8t9rqquJ1PX0moarlCFVvCPZYg3duCZTOd3aOo/tfZ9d8Y2uhtQXuDLo
 4Mk066QQIFXXyWdh8FUKm7aH
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 08 May 2019 11:14:56 -0700
IronPort-SDR: KcA0asDO7UHAoFBnS9O1kX0MVEKfmEdMmTcnuiqa2Se4Bcn2aha0tO9PKd8bF5HWDcrUCP5vzp
 zZJrmsS0Hyf7R9qQr9vHTd0HESEY6zHbZgYK3z7iIRhSIrjzHuhZGfN+t7vmtEyvpCDqjL2SG2
 3gmtK33trGds8UeVwjOZTJWHheVNd5JCKBcWIpg4XffQAj/dqoJnWiEnQwo8epmThJrfrMsAQm
 hGLTI2+jrJjODbQSyIN0YlivlKNojmYmx5VAtX+XJWH4PjB/mGAZAyO3HJfbrLJmTvDtPaQlhF
 Z5o=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 08 May 2019 11:36:43 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/3] nvme: introduce and use RAE bit macro
Date: Wed,  8 May 2019 11:36:32 -0700
Message-Id: <20190508183634.4682-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113647_088684_EC72F554 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Introduce a macro instead of hardcoding RAE bit value in several places.
Also this uses RAE bit macro and removes the open coding in the NVMeOF
target. This is a preparation patch for filtering out the NVMe user
commands.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/nvmet.h | 2 +-
 include/linux/nvme.h        | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..47d9f5838828 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -343,7 +343,7 @@ struct nvmet_async_event {
 
 static inline void nvmet_clear_aen_bit(struct nvmet_req *req, u32 bn)
 {
-	int rae = le32_to_cpu(req->cmd->common.cdw10) & 1 << 15;
+	int rae = le32_to_cpu(req->cmd->common.cdw10) & NVME_LOG_PAGE_RAE;
 
 	if (!rae)
 		clear_bit(bn, &req->sq->ctrl->aen_masked);
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index c40720cb59ac..d439c129d8af 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -840,6 +840,8 @@ enum {
 	NVME_FWACT_ACTV		= (2 << 3),
 };
 
+#define NVME_LOG_PAGE_RAE	(1 << 15)
+
 /* NVMe Namespace Write Protect State */
 enum {
 	NVME_NS_NO_WRITE_PROTECT = 0,
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
