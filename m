Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18084DAEC
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 22:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AYmJkQgLqeacRJGeeGY6+ro5PkbQ5qiKKAsBJBPJ4UY=; b=t7V
	FaxjX5Soa4N7l8D05v/br7fiPcGUfiC2S8i/GVeiowCbMClCGImnVyLBAKKM5sWh1mCWECE81fyx8
	0lw2NO/Zd6hOJbuCf5/N3VM182/ouv1DmCc2zqpdWFsILl6t1vsHsdpkR0sDTtbkzXlWSxZohNuV7
	2w9XB2iLhsabmu1DG1rOQrB+ST95P5ZQHDxkceHt/D8iKNuZgX9DH+0VhaBYYCN0KERlePqbbMrzz
	EVdzIPY3N/5D7OFG1+XatF9eNOlKrWxF2UIWhG/sdoH0O//Iey96pZ7Jt+LRa4Ogt/4GXpVRPAlUP
	dn7TJvUJ69FFbnn9K/DcPzEsFTrHXIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3L6-0003Mj-T4; Thu, 20 Jun 2019 20:07:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3Kz-0003LZ-Hn
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 20:07:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so2277388pfl.3
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 13:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xYkQPKUt4X+ezKge+WaEkUumHmR4z2T6j+Vpca2ujVo=;
 b=BZeKuRy4CEhtMgs5U2NZJSwHN3KBC1S8XREbqR/hFvsUe2F3ph61bxTtoziO7lMIBk
 kyfO0mfIteiDVurDuNrLBeDZvre0YuRDi0EYfxfT6IViyXHFaUPvl6ZkkcwVkJjsLxrZ
 3RpYoejg66jS1Mo9oeG8FNH9ebPIi0/mKc9GEdP3RYjirnd/FTuA/MByjjXWF0qS7S34
 jeo5qv6QySLAOOz1+F6EsnnzXPoXdJPqbvNAzrDfrb3EB26wZkwIcT7nVrSqMxyJfNTm
 d52bGKzL0em+YZNlXAlluS7OB+0K0+JBkCSmMpNjSCTn7SBfQmdOJ5y4K88qBTyCDr/6
 a8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xYkQPKUt4X+ezKge+WaEkUumHmR4z2T6j+Vpca2ujVo=;
 b=LeitrjcYXEj/P9beSQ19RvY+NGLS25SJ0I60NRtOpSN4TYnuPOB12++/dDn5pU1r6P
 TAht/kiWwx9hMrQpsYv0YDj5KNH09IjFDZb5Q5oPEOKtCgexLj+aY+lHyzsuSeM0hYVH
 MFkwFDsiXGPSB2ROYIKKgyV5UoP0KTRGduKNgmjptYs1SXWOeGmHq0ZJfkoutmWBSR3U
 6sE+jvwtKrHgCaVuCV1M1mfAwyowUcysik+PF5f5EwQx+t0nYm5j1usjL6HmEzNeZINH
 WCb0/yMkY/WEzkU2ku5ZQiUGkhgOXQYlK/WO2HaAZwKkkJ7BjCiSQRrWJstrRN/0tInA
 df9g==
X-Gm-Message-State: APjAAAV+OuOFm4AQqyd4qgKdp4ErRjnVRceVm8VeNOynQm/PszkGrLn5
 psHK016rmFlWKpkegTWMuSwbCDo6
X-Google-Smtp-Source: APXvYqzZadYpKxCcX3K+zS2R/Byy/iayFpOn1HM2rsq9aV84lDQCneIeyDUqqVCJmROYS/PApy/5mQ==
X-Received: by 2002:a17:90a:36a9:: with SMTP id
 t38mr1449998pjb.19.1561061232136; 
 Thu, 20 Jun 2019 13:07:12 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n98sm513358pjc.26.2019.06.20.13.07.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 13:07:11 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fcloop: Fix inconsistent lock state warnings
Date: Thu, 20 Jun 2019 13:07:00 -0700
Message-Id: <20190620200700.15659-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_130713_624893_7906D4D9 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

With extra debug on, inconsistent lock state warnings are being
called out as the tfcp_req->reqlock is being taken out without
irq, while some calling sequences have the sequence in a softirq
state.

Change the lock taking/release to raise/drop irq.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fcloop.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index b8c1cc54a0db..e64969d2a7c5 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -434,7 +434,7 @@ fcloop_fcp_recv_work(struct work_struct *work)
 	int ret = 0;
 	bool aborted = false;
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	switch (tfcp_req->inistate) {
 	case INI_IO_START:
 		tfcp_req->inistate = INI_IO_ACTIVE;
@@ -443,11 +443,11 @@ fcloop_fcp_recv_work(struct work_struct *work)
 		aborted = true;
 		break;
 	default:
-		spin_unlock(&tfcp_req->reqlock);
+		spin_unlock_irq(&tfcp_req->reqlock);
 		WARN_ON(1);
 		return;
 	}
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	if (unlikely(aborted))
 		ret = -ECANCELED;
@@ -469,7 +469,7 @@ fcloop_fcp_abort_recv_work(struct work_struct *work)
 	struct nvmefc_fcp_req *fcpreq;
 	bool completed = false;
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	fcpreq = tfcp_req->fcpreq;
 	switch (tfcp_req->inistate) {
 	case INI_IO_ABORTED:
@@ -478,11 +478,11 @@ fcloop_fcp_abort_recv_work(struct work_struct *work)
 		completed = true;
 		break;
 	default:
-		spin_unlock(&tfcp_req->reqlock);
+		spin_unlock_irq(&tfcp_req->reqlock);
 		WARN_ON(1);
 		return;
 	}
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	if (unlikely(completed)) {
 		/* remove reference taken in original abort downcall */
@@ -494,9 +494,9 @@ fcloop_fcp_abort_recv_work(struct work_struct *work)
 		nvmet_fc_rcv_fcp_abort(tfcp_req->tport->targetport,
 					&tfcp_req->tgt_fcp_req);
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	tfcp_req->fcpreq = NULL;
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	fcloop_call_host_done(fcpreq, tfcp_req, -ECANCELED);
 	/* call_host_done releases reference for abort downcall */
@@ -513,10 +513,10 @@ fcloop_tgt_fcprqst_done_work(struct work_struct *work)
 		container_of(work, struct fcloop_fcpreq, tio_done_work);
 	struct nvmefc_fcp_req *fcpreq;
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	fcpreq = tfcp_req->fcpreq;
 	tfcp_req->inistate = INI_IO_COMPLETED;
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	fcloop_call_host_done(fcpreq, tfcp_req, tfcp_req->status);
 }
@@ -621,12 +621,12 @@ fcloop_fcp_op(struct nvmet_fc_target_port *tgtport,
 	int fcp_err = 0, active, aborted;
 	u8 op = tgt_fcpreq->op;
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	fcpreq = tfcp_req->fcpreq;
 	active = tfcp_req->active;
 	aborted = tfcp_req->aborted;
 	tfcp_req->active = true;
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	if (unlikely(active))
 		/* illegal - call while i/o active */
@@ -634,9 +634,9 @@ fcloop_fcp_op(struct nvmet_fc_target_port *tgtport,
 
 	if (unlikely(aborted)) {
 		/* target transport has aborted i/o prior */
-		spin_lock(&tfcp_req->reqlock);
+		spin_lock_irq(&tfcp_req->reqlock);
 		tfcp_req->active = false;
-		spin_unlock(&tfcp_req->reqlock);
+		spin_unlock_irq(&tfcp_req->reqlock);
 		tgt_fcpreq->transferred_length = 0;
 		tgt_fcpreq->fcp_error = -ECANCELED;
 		tgt_fcpreq->done(tgt_fcpreq);
@@ -693,9 +693,9 @@ fcloop_fcp_op(struct nvmet_fc_target_port *tgtport,
 		break;
 	}
 
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	tfcp_req->active = false;
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	tgt_fcpreq->transferred_length = xfrlen;
 	tgt_fcpreq->fcp_error = fcp_err;
@@ -715,9 +715,9 @@ fcloop_tgt_fcp_abort(struct nvmet_fc_target_port *tgtport,
 	 * (one doing io, other doing abort) and only kills ops posted
 	 * after the abort request
 	 */
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	tfcp_req->aborted = true;
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	tfcp_req->status = NVME_SC_INTERNAL;
 
@@ -765,7 +765,7 @@ fcloop_fcp_abort(struct nvme_fc_local_port *localport,
 		return;
 
 	/* break initiator/target relationship for io */
-	spin_lock(&tfcp_req->reqlock);
+	spin_lock_irq(&tfcp_req->reqlock);
 	switch (tfcp_req->inistate) {
 	case INI_IO_START:
 	case INI_IO_ACTIVE:
@@ -775,11 +775,11 @@ fcloop_fcp_abort(struct nvme_fc_local_port *localport,
 		abortio = false;
 		break;
 	default:
-		spin_unlock(&tfcp_req->reqlock);
+		spin_unlock_irq(&tfcp_req->reqlock);
 		WARN_ON(1);
 		return;
 	}
-	spin_unlock(&tfcp_req->reqlock);
+	spin_unlock_irq(&tfcp_req->reqlock);
 
 	if (abortio)
 		/* leave the reference while the work item is scheduled */
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
