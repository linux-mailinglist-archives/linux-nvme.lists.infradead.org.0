Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF2B15385B
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rRCuMUIY4RkBHGx56YDb2RxFR+/mbpb7c7wmnSnsW9E=; b=TOHtvV11ye/+m7KiC+rMXiC1d9
	STdY+EnDak/8ZZHO1r7VjFuB7ZuAEzJYkHu3QDFk3KleSPLipWEI76fgqXX5Xfa8o5ZB8lW8igIJK
	hd46AVOBCibGqCVqYQgTcAE4WtT7l8kE4r0w0vIbv0wj3z+wMgih1FC7Pvf4D244/O3Sekv3tsN/d
	6KQHwAl+crSRFA9pPkyVckF6Z2oGN3jxLYrJ9rZtfMCZTdQKSiFdwHEKNQGCTszdfo886zEC1Xs0a
	NaZWHV3ViGNb//SDCdFtRSyT5LJoaRy9j0v99Q1wsyhW2RonNidhXOa6x2jvcXUwoRAl9Et3tGw6X
	xFN76E7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPcz-0007nu-3S; Wed, 05 Feb 2020 18:42:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPZB-0003j2-9B
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so4017410wrt.6
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uYnmOfiZ8zJBDVvLd9BOp/2Bes723n46zTN9B6dcim8=;
 b=P4GCKL1O2RE4R1Rjktt292GL4H2jvhLlJ9v+mB7usIZA3oVGnm+hkqlpkWQLTuYoG+
 XJvhnYbl8xcEl0K7TbOje5TFkU57WJHhzG5zAhPtb2mRWHZYcJtEiAuu7PdbxXuUFdac
 CqQn+e/PCBUSW49HECNX0vn1+79kEWzzofAT6mOMmeeF6l+/f577e0FjQIT1EOgLRO7Z
 Syx30nV5w6A382fCH3LbE5KJSQNtl2y6bqWC59IBKnZoQ8Mffh3iQlEQc1fPn7Atay+t
 2nDyr2ggS/vLIJHnldh1jfO18u1V5SRs6+WSe6Duy0iSA/O9xIuYDkYO3NQRSwZXrvin
 DW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uYnmOfiZ8zJBDVvLd9BOp/2Bes723n46zTN9B6dcim8=;
 b=l7Vi4HER+rPGtOVeZRxR7i054b8dD8FiLdlSOz4vdqEga0llSnzqgrNrGzNTKaGhM+
 hCBiMrZLGnj+f3PN0W9JAj1ZOVPcMcPz1MI7/l7DSVlpwS3ykNJdpEiNvQQhyYa4Rq3w
 ncvV8z/wYHvxeVKc0JQrHyQEJxGRPPHylGN7z44gL2nvYBBSWGe0maCeKv31w/Sg9MBh
 52cEsHdCmmDlSy0WZqTKtpo1R1ufn4Ebp5SCglAJDkV3FVrsbZ9fYcwI3/0MeDlZuS1v
 l3dUKv3VPA23lmC2DO85J2MbANRc4mbSIGJ3UCTTyz2nxh1nX8aLCcghkx967ap11UDL
 7rcA==
X-Gm-Message-State: APjAAAWtFQZhcyn72M2PDkcdxl7YUnZWe66UgISmolMDXqCxpRX9LNJu
 Omv5oXj7b1NbRwhJ0SfKpK8CJMwx
X-Google-Smtp-Source: APXvYqz6N0pr05B414GlvBp6hR45cwy3TC276e4EJgDVuZfJgw6ms1geUa7p8hJWktCbF46conrGdA==
X-Received: by 2002:adf:f507:: with SMTP id q7mr5090058wro.384.1580927903740; 
 Wed, 05 Feb 2020 10:38:23 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:23 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 14/29] nvmet-fc: perform small cleanups on unneeded checks
Date: Wed,  5 Feb 2020 10:37:38 -0800
Message-Id: <20200205183753.25959-15-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103825_400513_1B1A937A 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

While code reviewing saw a couple of items that can be cleaned up:
- In nvmet_fc_delete_target_queue(), the routine unlocks, then checks
  and relocks.  Reorganize to avoid the unlock/relock.
- In nvmet_fc_delete_target_queue(), there's a check on the disconnect
  state that is unnecessary as the routine validates the state before
  starting any action.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fc.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index a91c443c9098..35b5cc0d2240 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -688,20 +688,18 @@ nvmet_fc_delete_target_queue(struct nvmet_fc_tgt_queue *queue)
 		if (fod->active) {
 			spin_lock(&fod->flock);
 			fod->abort = true;
-			writedataactive = fod->writedataactive;
-			spin_unlock(&fod->flock);
 			/*
 			 * only call lldd abort routine if waiting for
 			 * writedata. other outstanding ops should finish
 			 * on their own.
 			 */
-			if (writedataactive) {
-				spin_lock(&fod->flock);
+			if (fod->writedataactive) {
 				fod->aborted = true;
 				spin_unlock(&fod->flock);
 				tgtport->ops->fcp_abort(
 					&tgtport->fc_target_port, fod->fcpreq);
-			}
+			} else
+				spin_unlock(&fod->flock);
 		}
 	}
 
@@ -741,8 +739,7 @@ nvmet_fc_delete_target_queue(struct nvmet_fc_tgt_queue *queue)
 
 	flush_workqueue(queue->work_q);
 
-	if (disconnect)
-		nvmet_sq_destroy(&queue->nvme_sq);
+	nvmet_sq_destroy(&queue->nvme_sq);
 
 	nvmet_fc_tgt_q_put(queue);
 }
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
