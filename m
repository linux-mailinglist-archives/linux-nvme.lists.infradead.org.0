Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F628ECF8
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 15:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eEqjKQ+R0T4eUchOluE0+7CFbC//L7ePJKgmbVOfmcs=; b=tYT1tdskslu5rpQ5/lAVE7gAiU
	vTsGnFBhS502sZWcoBlXYEo8xU+D7cOtvqL5fSZRwco+hUpfTo0lfTrT32YmnDF8RMffb/EZHntil
	CG1OAMmSUWzwbTiOtYlNa0V9M15XJyMFyu4a5jM53uI3nkFEW7iMjbpoxD0KgfPOLijtrHtAIKQ4K
	Rt6ct9DwucY5KoAu1iatIjjrzPvvfyt/wSBnSGVQgEq94cC+Bgg925cTEI9HZ/iBZnZGOr1Dd7Iay
	pMaXHF6VCQLSpmo0aCxOmHKJCxpPbfGYUSaSyAcFEZv7PVj9WZKpuqE7GPk0EPXpqM/XkBIB11HSI
	umtniAVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFuW-0007ZS-C3; Thu, 15 Aug 2019 13:35:24 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFtB-0005fC-7c
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 13:34:05 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 15 Aug 2019 16:33:48 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7FDXmmt030419;
 Thu, 15 Aug 2019 16:33:48 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 4/5] nvme-tcp: Add TOS for tcp transport
Date: Thu, 15 Aug 2019 16:33:46 +0300
Message-Id: <1565876027-25092-6-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1565876027-25092-1-git-send-email-israelr@mellanox.com>
References: <1565876027-25092-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_063401_880625_F0D84E4A 
X-CRM114-Status: GOOD (  10.45  )
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

TOS provide clients the ability to segregate traffic flows for
different type of data.
One of the TOS usage is bandwidth management which allows setting bandwidth
limits for QoS classes, e.g. 80% bandwidth to controllers at QoS class A
and 20% to controllers at QoS class B.

usage examples:
nvme connect --tos=0 --transport=tcp --traddr=10.0.1.1 --nqn=test-nvme

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/tcp.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index feed0dc..f99301a 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1301,6 +1301,18 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 		goto err_sock;
 	}
 
+	/* Set socket type of service */
+	if (nctrl->opts->tos >= 0) {
+		opt = nctrl->opts->tos;
+		ret = kernel_setsockopt(queue->sock, SOL_IP, IP_TOS,
+				(char *)&opt, sizeof(opt));
+		if (ret) {
+			dev_err(nctrl->device,
+				"failed to set IP_TOS sock opt %d\n", ret);
+			goto err_sock;
+		}
+	}
+
 	queue->sock->sk->sk_allocation = GFP_ATOMIC;
 	if (!qid)
 		n = 0;
@@ -2314,7 +2326,7 @@ static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
 	.allowed_opts	= NVMF_OPT_TRSVCID | NVMF_OPT_RECONNECT_DELAY |
 			  NVMF_OPT_HOST_TRADDR | NVMF_OPT_CTRL_LOSS_TMO |
 			  NVMF_OPT_HDR_DIGEST | NVMF_OPT_DATA_DIGEST |
-			  NVMF_OPT_NR_WRITE_QUEUES,
+			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_TOS,
 	.create_ctrl	= nvme_tcp_create_ctrl,
 };
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
