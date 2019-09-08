Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0C4ACF80
	for <lists+linux-nvme@lfdr.de>; Sun,  8 Sep 2019 17:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z3BRJhwjzcFexxNB8Uc8kKCW8uRcGVGafZvr+KrkMtU=; b=OE9pHkV7abOJCA+hv2w7jI7GWD
	Tw/OEZwa256Ahwi0kI1nvZPhod1/HhgmJKmzAUO0mImtNToaH2mrtUFPNLjRnGrl8NpsBOJzPnKdy
	k0HThRcsa7JwgmQTFtR6cdPSh3xl1anNdVHaEHh+vwKIQeVK+EIlaHHHKHP4X9jPIH5t14JNwa9sM
	ck0cLWrbpkgiEUrB9/WcRzKbXHdZMSzF7F/JcRaTQevSi0sKkrelHomLYnf8VisFOB0IUfH67003Y
	xrZ0hXh8vXwjFK2fQSdQT12SKutt8jXApVHM9U07g+k9pc87WB96/gZ8RSGMTRzPAQuH6y0UvXrl/
	C0y9YJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6z5i-00069w-VZ; Sun, 08 Sep 2019 15:27:02 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6z5c-00068O-GC
 for linux-nvme@lists.infradead.org; Sun, 08 Sep 2019 15:26:59 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 8 Sep 2019 18:26:45 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x88FQjLj011361;
 Sun, 8 Sep 2019 18:26:45 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH v4 2/3] block: don't remap ref tag for T10 PI type 0
Date: Sun,  8 Sep 2019 18:26:44 +0300
Message-Id: <1567956405-5585-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_082657_122726_D360CA28 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Only type 1 and type 2 have a reference tag by definition.

Suggested-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---

changes from v3:
 - added blk_integrity_need_remap helper

---
 block/t10-pi.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/block/t10-pi.c b/block/t10-pi.c
index a33eac4..753b5a8 100644
--- a/block/t10-pi.c
+++ b/block/t10-pi.c
@@ -168,6 +168,12 @@ static blk_status_t t10_pi_type3_verify_ip(struct blk_integrity_iter *iter)
 };
 EXPORT_SYMBOL(t10_pi_type3_ip);
 
+static inline bool blk_integrity_need_remap(struct gendisk *disk)
+{
+	return disk->protection_type == T10_PI_TYPE1_PROTECTION ||
+		disk->protection_type == T10_PI_TYPE2_PROTECTION;
+}
+
 /**
  * t10_pi_prepare - prepare PI prior submitting request to device
  * @rq:              request with PI that should be prepared
@@ -178,7 +184,7 @@ static blk_status_t t10_pi_type3_verify_ip(struct blk_integrity_iter *iter)
  * likely to be different. Remap protection information to match the
  * physical LBA.
  *
- * Type 3 does not have a reference tag so no remapping is required.
+ * Types 0 and 3 don't have a reference tag so no remapping is required.
  */
 void t10_pi_prepare(struct request *rq)
 {
@@ -186,7 +192,7 @@ void t10_pi_prepare(struct request *rq)
 	u32 ref_tag = t10_pi_ref_tag(rq);
 	struct bio *bio;
 
-	if (rq->rq_disk->protection_type == T10_PI_TYPE3_PROTECTION)
+	if (!blk_integrity_need_remap(rq->rq_disk))
 		return;
 
 	__rq_for_each_bio(bio, rq) {
@@ -234,7 +240,7 @@ void t10_pi_prepare(struct request *rq)
  * to the device, we should remap it back to virtual values expected by the
  * block layer.
  *
- * Type 3 does not have a reference tag so no remapping is required.
+ * Types 0 and 3 don't have a reference tag so no remapping is required.
  */
 void t10_pi_complete(struct request *rq, unsigned int nr_bytes)
 {
@@ -243,7 +249,7 @@ void t10_pi_complete(struct request *rq, unsigned int nr_bytes)
 	u32 ref_tag = t10_pi_ref_tag(rq);
 	struct bio *bio;
 
-	if (rq->rq_disk->protection_type == T10_PI_TYPE3_PROTECTION)
+	if (!blk_integrity_need_remap(rq->rq_disk))
 		return;
 
 	__rq_for_each_bio(bio, rq) {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
