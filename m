Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA6181BEE
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 16:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kfqg5aMrfNP0hjkGT5Ub70vB6TFDNIrGEwOLGv+3sjo=; b=jew0VZ6YgdDfoJ5/WkqW9sTG7l
	0aWhyOg93HzxYWT+1fWT9SzXrEaiD651bXgwx0JsDJ3HkJ+eMuPHlN3Sd64iSvpUQ9st84Z79YkA1
	gkbkBxhYalntHVUkb8EWx6qYW4hIJs9J7Z/UQGYS8CG0PifSjA251MBvh55i5bEBCpj3IMGa2Te3w
	BowkOWM0OjUpxGl+nPtS9RXuqP+vXJIPLWRFDcYv1xzNcHk603pAx3t56ZeQ6XsvBcwA1T1Vs9Wtn
	d5ZVYtGI6QBorhyaiVxP30keip7nH7GFlsqsLhVyUFSEsqguiHx77lYjY8v7CHaNRuFtlXMDNYbKQ
	IjbHuaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2ry-0004sq-2L; Wed, 11 Mar 2020 15:02:02 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2qw-0004Q9-Uz
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 15:01:01 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 11 Mar 2020 17:00:51 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02BF0oVn002953;
 Wed, 11 Mar 2020 17:00:50 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/4] nvme-tcp: Fix warning at nvme_tcp_setup_ctrl
Date: Wed, 11 Mar 2020 17:00:47 +0200
Message-Id: <1583938849-5787-3-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
References: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_080059_402266_698131FC 
X-CRM114-Status: UNSURE (   9.54  )
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
Cc: Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The transition to LIVE state should not fail in case of a new controller.
Moving to DELETING state before nvme_tcp_create_ctrl() takes a refcount
on the controller may leads to controller use after free.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/tcp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 2af7e8c..145b96c 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1877,8 +1877,12 @@ static int nvme_tcp_setup_ctrl(struct nvme_ctrl *ctrl, bool new)
 	}
 
 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE)) {
-		/* state change failure is ok if we're in DELETING state */
-		WARN_ON_ONCE(ctrl->state != NVME_CTRL_DELETING);
+		/*
+		 * state change failure is ok if we're in DELETING state,
+		 * unless we're during creation of a new controller to
+		 * avoid use after free (ctrl refcount is not taken yet).
+		 */
+		WARN_ON_ONCE(ctrl->state != NVME_CTRL_DELETING || new);
 		ret = -EINVAL;
 		goto destroy_io;
 	}
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
