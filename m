Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5305A191471
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iHa0yEcCY+jYg3hl+Sxyv1DbSQIYwI5KsEHm9IrCzLk=; b=lvELEwtx2oBaREeo/6anEfZRAG
	y3PDoN3GmdWVxG4NJ3p9CvUO3x9hEd6n8Uk1/TESmIusL+0AIhXV6LTTXI60nnvApMTm917FOZw1e
	Vr4HlwDJcprxBfnERRbtBXKmCmzBQd/trn+FYru1HwXpz5B+/c4u+BfzjAYhFlNP/stM5Fcw6xDKR
	CTEeMjiDx+HcRlTiyodl9Dxi5Lgcl7okPyThlci0UMFgBcs2qBZVv3h4Rz0/QP2wcHtmQLzSnU6bL
	JPzz/LHZevI/b3GauFp4Xyls8Ki8t7Rmm1lxBh1A9Hkqn3bX8AmsHbDqKdy90XxJtSERRCz0hu813
	CuIt/kXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlWD-0005eR-7k; Tue, 24 Mar 2020 15:31:05 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlV6-0003in-NA
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:29:59 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Mar 2020 17:29:47 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02OFTkEP013985;
 Tue, 24 Mar 2020 17:29:47 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 5/7] nvme: Fix controller creation races with teardown flow
Date: Tue, 24 Mar 2020 17:29:43 +0200
Message-Id: <1585063785-14268-6-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082957_153350_A5732325 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Calling nvme_sysfs_delete() when the controller is in the middle of
creation may cause several bugs. If the controller is in NEW state we
remove delete_controller file and don't delete the controller. The user
will not be able to use nvme disconnect command on that controller again,
although the controller may be active. Other bugs may happen if the
controller is in the middle of create_ctrl callback and
nvme_do_delete_ctrl() starts. For example, freeing I/O tagset at
nvme_do_delete_ctrl() before it was allocated at create_ctrl callback.

To fix all those races don't allow the user to delete the controller
before it was fully created.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 5 +++++
 drivers/nvme/host/nvme.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba064fd..9961d0e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3228,6 +3228,10 @@ static ssize_t nvme_sysfs_delete(struct device *dev,
 {
 	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
 
+	/* Can't delete non-created controllers */
+	if (!ctrl->created)
+		return -EBUSY;
+
 	if (device_remove_file_self(dev, attr))
 		nvme_delete_ctrl_sync(ctrl);
 	return count;
@@ -4039,6 +4043,7 @@ void nvme_start_ctrl(struct nvme_ctrl *ctrl)
 		nvme_queue_scan(ctrl);
 		nvme_start_queues(ctrl);
 	}
+	ctrl->created = true;
 }
 EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index d800b9a..2e04a36 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -259,6 +259,7 @@ struct nvme_ctrl {
 	struct nvme_command ka_cmd;
 	struct work_struct fw_act_work;
 	unsigned long events;
+	bool created;
 
 #ifdef CONFIG_NVME_MULTIPATH
 	/* asymmetric namespace access: */
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
