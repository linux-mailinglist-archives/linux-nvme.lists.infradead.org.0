Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B518199C37
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gHRvu/utAWjz2aOKlYVW6yO28HOx9jWdBjXuMQC9Fe0=; b=gq2cVEuo1KDrp4zOaXIncqRJA7
	vbP3KYSybtQHEBjQJcFzHxBkBtnb+GmQ17SpFxRABKSa6l5Z+bqXPO/T1kJ/BBqXhosBnEY01m6/q
	0qAT7uqs0NkBoJIXQidpHgcmiQ4OfI798Rua47vsqn8hiLR5UgVXbVxGIP+nScjkJaYZnKeZQz2F3
	U0SMF6iQDI4ev3qC2RdSUcxPpuMR5bwfDlrUTz1WD8RLrBm8iznv+GB/DyDEMoVK6uYRkrWxFce4O
	kSPeAZr+MywaDvrrdL0v0PpMdiyThhY6w+dITOZXlbdwtUAsQewYrzSGFcgBeBf/EnvJgFdVJN0Fj
	q66tjL/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJK9z-00078r-Ns; Tue, 31 Mar 2020 16:54:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK69-0004oS-Nr
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:50:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id m17so26861941wrw.11
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XEzjVX6knY45SNQlybQiT9vnoGN3Xsn0cX05O/Tc1HY=;
 b=Ri3JxcELVsEXCyhNZVU55cyBpYuZ4S6TV0Tq1QxzlwgnlaghKcpkPboLeoeJqbtJ72
 xbxCHjzKPrNAZk+UeCPGtS9mMQ7p11vj0IK2ftVkUnioPcuAtgCmKkGHUnsfHcucIDCg
 UPEkd5lk8fycwUZWHcznK7vcWt+qeAvPQzLPqHK1ZH/+9gFKR2XncAIBAxX8XY4YZ/9H
 Z3CUr9Mc3uRqXmbWGIjJ/xhO8LvmuD+fXrZJP4G51iEtVm+ytAcPnYH/4qOktG1W/7xX
 Tq41QGMiBGoLh2N5eiCWXi6yi6/qY6UYloYUYYzJTdTjSLZZ241OnkCoil14xBCwFzFv
 oS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XEzjVX6knY45SNQlybQiT9vnoGN3Xsn0cX05O/Tc1HY=;
 b=OdqaEiRX7dL/aAh1BbO8kUQdZczQKQ/g4Tbe6+2PuWu/UIBCAu11+9IjY3qvAPDeps
 ziRmK02LfOlmfiUKyD51lmYbpX+cRc6Mtr34AJBC7WgGDDd2Jwc+8vGdSMfluvzHZ2bp
 3RAiUd4jrE0jQuDmBj/egM8vf0tz3yRmx5AcfSEb4VKZ2xg7+oeTbfghGbWXyHbb3AYK
 A1Nk7INNAgFLK1lIofu57GVdYa0X85UOy/Owy8npr5+xZqlkuxF0nl1b8cZVkRLEH4x0
 nAWhYAkS8nz01ztXGALSdD8ZluPBZg6p72P+y40gQv2EWD+uv/UlpszNF9X51xMQiIWe
 pehQ==
X-Gm-Message-State: ANhLgQ32HY4op29vGRfQQDA65H0HWOwsKPxoXU6GZec4tmFt77EEBFaB
 4Fi23OyINJ9oAz+DAutsQXSmuz4F
X-Google-Smtp-Source: ADFU+vvTLuAYWOAzb06AeLQYv3qt9jNTYtb40gZfpkVeymTg2ntihPtyad4qvPsFWG+yeokUGw9+bA==
X-Received: by 2002:a5d:414f:: with SMTP id c15mr23475747wrq.60.1585673444208; 
 Tue, 31 Mar 2020 09:50:44 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r14sm2711582wmg.0.2020.03.31.09.50.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:50:43 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 15/26] nvme-fcloop: refactor to enable target to host LS
Date: Tue, 31 Mar 2020 09:50:00 -0700
Message-Id: <20200331165011.15819-16-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_095045_817756_19C3B2C7 
X-CRM114-Status: GOOD (  13.55  )
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

Currently nvmefc-loop only sends LS's from host to target.
Slightly rework data structures and routine names to reflect this
path. Allows a straight-forward conversion to be used by ls's
from target to host.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>

---
v2:
  moved location of new field lsdir for better alignment
---
 drivers/nvme/target/fcloop.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 6533f4196005..9a3ce0cc31db 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -226,9 +226,15 @@ struct fcloop_nport {
 	u32 port_id;
 };
 
+enum {
+	H2T	= 0,
+	T2H	= 1,
+};
+
 struct fcloop_lsreq {
 	struct nvmefc_ls_req		*lsreq;
 	struct nvmefc_ls_rsp		ls_rsp;
+	int				lsdir;	/* H2T or T2H */
 	int				status;
 	struct list_head		ls_list; /* fcloop_rport->ls_list */
 };
@@ -323,7 +329,7 @@ fcloop_rport_lsrqst_work(struct work_struct *work)
 }
 
 static int
-fcloop_ls_req(struct nvme_fc_local_port *localport,
+fcloop_h2t_ls_req(struct nvme_fc_local_port *localport,
 			struct nvme_fc_remote_port *remoteport,
 			struct nvmefc_ls_req *lsreq)
 {
@@ -331,6 +337,7 @@ fcloop_ls_req(struct nvme_fc_local_port *localport,
 	struct fcloop_rport *rport = remoteport->private;
 	int ret = 0;
 
+	tls_req->lsdir = H2T;
 	tls_req->lsreq = lsreq;
 	INIT_LIST_HEAD(&tls_req->ls_list);
 
@@ -351,7 +358,7 @@ fcloop_ls_req(struct nvme_fc_local_port *localport,
 }
 
 static int
-fcloop_xmt_ls_rsp(struct nvmet_fc_target_port *targetport,
+fcloop_h2t_xmt_ls_rsp(struct nvmet_fc_target_port *targetport,
 			struct nvmefc_ls_rsp *lsrsp)
 {
 	struct fcloop_lsreq *tls_req = ls_rsp_to_lsreq(lsrsp);
@@ -762,7 +769,7 @@ fcloop_fcp_req_release(struct nvmet_fc_target_port *tgtport,
 }
 
 static void
-fcloop_ls_abort(struct nvme_fc_local_port *localport,
+fcloop_h2t_ls_abort(struct nvme_fc_local_port *localport,
 			struct nvme_fc_remote_port *remoteport,
 				struct nvmefc_ls_req *lsreq)
 {
@@ -880,9 +887,9 @@ static struct nvme_fc_port_template fctemplate = {
 	.remoteport_delete	= fcloop_remoteport_delete,
 	.create_queue		= fcloop_create_queue,
 	.delete_queue		= fcloop_delete_queue,
-	.ls_req			= fcloop_ls_req,
+	.ls_req			= fcloop_h2t_ls_req,
 	.fcp_io			= fcloop_fcp_req,
-	.ls_abort		= fcloop_ls_abort,
+	.ls_abort		= fcloop_h2t_ls_abort,
 	.fcp_abort		= fcloop_fcp_abort,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
@@ -897,7 +904,7 @@ static struct nvme_fc_port_template fctemplate = {
 
 static struct nvmet_fc_target_template tgttemplate = {
 	.targetport_delete	= fcloop_targetport_delete,
-	.xmt_ls_rsp		= fcloop_xmt_ls_rsp,
+	.xmt_ls_rsp		= fcloop_h2t_xmt_ls_rsp,
 	.fcp_op			= fcloop_fcp_op,
 	.fcp_abort		= fcloop_tgt_fcp_abort,
 	.fcp_req_release	= fcloop_fcp_req_release,
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
