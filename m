Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289241BBEA1
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 15:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+4oKeDXI2YuZlfQ62CRVAzeI9v2q2hWxafzzS03Mug=; b=UdfFmke9HjYLcr
	nRplLdKNz0JzZTsDQ1d94edrppzqI2l6V56s2/oYGi3VQ8sYls/S8wfCd28falmsH/va1oxrQ64Ac
	COoaywLYVwj8Z2bFuhYGJ5e5I3xn2mIK3OB0/qUQU9lrxXYSBZBegefTP1zPOTCGGTJUlRSQSLu4l
	VzqyVjuqoTWA0t3RJObi8JG9ejZZPvpVrBy1w/w+2IWSn8kEpYlLr67a7yzIY8o8cBDLaf+cAgqb4
	qJJnpwUwh3QFUMrlvJDChDUFxocRS7FndKUZ23CM01aMkMgVJPCiqtG4C+5gTtIgaex/qAZ3BktJN
	pV++b4m6HRKa+8og4uKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQ1j-0003MA-0D; Tue, 28 Apr 2020 13:11:55 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ1X-0003HX-SO
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 13:11:46 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 28 Apr 2020 16:11:38 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 03SDBZZ7028635;
 Tue, 28 Apr 2020 16:11:37 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 12/15] nvme: add Metadata Capabilities enumerations
Date: Tue, 28 Apr 2020 16:11:32 +0300
Message-Id: <20200428131135.211521-13-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200428131135.211521-1-maxg@mellanox.com>
References: <20200428131135.211521-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_061144_344777_5D524205 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 idanb@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

The enumerations will be used to expose the namespace metadata format by
the target.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 include/linux/nvme.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 3d5189f..57c1b6b 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -412,6 +412,12 @@ enum {
 	NVME_NS_DPS_PI_TYPE3	= 3,
 };
 
+/* Identify Namespace Metadata Capabilities (MC): */
+enum {
+	NVME_MC_EXTENDED_LBA	= (1 << 0),
+	NVME_MC_METADATA_PTR	= (1 << 1),
+};
+
 struct nvme_ns_id_desc {
 	__u8 nidt;
 	__u8 nidl;
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
