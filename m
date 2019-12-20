Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96104127D2E
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 15:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBhVDCTA8z/+A6e+uHVr5cTxIjR+W4TJRvYPeD3dCxo=; b=PGyEgNcsi8Bv/b
	D1+E8xDrSXd0ISlh05C9jcF8AoIY0c6X7Gh8AuwII6FAmrzKgT+LJbx0L+2FCNgnqjeHojMFds8lo
	4CjrghqWADlYdlkii9LOPBc9XL0oNDpsKTFu5xhW8FGsGOEM+nbdUjy3weeb11iEPhXFkyuNvD4hD
	out7jTRnsU8nJJUl8oiQgNA16cF8aFL4nAHCW1qN+F5pb4v5spclp+T/LyUq4iYLgvjPZZLIF74Ti
	Hqd2DHU/aHckTlP03WrfIJ3DwWEmy4gwKCIpFO1qtS89JJ2bTMJMDFWbxLGH0+APwjugzONh0QrvB
	KgTXv7auQRuphgVItNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJNl-0007MN-WC; Fri, 20 Dec 2019 14:35:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJMT-0005RE-CE
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 14:35:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E974524684;
 Fri, 20 Dec 2019 14:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576852476;
 bh=7CbyhLown2+ZTssUCg+XJlvPODqqCNyO77ZM0dVKEqI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x4/vMA3r+N+BLB9kBK7BDrwU2XYFoQ7YDGclvJPj7NXObyqaWCUT5Fwh8PUWNMCO1
 o//ufyOO19fRFBrRRwoGtXMKixvGW/IpcANXkj1EjzYaOUqq+T54c+6lK4rSjCpKEz
 Xm3yV1jqPTNaUt1JshAcQMOnR/hq0Qo00BOEQWeY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 02/34] nvme-fc: fix double-free scenarios on hw
 queues
Date: Fri, 20 Dec 2019 09:34:01 -0500
Message-Id: <20191220143433.9922-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220143433.9922-1-sashal@kernel.org>
References: <20191220143433.9922-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063437_486967_8D1CB30B 
X-CRM114-Status: GOOD (  18.20  )
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
index d567035571bf2..1875f6b8a907b 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2894,10 +2894,22 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
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
