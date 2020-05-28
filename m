Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1471E65DA
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 17:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgYgF/QtVKWD1hU0FQRH8sCjj3CK1YqF+u1A0Mud4j8=; b=V7Vn2qjfGQLXq9
	FRg/axiupUanDqh5WQH4eqP8myy/RKxT2aEI474Tyo5trv/yc8PZGABOkydt6t4BVrUcp/TTp5Mo7
	zOW/88VVLxjyoArHKzvU1XHaXGvfxy5+QE9TYPwdt2qgfWWurXnrrQnx5aP5/or3qaAFMyqVRCdEF
	unosAo+h5bHveiaxHqs0+YPAiReO/KqpvqBSGMiz2EqrEErxeIqPgxKKRe3w8tNi84Za+GQqe5Dvj
	2o6ej3PqHXJwF2D2kGHdl6w8fcAENZk7M0uQPqmRxaSgK8Tg7g1cgUC4E+h9BdtByiCvMa7AZkvgV
	VQHkqCZOcN7Q4EFatQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKK7-0004Jp-Fj; Thu, 28 May 2020 15:19:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKJi-00046G-V4
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 15:19:36 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F131A20814;
 Thu, 28 May 2020 15:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590679174;
 bh=jS4YEsYoWGt+s7wdwumSuGHqfyqftPJFoJ/s8TR4Y1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G0WxIIJy0bdQwXxS+gPprQygC2c1qL1BYsCFLa+e0rSnC9HM9bLzjAxx9IcrfnRmJ
 28Hwt3XeFrLVPyPs63HUxHfPPIOM5Cqy31lJyZwaX5KvVi8t6j5LzxZ6fq3eJQIMmx
 hvM3kfAAlo2DLWH13KhBqd6E1ePJZNqptobEdTAU=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me,
 linux-block@vger.kernel.org, axboe@kernel.dk
Subject: [PATCHv2 2/2] nvme: cancel requests for real
Date: Thu, 28 May 2020 08:19:31 -0700
Message-Id: <20200528151931.3501506-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200528151931.3501506-1-kbusch@kernel.org>
References: <20200528151931.3501506-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_081935_030034_5B423D4C 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Once the driver decides to cancel requests, the concept of those
requests timing out ceases to exist. Use __blk_mq_complete_request() to
bypass fake timeout error injection so that request reclaim may
proceed.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
v1->v2: Use new export rather than loop for success

 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba860efd250d..f65a0b6cd988 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -310,7 +310,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 		return true;
 
 	nvme_req(req)->status = NVME_SC_HOST_ABORTED_CMD;
-	blk_mq_complete_request(req);
+	__blk_mq_complete_request(req);
 	return true;
 }
 EXPORT_SYMBOL_GPL(nvme_cancel_request);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
