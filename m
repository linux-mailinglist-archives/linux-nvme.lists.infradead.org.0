Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B8A9A2E6
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ps17aOJoEoqgTEK4ZBlof4QnnWm/PbDm2F+tinz8BKI=; b=OnMIwevDX8wl678PfiU3aG3fMf
	hMYnul5nfWD0h60E+7H8BKnU0YwSEAYDEsfZaCWZHBagiktqN4uXKqxAGN3cBYyReATs4T4EthVd0
	tRjBdBNx+60r4IVk9I+JVA19oahUy99BU4uP/9wPoFmTuTTKzwddBSQY7XMGvHTtf2zxsEQOBxlfZ
	rVQu8LsP/1DnyacWLi8oEPqNlsPYzeqvxSejn9B2zwBdxriY3/LwY+FYe58Jgmlk3qYeO1q3uOs+W
	3FnzoI2KS8BHvofFZVZ91RSkMaLbqSyx5ISBmpEVoJsJSEMYa2DwbwEsdvwnZKIkBKsrrorioqiXk
	fqiEhdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vZo-0002vi-17; Thu, 22 Aug 2019 22:29:04 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vZ6-0002Gi-V0; Thu, 22 Aug 2019 22:28:21 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 4/4] nvme: fire discovery log page change events to
 userspace
Date: Thu, 22 Aug 2019 15:28:18 -0700
Message-Id: <20190822222818.9845-5-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822222818.9845-1-sagi@grimberg.me>
References: <20190822222818.9845-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Provide userspace with nvme discovery controller device instance,
controller traddr and trsvcid. We'd expect userspace to handle
this event by issuing a discovery + connect.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7b4bd6c32fe1..eb40b7f9e5a6 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3637,6 +3637,30 @@ static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
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
@@ -3727,6 +3751,9 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
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
