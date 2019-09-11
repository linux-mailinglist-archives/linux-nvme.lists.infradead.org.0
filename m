Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1B4AFFE5
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Sep 2019 17:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ia7VfJhirIwIJ3WGGY0DRKBoaEWYHgWw5w6x8j+e/GQ=; b=OQw
	YPkAvTOMLEw8LiZhQCJ87AdfyOmUCZtMzafkND3RYNNtezurixjQY87dlxlJ7hae2KRhGYg6XRcFy
	GVGQ3W051gr3yfNtUXdi2ccSXq9Jv9QnUPKb4SxtFKvZ6mrP7VFLJ9Kbv1Ym52MCWiUIVrr//WY+G
	eAMSewrHGHqvmR2eGK7VLn8EzFrU+1SC68pKt4671AM26Xw7xktWTQ0NOTf7kPE+YIXqtc776Sxa8
	xFH+rv94Ehwxj0kn/4M+PXLKd8pjXt2BibjhOM8KoLASNE30I3xQvEVSN6RAUasJp+SaWlr4guvel
	ZHUqc78lsjOU7TodiOc9p1NNZmQVO6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i84T6-0003RQ-Hd; Wed, 11 Sep 2019 15:23:41 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84Ss-0003PI-M9
 for linux-nvme@lists.infradead.org; Wed, 11 Sep 2019 15:23:28 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 11 Sep 2019 18:23:17 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x8BFNHrb031358;
 Wed, 11 Sep 2019 18:23:17 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH v5 1/2] block: use symbolic constants for t10_pi type
Date: Wed, 11 Sep 2019 18:23:16 +0300
Message-Id: <1568215397-15496-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_082327_118557_C96E9F37 
X-CRM114-Status: UNSURE (   7.41  )
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

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 block/t10-pi.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/block/t10-pi.c b/block/t10-pi.c
index 0c00946..7fed587 100644
--- a/block/t10-pi.c
+++ b/block/t10-pi.c
@@ -27,7 +27,7 @@ static __be16 t10_pi_ip_fn(void *data, unsigned int len)
  * tag.
  */
 static blk_status_t t10_pi_generate(struct blk_integrity_iter *iter,
-		csum_fn *fn, unsigned int type)
+		csum_fn *fn, enum t10_dif_type type)
 {
 	unsigned int i;
 
@@ -37,7 +37,7 @@ static blk_status_t t10_pi_generate(struct blk_integrity_iter *iter,
 		pi->guard_tag = fn(iter->data_buf, iter->interval);
 		pi->app_tag = 0;
 
-		if (type == 1)
+		if (type == T10_PI_TYPE1_PROTECTION)
 			pi->ref_tag = cpu_to_be32(lower_32_bits(iter->seed));
 		else
 			pi->ref_tag = 0;
@@ -51,7 +51,7 @@ static blk_status_t t10_pi_generate(struct blk_integrity_iter *iter,
 }
 
 static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
-		csum_fn *fn, unsigned int type)
+		csum_fn *fn, enum t10_dif_type type)
 {
 	unsigned int i;
 
@@ -60,8 +60,8 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
 		__be16 csum;
 
 		switch (type) {
-		case 1:
-		case 2:
+		case T10_PI_TYPE1_PROTECTION:
+		case T10_PI_TYPE2_PROTECTION:
 			if (pi->app_tag == T10_PI_APP_ESCAPE)
 				goto next;
 
@@ -74,7 +74,7 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
 				return BLK_STS_PROTECTION;
 			}
 			break;
-		case 3:
+		case T10_PI_TYPE3_PROTECTION:
 			if (pi->app_tag == T10_PI_APP_ESCAPE &&
 			    pi->ref_tag == T10_PI_REF_ESCAPE)
 				goto next;
@@ -102,42 +102,42 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
 
 static blk_status_t t10_pi_type1_generate_crc(struct blk_integrity_iter *iter)
 {
-	return t10_pi_generate(iter, t10_pi_crc_fn, 1);
+	return t10_pi_generate(iter, t10_pi_crc_fn, T10_PI_TYPE1_PROTECTION);
 }
 
 static blk_status_t t10_pi_type1_generate_ip(struct blk_integrity_iter *iter)
 {
-	return t10_pi_generate(iter, t10_pi_ip_fn, 1);
+	return t10_pi_generate(iter, t10_pi_ip_fn, T10_PI_TYPE1_PROTECTION);
 }
 
 static blk_status_t t10_pi_type1_verify_crc(struct blk_integrity_iter *iter)
 {
-	return t10_pi_verify(iter, t10_pi_crc_fn, 1);
+	return t10_pi_verify(iter, t10_pi_crc_fn, T10_PI_TYPE1_PROTECTION);
 }
 
 static blk_status_t t10_pi_type1_verify_ip(struct blk_integrity_iter *iter)
 {
-	return t10_pi_verify(iter, t10_pi_ip_fn, 1);
+	return t10_pi_verify(iter, t10_pi_ip_fn, T10_PI_TYPE1_PROTECTION);
 }
 
 static blk_status_t t10_pi_type3_generate_crc(struct blk_integrity_iter *iter)
 {
-	return t10_pi_generate(iter, t10_pi_crc_fn, 3);
+	return t10_pi_generate(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
 }
 
 static blk_status_t t10_pi_type3_generate_ip(struct blk_integrity_iter *iter)
 {
-	return t10_pi_generate(iter, t10_pi_ip_fn, 3);
+	return t10_pi_generate(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
 }
 
 static blk_status_t t10_pi_type3_verify_crc(struct blk_integrity_iter *iter)
 {
-	return t10_pi_verify(iter, t10_pi_crc_fn, 3);
+	return t10_pi_verify(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
 }
 
 static blk_status_t t10_pi_type3_verify_ip(struct blk_integrity_iter *iter)
 {
-	return t10_pi_verify(iter, t10_pi_ip_fn, 3);
+	return t10_pi_verify(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
 }
 
 const struct blk_integrity_profile t10_pi_type1_crc = {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
