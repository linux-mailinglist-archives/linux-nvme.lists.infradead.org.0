Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C4515078D
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Feb 2020 14:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coitYlMGMG8OBaawqIPfQW+KeFzLn1iQC5N0u3T+EwQ=; b=W22mnUEHnQNHMf
	HXyD5ia+EG28K9sNKVTvaBagNK2Am5WKxVnArpp0Cm/gka2iyBAqqSG7FJVVkIl9hxI0VcgjorO28
	zoOpBLeNuQ57RYsiB0Y6LtUqSv7fMb7TOcuLL0k4QLiZwZwpLyhxxJWbsQRwbfcCmFLbkbl9abPQb
	wg3LU0yP8AUVPsuSyicj9sg17ymnXjpvjd1uwKidIo6yS5WzsMFqEQNAVnqIuKP7k/dHKzWrgUMgF
	wLvmSM6EQjpVWlA3dRn3XTx9vMcTqHqvYNd6FGbIpXUsB6egaPB7R7phJpePNaBYuvA2ReDcq7Ovl
	AHGCCiG7ygbiYgO0af7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybxh-0007bP-4q; Mon, 03 Feb 2020 13:40:25 +0000
Received: from ip-12-0-68-226-us.kioxia.com ([12.0.68.226]
 helo=SJSMAIL01.us.kioxia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybxa-0007Yc-Qn
 for linux-nvme@lists.infradead.org; Mon, 03 Feb 2020 13:40:21 +0000
Received: from SJSMAIL01.us.kioxia.com (10.90.133.90) by
 SJSMAIL01.us.kioxia.com (10.90.133.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 3 Feb 2020 05:40:13 -0800
Received: from SJSMAIL01.us.kioxia.com ([fe80::f818:a7db:64f:17a4]) by
 SJSMAIL01.us.kioxia.com ([fe80::f818:a7db:64f:17a4%3]) with mapi id
 15.01.1779.004; Mon, 3 Feb 2020 05:40:13 -0800
From: Victor Gladkov <Victor.Gladkov@kioxia.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH v2] nvme-fabrics: reject I/O to offline device
Thread-Topic: [PATCH v2] nvme-fabrics: reject I/O to offline device
Thread-Index: AdXAws2i7K3jkb2QTo+39ruHWzRzNwF3KTYAAUUtNIACHthsIADkrPAAALU4YxA=
Date: Mon, 3 Feb 2020 13:40:13 +0000
Message-ID: <0feb0c25623a42cfb115fbf0590492b4@kioxia.com>
References: <49c2e737f21b4c2795de71c8d8d578ee@kioxia.com>
 <98e76717-1e98-92e1-0d07-d2dac4bd1d76@broadcom.com>
 <8b8454b9b2d44efab22df15af9df0a21@kioxia.com>
 <20200130150852.GB25427@infradead.org>
In-Reply-To: <20200130150852.GB25427@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.66.127]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_054018_875934_394D6A22 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: James Smart <james.smart@broadcom.com>, Hannes Reinecke <hare@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 30, 2020 at 17:09, Christoph Hellwig wrote:
> On Sun, Jan 26, 2020 at 10:06:20AM +0000, Victor Gladkov wrote:
> > On 1/15/2020 5:43 PM, Victor Gladkov wrote:
> > > 1. Added multipath support for this patch.
> > > 2. Small refactoring (according to the review)
> >
> > Anyone have any comments on the latest proposed patch?
> 
> Where is the latest patch?  I didn't see a repost.  To kick off a discussion
> please just resent it, in proper patch format and with the proper style to make
> reviewing it easier.

Patch updated for branch nvme/for-5.6
---------------------------------
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6ec0350..c00efb2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -321,6 +321,37 @@
 }
 EXPORT_SYMBOL_GPL(nvme_cancel_request);

+static void nvme_failfast_work(struct work_struct *work)
+{
+	struct nvme_ctrl *ctrl = container_of(to_delayed_work(work),
+			struct nvme_ctrl, failfast_work);
+
+	spin_lock_irq(&ctrl->lock);
+	if (ctrl->state == NVME_CTRL_CONNECTING) {
+		set_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags);
+		dev_info(ctrl->device, "failfast expired set for controller %s\n", ctrl->opts->subsysnqn);
+		nvme_kick_requeue_lists(ctrl);
+	}
+	spin_unlock_irq(&ctrl->lock);
+}
+
+static void nvme_start_failfast_work(struct nvme_ctrl *ctrl)
+{
+	if (unlikely(ctrl->opts->fail_fast_tmo == 0))
+		return;
+
+	schedule_delayed_work(&ctrl->failfast_work, ctrl->opts->fail_fast_tmo * HZ);
+}
+
+static void nvme_stop_failfast_work(struct nvme_ctrl *ctrl)
+{
+	if (unlikely(ctrl->opts->fail_fast_tmo == 0))
+		return;
+
+	cancel_delayed_work_sync(&ctrl->failfast_work);
+	clear_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags);
+}
+
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		enum nvme_ctrl_state new_state)
 {
@@ -334,9 +365,10 @@
 	switch (new_state) {
 	case NVME_CTRL_LIVE:
 		switch (old_state) {
+		case NVME_CTRL_CONNECTING:
+			nvme_stop_failfast_work(ctrl);
 		case NVME_CTRL_NEW:
 		case NVME_CTRL_RESETTING:
-		case NVME_CTRL_CONNECTING:
 			changed = true;
 			/* FALLTHRU */
 		default:
@@ -355,8 +387,9 @@
 		break;
 	case NVME_CTRL_CONNECTING:
 		switch (old_state) {
-		case NVME_CTRL_NEW:
 		case NVME_CTRL_RESETTING:
+			nvme_start_failfast_work(ctrl);
+		case NVME_CTRL_NEW:
 			changed = true;
 			/* FALLTHRU */
 		default:
@@ -3960,6 +3993,7 @@
 {
 	nvme_mpath_stop(ctrl);
 	nvme_stop_keep_alive(ctrl);
+	nvme_stop_failfast_work(ctrl);
 	flush_work(&ctrl->async_event_work);
 	cancel_work_sync(&ctrl->fw_act_work);
 }
@@ -4024,6 +4058,7 @@
 	int ret;

 	ctrl->state = NVME_CTRL_NEW;
+	clear_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags);
 	spin_lock_init(&ctrl->lock);
 	mutex_init(&ctrl->scan_lock);
 	INIT_LIST_HEAD(&ctrl->namespaces);
@@ -4038,6 +4073,7 @@
 	init_waitqueue_head(&ctrl->state_wq);

 	INIT_DELAYED_WORK(&ctrl->ka_work, nvme_keep_alive_work);
+	INIT_DELAYED_WORK(&ctrl->failfast_work, nvme_failfast_work);
 	memset(&ctrl->ka_cmd, 0, sizeof(ctrl->ka_cmd));
 	ctrl->ka_cmd.common.opcode = nvme_admin_keep_alive;
diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 74b8818..d5fa25e 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -549,6 +549,7 @@ blk_status_t nvmf_fail_nonready_command(struct nvme_ctrl *ctrl,
 {
 	if (ctrl->state != NVME_CTRL_DELETING &&
 	    ctrl->state != NVME_CTRL_DEAD &&
+	    !test_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags) &&
 	    !blk_noretry_request(rq) && !(rq->cmd_flags & REQ_NVME_MPATH))
 		return BLK_STS_RESOURCE;

@@ -612,6 +613,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
 	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
 	{ NVMF_OPT_TOS,			"tos=%d"		},
+	{ NVMF_OPT_FAIL_FAST_TMO,	"fail_fast_tmo=%d"	},
 	{ NVMF_OPT_ERR,			NULL			}
 };

@@ -630,6 +632,7 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 	opts->nr_io_queues = num_online_cpus();
 	opts->reconnect_delay = NVMF_DEF_RECONNECT_DELAY;
 	opts->kato = NVME_DEFAULT_KATO;
+	opts->fail_fast_tmo = NVMF_DEF_FAIL_FAST_TMO;
 	opts->duplicate_connect = false;
 	opts->hdr_digest = false;
 	opts->data_digest = false;
@@ -751,6 +754,17 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 				pr_warn("ctrl_loss_tmo < 0 will reconnect forever\n");
 			ctrl_loss_tmo = token;
 			break;
+		case NVMF_OPT_FAIL_FAST_TMO:
+			if (match_int(args, &token)) {
+				ret = -EINVAL;
+				goto out;
+			}
+
+			if (token)
+				pr_warn("fail_fast_tmo != 0, I/O will failed on reconnect controller after %d sec\n", token);
+
+			opts->fail_fast_tmo  = token;
+			break;
 		case NVMF_OPT_HOSTNQN:
 			if (opts->host) {
 				pr_err("hostnqn already user-assigned: %s\n",
@@ -881,11 +895,14 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 		opts->nr_poll_queues = 0;
 		opts->duplicate_connect = true;
 	}
-	if (ctrl_loss_tmo < 0)
+	if (ctrl_loss_tmo < 0) {
 		opts->max_reconnects = -1;
-	else
+	} else {
 		opts->max_reconnects = DIV_ROUND_UP(ctrl_loss_tmo,
 						opts->reconnect_delay);
+		if(ctrl_loss_tmo < opts->fail_fast_tmo)
+			pr_warn("failfast tmo (%d) larger than controller loss tmo (%d)\n", opts->fail_fast_tmo, ctrl_loss_tmo);
+	}

 	if (!opts->host) {
 		kref_get(&nvmf_default_host->ref);
@@ -985,7 +1002,7 @@ void nvmf_free_options(struct nvmf_ctrl_options *opts)
 #define NVMF_ALLOWED_OPTS	(NVMF_OPT_QUEUE_SIZE | NVMF_OPT_NR_IO_QUEUES | \
 				 NVMF_OPT_KATO | NVMF_OPT_HOSTNQN | \
 				 NVMF_OPT_HOST_ID | NVMF_OPT_DUP_CONNECT |\
-				 NVMF_OPT_DISABLE_SQFLOW)
+				 NVMF_OPT_DISABLE_SQFLOW | NVMF_OPT_FAIL_FAST_TMO)

 static struct nvme_ctrl *
 nvmf_create_ctrl(struct device *dev, const char *buf)
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index a0ec40a..fd8c7dd 100644
--- a/drivers/nvme/host/fabrics.h
+++ b/drivers/nvme/host/fabrics.h
@@ -15,6 +15,8 @@
 #define NVMF_DEF_RECONNECT_DELAY	10
 /* default to 600 seconds of reconnect attempts before giving up */
 #define NVMF_DEF_CTRL_LOSS_TMO		600
+/* default to 30 seconds of fail fast IO commands  */
+#define NVMF_DEF_FAIL_FAST_TMO		0

 /*
  * Define a host as seen by the target.  We allocate one at boot, but also
@@ -56,6 +58,7 @@ enum {
 	NVMF_OPT_NR_WRITE_QUEUES = 1 << 17,
 	NVMF_OPT_NR_POLL_QUEUES = 1 << 18,
 	NVMF_OPT_TOS		= 1 << 19,
+	NVMF_OPT_FAIL_FAST_TMO	= 1 << 20,
 };

 /**
@@ -89,6 +92,7 @@ enum {
  * @nr_write_queues: number of queues for write I/O
  * @nr_poll_queues: number of queues for polling I/O
  * @tos: type of service
+ * @fast_fail_tmo_ns: Fast I/O fail timeout in nanoseconds;
  */
 struct nvmf_ctrl_options {
 	unsigned		mask;
@@ -111,6 +115,7 @@ struct nvmf_ctrl_options {
 	unsigned int		nr_write_queues;
 	unsigned int		nr_poll_queues;
 	int			tos;
+	unsigned int	fail_fast_tmo;
 };

 /*
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 797c183..4edcaf1 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -281,9 +281,11 @@ static bool nvme_available_path(struct nvme_ns_head *head)

 	list_for_each_entry_rcu(ns, &head->list, siblings) {
 		switch (ns->ctrl->state) {
+		case NVME_CTRL_CONNECTING:
+		    if(test_bit(NVME_CTRL_FAILFAST_EXPIRED, &ns->ctrl->flags))
+				break;
 		case NVME_CTRL_LIVE:
 		case NVME_CTRL_RESETTING:
-		case NVME_CTRL_CONNECTING:
 			/* fallthru */
 			return true;
 		default:
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 1024fec..b6a199e 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -256,6 +256,7 @@ struct nvme_ctrl {
 	struct work_struct scan_work;
 	struct work_struct async_event_work;
 	struct delayed_work ka_work;
+	struct delayed_work failfast_work;
 	struct nvme_command ka_cmd;
 	struct work_struct fw_act_work;
 	unsigned long events;
@@ -289,6 +290,8 @@ struct nvme_ctrl {
 	u16 icdoff;
 	u16 maxcmd;
 	int nr_reconnects;
+	unsigned long flags;
+#define NVME_CTRL_FAILFAST_EXPIRED	0
 	struct nvmf_ctrl_options *opts;

 	struct page *discard_page;
-----------------
Regards,
Victor

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
