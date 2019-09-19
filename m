Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB368B837E
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 23:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tun89VKsY782crN3eDh5FP+Vigd5wrG3Km+Z/vXHIzM=; b=CMPkz8MdXLRdYh
	+dy33AbYMcQy8Zd1wRjz8dkcRNvHaTOz8T7qyu+blXdoNgK86Au1JYl0k2eLze6hoJdx3JDnSG911
	GF2DKn0of5ck9kBSglibrrAwq3fflPzlfCoWrJVu06QkxnMKyHHDykWKrjwwCXv9Ga1I+7XcFOwSR
	Dii/UZsU7Goxbw+OlGXqvk8u+f3mML9+FtlBDRRs6a7l9J9i7UG9vqUHWD+QtwpRL5SC+1OGtyFzB
	SPx6nPwvSXR8M26KF0n6qST2HwZejuLY1PuMHvhXF0Z3o7ZwYaYQ/nHkwIDwpFRIWv1lWhEDfWwQG
	9yM6xnpO1uhiAu3d53vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB45h-0004Bx-G6; Thu, 19 Sep 2019 21:35:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB44Y-0002EI-PK
 for linux-nvme@lists.infradead.org; Thu, 19 Sep 2019 21:34:44 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B167D2196E;
 Thu, 19 Sep 2019 21:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568928882;
 bh=psXJ6MJ6S6j3WCV1X0TiDLIpnu63F5tER9SbzMxmfZ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cwuT1QkSN4DUmWKJIP7J3WhHJz01xyvni0yWQmad9CRWi9U+Bf8nEyvJNac468Sk8
 aiCKzkYlOxj3BwOVY4vY0WTSrX6hhpJnxF5CRMf54EvwIRrhc4Jd1oAGXzD7nS4PI/
 fLIJQSjrzz0ex4hiidAcZ4qHJBESVdxKNrvcHliQ=
From: kbusch@kernel.org
To: linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 4/6] nvme: Introduce nvme_reset_continue
Date: Fri, 20 Sep 2019 06:34:29 +0900
Message-Id: <20190919213431.7864-5-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919213431.7864-1-kbusch@kernel.org>
References: <20190919213431.7864-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_143442_840146_897D0F01 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

There are times we need to reset the controller in two parts where the
initialization happens in a different context than the disabling. We need
to be able to set the state to RESETTING first in order to prevent another
reset from scheduling while performing a critical section that handles
the disable part. Introduce a new helpwer function, nvme_reset_continue()
that can be called from such contexts after they've set the controller
state to RESETTING.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 12 ++++++++++--
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e03b1765fc01..95b74d020506 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -117,14 +117,22 @@ static void nvme_queue_scan(struct nvme_ctrl *ctrl)
 		queue_work(nvme_wq, &ctrl->scan_work);
 }
 
-int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
+int nvme_reset_continue(struct nvme_ctrl *ctrl)
 {
-	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
+	if (ctrl->state != NVME_CTRL_RESETTING)
 		return -EBUSY;
 	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
 		return -EBUSY;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(nvme_reset_continue);
+
+int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
+{
+	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
+		return -EBUSY;
+	return nvme_reset_continue(ctrl);
+}
 EXPORT_SYMBOL_GPL(nvme_reset_ctrl);
 
 int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl)
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 55ffae820c8f..3ad16a81370b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -497,6 +497,7 @@ int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
+int nvme_reset_continue(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
 int nvme_delete_ctrl(struct nvme_ctrl *ctrl);
 
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
