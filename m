Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233CC181B5
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 23:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J8tN+eNvjebkXFS5o5OKZDTmSJAiCboLhFoNd2C75Wo=; b=c8j
	QmZ1lvH7OHVWJQ1M4mc2eD3VBF/ZdwQ61cn5E50Oj9siUpsTnB7CFG0xrQKbvB2/Ot5vz2ggpGFaT
	9xS6WDla7boMVuoCSFpv9Wx08D4KsbZaLlO6y6omEBn+/76GW1nokJuiEX0cwAQTFZI7cktAdKjxU
	YIAQd+I5SJFwq1x7BcKxVO9jotKRsTaHaPrF37UXgGEiMLt/kG9Rng+RSM58gHL/xWVVZ5RW2D8bg
	ucspjZL/cdRg56/M08jw1mpQpmRIcHi1DetwYipaG9NNYx1E1Om1wMO5xF2O7WleeT4U/cmDl10x6
	QBrF3mMo/60Jz8mwGWx7HJXC8f3BbRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOUJl-00006W-Ua; Wed, 08 May 2019 21:41:37 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOUJg-000069-Ri
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 21:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557351694; x=1588887694;
 h=from:to:cc:subject:date:message-id;
 bh=kHlRQEqEYgURnlJQpQqm3LfIwZTYJhUw836+Y6iJFyY=;
 b=FB+Y70xq2m51iIPGRLHYubwHXkwH8xjOmoKYOicTgRLQTOujLbsOXUtV
 +vYHBu7B1EliTjtdFqNDm7PKaVs+OvTy28bkK1fFyqpHLOsM4s7Uxenlu
 Oo1lS0Yc1BuSjC3DDqrVgwfsBAGeQj0IHfiVSSoUj5Fyg0PTI9CYFQzjz
 t6Ed4ZQjJDbZTmABYQiUdd8uRYWMsPjrP0yq+hcrDImHRSzQk7R+vbnAc
 DrrL1B6DpSy9FC0Jj8VwgWWzEBVptdhOHimNvlvuAH5Er+pieZo/rRdRm
 8qiu7j7C6E9pFO4lXrIdy8rqaVsUmweHXJnQATRokSgR4R0HTELutMrh8 A==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="109052139"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 05:41:32 +0800
IronPort-SDR: Z7cUKuS03Hby/CSH5McrYohdHqu40ciVSfaUqVw5LxN5ib0SJ0JCsTgdGlYyJD0f/lLmLxDTRD
 gHdWJgYpbXD6tbfmIZ5VIiN0k1DwDVu21SOsm7y6sZHI0YZJ126p03Tmxb+0oUsdboyv1lU5sZ
 tpQFXgw4PYj2Kn53fVaMXPV4+ROfeC4xfZvfSmGfLVHlbXf4haJJKPkP5KFC6bJVqsDdzWZYF0
 JQWdYoKJMtMoR6HFsYbveiEy6CG7NzqCicwMrCJXk+eEzD5FlgtP2BTr9Y+NsE5mhLKYOYMpIs
 r+BTbDcq3umLkzt3oVJbFnmH
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 08 May 2019 14:19:44 -0700
IronPort-SDR: DxTsUBTvMohUiTzWMouVe9p0IsX3SWDnab3qxQsqRvmSIDKxlJsuD05OPMWOfmXDTnaP4ZYlIu
 hiTY7uAdJfoHXbd4xVN+IllGO9NgzTMIn73eAsi8cs/btBnksFmio8AO595+k354yH+heT+FU9
 S6/5ZH/2Qk5YTx4AdMSYdeG/5ootwLazQbKc7JON0LHIyQ0UYjCllQZ/nN1WE3NO3QQqoV+eyT
 Uz+KPRQEMDz5pE/MGiSviYcMW20tgifo/34ecOh/2dWQkGrSoSbulepDdRPFQA73Td50gV1Evd
 BNw=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 08 May 2019 14:41:30 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH] nvme: guard ctrl->state by lock
Date: Wed,  8 May 2019 14:41:28 -0700
Message-Id: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_144132_932866_07C4B8BB 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds a helper function to check the nvme_ctrl state.
This helper function uses controller lock when accessing ctrl->state
member which is guarded in the nvme_change_ctrl_state().

This RFC is light on the details, if this change is acceptable I'd
like to send the detailed tested version.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c      | 80 ++++++++++++++++++++++++++++-------
 drivers/nvme/host/fabrics.c   |  4 +-
 drivers/nvme/host/fabrics.h   |  8 ++--
 drivers/nvme/host/multipath.c |  6 +--
 drivers/nvme/host/nvme.h      |  1 +
 5 files changed, 74 insertions(+), 25 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index afd303489473..5182ce9fe21b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -94,6 +94,57 @@ static void nvme_put_subsystem(struct nvme_subsystem *subsys);
 static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 					   unsigned nsid);
 
+inline bool nvme_validate_ctrl_state(enum nvme_ctrl_state s)
+{
+	int ret;
+
+	switch (s) {
+	case NVME_CTRL_NEW:
+		ret = true;
+		break;
+	case NVME_CTRL_LIVE:
+		ret = true;
+		break;
+	case NVME_CTRL_ADMIN_ONLY:
+		ret = true;
+		break;
+	case NVME_CTRL_RESETTING:
+		ret = true;
+		break;
+	case NVME_CTRL_CONNECTING:
+		ret = true;
+		break;
+	case NVME_CTRL_DELETING:
+		ret = true;
+		break;
+	case NVME_CTRL_DEAD:
+		break;
+	default:
+		ret = false;
+	}
+	return ret;
+}
+
+bool nvme_check_ctrl_state(struct nvme_ctrl *c, enum nvme_ctrl_state state)
+{
+	bool ret;
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->lock, flags);
+
+	if (!nvme_validate_ctrl_state(state)) {
+		ret = false;
+		goto out_unlock;
+	}
+
+	ret = c->state == state ? true : false;
+
+out_unlock:
+	spin_unlock_irqrestore(&c->lock, flags);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(nvme_check_ctrl_state);
+
 static void nvme_set_queue_dying(struct nvme_ns *ns)
 {
 	/*
@@ -113,7 +164,8 @@ static void nvme_queue_scan(struct nvme_ctrl *ctrl)
 	/*
 	 * Only new queue scan work when admin and IO queues are both alive
 	 */
-	if (ctrl->state == NVME_CTRL_LIVE)
+
+	if (nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE))
 		queue_work(nvme_wq, &ctrl->scan_work);
 }
 
@@ -134,8 +186,8 @@ int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl)
 	ret = nvme_reset_ctrl(ctrl);
 	if (!ret) {
 		flush_work(&ctrl->reset_work);
-		if (ctrl->state != NVME_CTRL_LIVE &&
-		    ctrl->state != NVME_CTRL_ADMIN_ONLY)
+		if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE) &&
+		    !nvme_check_ctrl_state(ctrl, NVME_CTRL_ADMIN_ONLY))
 			ret = -ENETRESET;
 	}
 
@@ -2405,8 +2457,8 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
 
 	mutex_lock(&subsys->lock);
 	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
-		if (ctrl->state != NVME_CTRL_DELETING &&
-		    ctrl->state != NVME_CTRL_DEAD)
+		if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_DELETING) &&
+		    !nvme_check_ctrl_state(ctrl, NVME_CTRL_DEAD))
 			count++;
 	}
 	mutex_unlock(&subsys->lock);
@@ -2727,13 +2779,9 @@ static int nvme_dev_open(struct inode *inode, struct file *file)
 	struct nvme_ctrl *ctrl =
 		container_of(inode->i_cdev, struct nvme_ctrl, cdev);
 
-	switch (ctrl->state) {
-	case NVME_CTRL_LIVE:
-	case NVME_CTRL_ADMIN_ONLY:
-		break;
-	default:
-		return -EWOULDBLOCK;
-	}
+	if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE) &&
+	    !nvme_check_ctrl_state(ctrl, NVME_CTRL_ADMIN_ONLY))
+		return EWOULDBLOCK;
 
 	file->private_data = ctrl;
 	return 0;
@@ -3026,7 +3074,7 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
 		[NVME_CTRL_DEAD]	= "dead",
 	};
 
-	if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
+	if (nvme_validate_ctrl_state(ctrl->state) &&
 	    state_name[ctrl->state])
 		return sprintf(buf, "%s\n", state_name[ctrl->state]);
 
@@ -3511,7 +3559,7 @@ static void nvme_scan_work(struct work_struct *work)
 	struct nvme_id_ctrl *id;
 	unsigned nn;
 
-	if (ctrl->state != NVME_CTRL_LIVE)
+	if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE))
 		return;
 
 	WARN_ON_ONCE(!ctrl->tagset);
@@ -3559,7 +3607,7 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 	 * removing the namespaces' disks; fail all the queues now to avoid
 	 * potentially having to clean up the failed sync later.
 	 */
-	if (ctrl->state == NVME_CTRL_DEAD)
+	if (nvme_check_ctrl_state(ctrl, NVME_CTRL_DEAD))
 		nvme_kill_queues(ctrl);
 
 	down_write(&ctrl->namespaces_rwsem);
@@ -3648,7 +3696,7 @@ static void nvme_fw_act_work(struct work_struct *work)
 		msleep(100);
 	}
 
-	if (ctrl->state != NVME_CTRL_LIVE)
+	if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE))
 		return;
 
 	nvme_start_queues(ctrl);
diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 592d1e61ef7e..9fb3ee01d964 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -547,8 +547,8 @@ static struct nvmf_transport_ops *nvmf_lookup_transport(
 blk_status_t nvmf_fail_nonready_command(struct nvme_ctrl *ctrl,
 		struct request *rq)
 {
-	if (ctrl->state != NVME_CTRL_DELETING &&
-	    ctrl->state != NVME_CTRL_DEAD &&
+	if (!nvme_check_ctrl_state(ctrl, NVME_CTRL_DELETING) &&
+	    !nvme_check_ctrl_state(ctrl, NVME_CTRL_DEAD) &&
 	    !blk_noretry_request(rq) && !(rq->cmd_flags & REQ_NVME_MPATH))
 		return BLK_STS_RESOURCE;
 
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index 3044d8b99a24..98bf803a7a03 100644
--- a/drivers/nvme/host/fabrics.h
+++ b/drivers/nvme/host/fabrics.h
@@ -149,8 +149,8 @@ static inline bool
 nvmf_ctlr_matches_baseopts(struct nvme_ctrl *ctrl,
 			struct nvmf_ctrl_options *opts)
 {
-	if (ctrl->state == NVME_CTRL_DELETING ||
-	    ctrl->state == NVME_CTRL_DEAD ||
+	if (nvme_check_ctrl_state(ctrl, NVME_CTRL_DELETING) ||
+	    nvme_check_ctrl_state(ctrl, NVME_CTRL_DEAD) ||
 	    strcmp(opts->subsysnqn, ctrl->opts->subsysnqn) ||
 	    strcmp(opts->host->nqn, ctrl->opts->host->nqn) ||
 	    memcmp(&opts->host->id, &ctrl->opts->host->id, sizeof(uuid_t)))
@@ -179,8 +179,8 @@ bool nvmf_ip_options_match(struct nvme_ctrl *ctrl,
 static inline bool nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 		bool queue_live)
 {
-	if (likely(ctrl->state == NVME_CTRL_LIVE ||
-		   ctrl->state == NVME_CTRL_ADMIN_ONLY))
+	if (likely(nvme_check_ctrl_state(ctrl, NVME_CTRL_LIVE) ||
+		   nvme_check_ctrl_state(ctrl, NVME_CTRL_ADMIN_ONLY)))
 		return true;
 	return __nvmf_check_ready(ctrl, rq, queue_live);
 }
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 499acf07d61a..6fff3b195ec5 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -129,7 +129,7 @@ static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
 	struct nvme_ns *found = NULL, *fallback = NULL, *ns;
 
 	list_for_each_entry_rcu(ns, &head->list, siblings) {
-		if (ns->ctrl->state != NVME_CTRL_LIVE ||
+		if (!nvme_check_ctrl_state(ns->ctrl, NVME_CTRL_LIVE) ||
 		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
 			continue;
 
@@ -184,7 +184,7 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 	for (ns = nvme_next_ns(head, old);
 	     ns != old;
 	     ns = nvme_next_ns(head, ns)) {
-		if (ns->ctrl->state != NVME_CTRL_LIVE ||
+		if (!nvme_check_ctrl_state(ns->ctrl, NVME_CTRL_LIVE) ||
 		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
 			continue;
 
@@ -206,7 +206,7 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 
 static inline bool nvme_path_is_optimized(struct nvme_ns *ns)
 {
-	return ns->ctrl->state == NVME_CTRL_LIVE &&
+	return nvme_check_ctrl_state(ns->ctrl, NVME_CTRL_LIVE) &&
 		ns->ana_state == NVME_ANA_OPTIMIZED;
 }
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5ff83f..0d7aaef91489 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -469,6 +469,7 @@ int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 
 extern const struct attribute_group *nvme_ns_id_attr_groups[];
 extern const struct block_device_operations nvme_ns_head_ops;
+bool nvme_check_ctrl_state(struct nvme_ctrl *c, enum nvme_ctrl_state state);
 
 #ifdef CONFIG_NVME_MULTIPATH
 bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl);
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
