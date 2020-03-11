Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F52B181BEA
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 16:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/DWLKL4JL5lq4fMdPF74kxwgxcWRm6snvu1d361m6iM=; b=jRE
	Gyo+E8SZkUXTyYLZmeLjVw/7v7uGwNqBdTz1aSTMMgYmzyHQ0Faga9t3F7Mrp/ZnmkR2hcqxqNbLx
	/oATgbagpEgNfDgZurDpTWURpTVlKenRztyjS/YijgI3ykgm5zTqe70duzE3tWIz7ivyec5a+1otG
	X4CuBRKv0F3Yqlb5rm7BpMGatPipbUVFkHXT4pzmW10EIFCseJLqtPXuwfTK39RrPwSST2j500bBg
	2OQPVG+6y0quBw7K4qT9h1J3053LAhHtBJHnziTgj4k5v34SHVnlNtEJqA+4ojlti82U4nMgBb9Ip
	oQSEVtVxtAPlRebpn0WvfRMxBiMCsVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2rQ-0004UY-0G; Wed, 11 Mar 2020 15:01:28 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2qv-0004Py-SW
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 15:01:00 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 11 Mar 2020 17:00:50 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02BF0oVl002953;
 Wed, 11 Mar 2020 17:00:50 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/4] nvme: Fixes for deleting a ctrl before it was created
Date: Wed, 11 Mar 2020 17:00:45 +0200
Message-Id: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_080058_327832_B0E5F0C7 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
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
Cc: Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The patchset starts with warning fixes on this scenario, continue with
small cleanup and ends with the actual fix.
Calling nvme_sysfs_delete() when the controller is in the middle of
creation may cause several bugs. If the controller is in NEW state we
remove delete_controller file and don't delete the controller. The user
will not be able to use nvme disconnect command on that controller again,
although the controller may be active. Other bugs may happen if the
controller is in the middle of create_ctrl callback and
nvme_do_delete_ctrl() starts. For example, freeing I/O tagset at
nvme_do_delete_ctrl() before it was created or controller use after free
at create_ctrl callback.

Israel Rukshin (4):
  nvme-rdma: Fix warning at nvme_rdma_setup_ctrl
  nvme-tcp: Fix warning at nvme_tcp_setup_ctrl
  nvme: Remove unused return code from nvme_delete_ctrl_sync
  nvme: Fix controller use after free at create_ctrl callback

 drivers/nvme/host/core.c    | 13 ++++++-------
 drivers/nvme/host/fabrics.c |  1 +
 drivers/nvme/host/nvme.h    |  1 +
 drivers/nvme/host/rdma.c    |  8 ++++++--
 drivers/nvme/host/tcp.c     |  8 ++++++--
 5 files changed, 20 insertions(+), 11 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
