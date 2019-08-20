Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302A29609E
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 15:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emtScU1diF0+XicgX456K4ftepFhB3qmIQJENROruyc=; b=gRf3k85AyLROF2
	ksV0toflocEVkVjPN7NOxzVEhxHDSJbda6x4+Km/0yLG/eqZZxN5czcaA4vRSXFOdLBfe+AUmsR5t
	VRdvgXbcVidxlclfcdzJ3B8ci6P+Sv66NovwI0+PDvIeeBmYMJIghWydTKxHtFANRq2o4ornVcalo
	pArdAMjUnuvzxM+tH+VpG19EH7QkWCrxCl+TJDEkNMANJtivmaYLviEubGiVYRUQ3unINOaByfZvk
	/oJSdtQleIW8WSG+wbtytv4e5Tc55/YWzqSpm9/1lZVqgSmfdOOOw0i7xMS4LtRNvdUhKXoXWjpg4
	QkofXZwNoR6/22VtwK6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04PM-0004Hc-FY; Tue, 20 Aug 2019 13:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04NP-0002nt-02
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 13:40:44 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06E6F233FD;
 Tue, 20 Aug 2019 13:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308442;
 bh=wrtHcq4kfUS2OeuyILfRvP+0aTPZhyJjoVgq26BJaiw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CUXMCtF0eEsSXw0Rt63uQcJ2UxeyrNIeEABfPDMjwmZRnYN+gAxXngyuUCXW3zwIx
 jlwz+9j4elue6P0TO7IsTgOs2V/uC8ZQ3p7+T7f4KuVjN3b0oZwPwYMN1JYik1U1Ly
 sXdFMQhcVAkphWBtwYeS0MMzUJe/uq/UnxZaD7BU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 15/44] nvme-rdma: fix possible use-after-free in
 connect error flow
Date: Tue, 20 Aug 2019 09:39:59 -0400
Message-Id: <20190820134028.10829-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134028.10829-1-sashal@kernel.org>
References: <20190820134028.10829-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064043_321973_814480E9 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 Nicolas Morey-Chaisemartin <NMoreyChaisemartin@suse.com>,
 linux-nvme@lists.infradead.org, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit d94211b8bad3787e0655a67284105f57db728cb1 ]

When start_queue fails, we need to make sure to drain the
queue cq before freeing the rdma resources because we might
still race with the completion path. Have start_queue() error
path safely stop the queue.

--
[30371.808111] nvme nvme1: Failed reconnect attempt 11
[30371.808113] nvme nvme1: Reconnecting in 10 seconds...
[...]
[30382.069315] nvme nvme1: creating 4 I/O queues.
[30382.257058] nvme nvme1: Connect Invalid SQE Parameter, qid 4
[30382.257061] nvme nvme1: failed to connect queue: 4 ret=386
[30382.305001] BUG: unable to handle kernel NULL pointer dereference at 0000000000000018
[30382.305022] IP: qedr_poll_cq+0x8a3/0x1170 [qedr]
[30382.305028] PGD 0 P4D 0
[30382.305037] Oops: 0000 [#1] SMP PTI
[...]
[30382.305153] Call Trace:
[30382.305166]  ? __switch_to_asm+0x34/0x70
[30382.305187]  __ib_process_cq+0x56/0xd0 [ib_core]
[30382.305201]  ib_poll_handler+0x26/0x70 [ib_core]
[30382.305213]  irq_poll_softirq+0x88/0x110
[30382.305223]  ? sort_range+0x20/0x20
[30382.305232]  __do_softirq+0xde/0x2c6
[30382.305241]  ? sort_range+0x20/0x20
[30382.305249]  run_ksoftirqd+0x1c/0x60
[30382.305258]  smpboot_thread_fn+0xef/0x160
[30382.305265]  kthread+0x113/0x130
[30382.305273]  ? kthread_create_worker_on_cpu+0x50/0x50
[30382.305281]  ret_from_fork+0x35/0x40
--

Reported-by: Nicolas Morey-Chaisemartin <NMoreyChaisemartin@suse.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/rdma.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 97f668a39ae1c..7b074323bcdf2 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -562,13 +562,17 @@ static int nvme_rdma_alloc_queue(struct nvme_rdma_ctrl *ctrl,
 	return ret;
 }
 
+static void __nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
+{
+	rdma_disconnect(queue->cm_id);
+	ib_drain_qp(queue->qp);
+}
+
 static void nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
 {
 	if (!test_and_clear_bit(NVME_RDMA_Q_LIVE, &queue->flags))
 		return;
-
-	rdma_disconnect(queue->cm_id);
-	ib_drain_qp(queue->qp);
+	__nvme_rdma_stop_queue(queue);
 }
 
 static void nvme_rdma_free_queue(struct nvme_rdma_queue *queue)
@@ -607,11 +611,13 @@ static int nvme_rdma_start_queue(struct nvme_rdma_ctrl *ctrl, int idx)
 	else
 		ret = nvmf_connect_admin_queue(&ctrl->ctrl);
 
-	if (!ret)
+	if (!ret) {
 		set_bit(NVME_RDMA_Q_LIVE, &queue->flags);
-	else
+	} else {
+		__nvme_rdma_stop_queue(queue);
 		dev_info(ctrl->ctrl.device,
 			"failed to connect queue: %d ret=%d\n", idx, ret);
+	}
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
