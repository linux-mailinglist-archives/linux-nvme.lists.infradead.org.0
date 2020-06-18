Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9398D1FDEA7
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 03:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaxNeJOZHrvV4YiuaJpeZMpjp4ZmllRzd0CvR0qeh5o=; b=dq9Vqx284e2jN4
	b9i3HaoFEUNEyMw7wQTNz0FJT4NqKVG3PZzciXMjJggevgQaOz7afA+/YPltSSo/OWicajLNlmUzE
	M9YQwSfL7zQ3J5e6y2fSNoFJMU7xiTY9rltEOoB+objIh4CkOJnmf7QSUbgp0vYg9NzQkVSq5jWuq
	rykfb2pxOPJ3vff1jcTi1xH2xa5ZybEjWTGmQKKIZ7wTfjHIZLoLsBWVm+zdL0H3OsyidEbcyGr8o
	6Vy5U+HjY0/0S+cFCQzmXBfYUZEwdMVcpaPZ69nZB2VeePhP+7fRMu+7p0pREtVaeg7/7QP6j07XI
	p888kJATz43JODXZiVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljTW-0007cf-PV; Thu, 18 Jun 2020 01:36:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljA8-0007NJ-UR
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 01:16:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8322721D7E;
 Thu, 18 Jun 2020 01:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442975;
 bh=qgq4d/Tb4LxpgEzazG5SGHErDPeALQop0gAuqh4jUw0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iKeEmc4Qx0EUOed81J6Oj6RSQZgGnntUw326yAT/OKZJN18UVgdJ+g6obV/wKWnyp
 xgsCvszjTsFY+bT9OoyJpiGF45viFPvc9IHefDfs2OtMZcqkC07Uz9r/fm00ca4+AM
 xRwNUDkVoTpdH7vP9yIitCleZLitPXDzBDp3+r18=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 378/388] nvme-fc: don't call nvme_cleanup_cmd()
 for AENs
Date: Wed, 17 Jun 2020 21:07:55 -0400
Message-Id: <20200618010805.600873-378-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181617_351308_03E5C33D 
X-CRM114-Status: GOOD (  12.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Daniel Wagner <dwagner@suse.de>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Himanshu Madhani <hmadhani2024@gmail.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Daniel Wagner <dwagner@suse.de>

[ Upstream commit c9c12e51b82b2bd0c59ac4e27ee5427f382a503f ]

Asynchronous event notifications do not have an associated request.
When fcp_io() fails we unconditionally call nvme_cleanup_cmd() which
leads to a crash.

Fixes: 16686f3a6c3c ("nvme: move common call to nvme_cleanup_cmd to core layer")
Signed-off-by: Daniel Wagner <dwagner@suse.de>
Reviewed-by: Himanshu Madhani <hmadhani2024@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/fc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 7dfc4a2ecf1e..287a3e8ea317 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2300,10 +2300,11 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 		opstate = atomic_xchg(&op->state, FCPOP_STATE_COMPLETE);
 		__nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
 
-		if (!(op->flags & FCOP_FLAGS_AEN))
+		if (!(op->flags & FCOP_FLAGS_AEN)) {
 			nvme_fc_unmap_data(ctrl, op->rq, op);
+			nvme_cleanup_cmd(op->rq);
+		}
 
-		nvme_cleanup_cmd(op->rq);
 		nvme_fc_ctrl_put(ctrl);
 
 		if (ctrl->rport->remoteport.port_state == FC_OBJSTATE_ONLINE &&
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
