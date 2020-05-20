Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E911DB277
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 13:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YN15uEjQquUo1xhNFtZik77OE7lS/VStrSVlFBYhzEs=; b=g0BD2Y0+87pIyw
	f5a5qwfXhQYg6vB8E5nKFq8CnpvTvzFmpIPbLhMjLoT7FkRzZPiwZjS+TuWD8IBkcYbwE3vHI5+Ul
	1TMmfQM8up5qKN/pZuWTud+uEyVlowcMHio1X3QfBo18Wt4ft3KKL7sZNkSIwwK2dl/5o20YNP0kf
	LNZo9FTCVt7z+B8ji93q9mPhdK5td3/ThU/6G0sjxIw4fAx7LcnEI8PxlERuv6KuloiJokHGaGdVy
	9E49yREugrRWqeSeydqY7YqSPuGoxYco1DwSTTOUgtkb3uuVl5hcUb6P7+AIG9CJA+iXLpDds3I1t
	BVou1RKnSXoxSZ3rHAiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNM8-0007zm-Bd; Wed, 20 May 2020 11:57:52 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNM1-0007yl-V1
 for linux-nvme@bombadil.infradead.org; Wed, 20 May 2020 11:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5wxFB+oeJxY2LikvP01WxSw60v3LNNOG3VBVBlKjXSU=; b=boC2CSsoaZ2ccLkV7wEUgVJnjs
 vYWE5lXtFf2ixUzlmh6sBctWppqyGfP5S0MDh92uUDtWbpZg7PVvUs7qrXf+Wm9zzO9MhsFaBS5Qd
 Tc8tRiv21gnW/82GM04MQfmQH90aPuUL0DSbZCW6r2q5q7c3opMzAG6TzPygczaNC4PdEYxm4l2np
 A+wezl8jCkraqW5f0t9Us2j6WUTf6aeZN77gRaGKnj0VI5xypzu4zFK+7bKEiurRR3Bl1wqtuvasP
 4lb6W6PEyqY+CX4XVIE6aGjbbLL5TN/80r+YoKD6xyZnxcbQYFWVBOpXqV+RHVXexcwwsXKxPENqs
 hV8nDaaQ==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNM0-0007NW-R6
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 11:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589975845;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5wxFB+oeJxY2LikvP01WxSw60v3LNNOG3VBVBlKjXSU=;
 b=iDWN6FBeQyxH7S8L0aaue6lkyolG9zcxmJ8Zbc503+fo6U7edf6mQ1Y/FtP9GFGa+HqzdB
 8trvwR28PRYPDiRp6+VmDdhc9cTmigyabOv4B+fFb7ZjFcfco3Y+dFPdvfu/d1SvTq80xk
 zCY7ZYufSvD28mPwJls0/krn50FMhYQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589975864;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5wxFB+oeJxY2LikvP01WxSw60v3LNNOG3VBVBlKjXSU=;
 b=C9lkJC0GBeEakLhiK3Sup8BLbaHN7flEYcDOmqwIlz/b+EvRXip4CYjU+uqtsf5YtAF6kY
 hRTNhYSooLDSdIi4WY1wxjU2kG8HChWQLCvHOCuWBVc6Yy9D1qmjmnyVjrzeRfpvChSZfh
 0PzaXCgImyyxz/v9y5YosGyNi4AqDEk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-OmceN6syMfST15PppzBf0w-1; Wed, 20 May 2020 07:57:21 -0400
X-MC-Unique: OmceN6syMfST15PppzBf0w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73406107ACCD;
 Wed, 20 May 2020 11:57:20 +0000 (UTC)
Received: from localhost (ovpn-12-81.pek2.redhat.com [10.72.12.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EF4CB60C05;
 Wed, 20 May 2020 11:57:16 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/3] nvme: add nvme_frozen
Date: Wed, 20 May 2020 19:56:54 +0800
Message-Id: <20200520115655.729705-3-ming.lei@redhat.com>
In-Reply-To: <20200520115655.729705-1-ming.lei@redhat.com>
References: <20200520115655.729705-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Alan Adamson <alan.adamson@oracle.com>,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add one new API of nvme_frozen(), reset handler may use this helper to
query if all ns queues have been frozen completely. Meantime, the reset
handler can check if there is new hardware failure happened. If yes, reset
handler can break from current handling, and schedule a fresh new recovery,
so deadlock or deleting controller & fail all IOs can be avoided.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/nvme/host/core.c | 14 ++++++++++++++
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f3c037f5a9ba..469010607383 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -4243,6 +4243,20 @@ void nvme_wait_freeze(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_wait_freeze);
 
+bool nvme_frozen(struct nvme_ctrl *ctrl)
+{
+	struct nvme_ns *ns;
+	int ret = 0;
+
+	down_read(&ctrl->namespaces_rwsem);
+	list_for_each_entry(ns, &ctrl->namespaces, list)
+		ret += !blk_mq_queue_frozen(ns->queue);
+	up_read(&ctrl->namespaces_rwsem);
+
+	return ret == 0;
+}
+EXPORT_SYMBOL_GPL(nvme_frozen);
+
 void nvme_start_freeze(struct nvme_ctrl *ctrl)
 {
 	struct nvme_ns *ns;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 2e04a36296d9..459e5952ff5f 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -508,6 +508,7 @@ void nvme_unfreeze(struct nvme_ctrl *ctrl);
 void nvme_wait_freeze(struct nvme_ctrl *ctrl);
 void nvme_wait_freeze_timeout(struct nvme_ctrl *ctrl, long timeout);
 void nvme_start_freeze(struct nvme_ctrl *ctrl);
+bool nvme_frozen(struct nvme_ctrl *ctrl);
 
 #define NVME_QID_ANY -1
 struct request *nvme_alloc_request(struct request_queue *q,
-- 
2.25.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
