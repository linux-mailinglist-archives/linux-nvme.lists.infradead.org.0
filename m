Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4D8123E2B
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Dec 2019 04:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YL4nbuLe0Vyt1u0VfA9WoLjhJBuBjUk0HanOJkhq59o=; b=KOOHK6xcX/9NUR
	8tQozNjTNPq2E7BxD0Rlufb4MVqpr3RFaAEAx7lVWyNJb7RJ4WsnHHY/yriEDa6EFcuVSzitPcap6
	A5tg/fxPtptrZo94iqHhlzYhjvlq0DI9Y4TEqAo1XUjOHzVciUfn5zqK6lGUpvMc1UgQVDvRhUvjS
	oUD8AxZ+q61iBKnLeATIuK0zCof35wUEV7jpHomKixFBeVhyLr1jkVmkhLIICM5Tsn8mJYEvM0pV4
	lRuEb9P4ODYu0A8Ewih6dS0+KL2khRxLEHz/Kr8jpQ2BWsHq/ytLZMZVDbzD3GyrXKJYQlZaLZH+c
	SNygjdzIuHjJuuv+p/oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQUS-0001Nw-PB; Wed, 18 Dec 2019 03:59:12 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQUM-0001NE-BD
 for linux-nvme@lists.infradead.org; Wed, 18 Dec 2019 03:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576641546; x=1608177546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KDDegN2bhIGDG4aEx7UlQxaiDcI9bj8s4uw+gptXxo8=;
 b=qPx5skowAYHr9OmYj5gtLU+iwz2CxfqpOCTb+mt2uA6iVYdDLaS6BPwT
 MvkqZhwVfIiz7XvjXUvxQ7d0cUjWbwgCbcPIi53ML4Xpv9xyvABsftRCQ
 5RytLPRZily7GsKEy4ieioPX0KOlzZnF2+Gi7/va/o+UjavVl68QeM8Zr
 zLVo33nmzvr65rtnCrVSvyp6x4PWac+DeiIvSNlvhSQw2jL8NcEwD35P8
 akvnaDPX04FXRtQRKVnGKmQEye4hbMBhvKU1/nL3cMgrjPlujc7Emg6Mi
 IghU5PBy3nSgxWI4jAPapTqpudEsLm0BTl2Vi6WeQDHtvMHPtEVXxf/iy Q==;
IronPort-SDR: gQ6vl0R5jvLi5fa1jjQPF6eUFKgLdzaFXTMX6l7j+93GJ7NFSwQzo4ERPxH+oW6l4LkybFp9QM
 uiSN5LWrz7hINcWpSlxJ4iOwSdWdzgbbLatSgFrMuuKf4fJ/USN/eE9E/BlAQTEFTrfWsLR1Ns
 n1Z43jSsMBvyOSLHcl+H4/wseKKaGHy7EvTlqMEvF6Z02J7VFDe8h/folaQABwQP8QlKSzm2Nx
 +eq+GbMWm8ug/+c1x4b5SCk825vQmNVi1D5Ay8O0PePUqRFFwPSYwa8ONlDi/0plrue6jTXgpU
 U7Q=
X-IronPort-AV: E=Sophos;i="5.69,328,1571673600"; d="scan'208";a="126377149"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 18 Dec 2019 11:59:03 +0800
IronPort-SDR: AFkbLJ7lYIwmA3JnaNn5kJX6VGoqP7rzt3mF2uhFSoMUt07C65J0WA5ux3RtIVhQauvao4/flN
 wDPlxVVXQKuf6cAZ4/OZAHujIc9Ab8tPOJkf4UVB7Ag1cPRdJZD4ntXchE7fspKpPK1XNm46m+
 6QdGGxklY/sZxtzvLPKppQ3pjUNpXvXrGSM8v9PYQVH68g6YsxFuJjRqA8s0mf/GggX/32xCVy
 BkQ5b0CzudjiQInE2E+DjXuH+dZH1m8GY+evy+Xj/G9MgnEnY3GweoZSWM2tY+jpuleBBjrmDf
 36ZHN9Zl2Kj6N3wLUcXQTROL
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 19:53:26 -0800
IronPort-SDR: qRAYpbhYfg8+Wq9PG/klSSJmDhAqdp86NkB7YIvMJ2BjJPIse650Kj2LL62NKEd8mMP8XPgh7S
 zuRPnktajIubxcf2eKGvYl2b2VXFbt9R8c3NbhREO0iHOfq4Z+eAjQBfLM9h1YeED4SBrMGxyj
 leX4iIWsJA50WgkHZe6dyahbNcrHpHOfeeXq+8XpgGK2pRBE6QvDxT5eILNJ6KZhwdlNyyy67l
 kBDO3UfE5x5YykOioOdytg9fSbXwdsmQvIb57l9wwWcx2jFqq8wZQfnbjsdAI5wAu4TEuytjA0
 DqU=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 17 Dec 2019 19:59:03 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RESEND] nvmet: update AEN list and array at one place
Date: Tue, 17 Dec 2019 19:59:04 -0800
Message-Id: <20191218035904.3735-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_195906_423953_5FF6C966 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, hch@lst.de, dwagner@suse.de,
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

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Johannes Thumshirn <jthumshirn@suse.de>
Signed-off-by: Daniel Wagner <dwagner@suse.de>
[chaitanya.kulkarni@wdc.com
 * Added the code to loop over and clear out outstanding requests
   present in the ctrl->async_event_cmds[] for which aen is not
   generated.
 * Update patch description and title to fit kernel log style.
]
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/core.c | 53 +++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..53c83f84aa32 100644
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
