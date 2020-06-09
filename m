Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EDF1F4A08
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 01:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3orpgfla0wPl45qjkwdtn7rfGzyQc6MzcHTtIBiAxDc=; b=jmrp0mLwtJNSRN
	+hFk+yThIQZzSVwRAS7EEOi01QvTU5IFOJP2novZEuq0FnyN+XNuL0EB25TcSEDrCdVH8bf8fejvb
	VGMd+ph6FX/g7DGGeZdtT0EXcWorPS22ZEP50ocBfpVYXo6Nknj2d/+sweRgSX6eFH+J6fAtGGPLz
	vgVbclxxQld9Tp8VJFNZe7NMbqbbXTnIdUExW2LZinTpt7Pyi2JV1At6nX/1vZLNxjhLdM6DKX3gy
	ogQwONDc4mw/brT/a2vJXjvzfDpsvPCLEVP0RLVA5V0XSQBWPSUVAIvGrkYor//fmPTyB96K9NCg1
	HUzWuig6GfHoMkcjk7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jinX6-0001hT-NG; Tue, 09 Jun 2020 23:19:52 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jinX2-0001gl-MJ
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 23:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591744789; x=1623280789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rX9MQVl3ETA5bxnKbriiH5IzU5SYG2XueKvDEwi/zdg=;
 b=MAVVKgpwS8tO/WUVron0P83RVfBczIm/XIaOwOsbiyqWHnlAcgtdlTNf
 W7AmnLTiIuU1BkoNhqOqGliNGrisJ07o+7OltiaJ0dmVy5GLS/vWnBEi3
 bsa93Q08f+yrSGkRRTgvJUwrSXOXcj6evdmOnWI4CkqvOJj7F5LHGgKFb
 rJFXu2uN2wclOopSt4gq4YOlR/uVQ6r4VpU/6yg7bA9jBLNR0UCGrR8ni
 wZvzsf11Jm0ztOhFanBA5c+dckpDmBlv0FzvAnAcdPkGME7GtiBi8OlOE
 yk886yih3ofs0ZZVV+/vswp8Ozu9jev8j4zsZGFIWIgnAhTdcc1SAac9a w==;
IronPort-SDR: cpb39FkNtMS7DWoj5yMpYgkHJ79WL7eHCKf8FWJ1/chF4/6WiKKsfQYI9b+mH7SFCGamgfYlz6
 PO+vvIFSS8Ydkm+QjhNUF6TmCH7e12DkYzD8se8kFrn25eZVZDJ5t2cxPMMg/Sp8aegg6WDmrP
 5FLNccMKiG40Iqg16KLMetf9r7T/r0iW19HXjQU49+RFvgp5kiFMi39v2grHYFm5f9BLsDSXBr
 ET44Pt1qK1r3aiFYzvvVUYxdREWsPU40SWDQhqyAe3aafDZJexhf62IHuXfZA3UvKRfhlNAFx1
 7Yc=
X-IronPort-AV: E=Sophos;i="5.73,493,1583164800"; d="scan'208";a="140998974"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 10 Jun 2020 07:19:45 +0800
IronPort-SDR: nehisqygVIbHXnCRme7AmibzX+5xTSVcijlUACtUH5YWG9rN2P+atzHBcmv84USxObhrpu5oME
 czRe7areOJz0hGQOyHWbONGzlMlwL64to=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 16:08:39 -0700
IronPort-SDR: Zrd+NtxsbsSyfalayaMJwUQuVbofgkJUAIMnHlzHAOe9fI5jgtcszRhM73+JN2Zgp3Yc0a4Cus
 l1iq/gpi1QEw==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 09 Jun 2020 16:19:45 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2] nvmet: fail outstanding host posted AEN req
Date: Tue,  9 Jun 2020 16:19:42 -0700
Message-Id: <20200609231942.47808-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_161948_798373_8ACFB9CF 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In function nvmet_async_event_process() we only process AENs iff
there is an open slot on the ctrl->async_event_cmds[] && aen
event list posted by the target is not empty. This keeps host
posted AEN outstanding if target generated AEN list is empty.
We do cleanup the target generated entries from the aen list in
nvmet_ctrl_free()-> nvmet_async_events_free() but we don't
process AEN posted by the host. This leads to following problem :-

When processing admin sq at the time of nvmet_sq_destroy() holds
an extra percpu reference(atomic value = 1), so in the following code
path after switching to atomic rcu, release function (nvmet_sq_free())
is not getting called which blocks the sq->free_done in
nvmet_sq_destroy() :-

nvmet_sq_destroy()
 percpu_ref_kill_and_confirm()
 - __percpu_ref_switch_mode()
 --  __percpu_ref_switch_to_atomic()
 ---   call_rcu() -> percpu_ref_switch_to_atomic_rcu()
 ----     /* calls switch callback */
 - percpu_ref_put()
 -- percpu_ref_put_many(ref, 1)
 --- else if (unlikely(atomic_long_sub_and_test(nr, &ref->count)))
 ----   ref->release(ref); <---- Not called.

This results in indefinite hang:-

  void nvmet_sq_destroy(struct nvmet_sq *sq)
...
          if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq) {
                  nvmet_async_events_process(ctrl, status);
                  percpu_ref_put(&sq->ref);
          }
          percpu_ref_kill_and_confirm(&sq->ref, nvmet_confirm_sq);
          wait_for_completion(&sq->confirm_done);
          wait_for_completion(&sq->free_done); <-- Hang here

Which breaks the further disconnect sequence. This problem seems to be
introduced after commit 64f5e9cdd711b ("nvmet: fix memory leak when
removing namespaces and controllers concurrently").

This patch processes the outstanding ctrl->async_event_cmd[] until
there are no cmds available in array irrespective of aen list if
empty or not.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
* Chnages from V1:

1. Isolate host posted target controller AEN cmds cleanup into separate
   routine.

---
 drivers/nvme/target/core.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 6392bcd30bd7..86d89b16cf48 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -129,6 +129,21 @@ static u32 nvmet_async_event_result(struct nvmet_async_event *aen)
 	return aen->event_type | (aen->event_info << 8) | (aen->log_page << 16);
 }
 
+static void nvmet_async_events_failall(struct nvmet_ctrl *ctrl, u16 status)
+{
+	struct nvmet_req *req;
+
+	mutex_lock(&ctrl->lock);
+	while (ctrl->nr_async_event_cmds) {
+		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
+		mutex_unlock(&ctrl->lock);
+		trace_nvmet_async_event(ctrl, req->cqe->result.u32);
+		nvmet_req_complete(req, status);
+		mutex_lock(&ctrl->lock);
+	}
+	mutex_unlock(&ctrl->lock);
+}
+
 static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
 {
 	struct nvmet_async_event *aen;
@@ -786,8 +801,16 @@ void nvmet_sq_destroy(struct nvmet_sq *sq)
 	 * If this is the admin queue, complete all AERs so that our
 	 * queue doesn't have outstanding requests on it.
 	 */
-	if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq)
+	if (ctrl && ctrl->sqs && ctrl->sqs[0] == sq) {
 		nvmet_async_events_process(ctrl, status);
+		/*
+		 * Target controller's host posted events needs to be explicitly
+		 * checked and cleared since there is no 1 : 1 mapping between
+		 * host posted AEN requests and target generated AENs on the
+		 * target controller's aen_list and async_event_cmds array.
+		 */
+		nvmet_async_events_failall(ctrl, status);
+	}
 	percpu_ref_kill_and_confirm(&sq->ref, nvmet_confirm_sq);
 	wait_for_completion(&sq->confirm_done);
 	wait_for_completion(&sq->free_done);
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
