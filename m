Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B76480A38
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 11:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sF8IcAGreeqlSTPSgRK9+lV8ZUP6u0y4g4LAkg4d5Wg=; b=qvA388oRKxNXF3/ky+FQQofGoG
	JrtsM7DeWjNOm7alASxJkh7SPS/++kcvpsOOHF6nPJMWh3yUyR63nIzUZZEqBiwBaIB4bQWfmr19h
	RsX57whxT6gd8LXx7s6BhWRjWXzTWeMTXIODvCrnP77/BOuyvGY+wikLzjWl8bEbVm8COWo/uCxR7
	7hHkJsWfDqXYJ0JyodZEu8rWZZ0pEIBwuSBkR0xhe04kBsIaDzMcf3Oe6NikQ9yEn6C5+Ot/MUK6N
	PLAfxfIt6DrWadup9OMppBEAkJx48gVhYRv+5acpvhiZi0XcNR7fQ2Vyslf8Dz4boiGlfbr/3tnyV
	hfYSZEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huDFf-0003Mx-TB; Sun, 04 Aug 2019 09:56:31 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huDEz-000342-TF
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 09:55:53 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 Aug 2019 12:55:39 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x749tdhm028480;
 Sun, 4 Aug 2019 12:55:39 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 2/2] nvme-rdma: Add TOS for rdma transport
Date: Sun,  4 Aug 2019 12:55:29 +0300
Message-Id: <1564912530-15404-2-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_025550_365564_58F9B244 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For RDMA transports, TOS is an extension of IB QoS to provide clients
the ability to segregate traffic flows for different type of data.
RDMA CM abstract it for ULPs using rdma_set_service_type().
Internally, each traffic flow is represented by a connection with all of
its independent resources like that of a normal connection, and is
differentiated by service type. In other words, there can be multiple qp
connections between an IP pair and each supports a unique service type.

Note: In addition QOS must be configured on the relevant HCA on the
target (send RDMA commands) and initiator to effect the traffic.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/rdma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 13743b97a315..091f1d2f108f 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1758,16 +1758,18 @@ static int nvme_rdma_conn_rejected(struct nvme_rdma_queue *queue,
 
 static int nvme_rdma_addr_resolved(struct nvme_rdma_queue *queue)
 {
+	struct nvme_ctrl *ctrl = &queue->ctrl->ctrl;
 	int ret;
 
 	ret = nvme_rdma_create_queue_ib(queue);
 	if (ret)
 		return ret;
 
+	if (ctrl->opts->tos >= 0)
+		rdma_set_service_type(queue->cm_id, ctrl->opts->tos);
 	ret = rdma_resolve_route(queue->cm_id, NVME_RDMA_CONNECT_TIMEOUT_MS);
 	if (ret) {
-		dev_err(queue->ctrl->ctrl.device,
-			"rdma_resolve_route failed (%d).\n",
+		dev_err(ctrl->device, "rdma_resolve_route failed (%d).\n",
 			queue->cm_error);
 		goto out_destroy_queue;
 	}
-- 
2.16.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
