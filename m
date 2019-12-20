Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728DF127C9F
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 15:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZ+aT7wnr88WDC3DepH/jWtzIYEUbmkPFDmA7ah4vLw=; b=Dk6KBzJBO6I0Pj
	d7f6PLtkwlsUmm8GahFz6vBs8bamQezPqHmaWXUauAT44vSauhfhqYGT2A/jZwSA7uVBpaI3nTzQn
	K2b7wbvJCjbyfkld5wjKn59RI8OuvG4A5fXJn3AyIHnCQMQtQxuEVrj2+ogGFkJrIFhfDook0gL9W
	HyISz4Otbt6cE8ThodvTCVb/7TzKnaSjlzAKm8RbLlUKYN4hppe54QVBnAr+E8IYxQsYsjdELPhJT
	knHh88IeHSyodN2tnriAVdGv9xA8EN0rhr2JG2mmwu8Pub1XsK9f30jjMEwdXMi2w5L0+Z3/eObhQ
	FTcm5biVhC3Fji6oWW6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJIP-0001YX-Ft; Fri, 20 Dec 2019 14:30:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJHz-0000Cg-Um
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 14:30:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB3EA2465E;
 Fri, 20 Dec 2019 14:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576852199;
 bh=/5aMJwaRdDLfbRD/8GZC/1uh8M6TUwSDTLCSzcArVNU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pC19sYxhb2LTSNuk6y9JyT6uURc55ZKIKjWCO8885Zn8kOhrzhCrx+cIo5Z8SnHTv
 A9MtUzcZ6Q43Oq76Htts62kQRz6p1+ii3DgeIvU8e/YcEzSRqFYhTwZlazwT9cwtJN
 npC9xm+jWm5//MuhM8NN0qblBuEYOkGs0rGd7Tnk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 03/52] nvme-fc: fix double-free scenarios on hw
 queues
Date: Fri, 20 Dec 2019 09:29:05 -0500
Message-Id: <20191220142954.9500-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220142954.9500-1-sashal@kernel.org>
References: <20191220142954.9500-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063000_026307_2E3675A9 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org, "Ewan D . Milne" <emilne@redhat.com>,
 Keith Busch <kbusch@kernel.org>, Himanshu Madhani <hmadhani@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: James Smart <jsmart2021@gmail.com>

[ Upstream commit c869e494ef8b5846d9ba91f1e922c23cd444f0c1 ]

If an error occurs on one of the ios used for creating an
association, the creating routine has error paths that are
invoked by the command failure and the error paths will free
up the controller resources created to that point.

But... the io was ultimately determined by an asynchronous
completion routine that detected the error and which
unconditionally invokes the error_recovery path which calls
delete_association. Delete association deletes all outstanding
io then tears down the controller resources. So the
create_association thread can be running in parallel with
the error_recovery thread. What was seen was the LLDD received
a call to delete a queue, causing the LLDD to do a free of a
resource, then the transport called the delete queue again
causing the driver to repeat the free call. The second free
routine corrupted the allocator. The transport shouldn't be
making the duplicate call, and the delete queue is just one
of the resources being freed.

To fix, it is realized that the create_association path is
completely serialized with one command at a time. So the
failed io completion will always be seen by the create_association
path and as of the failure, there are no ios to terminate and there
is no reason to be manipulating queue freeze states, etc.
The serialized condition stays true until the controller is
transitioned to the LIVE state. Thus the fix is to change the
error recovery path to check the controller state and only
invoke the teardown path if not already in the CONNECTING state.

Reviewed-by: Himanshu Madhani <hmadhani@marvell.com>
Reviewed-by: Ewan D. Milne <emilne@redhat.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/fc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 3f102d9f39b83..59474bd0c728d 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2910,10 +2910,22 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
 static void
 __nvme_fc_terminate_io(struct nvme_fc_ctrl *ctrl)
 {
-	nvme_stop_keep_alive(&ctrl->ctrl);
+	/*
+	 * if state is connecting - the error occurred as part of a
+	 * reconnect attempt. The create_association error paths will
+	 * clean up any outstanding io.
+	 *
+	 * if it's a different state - ensure all pending io is
+	 * terminated. Given this can delay while waiting for the
+	 * aborted io to return, we recheck adapter state below
+	 * before changing state.
+	 */
+	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
+		nvme_stop_keep_alive(&ctrl->ctrl);
 
-	/* will block will waiting for io to terminate */
-	nvme_fc_delete_association(ctrl);
+		/* will block will waiting for io to terminate */
+		nvme_fc_delete_association(ctrl);
+	}
 
 	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING &&
 	    !nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING))
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
