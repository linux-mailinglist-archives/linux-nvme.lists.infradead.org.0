Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E5153862
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jNJJpBlwhuucuupaOjyqMBkAupJzbmUFlzOuuAIXrQc=; b=chlQUBWUBEl/LPZR7dsu4Rgimt
	5MVcEn0aulU+Tdkw3lABSoSGo0axd5m/Z3rOKrBDcqNpNA7gLq+Y19RR3ZaLytMwxua4Tf49yGi94
	hC59aIBOFieNpI3HI4CT8+GJdjtzTTW/IBCjtTj10f51mAKaLJ0m/RE93LFEeo9GyxsRqqh3uhTs3
	PdmHEpzHo93GoR7bq59xoWRQ+isqjZi62x6wlqWjJQTLuG2crDoU87Fic7Tr1v6k2EvrNqIxFVt0a
	AxWrLWf9Ony1gNDViOWfRfMF9RPXNMH8HcQqnxr3jX4RRUb2TXAjiQZdzbsGB0Hxac+z2JYjAZpGk
	P5R7AKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPdy-000095-UL; Wed, 05 Feb 2020 18:43:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPZH-0003ox-Ql
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so4057066wmi.5
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rv5dorhhtIzmvEzNRUkNggO6pT8guhYccIm5TgKZMio=;
 b=rU361CEOZ3BDppkQxlUdSHh+mfzlR2aQOoOZkT67SRbvcRTqcW/eC+++0Iy0pNnvza
 4YtvCsTOzlxSh5yGwJaHERQy5LfhTs2MamyMy3qaHZc3C2h9RtQ5yRAMsVbPpY6WQc5q
 NH39BD4xhKew8Nb/pKWhoiE7+nlSIjOhYkyUwkBdyCHIputNRIQq2jCFQD7l9BiSeQE3
 KfZUmFe++d/eWTsg5MCO1n9tWmNmbYxt6ZHbsGGkEwGc65T8kRuWsyZHBskeqR0F/Vf3
 BzeIGa4OGdwK7KkYYySbIPN+XPzPaNwc/OOTxMcCNwm8h8G2zhIkYOcRfRpoytGmsBv6
 MSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rv5dorhhtIzmvEzNRUkNggO6pT8guhYccIm5TgKZMio=;
 b=MB7JhgecqO5c4fUEdvyX4ie5P4B67QQ2dXp0u9Dt1jVHqxa6KQ9nWkpDkH5jNbQx82
 6v04oWR/aC7PaHlTvKNMJXRImm/KfGWZ6QFubsCUJqkyFeeCeWwHPrYZlg7QMtzAPatf
 1W8R1TzKbIwFJPf/jf2ubbOCcZKlDwI3U3vDoC2WkgukFjjqfWtDrmidd60EGMagBaen
 IEhlZmQV44b0m9lINxehF0KpGraVW46uRuZ2htS7dHOYHa0s9VGaKJIGW2yTBwV7IJwe
 s8uU8GP6R8pXq3KnF9wCl+ufvcrpXwzoECKFlW6MS/ymlj0csNLHFsgrPYOrMs75Kpw0
 JyHg==
X-Gm-Message-State: APjAAAVAoFyuSxtbi1+4yIwzfmDPTlni6gtE0pcDjxnJd9734HyOfAl2
 Mh5UiEg6/9h5jqZg+QV9KHCkiO+D
X-Google-Smtp-Source: APXvYqwnqnDhJYODn58+U3XfWwWeZv7fq8eRRQGx+STlrvPqNPOTXrbUNXRwOwIz9+/KgKOnnU/zhw==
X-Received: by 2002:a1c:988e:: with SMTP id a136mr7405215wme.181.1580927909933; 
 Wed, 05 Feb 2020 10:38:29 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:29 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 18/29] nvme-fcloop: refactor to enable target to host LS
Date: Wed,  5 Feb 2020 10:37:42 -0800
Message-Id: <20200205183753.25959-19-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103832_513599_714FB861 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Currently nvmefc-loop only sends LS's from host to target.
Slightly rework data structures and routine names to reflect this
path. Allows a straight-forward conversion to be used by ls's
from target to host.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fcloop.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 6533f4196005..5293069e2769 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -226,7 +226,13 @@ struct fcloop_nport {
 	u32 port_id;
 };
 
+enum {
+	H2T	= 0,
+	T2H	= 1,
+};
+
 struct fcloop_lsreq {
+	int				lsdir;	/* H2T or T2H */
 	struct nvmefc_ls_req		*lsreq;
 	struct nvmefc_ls_rsp		ls_rsp;
 	int				status;
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
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
