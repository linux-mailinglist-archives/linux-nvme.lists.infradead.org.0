Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F27E5476
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 21:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihc6CAL/sKu29JXIjh0D8G6De04XvqQQG9v22E+f7nU=; b=QYJSabSxBP7wjC
	iRyYcjvXfDzb0kAil9c4H3h8ZsY8M8o+bkq2n77e6KhfczLRUnkj+aRrrrJ+/6Cn3FF7JwuK1T7zq
	h6wVmo8lVCU2JENmjVYaLfph2tY5RwZILYUEYBkseIdvZfLKX+YARyxFP68vXhX7P/w1M0YBt8Wip
	7BkH2ytjh1mRd/gDO+bow1acwnqI8byHEp0m6bJpjHbv18iADM51n2s6axqb5MrWiN688ciI4BU63
	BwkvRJCnEohJEzq7FArMStaizg9wwhWc49f2UA2xqaEWgLNRh52w/szSsCxKgH8QqUehO625OyIXB
	JYAqoizzQ+uvKH+toSmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5PE-0006Y9-JW; Fri, 25 Oct 2019 19:37:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5P9-0006XE-AL
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 19:37:49 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iO5P5-0006Hy-9u; Fri, 25 Oct 2019 13:37:44 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iO5P2-0002a3-Tn; Fri, 25 Oct 2019 13:37:40 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Date: Fri, 25 Oct 2019 13:37:39 -0600
Message-Id: <20191025193739.9878-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH] nvmet: Cleanup nvmet_req_init() branching
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_123747_728604_BE3A59A4 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Logan Gunthorpe <logang@deltatee.com>, Sagi Grimberg <sagi@grimberg.me>,
 Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of checking for fabrics and discovery commands in
a long and growing if else tree, parse these commands inside
nvmet_parse_admin_cmd(). These commands are all submitted on
the admin queue (qid=0) so it makes sense that they be grouped
together.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---

This is a prep patch for the nvmet passthru patch set. It was part
of Christoph's feedback.

 drivers/nvme/target/admin-cmd.c | 5 +++++
 drivers/nvme/target/core.c      | 6 +-----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 831a062d27cb..d446e6e45bcb 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -813,6 +813,11 @@ u16 nvmet_parse_admin_cmd(struct nvmet_req *req)
 	struct nvme_command *cmd = req->cmd;
 	u16 ret;

+	if (nvme_is_fabrics(cmd))
+		return nvmet_parse_fabrics_cmd(req);
+	if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
+		return nvmet_parse_discovery_cmd(req);
+
 	ret = nvmet_check_ctrl_status(req, cmd);
 	if (unlikely(ret))
 		return ret;
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 3a67e244e568..54668da82db9 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -892,14 +892,10 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 	}

 	if (unlikely(!req->sq->ctrl))
-		/* will return an error for any Non-connect command: */
+		/* will return an error for any non-connect command: */
 		status = nvmet_parse_connect_cmd(req);
 	else if (likely(req->sq->qid != 0))
 		status = nvmet_parse_io_cmd(req);
-	else if (nvme_is_fabrics(req->cmd))
-		status = nvmet_parse_fabrics_cmd(req);
-	else if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
-		status = nvmet_parse_discovery_cmd(req);
 	else
 		status = nvmet_parse_admin_cmd(req);

--
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
