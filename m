Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49856E20C4
	for <lists+linux-nvme@lfdr.de>; Wed, 23 Oct 2019 18:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v8jMbuKWKCxQQnPij+l3BR667APzElT8RhuKG6Ocpo=; b=Foc6S1E0juFY0m
	MSO8x2EVxjYJhtVpSoDmzuR2m6B4Iu1GDNcyJHQyidmvSXcjYv3z0tLEPjr8zEUrp3UQ3U42yE+3G
	Eza00ntaVp17BHdTA6eaQyqizgqMSNUDuFFjczFcshA3/CXivjt3Zr8x0K+BCdDhLoCJi/zCMK91U
	HbX8ej9Oa0DyrtO3iGwjeoDvgEJyHXVL+cdOROPsQKKWKyuADDxKGhhj1RC7zcH6X1LpVjFzHJajx
	bAmeWfffIMZOhkjLx+NQ8buV+tQ5UXTvTHXfVmuhdLGa5IGU7E9UN8VFZCqHarZrJGo8CsZZGdahb
	3hTGTpJZSkNvK55Zsv0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJdf-0000Fc-Qj; Wed, 23 Oct 2019 16:37:35 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJc9-0007d5-Ur
 for linux-nvme@lists.infradead.org; Wed, 23 Oct 2019 16:36:04 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iNJc4-0006Vu-8I; Wed, 23 Oct 2019 10:36:01 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iNJc2-00016b-P6; Wed, 23 Oct 2019 10:35:54 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Wed, 23 Oct 2019 10:35:41 -0600
Message-Id: <20191023163545.4193-4-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023163545.4193-1-logang@deltatee.com>
References: <20191023163545.4193-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, Chaitanya.Kulkarni@wdc.com, maxg@mellanox.com,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH 3/7] nvmet: Introduce common execute function for get_log_page
 and identify
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_093602_058344_5E5BF1EF 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of picking the sub-command handler to execute in a nested
switch statement introduce a landing functions that calls out
to the appropriate sub-command handler.

This will allow us to have a common place in the handler to check
the transfer length in a future patch.

Signed-off-by: Christoph Hellwig <hch@lst.de>
[logang@deltatee.com: separated out of a larger draft patch from hch]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/admin-cmd.c | 93 ++++++++++++++++++---------------
 1 file changed, 50 insertions(+), 43 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 831a062d27cb..3665b45d6515 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -282,6 +282,33 @@ static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
 	nvmet_req_complete(req, status);
 }
 
+static void nvmet_execute_get_log_page(struct nvmet_req *req)
+{
+	switch (req->cmd->get_log_page.lid) {
+	case NVME_LOG_ERROR:
+		return nvmet_execute_get_log_page_error(req);
+	case NVME_LOG_SMART:
+		return nvmet_execute_get_log_page_smart(req);
+	case NVME_LOG_FW_SLOT:
+		/*
+		 * We only support a single firmware slot which always is
+		 * active, so we can zero out the whole firmware slot log and
+		 * still claim to fully implement this mandatory log page.
+		 */
+		return nvmet_execute_get_log_page_noop(req);
+	case NVME_LOG_CHANGED_NS:
+		return nvmet_execute_get_log_changed_ns(req);
+	case NVME_LOG_CMD_EFFECTS:
+		return nvmet_execute_get_log_cmd_effects_ns(req);
+	case NVME_LOG_ANA:
+		return nvmet_execute_get_log_page_ana(req);
+	}
+	pr_err("unhandled lid %d on qid %d\n",
+	       req->cmd->get_log_page.lid, req->sq->qid);
+	req->error_loc = offsetof(struct nvme_get_log_page_command, lid);
+	nvmet_req_complete(req, NVME_SC_INVALID_FIELD | NVME_SC_DNR);
+}
+
 static void nvmet_execute_identify_ctrl(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
@@ -565,6 +592,25 @@ static void nvmet_execute_identify_desclist(struct nvmet_req *req)
 	nvmet_req_complete(req, status);
 }
 
+static void nvmet_execute_identify(struct nvmet_req *req)
+{
+	switch (req->cmd->identify.cns) {
+	case NVME_ID_CNS_NS:
+		return nvmet_execute_identify_ns(req);
+	case NVME_ID_CNS_CTRL:
+		return nvmet_execute_identify_ctrl(req);
+	case NVME_ID_CNS_NS_ACTIVE_LIST:
+		return nvmet_execute_identify_nslist(req);
+	case NVME_ID_CNS_NS_DESC_LIST:
+		return nvmet_execute_identify_desclist(req);
+	}
+
+	pr_err("unhandled identify cns %d on qid %d\n",
+	       req->cmd->identify.cns, req->sq->qid);
+	req->error_loc = offsetof(struct nvme_identify, cns);
+	nvmet_req_complete(req, NVME_SC_INVALID_FIELD | NVME_SC_DNR);
+}
+
 /*
  * A "minimum viable" abort implementation: the command is mandatory in the
  * spec, but we are not required to do any useful work.  We couldn't really
@@ -819,52 +865,13 @@ u16 nvmet_parse_admin_cmd(struct nvmet_req *req)
 
 	switch (cmd->common.opcode) {
 	case nvme_admin_get_log_page:
+		req->execute = nvmet_execute_get_log_page;
 		req->data_len = nvmet_get_log_page_len(cmd);
-
-		switch (cmd->get_log_page.lid) {
-		case NVME_LOG_ERROR:
-			req->execute = nvmet_execute_get_log_page_error;
-			return 0;
-		case NVME_LOG_SMART:
-			req->execute = nvmet_execute_get_log_page_smart;
-			return 0;
-		case NVME_LOG_FW_SLOT:
-			/*
-			 * We only support a single firmware slot which always
-			 * is active, so we can zero out the whole firmware slot
-			 * log and still claim to fully implement this mandatory
-			 * log page.
-			 */
-			req->execute = nvmet_execute_get_log_page_noop;
-			return 0;
-		case NVME_LOG_CHANGED_NS:
-			req->execute = nvmet_execute_get_log_changed_ns;
-			return 0;
-		case NVME_LOG_CMD_EFFECTS:
-			req->execute = nvmet_execute_get_log_cmd_effects_ns;
-			return 0;
-		case NVME_LOG_ANA:
-			req->execute = nvmet_execute_get_log_page_ana;
-			return 0;
-		}
-		break;
+		return 0;
 	case nvme_admin_identify:
+		req->execute = nvmet_execute_identify;
 		req->data_len = NVME_IDENTIFY_DATA_SIZE;
-		switch (cmd->identify.cns) {
-		case NVME_ID_CNS_NS:
-			req->execute = nvmet_execute_identify_ns;
-			return 0;
-		case NVME_ID_CNS_CTRL:
-			req->execute = nvmet_execute_identify_ctrl;
-			return 0;
-		case NVME_ID_CNS_NS_ACTIVE_LIST:
-			req->execute = nvmet_execute_identify_nslist;
-			return 0;
-		case NVME_ID_CNS_NS_DESC_LIST:
-			req->execute = nvmet_execute_identify_desclist;
-			return 0;
-		}
-		break;
+		return 0;
 	case nvme_admin_abort_cmd:
 		req->execute = nvmet_execute_abort;
 		req->data_len = 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
