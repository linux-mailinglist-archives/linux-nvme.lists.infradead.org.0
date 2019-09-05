Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A98AA94C
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 18:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I5PxAERYYBJjNzSFd0IL2d0iCd4MMloL73rtSd7lBuk=; b=snx5SH1fU7C3KfP4veFFWvE70c
	pTqUwE/HiAyNvjSAK57a/t8lH1drw8WCmINhz+SDHYGbD5nHdNIjEmfBfFOAxMONISv0o30Y2CbdT
	AJt1PJopIO8N7TJemU7eEllAaoU5V9w33Qffrw2B7h9xfPH0WTsndxVW/0bU9Vvx1nGVQuyN74aBv
	4W3yIwKN42y6kyc3QVsT31IERfCnZMRotP+lu2oi/2hVkokilZp8Kl4+6FsFzj9X6tP1u4Oycg+kH
	Qic/g2lcGjJuqsfdsYmwWPeInzwn8y7qScIM1E3j00a8FIOSsG0BkJ9710qSrP74rJNnCu9Riq++B
	jSchCs+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5usB-0006AD-LD; Thu, 05 Sep 2019 16:44:39 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5urf-0005bL-L5
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 16:44:10 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Sep 2019 19:43:57 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x85Ghux4018224;
 Thu, 5 Sep 2019 19:43:57 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 3/3] nvme: remove PI values definition from NVMe subsystem
Date: Thu,  5 Sep 2019 19:43:56 +0300
Message-Id: <1567701836-29725-3-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
References: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_094408_088922_F38598FF 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Use block layer definition instead of re-defining it with the same
values.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/core.c | 12 ++++++------
 include/linux/nvme.h     |  3 ---
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1850ccd..0f799bd 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -663,11 +663,11 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 		}
 
 		switch (req->rq_disk->protection_type) {
-		case NVME_NS_DPS_PI_TYPE3:
+		case T10_PI_TYPE3_PROTECTION:
 			control |= NVME_RW_PRINFO_PRCHK_GUARD;
 			break;
-		case NVME_NS_DPS_PI_TYPE1:
-		case NVME_NS_DPS_PI_TYPE2:
+		case T10_PI_TYPE1_PROTECTION:
+		case T10_PI_TYPE2_PROTECTION:
 			control |= NVME_RW_PRINFO_PRCHK_GUARD |
 					NVME_RW_PRINFO_PRCHK_REF;
 			cmnd->rw.reftag = cpu_to_le32(t10_pi_ref_tag(req));
@@ -1498,13 +1498,13 @@ static void nvme_init_integrity(struct gendisk *disk, u16 ms)
 
 	memset(&integrity, 0, sizeof(integrity));
 	switch (disk->protection_type) {
-	case NVME_NS_DPS_PI_TYPE3:
+	case T10_PI_TYPE3_PROTECTION:
 		integrity.profile = &t10_pi_type3_crc;
 		integrity.tag_size = sizeof(u16) + sizeof(u32);
 		integrity.flags |= BLK_INTEGRITY_DEVICE_CAPABLE;
 		break;
-	case NVME_NS_DPS_PI_TYPE1:
-	case NVME_NS_DPS_PI_TYPE2:
+	case T10_PI_TYPE1_PROTECTION:
+	case T10_PI_TYPE2_PROTECTION:
 		integrity.profile = &t10_pi_type1_crc;
 		integrity.tag_size = sizeof(u16);
 		integrity.flags |= BLK_INTEGRITY_DEVICE_CAPABLE;
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 01aa6a6..8d45c3e 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -381,9 +381,6 @@ enum {
 	NVME_NS_DPC_PI_TYPE1	= 1 << 0,
 	NVME_NS_DPS_PI_FIRST	= 1 << 3,
 	NVME_NS_DPS_PI_MASK	= 0x7,
-	NVME_NS_DPS_PI_TYPE1	= 1,
-	NVME_NS_DPS_PI_TYPE2	= 2,
-	NVME_NS_DPS_PI_TYPE3	= 3,
 };
 
 struct nvme_ns_id_desc {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
