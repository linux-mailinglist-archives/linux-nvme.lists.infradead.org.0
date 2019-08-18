Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2354915CC
	for <lists+linux-nvme@lfdr.de>; Sun, 18 Aug 2019 11:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TMgVlJ5mV1e/6dbsWj7xV70Vq33VxkIPf4zOqZYvLDg=; b=ZqI+0cpsUnT8x6ZfFCXNkuHoii
	ATZmsEF47dTujX/azMyvEjZjpPabPhtrsp+l1fTDySK4E6np2IToDhJw76wG0w0Vx2vt32fVquPky
	+DsdpzygTawgwp9Tt+b/9ZRW2k4JWtRoVVko02HziBuTRkTiGGEvoKKbEUTqQgLdLZpFvEOKp2t5X
	Xf3sQ9ulkQj81YHQmtIbRrtqkfqBoRNEER2ORi94TlV9U6PetcACERSQlPb1Pc7yoDUghfjKOnc/m
	tvJYpaNfI8BtJ5GFso1OB/T0RDPyqgbkD5/wHTjo8Swpn4AoeJDqlfXHF8uA9HN//jFHEbgB6WFGk
	oz+dHhOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHDS-0008Ph-22; Sun, 18 Aug 2019 09:11:10 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHBX-0005MY-L7
 for linux-nvme@lists.infradead.org; Sun, 18 Aug 2019 09:09:13 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 18 Aug 2019 12:08:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7I98vef013804;
 Sun, 18 Aug 2019 12:08:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 4/5] nvme-tcp: Add TOS for tcp transport
Date: Sun, 18 Aug 2019 12:08:54 +0300
Message-Id: <1566119335-15058-6-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
References: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_020912_544980_FDE0D494 
X-CRM114-Status: GOOD (  10.54  )
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
 drivers/nvme/host/tcp.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index a534ec6..4a03cab 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1304,6 +1304,18 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
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
@@ -2340,7 +2352,8 @@ static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
 	.allowed_opts	= NVMF_OPT_TRSVCID | NVMF_OPT_RECONNECT_DELAY |
 			  NVMF_OPT_HOST_TRADDR | NVMF_OPT_CTRL_LOSS_TMO |
 			  NVMF_OPT_HDR_DIGEST | NVMF_OPT_DATA_DIGEST |
-			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_NR_POLL_QUEUES,
+			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_NR_POLL_QUEUES |
+			  NVMF_OPT_TOS,
 	.create_ctrl	= nvme_tcp_create_ctrl,
 };
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
