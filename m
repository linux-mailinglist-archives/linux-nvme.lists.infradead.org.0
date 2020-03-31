Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483AF199C3A
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+5Ijk64tY0Pb8hMCHySw9xipeIMczUS7QYL6lnhZzSk=; b=HTag6ngkw4bx/AamRP0iqX4Fxz
	AVfQ+7aQ8n4r/hY46Yz3iLjczRMCZs1RGFWB5ObbBDxNdK4xPcZEi1yX0sla44bpnAwijEDrSV+M8
	mmWUznmRlHi30edLkd00ds/bKr+MdcOY5xyxIKYEGnawnByQSUlNOJX5ugmDD/9dbVG4LnHkvX7NF
	axKWca1JfIyx8OmpC4lPPbojQV9fkwMe/SfmIh6veiF/PiO98nA7WHJxzGlUimT2C5lG91WveTHY1
	jyqolEVbADdAN0vPdSHLqxpxj1+BlXc8ZV7I9rjlvWCmGe3WmRE3iTMKPYTlZ0sJ9Vn6InkWhhe7v
	gv7SnRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKAE-0007Ib-TA; Tue, 31 Mar 2020 16:54:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK6B-0004ps-BJ
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:51:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id 65so26939818wrl.1
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qdt4v+RDssF6y/KaFGASkhrMEhaIfL3d81g1ZJOlMoU=;
 b=HhaT3E8HDMJvzJCbkyPb3/12oFzS1tmU0Yoixn4qU0kCUOyZFZeofBuZb6yJbDivJV
 ak2F9NzhDwGJPdlc8O7s4H6WO5nQ1Kp9z6fCO4hgr2zkpGlEMJx5/x0r3F7RODBMJuPc
 oY8yhuCJm4dmcGuo6jYS9vdPFUatiRdJPS6dD43rXvzVyPsSseyIJJOVNkLh/ykbjscw
 M6ywZcXz+EMziVJt8OtScx1wRn66iRJEgsmK/mLzOKizTnIQipb/1IEUFp1MQQAQTglI
 lsPTpUgqOBIphRi5k8G+FnCJdPSYzy/SkoEIBNf7fGl3Vx8adiaFaRjyN4hk9HCqA8O9
 isVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qdt4v+RDssF6y/KaFGASkhrMEhaIfL3d81g1ZJOlMoU=;
 b=CqUKIGDRUEfMX96i28ybLCKHlgh8N7YHu/p2l4QVnDyrmTYvlgJDJcgUcAAqgpMYTy
 1AwWQIKuccxfLrihTFe8W6RCO14dI9vlvVnAC/iwrDHqJpxYV7tdpxOXZHAKADjRXvaj
 dSCBa4REHPNzBGxs2k4Wbg16Ogie9VJyt/6SQEt00WSbIEk6F4ZRhWj+SsmJfkHvE1q3
 zzLcInz9sUoHflQQ5CivfXwo+cy43mAsa3Q+x5NEijn/NhDGRg0QppAkSbc0uw1451O/
 18tHMoeJzdF1gHKdJn2+nz6w7wDywb3wsRmS6CcmXCqiXSlRsarxAqyEgaOoLZzvdMX9
 3Lfg==
X-Gm-Message-State: ANhLgQ3v8fEoNuRS+DcaN+/GYvBztBO8q+BqPxyzQE3fBQUhpvVv90Nm
 eEzFP6cvx4p8V3/J655mBwfMWdPZ
X-Google-Smtp-Source: ADFU+vshVr4MsIMAvS6CtZk42hxXqn93nZNf9B6NGyQSI2bwyubQ9DUW2a7u80nqr02MZhQZD3WLJg==
X-Received: by 2002:adf:ab5d:: with SMTP id r29mr23286066wrc.158.1585673445786; 
 Tue, 31 Mar 2020 09:50:45 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r14sm2711582wmg.0.2020.03.31.09.50.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:50:45 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 16/26] nvme-fcloop: add target to host LS request support
Date: Tue, 31 Mar 2020 09:50:01 -0700
Message-Id: <20200331165011.15819-17-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_095047_454047_E2599B2C 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Add support for performing LS requests from target to host.
Include sending request from targetport, reception into host,
host sending ls rsp.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/nvme/target/fcloop.c | 130 +++++++++++++++++++++++++++++++++++++++----
 1 file changed, 118 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 9a3ce0cc31db..809f11c5d560 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -208,10 +208,13 @@ struct fcloop_rport {
 };
 
 struct fcloop_tport {
-	struct nvmet_fc_target_port *targetport;
-	struct nvme_fc_remote_port *remoteport;
-	struct fcloop_nport *nport;
-	struct fcloop_lport *lport;
+	struct nvmet_fc_target_port	*targetport;
+	struct nvme_fc_remote_port	*remoteport;
+	struct fcloop_nport		*nport;
+	struct fcloop_lport		*lport;
+	spinlock_t			lock;
+	struct list_head		ls_list;
+	struct work_struct		ls_work;
 };
 
 struct fcloop_nport {
@@ -226,11 +229,6 @@ struct fcloop_nport {
 	u32 port_id;
 };
 
-enum {
-	H2T	= 0,
-	T2H	= 1,
-};
-
 struct fcloop_lsreq {
 	struct nvmefc_ls_req		*lsreq;
 	struct nvmefc_ls_rsp		ls_rsp;
@@ -337,7 +335,6 @@ fcloop_h2t_ls_req(struct nvme_fc_local_port *localport,
 	struct fcloop_rport *rport = remoteport->private;
 	int ret = 0;
 
-	tls_req->lsdir = H2T;
 	tls_req->lsreq = lsreq;
 	INIT_LIST_HEAD(&tls_req->ls_list);
 
@@ -351,8 +348,9 @@ fcloop_h2t_ls_req(struct nvme_fc_local_port *localport,
 	}
 
 	tls_req->status = 0;
-	ret = nvmet_fc_rcv_ls_req(rport->targetport, NULL, &tls_req->ls_rsp,
-				 lsreq->rqstaddr, lsreq->rqstlen);
+	ret = nvmet_fc_rcv_ls_req(rport->targetport, rport,
+				  &tls_req->ls_rsp,
+				  lsreq->rqstaddr, lsreq->rqstlen);
 
 	return ret;
 }
@@ -384,6 +382,99 @@ fcloop_h2t_xmt_ls_rsp(struct nvmet_fc_target_port *targetport,
 	return 0;
 }
 
+static void
+fcloop_tport_lsrqst_work(struct work_struct *work)
+{
+	struct fcloop_tport *tport =
+		container_of(work, struct fcloop_tport, ls_work);
+	struct fcloop_lsreq *tls_req;
+
+	spin_lock(&tport->lock);
+	for (;;) {
+		tls_req = list_first_entry_or_null(&tport->ls_list,
+				struct fcloop_lsreq, ls_list);
+		if (!tls_req)
+			break;
+
+		list_del(&tls_req->ls_list);
+		spin_unlock(&tport->lock);
+
+		tls_req->lsreq->done(tls_req->lsreq, tls_req->status);
+		/*
+		 * callee may free memory containing tls_req.
+		 * do not reference lsreq after this.
+		 */
+
+		spin_lock(&tport->lock);
+	}
+	spin_unlock(&tport->lock);
+}
+
+static int
+fcloop_t2h_ls_req(struct nvmet_fc_target_port *targetport, void *hosthandle,
+			struct nvmefc_ls_req *lsreq)
+{
+	struct fcloop_lsreq *tls_req = lsreq->private;
+	struct fcloop_tport *tport = targetport->private;
+	int ret = 0;
+
+	/*
+	 * hosthandle should be the dst.rport value.
+	 * hosthandle ignored as fcloop currently is
+	 * 1:1 tgtport vs remoteport
+	 */
+	tls_req->lsreq = lsreq;
+	INIT_LIST_HEAD(&tls_req->ls_list);
+
+	if (!tport->remoteport) {
+		tls_req->status = -ECONNREFUSED;
+		spin_lock(&tport->lock);
+		list_add_tail(&tport->ls_list, &tls_req->ls_list);
+		spin_unlock(&tport->lock);
+		schedule_work(&tport->ls_work);
+		return ret;
+	}
+
+	tls_req->status = 0;
+	ret = nvme_fc_rcv_ls_req(tport->remoteport, &tls_req->ls_rsp,
+				 lsreq->rqstaddr, lsreq->rqstlen);
+
+	return ret;
+}
+
+static int
+fcloop_t2h_xmt_ls_rsp(struct nvme_fc_local_port *localport,
+			struct nvme_fc_remote_port *remoteport,
+			struct nvmefc_ls_rsp *lsrsp)
+{
+	struct fcloop_lsreq *tls_req = ls_rsp_to_lsreq(lsrsp);
+	struct nvmefc_ls_req *lsreq = tls_req->lsreq;
+	struct fcloop_rport *rport = remoteport->private;
+	struct nvmet_fc_target_port *targetport = rport->targetport;
+	struct fcloop_tport *tport;
+
+	memcpy(lsreq->rspaddr, lsrsp->rspbuf,
+		((lsreq->rsplen < lsrsp->rsplen) ?
+				lsreq->rsplen : lsrsp->rsplen));
+	lsrsp->done(lsrsp);
+
+	if (targetport) {
+		tport = targetport->private;
+		spin_lock(&tport->lock);
+		list_add_tail(&tport->ls_list, &tls_req->ls_list);
+		spin_unlock(&tport->lock);
+		schedule_work(&tport->ls_work);
+	}
+
+	return 0;
+}
+
+static void
+fcloop_t2h_host_release(void *hosthandle)
+{
+	/* host handle ignored for now */
+}
+
 /*
  * Simulate reception of RSCN and converting it to a initiator transport
  * call to rescan a remote port.
@@ -775,6 +866,12 @@ fcloop_h2t_ls_abort(struct nvme_fc_local_port *localport,
 {
 }
 
+static void
+fcloop_t2h_ls_abort(struct nvmet_fc_target_port *targetport,
+			void *hosthandle, struct nvmefc_ls_req *lsreq)
+{
+}
+
 static void
 fcloop_fcp_abort(struct nvme_fc_local_port *localport,
 			struct nvme_fc_remote_port *remoteport,
@@ -874,6 +971,7 @@ fcloop_targetport_delete(struct nvmet_fc_target_port *targetport)
 {
 	struct fcloop_tport *tport = targetport->private;
 
+	flush_work(&tport->ls_work);
 	fcloop_nport_put(tport->nport);
 }
 
@@ -891,6 +989,7 @@ static struct nvme_fc_port_template fctemplate = {
 	.fcp_io			= fcloop_fcp_req,
 	.ls_abort		= fcloop_h2t_ls_abort,
 	.fcp_abort		= fcloop_fcp_abort,
+	.xmt_ls_rsp		= fcloop_t2h_xmt_ls_rsp,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
 	.max_dif_sgl_segments	= FCLOOP_SGL_SEGS,
@@ -909,6 +1008,9 @@ static struct nvmet_fc_target_template tgttemplate = {
 	.fcp_abort		= fcloop_tgt_fcp_abort,
 	.fcp_req_release	= fcloop_fcp_req_release,
 	.discovery_event	= fcloop_tgt_discovery_evt,
+	.ls_req			= fcloop_t2h_ls_req,
+	.ls_abort		= fcloop_t2h_ls_abort,
+	.host_release		= fcloop_t2h_host_release,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
 	.max_dif_sgl_segments	= FCLOOP_SGL_SEGS,
@@ -917,6 +1019,7 @@ static struct nvmet_fc_target_template tgttemplate = {
 	.target_features	= 0,
 	/* sizes of additional private data for data structures */
 	.target_priv_sz		= sizeof(struct fcloop_tport),
+	.lsrqst_priv_sz		= sizeof(struct fcloop_lsreq),
 };
 
 static ssize_t
@@ -1266,6 +1369,9 @@ fcloop_create_target_port(struct device *dev, struct device_attribute *attr,
 	tport->nport = nport;
 	tport->lport = nport->lport;
 	nport->tport = tport;
+	spin_lock_init(&tport->lock);
+	INIT_WORK(&tport->ls_work, fcloop_tport_lsrqst_work);
+	INIT_LIST_HEAD(&tport->ls_list);
 
 	return count;
 }
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
