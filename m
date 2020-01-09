Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2D713525C
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 06:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+HCZjeJyf/4xJLXLTLS3qfsATNvODSqm6KhD61rsuE=; b=FDoyI8vcxfCYkn
	v0/5lfs4bTDAXS+CrS1p02Rvs499SomqWK8plV7EKDzliMt9yk6C8jC6t7ASR8RBoUGBJzzGvyMlx
	ifXlTnzqL4C0aKzv+JpyL04YsPFXjx3s7zq3vyuBaOHFrVSiZZwtAL5HNSNoDiuw+t4Ojdr2joJST
	O99GPBCslqJRHgkK+auwN2ZBz/ltBv8wJBKiZul43xLVKDqnma+7V6t4VaJdBMXJQ8FTqcD5uIKLN
	aebLy2CMOPFCdRrsXYk7nzwdig28GvnE5Ee38iSLSX3MeENodl0D7gEwGM256/dLHWGmshyr4nt1r
	3RJojmuhfCuFJuCC5qMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipPzA-00045L-7d; Thu, 09 Jan 2020 05:03:56 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipPy5-0003K7-Vu
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 05:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1578546169; x=1610082169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pg251pg7bnGZo0P2bhKPp+NNpNVHcP7aOMwpz6ddcdk=;
 b=aPfhM7CARHwa6BJnPZbuK84IFEPomcgQ8485oyWxY6+Zhe8714MU+MWQ
 wQ+7VdNz3QZvtx4yq9g0MU2Z+KRiZMAMMN1OOZXYQcTcgF0A/G5FIKBj9
 9eF16g+hlCPik6Ya6ZQb1TKMudjA1PcrFlvBH0IAsIozek8yveU9FAxOm
 TdQSUCpH0rGHg6RiU/k3j5LTog+JLZ/bsHbo5Q6HN8porUM7B9bLW5HpG
 P3vSaPoLEwkq4pssoTh4nQ8jNXgM3rt3WTnRTXXlNZRMr65MXVJTgBGpa
 dHfAfMJfkwMxXP4q7TtYtRu6CBI20FYq0Yj4nluc0X7hw3dZPgDSkd02G w==;
IronPort-SDR: 2p64RJoFmPyUFvhEN23v49PqZjMn6wcRTfw4cTJEZFkhMuhjQ0QgBFrgYC9m83oPckiNLcqL4m
 Qp/ithLBlMnVSRhf8JMjvUucQIVFytyMGrUOwNY6QWfF9EnoXVOC2XRwSf9zLV4x2xbvRnyafR
 k4VvG5BmEJ6S1Kg1EeqtSgC1tYPbEDRQ392YyzuFjbhdH4qgEuJSK0mEILwNdObfn1c11sL/Xv
 5bKjKkJVBFk2l0i9i2zSePVuRMZaNjVZpSAYzlOlOqiQ7cq4Qqqz2lZ2CCWBW3p692oR65tDAP
 Qmo=
X-IronPort-AV: E=Sophos;i="5.69,412,1571673600"; d="scan'208";a="127021383"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jan 2020 13:02:49 +0800
IronPort-SDR: L5htyBhTfcQIrOm+j1ffMYUmfg+RYiuHeFeI1IBZw0hqR7TJfaJob5DOC2XuuLFXJRH4TbtH33
 MhGYNCpQhiSGFRbdScWkTzgjmo8/lq1xJHrvOlCye6EjfbRpAWVuoGOtwlQGJ04CsvxVIf/fyE
 SA28qrwupM1bsBfY2++AygFrFktAphFFhza9mIz8O5ypsR2xEzm97OAxiyBPE7c99AQ0Xi/Yym
 mdqYFj4T3RhnNBvyrd1zK5ZHMwD/IZd7Zzir/hVL6Vo+oyiuS1Go1QLUVphm86TVWFpn7nHcMx
 epXpB4DFyAARbbe6PxQEDj0K
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 20:56:36 -0800
IronPort-SDR: x9fz7iLHK99vh/GFiA9S/YCVtd5BiNtwARjC3LLikANG+1MKdUXGmzKWHt7BZurBwf8aI9j5PC
 +9830GqpPG2U3oIt7V3R2ZLKKY4YLy6KoKoqviEwagt2O6wzc8OTFIl3PSEKWK651Em0pjLDvA
 R4PEXTKtFa2zleYZxRF+qDpCxZtFZx0EGd5JGXjBHxQEyD4/ljL6KQgeesS5oP+rxA9NCjITcF
 3/ddHofy3cxBw7Mh7QZPg8Ip1cZMC5nJcglFur+10ro0bgci568oeeXpmsQn962BcE37r+J8Sl
 amY=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 08 Jan 2020 21:02:49 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 4/4] nvmet: update AEN list and array at one place
Date: Wed,  8 Jan 2020 21:02:44 -0800
Message-Id: <20200109050244.5493-5-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20200109050244.5493-1-chaitanya.kulkarni@wdc.com>
References: <20200109050244.5493-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_210250_075857_BD43C36C 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Daniel Wagner <dwagner@suse.de>

All async events are enqueued via nvmet_add_async_event() which
updates the ctrl->async_event_cmds[] array and additionally an struct
nvmet_async_event is added to the ctrl->async_events list.

Under normal operations the nvmet_async_event_work() updates again the
ctrl->async_event_cmds and removes the corresponding struct
nvmet_async_event from the list again. Though nvmet_sq_destroy() could
be called which calles nvmet_async_events_free() which only updates
the ctrl->async_event_cmds[] array.

Add a new function nvmet_async_events_process() which processes the
async events and updates both array and the list. With this we avoid
having two places where the array and list are modified.

When the status value is set != NVME_SC_SUCCESS that implies
nvmet_async_events_process() is called from free events context.
In this case after clearing the aen present on the ctrl->async_list we
also loop over ctrl->async_event_cmds[] for any requests posted by the
host for which we don't have the AEN in the ctrl->async_events list.

Signed-off-by: Daniel Wagner <dwagner@suse.de>
[chaitanya.kulkarni@wdc.com
 * Added the code to loop over and clear out outstanding requests
   present in the ctrl->async_event_cmds[] for which aen is not
   generated.
 * Update patch description and title to fit kernel log style.
]
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
Changes from V1:-

1. Generate patch on nvme-5.6 branch.
---
 drivers/nvme/target/core.c | 53 +++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 72938c8e9fcb..038c49f9bc67 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -129,27 +129,8 @@ static u32 nvmet_async_event_result(struct nvmet_async_event *aen)
 	return aen->event_type | (aen->event_info << 8) | (aen->log_page << 16);
 }
 
-static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
-{
-	struct nvmet_req *req;
-
-	while (1) {
-		mutex_lock(&ctrl->lock);
-		if (!ctrl->nr_async_event_cmds) {
-			mutex_unlock(&ctrl->lock);
-			return;
-		}
-
-		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
-		mutex_unlock(&ctrl->lock);
-		nvmet_req_complete(req, NVME_SC_INTERNAL | NVME_SC_DNR);
-	}
-}
-
-static void nvmet_async_event_work(struct work_struct *work)
+static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
 {
-	struct nvmet_ctrl *ctrl =
-		container_of(work, struct nvmet_ctrl, async_event_work);
 	struct nvmet_async_event *aen;
 	struct nvmet_req *req;
 
@@ -159,18 +140,44 @@ static void nvmet_async_event_work(struct work_struct *work)
 				struct nvmet_async_event, entry);
 		if (!aen || !ctrl->nr_async_event_cmds) {
 			mutex_unlock(&ctrl->lock);
-			return;
+			break;
 		}
 
 		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
-		nvmet_set_result(req, nvmet_async_event_result(aen));
+		if (status == 0)
+			nvmet_set_result(req, nvmet_async_event_result(aen));
 
 		list_del(&aen->entry);
 		kfree(aen);
 
 		mutex_unlock(&ctrl->lock);
-		nvmet_req_complete(req, 0);
+		nvmet_req_complete(req, status);
 	}
+
+	if (!status)
+		return;
+
+	mutex_lock(&ctrl->lock);
+	while (ctrl->nr_async_event_cmds) {
+		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
+		mutex_unlock(&ctrl->lock);
+		nvmet_req_complete(req, status);
+		mutex_lock(&ctrl->lock);
+	}
+	mutex_unlock(&ctrl->lock);
+}
+
+static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
+{
+	nvmet_async_events_process(ctrl, NVME_SC_INTERNAL | NVME_SC_DNR);
+}
+
+static void nvmet_async_event_work(struct work_struct *work)
+{
+	struct nvmet_ctrl *ctrl =
+		container_of(work, struct nvmet_ctrl, async_event_work);
+
+	nvmet_async_events_process(ctrl, 0);
 }
 
 void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
