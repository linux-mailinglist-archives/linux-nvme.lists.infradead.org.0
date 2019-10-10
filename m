Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC9D2E50
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NazeuBZY6Gp4fhg2RsQ80iX+gxajlIVeGUyHEyLL1yY=; b=FuoCz4RcCnmCXk
	XBupzTaKsHMfjA8aGNmELqH/v0Z+WraJMj6xnIwvPUPSR0KFUzMul5CAWIpocOEb1g0pRKXtEvnJu
	WagETuuqNiPqH9bpvAj2ZqrhBL/rhK9R0jn0PkBkO+ZSK7aYCzuXb1pFkzaxV514+8jGWwZHFMsJD
	g2Rxiav0GDk42LZOyjVbWGUdztlKOaBIpYPaCd6pIDzNwrS36nEJ3W0UtZv/imS/+bOApdWw6iB8i
	TR6pgV0sCwfZY7/vcivPDbVnsdtAVEfBKlvP3M39OFODGbCMpSKgMQ0Xu+lyLCa8G4LvBNNS7PQqX
	LVZp+klp5vrNEKMiMWLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaxI-0002SZ-DS; Thu, 10 Oct 2019 16:06:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIawZ-0001y7-O7
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:05:37 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92E6E2196E;
 Thu, 10 Oct 2019 16:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570723535;
 bh=aPWt7dFS7XSohY0+kikBNWQREVIAp+k7o8umCuu6umc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rKRPVDwEV78fz5Hflc9XisXDPtqIIffGxOj8l21dAQkrUtmx7XDOFqlHCbuzDO1pc
 8LSaC/b8wvUK4ALxKQ7U54yn3LO6LKTIatAzGPJfk4BCqrBNp2iqTz2PNpMvVS7vXo
 L7BD1iPf58f/LZRUaB8fxhJl7Ixo89hrmYjL4XYs=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCHv3 3/5] nvme: Restart request timers in resetting state
Date: Fri, 11 Oct 2019 01:05:25 +0900
Message-Id: <20191010160527.22376-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010160527.22376-1-kbusch@kernel.org>
References: <20191010160527.22376-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_090535_822353_14C3FDA7 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Judy Brock <judy.brock@samsung.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A controller in the resetting state has not yet completed its recovery
actions. The pci and fc transports were already handling this, so update
the remaining transports to not attempt additional recovery in this
state by just restarting the request timer.

Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/rdma.c | 8 ++++++++
 drivers/nvme/host/tcp.c  | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 4d280160dd3f..f19a28b4e997 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1701,6 +1701,14 @@ nvme_rdma_timeout(struct request *rq, bool reserved)
 	dev_warn(ctrl->ctrl.device, "I/O %d QID %d timeout\n",
 		 rq->tag, nvme_rdma_queue_idx(queue));
 
+	/*
+	 * Restart the timer if a controller reset is already scheduled. Any
+	 * timed out commands would be handled before entering the connecting
+	 * state.
+	 */
+	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
+		return BLK_EH_RESET_TIMER;
+
 	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
 		/*
 		 * Teardown immediately if controller times out while starting
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 385a5212c10f..33de2fddfbb2 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -2044,6 +2044,14 @@ nvme_tcp_timeout(struct request *rq, bool reserved)
 	struct nvme_tcp_ctrl *ctrl = req->queue->ctrl;
 	struct nvme_tcp_cmd_pdu *pdu = req->pdu;
 
+	/*
+	 * Restart the timer if a controller reset is already scheduled. Any
+	 * timed out commands would be handled before entering the connecting
+	 * state.
+	 */
+	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
+		return BLK_EH_RESET_TIMER;
+
 	dev_warn(ctrl->ctrl.device,
 		"queue %d: timeout request %#x type %d\n",
 		nvme_tcp_queue_id(req->queue), rq->tag, pdu->hdr.type);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
