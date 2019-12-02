Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F1A10EBD6
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 15:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egrg/DrHcY0nkJpPKut76cTxHb00dGb0xCsGnb+U1yU=; b=W7Mf1FoFMClSdf
	sBWYxwH5e8whF6/gfE26CPAhzfSomx0mf1R90ZvWs9TPxlMN0ORAdPPC9PGOEifuddd+Gcupiu9m2
	X2YpeEzu2FksTr+/XeNaL3UXLa/f3MS6+U3Ur/ald76iXhoVV/8xIW+VQeHQy979TK4tdpoacC/K4
	HujVnBRZJXkc5M+BH1YTPL84T6WgAuwf1tgVTAvuIDEX3X/GGSI1B1DF1L3eGuXKDOfLBVUMIYAju
	PLZyU7k/CfnXO3nAtTqlXckjMkgRxh2Qm80t9p4ppeyToqlHJnZrORkPKMiAl7eFRihv1uzdMtznf
	sjrpmvnMuZycfnzZD6ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn2t-0000LA-96; Mon, 02 Dec 2019 14:51:27 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmzz-0005SH-LA
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 14:48:34 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Dec 2019 16:48:12 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xB2EmC1n004689;
 Mon, 2 Dec 2019 16:48:12 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com
Subject: [PATCH 00/16 V2] nvme-rdma/nvmet-rdma: Add metadata/T10-PI support
Date: Mon,  2 Dec 2019 16:47:55 +0200
Message-Id: <20191202144812.147686-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064828_102811_446D06BA 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello Sagi, Christoph, Keith, Martin and Co

This patchset adds metadata (T10-PI) support for NVMeoF/RDMA host side and
target side, using signature verbs API. This set starts with a few preparation
commits to the NVMe host core layer. It continues with NVMeoF/RDMA host
implementation + BIP flag patch (block) + few preparation commits to the NVMe
target core layer. The patchset ends with NVMeoF/RDMA target implementation.

Configuration:
Host:
 - nvme connect --pi_enable --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme

Target:
 - echo 1 > /config/nvmet/subsystems/${NAME}/attr_pi_enable
 - echo 1 > /config/nvmet/ports/${PORT_NUM}/param_pi_enable

The code was tested using Mellanox's ConnectX-4/ConnectX-5 HCAs.
This series applies on top of nvme_5.5 branch cleanly.

Changes from v1:
 - Added Reviewed-by signatures
 - Added namespace features flag (Patch 01/16)
 - Remove nvme_ns_has_pi function (Patch 01/16)
 - Added has_pi field to struct nvme_request (Patch 01/16)
 - Subject change for patch 02/16
 - Fix comment for PCI metadata (Patch 03/16)
 - Rebase over "nvme: Avoid preallocating big SGL for data" patchset
 - Introduce NVME_INLINE_PROT_SG_CNT flag (Patch 05/16)
 - Introduce nvme_rdma_sgl structure (Patch 06/16)
 - Remove first_sgl pointer from struct nvme_rdma_request (Patch 06/16)
 - Split nvme-rdma patches (Patches 06/16, 07/16)
 - Rename is_protected to use_pi (Patch 07/16)
 - Refactor nvme_rdma_get_max_fr_pages function (Patch 07/16)
 - Added ifdef CONFIG_BLK_DEV_INTEGRITY (Patches 07/16, 10/16, 14/16,
   15/16, 16/16)
 - Use existing BIP_MAPPED_INTEGRITY flag (Patches 08/16, 15/16)
 - Added port configfs pi_enable (Patch 14/16)

Israel Rukshin (13):
  nvme: Introduce namespace features flag
  nvme-fabrics: Allow user enabling metadata/T10-PI support
  nvme: Introduce NVME_INLINE_PROT_SG_CNT
  nvme-rdma: Introduce nvme_rdma_sgl structure
  block: Add a BIP_MAPPED_INTEGRITY check to complete_fn
  nvmet: Prepare metadata request
  nvmet: Add metadata characteristics for a namespace
  nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
  nvmet: Rename nvmet_check_data_len to nvmet_check_transfer_len
  nvme: Add Metadata Capabilities enumerations
  nvmet: Add metadata/T10-PI support
  nvmet: Add metadata support for block devices
  nvmet-rdma: Add metadata/T10-PI support

Max Gurtovoy (3):
  nvme: Enforce extended LBA format for fabrics metadata
  nvme: Introduce max_integrity_segments ctrl attribute
  nvme-rdma: Add metadata/T10-PI support

 block/t10-pi.c                    |   4 +
 drivers/nvme/host/core.c          |  75 +++++---
 drivers/nvme/host/fabrics.c       |  11 ++
 drivers/nvme/host/fabrics.h       |   3 +
 drivers/nvme/host/nvme.h          |   9 +-
 drivers/nvme/host/pci.c           |   7 +
 drivers/nvme/host/rdma.c          | 368 +++++++++++++++++++++++++++++++++-----
 drivers/nvme/target/admin-cmd.c   |  37 ++--
 drivers/nvme/target/configfs.c    |  61 +++++++
 drivers/nvme/target/core.c        |  54 ++++--
 drivers/nvme/target/discovery.c   |   8 +-
 drivers/nvme/target/fabrics-cmd.c |  19 +-
 drivers/nvme/target/io-cmd-bdev.c | 115 +++++++++++-
 drivers/nvme/target/io-cmd-file.c |   8 +-
 drivers/nvme/target/nvmet.h       |  40 ++++-
 drivers/nvme/target/rdma.c        | 235 ++++++++++++++++++++++--
 include/linux/nvme.h              |   2 +
 17 files changed, 929 insertions(+), 127 deletions(-)

-- 
2.16.3


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
