Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05322674EE
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 20:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEXS1eSXMFMl1bD25kH34NBZQxYA8UtvfvfBOFubjzE=; b=YkPLGvp37eX5HOjBQVaMatevL3
	RSDs8by7zCesrOGvpsL6dsJHozgLuqiAYxlBbK/1f/xS0Z59QMakXgpEKZrI80H0vHBtMGy2VgV8M
	IH16b9qwnOkkz1XFnTIgVXaMigKceMojNNyEOIRinxfyAjStMStL+OQUZCOnmgP7QIk7JLkHEFKEb
	8x9YIl/VdbgVKSLndwGaP9NLhQrSnrlYiokukxi1jIVM3pNhZPTDjrxVLmJI01i/lt2ejg+3Jhu5m
	6NbKolMY5cl5wgZULKeG8Goi3iQHhdEBRkJUqEiClejpH20x8zSlzRhEpl7plP1q74dEsK5WKScoO
	h8ZP/Crw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzsp-0003hl-M8; Fri, 12 Jul 2019 18:02:59 +0000
Received: from [2601:647:4800:973f:10a0:43d6:25f7:7bc3]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzs6-0003D0-Ar; Fri, 12 Jul 2019 18:02:14 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Date: Fri, 12 Jul 2019 11:02:11 -0700
Message-Id: <20190712180211.26333-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190712180211.26333-1-sagi@grimberg.me>
References: <20190712180211.26333-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Provide userspace with nvme discovery controller device instance,
controller traddr and trsvcid. We'd expect userspace to handle
this event by issuing a discovery + connect.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 116c210826c2..76cd3dd8736a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1180,7 +1180,8 @@ int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 EXPORT_SYMBOL_GPL(nvme_set_queue_count);
 
 #define NVME_AEN_SUPPORTED \
-	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | NVME_AEN_CFG_ANA_CHANGE)
+	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | NVME_AEN_CFG_ANA_CHANGE | \
+	 NVME_AEN_CFG_DISC_CHANGE)
 
 static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 {
@@ -3612,6 +3613,30 @@ static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
 	kfree(envp[0]);
 }
 
+static void nvme_disc_aen_uevent(struct nvme_ctrl *ctrl)
+{
+	struct nvmf_ctrl_options *opts = ctrl->opts;
+	char *envp[16];
+	int i, envloc = 0;
+
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_EVENT=discovery");
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_CTRL_NAME=%s",
+			dev_name(ctrl->device));
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRTYPE=%s", opts->transport);
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRADDR=%s", opts->traddr);
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRSVCID=%s",
+			opts->trsvcid ?: "none");
+	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_HOST_TRADDR=%s",
+			opts->host_traddr ?: "none");
+	envp[envloc] = NULL;
+
+	for (i = 0; i < envloc; i++)
+		dev_dbg(ctrl->device, "%s\n", envp[i]);
+	kobject_uevent_env(&ctrl->device->kobj, KOBJ_CHANGE, envp);
+	for (i = 0; i < envloc; i++)
+		kfree(envp[i]);
+}
+
 static void nvme_async_event_work(struct work_struct *work)
 {
 	struct nvme_ctrl *ctrl =
@@ -3702,6 +3727,9 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 		queue_work(nvme_wq, &ctrl->ana_work);
 		break;
 #endif
+	case NVME_AER_NOTICE_DISC_CHANGED:
+		nvme_disc_aen_uevent(ctrl);
+		break;
 	default:
 		dev_warn(ctrl->device, "async event result %08x\n", result);
 	}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
