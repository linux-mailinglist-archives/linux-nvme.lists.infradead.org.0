Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2C81C3F39
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 17:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KLHG8d+sJ1z9h9+ns7u8MLe1TZuUNXiu6X+J1HVRBGI=; b=AFPuwVF63k6U4C
	5hj70wnQprbIcphvxJI2I18vumGe1/Yqo89ePWtUrX9+wOkXpql167AGIsS1YDrZjL2WfmBfcLa4R
	lI0Z8mAoTdafVmNtPH0Yxp2RwmoFOERTCaMbNorMvgBc5Bo1T9AwwHP5Yu1ou++rDu+QKJT13e0RC
	Wbw/vAJLisfBqENmKTdVNn39E0aQk672uSaOXDBQ4nN2Ik4AxfQ8ncbUB9jQmDjTkmm3ZjMhWWPoW
	R9AC9GeoLhFUxo4NOTgquGppZBBzqUHONTdkOoUoY8dppLxOq8xoLzzOAMKOlabjM/qf6GkiI4D3J
	8Rzs0M+6LF2oVa6cguKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdV8-00022w-7H; Mon, 04 May 2020 15:59:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdTv-000158-UJ
 for linux-nvme@bombadil.infradead.org; Mon, 04 May 2020 15:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=8B5eMQ+EqyKkliGOX+y4adhs12V79SBPe3e3sKaZHKs=; b=mquPg2aEN1KfqEnSmeGR9npYrX
 I47qlglV8VjwyY9hQaYkjlPCXSDrhjwv+A0xA9MeldPiL5rd6QxqVVV5GLL48BiDqloScUPKtCrR8
 LpcqyNhaLeEGln/37x1qeMhBmf0VMrVCnKevKMtfCioeRJVQMc7s3r/dZ0OaZkHQqtv9AIabyMpf7
 et2kTQvbDdR5rTpIY3uwdZtClN9nozVcHcy/XwUAPTxJzRn2EB25RVDZ0JC137YkWUKD2MbtuwMa4
 fwCs2K4Vq8bjZNgkSk+EvspB64tyJplHvN1hs/Kykm24tJ3ponD2wrPOUXffTM4642uWm8PFpNEhB
 QcCnCMSg==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdTs-0001uQ-8y
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 15:58:10 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 May 2020 18:57:55 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 044FvtCC017882;
 Mon, 4 May 2020 18:57:55 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 00/16 v7] nvme-rdma/nvmet-rdma: Add metadata/T10-PI support
Date: Mon,  4 May 2020 18:57:39 +0300
Message-Id: <20200504155755.221125-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 idanb@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello Sagi, Christoph, Keith, Martin, Jens, James and Co

This patchset adds metadata (T10-PI) support for NVMeoF/RDMA host side
and target side, using signature verbs API. This set starts with a few
preparation commits to the the block layer and NVMe host core layer. It
continues with NVMeoF/RDMA host implementation and preparations to NVMe
target core layer. The patchset ends with NVMeoF/RDMA target
implementation.

In V7 I mainly did some refactoring to NVMe/RDMA drivers for host and
target sides according to Christoph's suggestions. As agreed, for the
initial mode, we'll use T10-PI/metadata for capable devices and act
according to target controller and namespaces configuration.

Configuration:
Host:
 - same as before

Target:
 - echo 1 > /config/nvmet/subsystems/${NAME}/attr_pi_enable
 - echo 1 > /config/nvmet/ports/${PORT_NUM}/param_pi_enable

The code was tested using Mellanox's ConnectX-4/ConnectX-5 HCAs.
This series applies on top of nvme_5.8 branch cleanly.

Changes from v6:
 - added preparation patch for genhd.h
 - added "Reviewed-by" (Christoph) to patches 2, 3, 4, 6, 10, 13
 - refactor nvme-rdma/nvmet-rdma code according to Christoph suggestions
 - rename md to metadata to make code more readable
 
Changes from v5:
 - rebased over nvme_5.8
 - configure RDMA controllers for T10-PI by default (if capable)
 - removed RW api patch for exporting single MR length (will add it in the future if needed)
 - Implemented Christoph's suggestions for NVMe host core
 
Changes from v4:
 - removed get_mdts patches (merged)
 - added enum nvme_ns_features instead of defines (patch 1/17)
 - rename pi/prot to md (patches 2/17 + 6/17 + 8/17 + 9/17 + 10/17)
 - another rebase

Changes from v3:
 - Added Reviewed-by signatures
 - New RDMA/rw patch (Patch 17/19)
 - Add mdts setting op for controllers (Patches 14/19, 18/19)
 - Rename NVME_NS_DIX_SUPPORTED to NVME_NS_MD_HOST_SUPPORTED and
   NVME_NS_DIF_SUPPORTED to NVME_NS_MD_CTRL_SUPPORTED (Patch 01/19)
 - Split "nvme: Introduce namespace features flag" patch (patch 02/19)
 - Rename nvmet_rdma_set_diff_domain to nvmet_rdma_set_sig_domain
   and nvme_rdma_set_diff_domain to nvme_rdma_set_sig_domain
   (Patches 08/19, 19/19)
 - Remove ns parameter from nvme_rdma_set_sig_domain/nvmet_rdma_set_sig_domain
   functions (patch 08/19, 19/19)
 - Rebase over nvme-5.7 branch

Changes from v2:
 - Convert the virtual start sector (which passed to bip_set_seed function)
   to be in integrity interval units (Patch 14/15)
 - Clarify some commit messages

Changes from v1:
 - Added Reviewed-by signatures
 - Added namespace features flag (Patch 01/15)
 - Remove nvme_ns_has_pi function (Patch 01/15)
 - Added has_pi field to struct nvme_request (Patch 01/15)
 - Subject change for patch 02/15
 - Fix comment for PCI metadata (Patch 03/15)
 - Rebase over "nvme: Avoid preallocating big SGL for data" patchset
 - Introduce NVME_INLINE_PROT_SG_CNT flag (Patch 05/15)
 - Introduce nvme_rdma_sgl structure (Patch 06/15)
 - Remove first_sgl pointer from struct nvme_rdma_request (Patch 06/15)
 - Split nvme-rdma patches (Patches 06/15, 07/15)
 - Rename is_protected to use_pi (Patch 07/15)
 - Refactor nvme_rdma_get_max_fr_pages function (Patch 07/15)
 - Added ifdef CONFIG_BLK_DEV_INTEGRITY (Patches 07/15, 09/15, 13/15,
   14/15, 15/15)
 - Added port configfs pi_enable (Patch 14/15)

Israel Rukshin (9):
  nvme: introduce NVME_INLINE_METADATA_SG_CNT
  nvme-rdma: introduce nvme_rdma_sgl structure
  nvmet: add metadata characteristics for a namespace
  nvmet: rename nvmet_rw_len to nvmet_rw_data_len
  nvmet: rename nvmet_check_data_len to nvmet_check_transfer_len
  nvme: add Metadata Capabilities enumerations
  nvmet: add metadata/T10-PI support
  nvmet: add metadata support for block devices
  nvmet-rdma: add metadata/T10-PI support

James Smart (1):
  nvme: make nvme_ns_has_pi accessible to transports

Max Gurtovoy (6):
  block: always define struct blk_integrity in genhd.h
  nvme: introduce namespace features flag
  nvme: introduce NVME_NS_METADATA_SUPPORTED flag
  nvme: introduce max_integrity_segments ctrl attribute
  nvme: enforce extended LBA format for fabrics metadata
  nvme-rdma: add metadata/T10-PI support

 drivers/nvme/host/core.c          |  83 +++++++---
 drivers/nvme/host/lightnvm.c      |   5 +-
 drivers/nvme/host/nvme.h          |  17 ++-
 drivers/nvme/host/pci.c           |   6 +
 drivers/nvme/host/rdma.c          | 313 ++++++++++++++++++++++++++++++++++----
 drivers/nvme/target/admin-cmd.c   |  40 +++--
 drivers/nvme/target/configfs.c    |  58 +++++++
 drivers/nvme/target/core.c        | 122 +++++++++++----
 drivers/nvme/target/discovery.c   |   8 +-
 drivers/nvme/target/fabrics-cmd.c |  15 +-
 drivers/nvme/target/io-cmd-bdev.c | 113 +++++++++++++-
 drivers/nvme/target/io-cmd-file.c |   6 +-
 drivers/nvme/target/nvmet.h       |  33 +++-
 drivers/nvme/target/rdma.c        | 231 +++++++++++++++++++++++++---
 include/linux/genhd.h             |   4 -
 include/linux/nvme.h              |   6 +
 16 files changed, 919 insertions(+), 141 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
