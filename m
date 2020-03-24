Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32BA19146B
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:30:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZXBBWhJ3ZmuYlV833z+fdXZ2En2kSEJwOtWxi4Ars2Q=; b=QugOLwrKEN9/I9xg+O/ph5sisa
	j/0qZWqIQZcJy20unxfsNa8DanOl4bhGprQ2jPmaAgrhq/rjqrnC2XShyrKAY/6ECBMgVSO9saM5J
	E89OVakASvZaiy6yNEgi9aGq5rjUrSigVMqwt49GZCMs+K4aicPFMd5PYgVQtHwRTmwYxBGuOyCPN
	fOT47BXFkuoRlR7LPpw/9sKzOdNj+ul/DRm5ljzVIuWrXx8Hd+O+nMo1rmCnScX7nWCI3vFFKxT+0
	rYYbaaOcHz2eQj3NKyfn7iFpgNoNNL31H/JCAhKWOGMQrTH+y0KyMvhyoaxX/x2LNcvYfeEwfdpsx
	fnOtB2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlVr-0005Mo-Gc; Tue, 24 Mar 2020 15:30:43 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlV6-0003iq-PK
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:29:59 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Mar 2020 17:29:47 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02OFTkEQ013985;
 Tue, 24 Mar 2020 17:29:47 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 6/7] nvme-rdma: Add warning on state change failure at
 nvme_rdma_setup_ctrl
Date: Tue, 24 Mar 2020 17:29:44 +0200
Message-Id: <1585063785-14268-7-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082957_218113_D6636516 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The transition to LIVE state should not fail in case of a new controller.
Moving to DELETING state before nvme_tcp_create_ctrl() allocates all the
resources may leads to NULL dereference at teardown flow (e.g., IO tagset,
admin_q, connect_q).

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/rdma.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index c99a882..3ae3011 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1022,8 +1022,13 @@ static int nvme_rdma_setup_ctrl(struct nvme_rdma_ctrl *ctrl, bool new)
 
 	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
 	if (!changed) {
-		/* state change failure is ok if we're in DELETING state */
+		/*
+		 * state change failure is ok if we're in DELETING state,
+		 * unless we're during creation of a new controller to
+		 * avoid races with teardown flow.
+		 */
 		WARN_ON_ONCE(ctrl->ctrl.state != NVME_CTRL_DELETING);
+		WARN_ON_ONCE(new);
 		ret = -EINVAL;
 		goto destroy_io;
 	}
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
