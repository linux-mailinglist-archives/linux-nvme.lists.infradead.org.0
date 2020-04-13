Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9471A67B5
	for <lists+linux-nvme@lfdr.de>; Mon, 13 Apr 2020 16:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/AcqS9XGE9wTwIFms/OljRVp2D6tVjgBc0/Zt32S10=; b=cuvWf9hbmYpIBx
	p9+8bAWaor3sAFhaGottZOzE/c1KCsZ0tgh8a4uj3dqePvFAmEoFt3fPhqvpS/NhBHDOpVz1kLfSQ
	dOK5MXOj+4ftIBiuEWxKsk+Jfg1Vn9x4Xpi0ZCDuwm8Dj21u02DTA3sq7ahVq/avMeyKR5m1QCzxH
	TcFd3OnnVVqMbDvX8EKjbiykD3j96oUQLS+65z0hkV82+WGq3Tz9t9tVr75sng9ig4tEor/Tgu5iQ
	VCbt5fKfWgFoCfGePqPNGiqsnOBoilf76cnhJSmRSvLy5Mqxt+j3AfmSkvCjDupbqkZmG5rws2s0v
	soDr8zdeTEJla2ys0IEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzsj-0006YB-5y; Mon, 13 Apr 2020 14:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzsb-0006XA-16
 for linux-nvme@lists.infradead.org; Mon, 13 Apr 2020 14:16:06 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2FAB20775;
 Mon, 13 Apr 2020 14:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586787364;
 bh=KbDKNk7jlIOD+Nk6QwOVlWa2NBSPay8x8Tbh6q4I/E8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WvERr7UoS9p4cpxG7/mPOEtFKqDf9cj6xBtKAgkkDs995qqr6OGUkYkZEsHOX8K7C
 lShZybJIgw7NY+zkeM7H7v1fYn5Y/dyh2ZTSzbsH+Eaq9O3a4LSloowJoaa3V/dEIw
 3IRtGUIta2n3kJR25fRyygUObzUF7m3n/O0udc8Q=
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@mellanox.com>
Subject: [PATCH rdma-next v2 7/7] RDMA/cma: Provide ECE reject reason
Date: Mon, 13 Apr 2020 17:15:38 +0300
Message-Id: <20200413141538.935574-8-leon@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200413141538.935574-1-leon@kernel.org>
References: <20200413141538.935574-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_071605_112705_7313D872 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: rds-devel@oss.oracle.com, Bart Van Assche <bvanassche@acm.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Leon Romanovsky <leonro@mellanox.com>, target-devel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

IBTA declares "vendor option not supported" reject reason in REJ
messages if passive side doesn't want to accept proposed ECE options.

Due to the fact that ECE is managed by userspace, there is a need to let
users to provide such rejected reason.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/infiniband/core/cma.c           | 12 +++++++-----
 drivers/infiniband/core/ucma.c          |  7 ++++++-
 drivers/infiniband/ulp/isert/ib_isert.c |  4 ++--
 drivers/infiniband/ulp/srpt/ib_srpt.c   |  2 +-
 drivers/nvme/target/rdma.c              |  2 +-
 include/rdma/ib_cm.h                    |  3 ++-
 include/rdma/rdma_cm.h                  |  3 ++-
 include/uapi/rdma/rdma_user_cm.h        |  7 ++++++-
 net/rds/ib_cm.c                         |  2 +-
 9 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/infiniband/core/cma.c b/drivers/infiniband/core/cma.c
index 409f752f40ae..b79f71b10593 100644
--- a/drivers/infiniband/core/cma.c
+++ b/drivers/infiniband/core/cma.c
@@ -4183,7 +4183,7 @@ int __rdma_accept(struct rdma_cm_id *id, struct rdma_conn_param *conn_param,
 	return 0;
 reject:
 	cma_modify_qp_err(id_priv);
-	rdma_reject(id, NULL, 0);
+	rdma_reject(id, NULL, 0, 0);
 	return ret;
 }
 EXPORT_SYMBOL(__rdma_accept);
@@ -4223,7 +4223,7 @@ int rdma_notify(struct rdma_cm_id *id, enum ib_event_type event)
 EXPORT_SYMBOL(rdma_notify);
 
 int rdma_reject(struct rdma_cm_id *id, const void *private_data,
-		u8 private_data_len)
+		u8 private_data_len, enum rdma_ucm_reject_reason reason)
 {
 	struct rdma_id_private *id_priv;
 	int ret;
@@ -4237,10 +4237,12 @@ int rdma_reject(struct rdma_cm_id *id, const void *private_data,
 			ret = cma_send_sidr_rep(id_priv, IB_SIDR_REJECT, 0,
 						private_data, private_data_len);
 		} else {
+			enum ib_cm_rej_reason r =
+				(reason) ?: IB_CM_REJ_CONSUMER_DEFINED;
+
 			trace_cm_send_rej(id_priv);
-			ret = ib_send_cm_rej(id_priv->cm_id.ib,
-					     IB_CM_REJ_CONSUMER_DEFINED, NULL,
-					     0, private_data, private_data_len);
+			ret = ib_send_cm_rej(id_priv->cm_id.ib, r, NULL, 0,
+					     private_data, private_data_len);
 		}
 	} else if (rdma_cap_iw_cm(id->device, id->port_num)) {
 		ret = iw_cm_reject(id_priv->cm_id.iw,
diff --git a/drivers/infiniband/core/ucma.c b/drivers/infiniband/core/ucma.c
index d41598954cc4..99482dc5934b 100644
--- a/drivers/infiniband/core/ucma.c
+++ b/drivers/infiniband/core/ucma.c
@@ -1178,12 +1178,17 @@ static ssize_t ucma_reject(struct ucma_file *file, const char __user *inbuf,
 	if (copy_from_user(&cmd, inbuf, sizeof(cmd)))
 		return -EFAULT;
 
+	if (cmd.reason &&
+	    cmd.reason != RDMA_USER_CM_REJ_VENDOR_OPTION_NOT_SUPPORTED)
+		return -EINVAL;
+
 	ctx = ucma_get_ctx_dev(file, cmd.id);
 	if (IS_ERR(ctx))
 		return PTR_ERR(ctx);
 
 	mutex_lock(&ctx->mutex);
-	ret = rdma_reject(ctx->cm_id, cmd.private_data, cmd.private_data_len);
+	ret = rdma_reject(ctx->cm_id, cmd.private_data, cmd.private_data_len,
+			  cmd.reason);
 	mutex_unlock(&ctx->mutex);
 	ucma_put_ctx(ctx);
 	return ret;
diff --git a/drivers/infiniband/ulp/isert/ib_isert.c b/drivers/infiniband/ulp/isert/ib_isert.c
index a1a035270cab..42f78d0b61cc 100644
--- a/drivers/infiniband/ulp/isert/ib_isert.c
+++ b/drivers/infiniband/ulp/isert/ib_isert.c
@@ -502,7 +502,7 @@ isert_connect_request(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
 	if (!np->enabled) {
 		spin_unlock_bh(&np->np_thread_lock);
 		isert_dbg("iscsi_np is not enabled, reject connect request\n");
-		return rdma_reject(cma_id, NULL, 0);
+		return rdma_reject(cma_id, NULL, 0, 0);
 	}
 	spin_unlock_bh(&np->np_thread_lock);
 
@@ -553,7 +553,7 @@ isert_connect_request(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
 	isert_free_login_buf(isert_conn);
 out:
 	kfree(isert_conn);
-	rdma_reject(cma_id, NULL, 0);
+	rdma_reject(cma_id, NULL, 0, 0);
 	return ret;
 }
 
diff --git a/drivers/infiniband/ulp/srpt/ib_srpt.c b/drivers/infiniband/ulp/srpt/ib_srpt.c
index 7047f6a5d0a3..44eefa83bfc6 100644
--- a/drivers/infiniband/ulp/srpt/ib_srpt.c
+++ b/drivers/infiniband/ulp/srpt/ib_srpt.c
@@ -2496,7 +2496,7 @@ static int srpt_cm_req_recv(struct srpt_device *const sdev,
 				   SRP_BUF_FORMAT_INDIRECT);
 
 	if (rdma_cm_id)
-		rdma_reject(rdma_cm_id, rej, sizeof(*rej));
+		rdma_reject(rdma_cm_id, rej, sizeof(*rej), 0);
 	else
 		ib_send_cm_rej(ib_cm_id, IB_CM_REJ_CONSUMER_DEFINED, NULL, 0,
 			       rej, sizeof(*rej));
diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index fd47de0e4e4e..9f3fea89b254 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -1138,7 +1138,7 @@ static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
 	rej.recfmt = cpu_to_le16(NVME_RDMA_CM_FMT_1_0);
 	rej.sts = cpu_to_le16(status);
 
-	return rdma_reject(cm_id, (void *)&rej, sizeof(rej));
+	return rdma_reject(cm_id, (void *)&rej, sizeof(rej), 0);
 }
 
 static struct nvmet_rdma_queue *
diff --git a/include/rdma/ib_cm.h b/include/rdma/ib_cm.h
index 0f1ea5f2d01c..ed328a99ed0a 100644
--- a/include/rdma/ib_cm.h
+++ b/include/rdma/ib_cm.h
@@ -168,7 +168,8 @@ enum ib_cm_rej_reason {
 	IB_CM_REJ_INVALID_CLASS_VERSION		= 31,
 	IB_CM_REJ_INVALID_FLOW_LABEL		= 32,
 	IB_CM_REJ_INVALID_ALT_FLOW_LABEL	= 33,
-	IB_CM_REJ_VENDOR_OPTION_NOT_SUPPORTED	= 35,
+	IB_CM_REJ_VENDOR_OPTION_NOT_SUPPORTED	=
+		RDMA_USER_CM_REJ_VENDOR_OPTION_NOT_SUPPORTED,
 };
 
 struct ib_cm_rej_event_param {
diff --git a/include/rdma/rdma_cm.h b/include/rdma/rdma_cm.h
index 8d961d8b7cdb..f8781b132f62 100644
--- a/include/rdma/rdma_cm.h
+++ b/include/rdma/rdma_cm.h
@@ -324,11 +324,12 @@ int __rdma_accept_ece(struct rdma_cm_id *id, struct rdma_conn_param *conn_param,
  */
 int rdma_notify(struct rdma_cm_id *id, enum ib_event_type event);
 
+
 /**
  * rdma_reject - Called to reject a connection request or response.
  */
 int rdma_reject(struct rdma_cm_id *id, const void *private_data,
-		u8 private_data_len);
+		u8 private_data_len, enum rdma_ucm_reject_reason reason);
 
 /**
  * rdma_disconnect - This function disconnects the associated QP and
diff --git a/include/uapi/rdma/rdma_user_cm.h b/include/uapi/rdma/rdma_user_cm.h
index c4ca1412bcf9..e545f2de1e13 100644
--- a/include/uapi/rdma/rdma_user_cm.h
+++ b/include/uapi/rdma/rdma_user_cm.h
@@ -78,6 +78,10 @@ enum rdma_ucm_port_space {
 	RDMA_PS_UDP   = 0x0111,
 };
 
+enum rdma_ucm_reject_reason {
+	RDMA_USER_CM_REJ_VENDOR_OPTION_NOT_SUPPORTED = 35
+};
+
 /*
  * command ABI structures.
  */
@@ -234,7 +238,8 @@ struct rdma_ucm_accept {
 struct rdma_ucm_reject {
 	__u32 id;
 	__u8  private_data_len;
-	__u8  reserved[3];
+	__u8  reason; /* enum rdma_ucm_reject_reason */
+	__u8  reserved[2];
 	__u8  private_data[RDMA_MAX_PRIVATE_DATA];
 };
 
diff --git a/net/rds/ib_cm.c b/net/rds/ib_cm.c
index c71f4328d138..bac8c68df66c 100644
--- a/net/rds/ib_cm.c
+++ b/net/rds/ib_cm.c
@@ -927,7 +927,7 @@ int rds_ib_cm_handle_connect(struct rdma_cm_id *cm_id,
 	if (conn)
 		mutex_unlock(&conn->c_cm_lock);
 	if (err)
-		rdma_reject(cm_id, &err, sizeof(int));
+		rdma_reject(cm_id, &err, sizeof(int), 0);
 	return destroy;
 }
 
-- 
2.25.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
