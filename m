Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DBC7E6C5
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nFwqtSIgZcn9W3yojF6AJJxTwryY0VihE/lHjl1iyk=; b=lxrLIX8HaFkT1y
	eOyrpRbsfc13P/wUQeOv510SLnYlpeBUchVf8svM4QlQkwAkR0KvYljq7/z1alY5Eu7IgQGQGAlIF
	LqBnpddX+O2QqnGm0Bed9fBCQnxR6j5i8vz5vBEwa1ZBejn02DKeXSDljud5TDKVwa/bBdPAgIRNk
	CcmiNtvml6NkNvgxC5kAI4w6ri7qGbTHbSQZ2V+Jv9EuWhGuobelDHA/dLoyeXRYP+RQJymtMmmsR
	npIhP/XLDXKJ7e901rv50q16W+MMmf3GEbA87EHFSBWc+PCFcPvt0VZbrXJ4VolbQ5sGxoq8lAdUQ
	76LUwNjjxHL0lblBgr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKmX-00019B-FO; Thu, 01 Aug 2019 23:46:49 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKlA-00085q-QR
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:45:27 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1htKl2-0002MG-On; Thu, 01 Aug 2019 17:45:24 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1htKl2-00025O-4D; Thu, 01 Aug 2019 17:45:16 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu,  1 Aug 2019 17:45:07 -0600
Message-Id: <20190801234514.7941-9-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801234514.7941-1-logang@deltatee.com>
References: <20190801234514.7941-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, maxg@mellanox.com,
 sbates@raithlin.com, logang@deltatee.com, Chaitanya.Kulkarni@wdc.com,
 chaitanya.kulkarni@wdc.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_164524_903449_5C09B65E 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch rejects any new connection to the passthru-ctrl if this
controller is already connected to a different host. At the time of
allocating the controller we check if the subsys associated with
the passthru ctrl is already connected to a host and reject it
if the hostnqn differs.

Connections from the same host (by hostnqn) are supported to allow
for multipath.

[chaitanya.kulkarni@wdc.com: based conceptually on a similar patch but
  different implementation]
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/core.c            |  4 ++++
 drivers/nvme/target/io-cmd-passthru.c | 31 +++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h           |  7 ++++++
 3 files changed, 42 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 2e75968af7f4..c655f26db3da 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -1278,6 +1278,10 @@ u16 nvmet_alloc_ctrl(const char *subsysnqn, const char *hostnqn,
 	if (!ctrl->sqs)
 		goto out_free_cqs;
 
+	ret = nvmet_passthru_alloc_ctrl(subsys, hostnqn);
+	if (ret)
+		goto out_free_sqs;
+
 	ret = ida_simple_get(&cntlid_ida,
 			     NVME_CNTLID_MIN, NVME_CNTLID_MAX,
 			     GFP_KERNEL);
diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
index b199785500ad..06a919283cc5 100644
--- a/drivers/nvme/target/io-cmd-passthru.c
+++ b/drivers/nvme/target/io-cmd-passthru.c
@@ -104,6 +104,37 @@ void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
 	mutex_unlock(&subsys->lock);
 }
 
+int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys,
+			      const char *hostnqn)
+{
+	struct nvmet_ctrl *ctrl;
+
+	/*
+	 * Check here if this subsystem is already connected to the passthru
+	 * ctrl. We allow only one host to connect to a given passthru
+	 * subsystem.
+	 */
+	int rc = 0;
+
+	mutex_lock(&subsys->lock);
+
+	if (!subsys->passthru_ctrl)
+		goto out;
+
+	if (list_empty(&subsys->ctrls))
+		goto out;
+
+	ctrl = list_first_entry(&subsys->ctrls, struct nvmet_ctrl,
+				subsys_entry);
+
+	if (strcmp(hostnqn, ctrl->hostnqn))
+		rc = -ENODEV;
+
+out:
+	mutex_unlock(&subsys->lock);
+	return rc;
+}
+
 static void nvmet_passthru_req_complete(struct nvmet_req *req,
 		struct request *rq, u16 status)
 {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index aff4db03269d..6436cb990905 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -513,6 +513,8 @@ void nvmet_passthru_destroy(void);
 void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys);
 int nvmet_passthru_ctrl_enable(struct nvmet_subsys *subsys);
 void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys);
+int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys,
+			      const char *hostnqn);
 u16 nvmet_parse_passthru_cmd(struct nvmet_req *req);
 
 static inline
@@ -536,6 +538,11 @@ static inline void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
 static inline void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
 {
 }
+static inline int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys,
+					    const char *hostnqn)
+{
+	return 0;
+}
 static inline u16 nvmet_parse_passthru_cmd(struct nvmet_req *req)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
