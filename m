Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59976191475
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=L1wf5OSuvBpWqThWWqzeMU4xbZF8us1aWnGwPrFoa6k=; b=SMb
	b2wAy6N1PhnLw6XO/JHrWkby6OmN5Pcsg2KtXKSi1XHS0UclE6L4jcpgIwKT5o7Y0M9Rz+u6kIyOE
	tRK1WCiuNxCxCGTwePA6TZTpCbtdIK29mfE7AOa44qXQCHfJ8c2vHNJHQ3TvX+C2u2g+XK8N9SrZs
	ehZ7eT8htsemBG4vy8+tQX4Nl0QiEDM3murqfaQxiLvMxBmsjJ2jQlwHAy2ShVq4R/VZD/HPI1sjd
	SuPHIoUbvFwpn/6pLLRB6c/sHwk9E1MsJXHoWzoquY+eusBzI5tywRcsCJYqoOWMbWOb9BWkRh2pH
	mvoZDw8avbnw04bHodjaSYAGp9odV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlWY-0005yd-DM; Tue, 24 Mar 2020 15:31:26 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlV6-0003io-PZ
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:30:00 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Mar 2020 17:29:47 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02OFTkEK013985;
 Tue, 24 Mar 2020 17:29:46 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/7 V3] nvme: Fixes for deleting a ctrl before it was created
Date: Tue, 24 Mar 2020 17:29:38 +0200
Message-Id: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082957_223290_8AF56146 
X-CRM114-Status: GOOD (  10.06  )
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

The patchset starts with small cleanups, continue with the fixs and ends
with adding new warnings.
Calling nvme_sysfs_delete() when the controller is in the middle of
creation may cause several bugs. If the controller is in NEW state we
remove delete_controller file and don't delete the controller. The user
will not be able to use nvme disconnect command on that controller again,
although the controller may be active. Other bugs may happen if the
controller is in the middle of create_ctrl callback and
nvme_do_delete_ctrl() starts. For example, freeing I/O tagset at
nvme_do_delete_ctrl() before it was created or controller use after free
at create_ctrl callback.

Changes from v2:
 - Added Reviewed-by signatures
 - Patches reordering
 - Don't move the calls from the ->remove PCI driver method to the
   nvme_ctrl_ops ->free_ctrl method ((Patch 2/7))
 - Add more details to commit message (Patch 3/7)
 - Split patch "Fix ctrl use-after-free during sysfs deletion"
   (Patches 3/7 and 4/7)

Changes from v1:
 - Added Reviewed-by signatures
 - Patches reordering
 - New patches (2/6 and 3/6)
 - Split to 2 WARN_ON_ONCE (Patches 5/6 and 6/6)

Israel Rukshin (7):
  nvme: Remove unused return code from nvme_delete_ctrl_sync
  nvme-pci: Re-order nvme_pci_free_ctrl
  nvme: Fix ctrl use-after-free during sysfs deletion
  nvme: Make nvme_uninit_ctrl symmetric to nvme_init_ctrl
  nvme: Fix controller creation races with teardown flow
  nvme-rdma: Add warning on state change failure at nvme_rdma_setup_ctrl
  nvme-tcp: Add warning on state change failure at nvme_tcp_setup_ctrl

 drivers/nvme/host/core.c   | 18 ++++++++++--------
 drivers/nvme/host/fc.c     |  3 ---
 drivers/nvme/host/nvme.h   |  1 +
 drivers/nvme/host/pci.c    |  8 +++-----
 drivers/nvme/host/rdma.c   |  9 ++++++---
 drivers/nvme/host/tcp.c    |  9 ++++++---
 drivers/nvme/target/loop.c |  3 ---
 7 files changed, 26 insertions(+), 25 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
