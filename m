Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D39A199C2D
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UK0KeKZ0cx72e1IMFjdMT42Ab5zO8qbLAHzpmjAJBtI=; b=WeIqFN1eNhS9OBa8xTCL725yuS
	gR7Mr3nXBv/aj+SKYT8AuPkmFNVKj9EHxnX6ToFEwdk6COPW/F5xiygmke2lx7/IGAOyl9y4FRlpp
	X8Zx2bsmzWaLu1cRzCdvYGZgVPAOHA1vnKCnvQENXyYvInM0cl9UJgDp+8vk1s7Z6JLOJz8hYbXjI
	jHNpUyKso6GGha6egEbTTrtxYaYyJ5rpDlsWnOr+tM3pA5yJU+WF35XAa1JfhMk2qm1rKj20p205x
	i6/D2prdErnHRn1Pm1/DpUYogVIGX1wgpH+ynlkoaNdPYj7/Qt/STRgixN/YzgEbOxfxFbTHQc5xC
	gp7odAww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJK8x-0006Rz-Eq; Tue, 31 Mar 2020 16:53:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK63-0004ig-9p
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:50:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id r16so3301324wmg.5
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P5fvK/H3Fb4p8ppxLLQ3T8lVqW1+rnEi7Z6SggIqFvM=;
 b=UIkdnWcHJfXWYoWp2YGl9oUjJQTLN9p/UBQ3yo2+z6hQsiuQ8wI7YE6A/Q+ZBhNZcx
 5QW1sZWrLXxRcTKvOwZMgNhenZKc34YLhSa/OU/gpM9iqKsqgoEtbaaYI2x0pZcOOljl
 C6ufal4LCOHA+stDF1SAOG8X7XucFAxCnj/JHO0KWir+W/zZYWx8JkXM4dCn5MuZ+km/
 9yQtrZYKZ/wRMjFhg0Vk4Ad1wnoO3mdPg1QGoyOl8OhiLXYBMdkRPOWqDfNB6msqDaOW
 lMDuDCrt4NfyRWjpegw5o/fc7xJJUnLjkTyTrDkQmAR1727WA8dzfCJ0lzVSxFu8AfAL
 OS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P5fvK/H3Fb4p8ppxLLQ3T8lVqW1+rnEi7Z6SggIqFvM=;
 b=XbZ8vGB5wO95HTu81yb8PYw1TDIAXn/czioHTCK0gw1vjmNEuTlsXCFmv6rQb8VYU9
 HRd3gFBz1w48FxbgS8OtW+9VLoWQ6GWddFHQVMRVPRthdMZljPpQGvEUILXhEmF3fKl3
 Gv93nH6WosDVSUfPystmS3/QwSIjP6F8v+wrkeQUtFmOAZQ7JVDBdU0afaAlTSy8Ni1n
 XQPm66G3BZ+OAGaUY5AKp+Cd4JRL4QSJ+gDUmKqx7JI2GJbQSVTm2akRP1FwGntgT856
 Sb64IXCynv+LbprhkJEqL45Boe9u169TiJ4TnCsuWJNzjSLO7O6iq8+CUW0cdzLuhD1H
 Z2Lg==
X-Gm-Message-State: ANhLgQ1eRyyebZETIAAhPD/ixKs6A3dgx2SGv+O1yHT6c+nWTSj1yo3W
 oZpffm9kfPTi1JdctYUddMThz6to
X-Google-Smtp-Source: ADFU+vtd9iRA4pLufMygTaM0t0Djb8cfEDWwQlKQimQ500v9/PlEeT1RkMM6tFnrlnR03B8OSGUkaQ==
X-Received: by 2002:a7b:ce81:: with SMTP id q1mr4561902wmj.156.1585673437680; 
 Tue, 31 Mar 2020 09:50:37 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r14sm2711582wmg.0.2020.03.31.09.50.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:50:36 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 11/26] nvmet-fc: perform small cleanups on unneeded checks
Date: Tue, 31 Mar 2020 09:49:56 -0700
Message-Id: <20200331165011.15819-12-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_095039_423692_DABEAED6 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Smart <jsmart2021@gmail.com>
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
v2:
  Remove unused writedataactive local variable
---
 drivers/nvme/target/fc.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index a91c443c9098..01488fc35d46 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -677,7 +677,7 @@ nvmet_fc_delete_target_queue(struct nvmet_fc_tgt_queue *queue)
 	struct nvmet_fc_fcp_iod *fod = queue->fod;
 	struct nvmet_fc_defer_fcp_req *deferfcp, *tempptr;
 	unsigned long flags;
-	int i, writedataactive;
+	int i;
 	bool disconnect;
 
 	disconnect = atomic_xchg(&queue->connected, 0);
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
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
