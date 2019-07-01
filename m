Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 239261187C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VWFTSRBkCEXA5Aj4U1/7ckgp7SOjgHtXGqEdmqINkLM=; b=bBKrPB2uIPO+5zGvVJMCKwFW5l
	5VxPMR7N+y23QHw6IG/DaXDgizEiYSvkg5W07JNO/VNhXc309+ZtzS9yzwiCtV2P1WLOErGDzp9GF
	yhtIXp6kHRlcgSeSmK+1t38D2Urs8LFJzMNuXKxBYoeH1X1Q0PQeC41ALYFsiv/1GBcMeA1Mi3622
	6Xvqzi2qcXl7BzF0wlPMNv4ogPPGlQBa4nx8j3BYe29pQHVbHASS/LLIicl7mHt6y9lhHhz0ZWM56
	Xl5zjt9jOScLvfqDU/CLDT9nBOx7a6i/yoEiUvwlejfMKT1IPipZ97i1EciLO3ZMu1nIgvqPh1C1A
	2DkxxY9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMADw-0001Tc-Gg; Thu, 02 May 2019 11:50:00 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMADE-0000sv-Qf
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:49:54 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 18FB17DCE0;
 Thu,  2 May 2019 11:49:16 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3B6C217DDF;
 Thu,  2 May 2019 11:49:07 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 07/10] nvme/core: add nvme-mdev core driver
Date: Thu,  2 May 2019 14:47:58 +0300
Message-Id: <20190502114801.23116-8-mlevitsk@redhat.com>
In-Reply-To: <20190502114801.23116-1-mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 02 May 2019 11:49:16 +0000 (UTC)
X-Spam-Note: CRM114 run bypassed due to message size (192044 bytes)
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Fam Zheng <fam@euphon.net>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Maxim Levitsky <mlevitsk@redhat.com>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, Nicolas Ferre <nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is main commit in the series, adding the mediated nvme
driver.

The idea behind this driver is based on paper you can find at
https://www.usenix.org/conference/atc18/presentation/peng
But this is an independent implementation.

This mdev device exposes a NVME 1.3 virtual device to any VFIO user
which represents an partition (or whole namespace) of a host NVME device.

Unlike the paper, the driver/device uses
one polling thread per mediated device,
and only needs one hw queue per it to achieve near native performance
(but can use more that one hw queue, in which case it splits the queues
between virtual nvme queues thus supporting n:m mapping between
host hw queues and the guest virtual queues).

The nvme-mdev can't yet be used after this commit, as no nvme device
drivers support mediation (support is added in the next commit to
nvme-pci)

The driver can use the shadow doorbell nvme optional feature,
to stop polling after a timeout.

Currently the device has redhat	pci vendor ID, and 0x1234 pci device id,
which is only a	placeholder till a real	device id is allocated.

Use example:

# load the nvme-mdev driver
$ modprobe nvme-mdev

# load the nvme pci driver with 4 polling queues reserved
# (will work with the next patch)
$ modprobe nvme mdev_queues=4

# generate random UUID for the mediated device
$ UUID=$(uuidgen)
$ MDEV_DEVICE=/sys/bus/mdev/devices/$UUID

# the location of the real nvme device (replace with yours)
$ PCI_DEVICE=/sys/bus/pci/devices/0000:44:00.0

# create the mediated device using 2 host polling queues
$ echo $UUID > $PCI_DEVICE/mdev_supported_types/nvme-2Q_V1/create

# attach partition 1 of namespace 1 to a free virtual namespace
# (use n1 to attach whole namespace)
# you can attach up to 16 virtual namespaces for now
$ echo n1p1 > $MDEV_DEVICE/namespaces/add_namespace

# move the polling thread to cpu 11
$ echo 11 > $MDEV_DEVICE/settings/iothread_cpu

# now you can boot qemu with
#  -device vfio-pci,sysfsdev=/sys/bus/mdev/devices/$UUID

Note that you can attach and detach virtual namespaces
even while the guest is running which will make the
device sent namespace changed AEN notifications to the guest
prior to attach/detach action.

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 MAINTAINERS                  |   5 +
 drivers/nvme/Kconfig         |   1 +
 drivers/nvme/Makefile        |   1 +
 drivers/nvme/host/core.c     |   4 +-
 drivers/nvme/mdev/Kconfig    |  16 +
 drivers/nvme/mdev/Makefile   |   5 +
 drivers/nvme/mdev/adm.c      | 873 +++++++++++++++++++++++++++++++++++
 drivers/nvme/mdev/events.c   | 142 ++++++
 drivers/nvme/mdev/host.c     | 502 ++++++++++++++++++++
 drivers/nvme/mdev/instance.c | 804 ++++++++++++++++++++++++++++++++
 drivers/nvme/mdev/io.c       | 563 ++++++++++++++++++++++
 drivers/nvme/mdev/irq.c      | 264 +++++++++++
 drivers/nvme/mdev/mdev.h     |  56 +++
 drivers/nvme/mdev/mmio.c     | 591 ++++++++++++++++++++++++
 drivers/nvme/mdev/pci.c      | 247 ++++++++++
 drivers/nvme/mdev/priv.h     | 700 ++++++++++++++++++++++++++++
 drivers/nvme/mdev/udata.c    | 390 ++++++++++++++++
 drivers/nvme/mdev/vcq.c      | 209 +++++++++
 drivers/nvme/mdev/vctrl.c    | 515 +++++++++++++++++++++
 drivers/nvme/mdev/viommu.c   | 322 +++++++++++++
 drivers/nvme/mdev/vns.c      | 356 ++++++++++++++
 drivers/nvme/mdev/vsq.c      | 181 ++++++++
 22 files changed, 6745 insertions(+), 2 deletions(-)
 create mode 100644 drivers/nvme/mdev/Kconfig
 create mode 100644 drivers/nvme/mdev/Makefile
 create mode 100644 drivers/nvme/mdev/adm.c
 create mode 100644 drivers/nvme/mdev/events.c
 create mode 100644 drivers/nvme/mdev/host.c
 create mode 100644 drivers/nvme/mdev/instance.c
 create mode 100644 drivers/nvme/mdev/io.c
 create mode 100644 drivers/nvme/mdev/irq.c
 create mode 100644 drivers/nvme/mdev/mdev.h
 create mode 100644 drivers/nvme/mdev/mmio.c
 create mode 100644 drivers/nvme/mdev/pci.c
 create mode 100644 drivers/nvme/mdev/priv.h
 create mode 100644 drivers/nvme/mdev/udata.c
 create mode 100644 drivers/nvme/mdev/vcq.c
 create mode 100644 drivers/nvme/mdev/vctrl.c
 create mode 100644 drivers/nvme/mdev/viommu.c
 create mode 100644 drivers/nvme/mdev/vns.c
 create mode 100644 drivers/nvme/mdev/vsq.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 09f43f1bdd15..481f10412d50 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11107,6 +11107,11 @@ W:	http://git.infradead.org/nvme.git
 S:	Supported
 F:	drivers/nvme/target/
 
+NVM EXPRESS MDEV DRIVER
+M:	Maxim Levitsky <mlevitsk@redhat.com>
+S:	Supported
+F:	drivers/nvme/mdev/
+
 NVMEM FRAMEWORK
 M:	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
 S:	Maintained
diff --git a/drivers/nvme/Kconfig b/drivers/nvme/Kconfig
index 04008e0bbe81..cbf867e6ac1e 100644
--- a/drivers/nvme/Kconfig
+++ b/drivers/nvme/Kconfig
@@ -2,5 +2,6 @@ menu "NVME Support"
 
 source "drivers/nvme/host/Kconfig"
 source "drivers/nvme/target/Kconfig"
+source "drivers/nvme/mdev/Kconfig"
 
 endmenu
diff --git a/drivers/nvme/Makefile b/drivers/nvme/Makefile
index 0096a7fd1431..0458efc57aee 100644
--- a/drivers/nvme/Makefile
+++ b/drivers/nvme/Makefile
@@ -1,3 +1,4 @@
 
 obj-y		+= host/
 obj-y		+= target/
+obj-y		+= mdev/
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3c1b91089631..29b2d1cc181d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2349,7 +2349,7 @@ static void nvme_init_subnqn(struct nvme_subsystem *subsys, struct nvme_ctrl *ct
 	size_t nqnlen;
 	int off;
 
-	if(!(ctrl->quirks & NVME_QUIRK_IGNORE_DEV_SUBNQN)) {
+	if (!(ctrl->quirks & NVME_QUIRK_IGNORE_DEV_SUBNQN)) {
 		nqnlen = strnlen(id->subnqn, NVMF_NQN_SIZE);
 		if (nqnlen > 0 && nqnlen < NVMF_NQN_SIZE) {
 			strlcpy(subsys->subnqn, id->subnqn, NVMF_NQN_SIZE);
@@ -3424,8 +3424,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	nvme_mpath_add_disk(ns, id);
 	nvme_fault_inject_init(ns);
-	kfree(id);
 
+	kfree(id);
 	return 0;
  out_put_disk:
 	put_disk(ns->disk);
diff --git a/drivers/nvme/mdev/Kconfig b/drivers/nvme/mdev/Kconfig
new file mode 100644
index 000000000000..7ebc66cdeac0
--- /dev/null
+++ b/drivers/nvme/mdev/Kconfig
@@ -0,0 +1,16 @@
+
+config NVME_MDEV
+	bool
+
+config NVME_MDEV_VFIO
+	tristate "NVME Mediated VFIO virtual device"
+	select NVME_MDEV
+	depends on BLOCK
+	depends on VFIO_MDEV
+	depends on NVME_CORE
+	help
+	  This provides EXPEREMENTAL support for lightweight software
+	  passthrough of an partition on a NVME storage device to
+	  guest, also as a NVME namespace, attached to a virtual NVME
+	  controller
+	  If unsure, say N.
diff --git a/drivers/nvme/mdev/Makefile b/drivers/nvme/mdev/Makefile
new file mode 100644
index 000000000000..114016c48476
--- /dev/null
+++ b/drivers/nvme/mdev/Makefile
@@ -0,0 +1,5 @@
+
+obj-$(CONFIG_NVME_MDEV_VFIO) 	+=	nvme-mdev.o
+
+nvme-mdev-y += adm.o events.o instance.o host.o io.o irq.o \
+	       udata.o viommu.o vns.o vsq.o vcq.o vctrl.o mmio.o pci.o
diff --git a/drivers/nvme/mdev/adm.c b/drivers/nvme/mdev/adm.c
new file mode 100644
index 000000000000..39a7ad252c69
--- /dev/null
+++ b/drivers/nvme/mdev/adm.c
@@ -0,0 +1,873 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe admin command implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include "priv.h"
+
+struct adm_ctx {
+	struct nvme_mdev_vctrl *vctrl;
+	struct nvme_mdev_hctrl *hctrl;
+	const struct nvme_command *in;
+	struct nvme_mdev_vns *ns;
+	struct nvme_ext_data_iter udatait;
+	unsigned int datalen;
+};
+
+/*Identify Controller */
+static int nvme_mdev_adm_handle_id_cntrl(struct adm_ctx *ctx)
+{
+	int ret;
+	const struct nvme_identify *in = &ctx->in->identify;
+	struct nvme_id_ctrl *id;
+
+	if (in->nsid != 0)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	id =  kzalloc(sizeof(*id), GFP_KERNEL);
+	if (!id)
+		return NVME_SC_INTERNAL;
+
+	/** Controller Capabilities and Features ************************/
+	// PCI vendor ID
+	store_le16(&id->vid, NVME_MDEV_PCI_VENDOR_ID);
+	// PCI Subsystem Vendor ID
+	store_le16(&id->ssvid, NVME_MDEV_PCI_SUBVENDOR_ID);
+	// Serial Number
+	store_strsp(id->sn, ctx->vctrl->serial);
+	// Model Number
+	store_strsp(id->mn, "NVMe MDEV virtual device");
+	// Firmware Revision
+	store_strsp(id->fr, NVME_MDEV_FIRMWARE_VERSION);
+	// Recommended Arbitration Burst
+	id->rab = 6;
+	// IEEE OUI Identifier for the controller vendor
+	id->ieee[0] = 0;
+	// Controller Multi-Path I/O and Namespace Sharing Capabilities
+	id->cmic = 0;
+	// Maximum Data Transfer Size (power of two, in page size units)
+	id->mdts = ctx->hctrl->mdts;
+	// controller ID
+	id->cntlid = 0;
+	// NVME supported version
+	store_le32(&id->ver, NVME_MDEV_NVME_VER);
+	// RTD3 Resume Latency
+	id->rtd3r = 0;
+	//RTD3 Entry Latency
+	id->rtd3e = 0;
+	// Optional Asynchronous Events Supported
+	store_le32(&id->oaes, NVME_AEN_CFG_NS_ATTR);
+	// Controller Attributes (misc junk)
+	id->ctratt = 0;
+
+	/*Admin Command Set Attributes & Optional Controller Capabilities */
+	// Optional Admin Command Support
+	id->oacs = ctx->vctrl->mmio.shadow_db_supported ?
+			NVME_CTRL_OACS_DBBUF_SUPP : 0;
+	// Abort Command Limit (dummy, zero based)
+	id->acl = 3;
+	 // Asynchronous Event Request Limit (zero based)
+	id->aerl = MAX_AER_COMMANDS - 1;
+	// Firmware Updates (dummy)
+	id->frmw = 3;
+	// Log Page Attributes
+	// (IMPLEMENT: bit for commands supported and effects)
+	id->lpa = 0;
+	// Error Log Page Entries
+	// (zero based, IMPLEMENT: dummy for now)
+	id->elpe = 0;
+	// Number of Power States Support
+	// (zero based, IMPLEMENT: dummy for now)
+	id->npss = 0;
+	// Admin Vendor Specific Command Configuration (junk)
+	id->avscc = 0;
+	// Autonomous Power State Transition Attributes
+	id->apsta = 0;
+	// Warning Composite Temperature Threshold (dummy)
+	id->wctemp = 0x157;
+	// Critical Composite Temperature Threshold (dummy)
+	id->cctemp = 0x175;
+	// Maximum Time for Firmware Activation (dummy)
+	id->mtfa = 0;
+	// Host Memory Buffer Preferred Size (dummy)
+	id->hmpre = 0;
+	// Host Memory Buffer Minimum Size (dummy)
+	id->hmmin = 0;
+	// Total NVM Capacity (not supported)
+	id->tnvmcap[0] = 0;
+	// Unallocated NVM Capacity (not supported for now)
+	id->unvmcap[0] = 0;
+	// Replay Protected Memory Block Support
+	id->rpmbs = 0;
+	// Extended Device Self-test Time (dummy)
+	id->edstt = 0;
+	// Device Self-test Options (dummy)
+	id->dsto = 0;
+	// Firmware Update Granularity (dummy)
+	id->fwug = 0;
+	// Keep Alive Support (not supported)
+	id->kas = 0;
+	// Host Controlled Thermal Management Attributes (not supported)
+	id->hctma = 0;
+	// Minimum Thermal Management Temperature (not supported)
+	id->mntmt = 0;
+	// Maximum Thermal Management Temperature (not supported)
+	id->mxtmt = 0;
+	// Sanitize capabilities (not supported)
+	id->sanicap = 0;
+
+	/****************** NVM Command Set Attributes ********************/
+	// Submission Queue Entry Size
+	id->sqes = (0x6 << 4) | 0x6;
+	// Completion Queue Entry Size
+	id->cqes = (0x4 << 4) | 0x4;
+	// Maximum Outstanding Commands
+	id->maxcmd = 0;
+	// Number of Namespaces
+	id->nn = MAX_VIRTUAL_NAMESPACES;
+	// Optional NVM Command Support
+	// (we add dsm and write zeros if host supports them)
+	id->oncs = ctx->hctrl->oncs;
+	// TODOLATER: IO: Fused Operation Support
+	id->fuses = 0;
+	// Format NVM Attributes (don't support)
+	id->fna = 0;
+	// Volatile Write Cache (tell that always exist)
+	id->vwc = 1;
+	// Atomic Write Unit Normal (zero based value in blocks)
+	id->awun = 0;
+	// Atomic Write Unit Power Fail (ditto)
+	id->awupf = 0;
+	// NVM Vendor Specific Command Configuration
+	id->nvscc = 0;
+	// Atomic Compare & Write Unit  (zero based value in blocks)
+	id->acwu = 0;
+	// SGL Support
+	id->sgls = 0;
+	// NVM Subsystem NVMe Qualified Name
+	strncpy(id->subnqn, ctx->vctrl->subnqn, sizeof(id->subnqn));
+
+	/******************Power state descriptors ***********************/
+	store_le16(&id->psd[0].max_power, 0x9c4); // dummy
+	store_le32(&id->psd[0].entry_lat, 0x10);
+	store_le32(&id->psd[0].exit_lat, 0x4);
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, id, sizeof(*id));
+	kfree(id);
+	return nvme_mdev_translate_error(ret);
+}
+
+/*Identify Namespace data structure for the specified NSID or common one */
+static int nvme_mdev_adm_handle_id_ns(struct adm_ctx *ctx)
+{
+	int ret;
+	struct nvme_id_ns *idns;
+	u32 nsid = le32_to_cpu(ctx->in->identify.nsid);
+
+	if (nsid == 0xffffffff || nsid == 0 || nsid > MAX_VIRTUAL_NAMESPACES)
+		return DNR(NVME_SC_INVALID_NS);
+
+	/* Allocate return structure*/
+	idns =  kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
+	if (!idns)
+		return NVME_SC_INTERNAL;
+
+	if (ctx->ns) {
+		//Namespace Size
+		store_le64(&idns->nsze, ctx->ns->ns_size);
+		// Namespace Capacity
+		store_le64(&idns->ncap, ctx->ns->ns_size);
+		// Namespace Utilization
+		store_le64(&idns->nuse, ctx->ns->ns_size);
+		// Namespace Features (nothing to set here yet)
+		idns->nsfeat = 0;
+		// Number of LBA Formats (dummy, zero based)
+		idns->nlbaf = 0;
+		// Formatted LBA Size (current LBA format in use)
+		// + external metadata bit
+		idns->flbas = 0;
+		// Metadata Capabilities
+		idns->mc = 0;
+		// End-to-end Data Protection Capabilities
+		idns->dpc = 0;
+		// End-to-end Data Protection Type Settings
+		idns->dps = 0;
+		// Namespace Multi-path I/O and Namespace Sharing Capabilities
+		idns->nmic = 0;
+		// Reservation Capabilities
+		idns->rescap = 0;
+		// Format Progress Indicator (dummy)
+		idns->fpi = 0;
+		// Namespace Atomic Write Unit Normal
+		idns->nawun = 0;
+		// Namespace Atomic Write Unit Power Fail
+		idns->nawupf = 0;
+		// Namespace Atomic Compare & Write Unit
+		idns->nacwu = 0;
+		// Namespace Atomic Boundary Size Normal
+		idns->nabsn = 0;
+		// Namespace Atomic Boundary Offset
+		idns->nabo = 0;
+		// Namespace Atomic Boundary Size Power Fail
+		idns->nabspf = 0;
+		// Namespace Optimal IO Boundary
+		idns->noiob = ctx->ns->noiob;
+		// NVM Capacity (another capacity but in bytes)
+		idns->nvmcap[0]  = 0;
+
+		// TODOLATER: NS: support NGUID/EUI64
+		idns->nguid[0] = 0;
+		idns->eui64[0] = 0;
+		// format 0 metadata size
+		idns->lbaf[0].ms = 0;
+		// format 0 block size (in power of two)
+		idns->lbaf[0].ds = ctx->ns->blksize_shift;
+		// format 0 relative performance
+		idns->lbaf[0].rp = 0;
+	}
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, idns,
+				       NVME_IDENTIFY_DATA_SIZE);
+	kfree(idns);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Namespace Identification Descriptor list for the specified NSID.*/
+static int nvme_mdev_adm_handle_id_ns_desc(struct adm_ctx *ctx)
+{
+	struct ns_desc {
+		struct nvme_ns_id_desc uuid_desc;
+		uuid_t uuid;
+		struct nvme_ns_id_desc null_desc;
+	};
+
+	int ret;
+	struct ns_desc *id;
+
+	if (!ctx->ns)
+		return DNR(NVME_SC_INVALID_NS);
+
+	/* Allocate return structure */
+	id = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
+	if (!id)
+		return NVME_SC_INTERNAL;
+
+	id->uuid_desc.nidt = NVME_NIDT_UUID;
+	id->uuid_desc.nidl = NVME_NIDT_UUID_LEN;
+	memcpy(&id->uuid, &ctx->ns->uuid, sizeof(id->uuid));
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, id,
+				       NVME_IDENTIFY_DATA_SIZE);
+	kfree(id);
+	return nvme_mdev_translate_error(ret);
+}
+
+/*Active Namespace ID list */
+static int nvme_mdev_adm_handle_id_active_ns_list(struct adm_ctx *ctx)
+{
+	u32 nsid, start_nsid = le32_to_cpu(ctx->in->identify.nsid);
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	int i = 0, ret;
+
+	__le32 *nslist = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
+
+	if (start_nsid >= 0xfffffffe)
+		return DNR(NVME_SC_INVALID_NS);
+
+	for (nsid = start_nsid + 1; nsid <= MAX_VIRTUAL_NAMESPACES; nsid++)
+		if (nvme_mdev_vns_from_vnsid(vctrl, nsid))
+			nslist[i++] = nsid;
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, nslist,
+				       NVME_IDENTIFY_DATA_SIZE);
+	kfree(nslist);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Handle Identify command*/
+static int nvme_mdev_adm_handle_id(struct adm_ctx *ctx)
+{
+	const struct nvme_identify *in = &ctx->in->identify;
+
+	int ret = nvme_mdev_udata_iter_set_dptr(&ctx->udatait,
+						&ctx->in->common.dptr,
+						NVME_IDENTIFY_DATA_SIZE);
+
+	u32 nsid = le32_to_cpu(in->nsid);
+
+	if (ret)
+		return nvme_mdev_translate_error(ret);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_MPTR | RSRV_DW11_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (in->ctrlid)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	ctx->ns = nvme_mdev_vns_from_vnsid(ctx->vctrl, nsid);
+
+	switch (ctx->in->identify.cns) {
+	case NVME_ID_CNS_CTRL:
+		_DBG(ctx->vctrl, "ADMINQ: IDENTIFY CTRL\n");
+		return nvme_mdev_adm_handle_id_cntrl(ctx);
+	case NVME_ID_CNS_NS_ACTIVE_LIST:
+		_DBG(ctx->vctrl, "ADMINQ: IDENTIFY ACTIVE_NS_LIST\n");
+		return nvme_mdev_adm_handle_id_active_ns_list(ctx);
+	case NVME_ID_CNS_NS:
+		_DBG(ctx->vctrl, "ADMINQ: IDENTIFY NS=0x%08x\n", nsid);
+		return nvme_mdev_adm_handle_id_ns(ctx);
+	case NVME_ID_CNS_NS_DESC_LIST:
+		_DBG(ctx->vctrl, "ADMINQ: IDENTIFY NS_DESC NS=0x%08x\n", nsid);
+		return nvme_mdev_adm_handle_id_ns_desc(ctx);
+	default:
+		return DNR(NVME_SC_INVALID_FIELD);
+	}
+}
+
+/* Error log for AER */
+static int nvme_mdev_adm_handle_get_log_page_err(struct adm_ctx *ctx)
+{
+	struct nvme_err_log_entry dummy_entry;
+	int ret;
+
+	// write one dummy entry with 0 error count
+	memset(&dummy_entry, 0, sizeof(dummy_entry));
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait,
+				       &dummy_entry,
+				       min((unsigned int)sizeof(dummy_entry),
+					   ctx->datalen));
+
+	return nvme_mdev_translate_error(ret);
+}
+
+/* This log page allows to tell user about connected/disconnected namespaces */
+static int nvme_mdev_adm_handle_get_log_page_changed_ns(struct adm_ctx *ctx)
+{
+	unsigned int datasize = min(ctx->vctrl->ns_log_size * 4, ctx->datalen);
+
+	int ret = nvme_mdev_write_to_udata(&ctx->udatait,
+					   &ctx->vctrl->ns_log, datasize);
+
+	nvme_mdev_vns_log_reset(ctx->vctrl);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* S.M.A.R.T. log*/
+static int nvme_mdev_adm_handle_get_log_page_smart(struct adm_ctx *ctx)
+{
+	unsigned int datasize = min_t(unsigned int,
+			sizeof(struct nvme_smart_log), ctx->datalen);
+	int ret;
+	struct nvme_smart_log *log = kzalloc(sizeof(*log), GFP_KERNEL);
+
+	if (!log)
+		return NVME_SC_INTERNAL;
+
+	/* Some dummy values */
+	log->avail_spare = 100;
+	log->spare_thresh = 10;
+	store_le16(&log->temperature, 0x140);
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, log, datasize);
+	kfree(log);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* FW slot log - useless */
+static int nvme_mdev_adm_handle_get_log_page_fw_slot(struct adm_ctx *ctx)
+{
+	unsigned int datasize = min_t(unsigned int,
+				      sizeof(struct nvme_fw_slot_info_log),
+				      ctx->datalen);
+	int ret;
+	struct nvme_fw_slot_info_log *log = kzalloc(sizeof(*log), GFP_KERNEL);
+
+	if (!log)
+		return NVME_SC_INTERNAL;
+
+	ret = nvme_mdev_write_to_udata(&ctx->udatait, log, datasize);
+	kfree(log);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Response to GET LOG PAGE command */
+static int nvme_mdev_adm_handle_get_log_page(struct adm_ctx *ctx)
+{
+	const struct nvme_get_log_page_command *in = &ctx->in->get_log_page;
+	u8 log_page_id = ctx->in->get_log_page.lid;
+	int ret;
+
+	ctx->datalen = (le16_to_cpu(in->numdl) + 1) * 4;
+
+	/*  We don't support extensions (NUMDU,LPOL,LPOU) */
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_MPTR | RSRV_DW11_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* Currently ignore the NSID in the command */
+
+	/* ACK the AER */
+	if ((in->lsp & 0x80) == 0)
+		nvme_mdev_event_process_ack(ctx->vctrl, log_page_id);
+
+	/* map data pointer */
+	ret = nvme_mdev_udata_iter_set_dptr(&ctx->udatait,
+					    &in->dptr, ctx->datalen);
+	if (ret)
+		return nvme_mdev_translate_error(ret);
+
+	switch (log_page_id) {
+	case NVME_LOG_ERROR:
+		_DBG(ctx->vctrl, "ADMINQ: GET_LOG_PAGE : ERRLOG\n");
+		return nvme_mdev_adm_handle_get_log_page_err(ctx);
+	case NVME_LOG_CHANGED_NS:
+		_DBG(ctx->vctrl, "ADMINQ: GET_LOG_PAGE : CHANGED_NS\n");
+		return nvme_mdev_adm_handle_get_log_page_changed_ns(ctx);
+	case NVME_LOG_SMART:
+		_DBG(ctx->vctrl, "ADMINQ: GET_LOG_PAGE : SMART\n");
+		return nvme_mdev_adm_handle_get_log_page_smart(ctx);
+	case NVME_LOG_FW_SLOT:
+		_DBG(ctx->vctrl, "ADMINQ: GET_LOG_PAGE : FWSLOT\n");
+		return nvme_mdev_adm_handle_get_log_page_fw_slot(ctx);
+	default:
+		_DBG(ctx->vctrl, "ADMINQ: GET_LOG_PAGE : log page 0x%02x\n",
+		     log_page_id);
+		return DNR(NVME_SC_INVALID_FIELD);
+	}
+}
+
+/* Response to CREATE CQ command */
+static int nvme_mdev_adm_handle_create_cq(struct adm_ctx *ctx)
+{
+	int irq = -1, ret;
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	const struct nvme_create_cq *in = &ctx->in->create_cq;
+	u16 cqid = le16_to_cpu(in->cqid);
+	u16 qsize = le16_to_cpu(in->qsize);
+	u16 cq_flags = le16_to_cpu(in->cq_flags);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR_PRP2 |
+				   RSRV_MPTR | RSRV_DW12_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* QID checks*/
+	if (!cqid ||
+	    cqid >= MAX_VIRTUAL_QUEUES || test_bit(cqid, vctrl->vcq_en))
+		return DNR(NVME_SC_QID_INVALID);
+
+	/* Queue size checks*/
+	if (qsize > (MAX_VIRTUAL_QUEUE_DEPTH - 1) || qsize < 1)
+		return DNR(NVME_SC_QUEUE_SIZE);
+
+	/* Queue flags checks */
+	if (cq_flags & ~(NVME_QUEUE_PHYS_CONTIG | NVME_CQ_IRQ_ENABLED))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (cq_flags & NVME_CQ_IRQ_ENABLED) {
+		irq = le16_to_cpu(in->irq_vector);
+		if (irq >= MAX_VIRTUAL_IRQS)
+			return DNR(NVME_SC_INVALID_VECTOR);
+	}
+
+	ret = nvme_mdev_vcq_init(ctx->vctrl, cqid,
+				 le64_to_cpu(in->prp1),
+				 cq_flags & NVME_QUEUE_PHYS_CONTIG,
+				 qsize + 1, irq);
+
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Response to DELETE CQ command */
+static int nvme_mdev_adm_handle_delete_cq(struct adm_ctx *ctx)
+{
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	const struct nvme_delete_queue *in =  &ctx->in->delete_queue;
+	u16 qid = le16_to_cpu(in->qid), sqid;
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW11_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!qid || qid >= MAX_VIRTUAL_QUEUES || !test_bit(qid, vctrl->vcq_en))
+		return DNR(NVME_SC_QID_INVALID);
+
+	for_each_set_bit(sqid, vctrl->vsq_en, MAX_VIRTUAL_QUEUES)
+		if (vctrl->vsqs[sqid].vcq == &vctrl->vcqs[qid])
+			return DNR(NVME_SC_INVALID_QUEUE);
+
+	nvme_mdev_vcq_delete(vctrl, qid);
+	return NVME_SC_SUCCESS;
+}
+
+/* Response to CREATE SQ command */
+static int nvme_mdev_adm_handle_create_sq(struct adm_ctx *ctx)
+{
+	const struct nvme_create_sq *in = &ctx->in->create_sq;
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	int ret;
+
+	u16 sqid = le16_to_cpu(in->sqid);
+	u16 cqid = le16_to_cpu(in->cqid);
+	u16 qsize = le16_to_cpu(in->qsize);
+	u16 sq_flags = le16_to_cpu(in->sq_flags);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR_PRP2 |
+				   RSRV_MPTR | RSRV_DW12_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!sqid ||
+	    sqid >= MAX_VIRTUAL_QUEUES || test_bit(sqid, vctrl->vsq_en))
+		return DNR(NVME_SC_QID_INVALID);
+
+	if (!cqid || cqid  >= MAX_VIRTUAL_QUEUES)
+		return DNR(NVME_SC_QID_INVALID);
+
+	if (!test_bit(cqid, vctrl->vcq_en))
+		return DNR(NVME_SC_CQ_INVALID);
+
+	/* Queue size checks */
+	if (qsize > (MAX_VIRTUAL_QUEUE_DEPTH - 1) || qsize < 1)
+		return DNR(NVME_SC_QUEUE_SIZE);
+
+	/* Queue flags checks */
+	if (sq_flags & ~(NVME_QUEUE_PHYS_CONTIG | NVME_SQ_PRIO_MASK))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	ret = nvme_mdev_vsq_init(ctx->vctrl, sqid,
+				 le64_to_cpu(in->prp1),
+				 sq_flags & NVME_QUEUE_PHYS_CONTIG,
+				 qsize + 1, cqid);
+	if (ret)
+		goto error;
+
+	return NVME_SC_SUCCESS;
+error:
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Response to DELETE SQ command */
+static int nvme_mdev_adm_handle_delete_sq(struct adm_ctx *ctx)
+{
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	const struct nvme_delete_queue *in =  &ctx->in->delete_queue;
+	u16 qid = le16_to_cpu(in->qid);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW11_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!qid || qid >= MAX_VIRTUAL_QUEUES || !test_bit(qid, vctrl->vsq_en))
+		return DNR(NVME_SC_QID_INVALID);
+
+	nvme_mdev_vsq_delete(ctx->vctrl, qid);
+	return NVME_SC_SUCCESS;
+}
+
+/* Set the shadow doorbell */
+static int nvme_mdev_adm_handle_dbbuf(struct adm_ctx *ctx)
+{
+	const struct nvme_dbbuf *in = &ctx->in->dbbuf;
+	int ret;
+
+	dma_addr_t sdb_iova = le64_to_cpu(in->prp1);
+	dma_addr_t eidx_iova = le64_to_cpu(in->prp2);
+
+	/* Check if we support the shadow doorbell */
+	if (!ctx->vctrl->mmio.shadow_db_supported)
+		return DNR(NVME_SC_INVALID_OPCODE);
+
+	/* Don't allow to enable the shadow doorbell more that once */
+	if (ctx->vctrl->mmio.shadow_db_en)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 |
+				   RSRV_MPTR | RSRV_DW10_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* check input buffers */
+	if ((OFFSET_IN_PAGE(sdb_iova) != 0) || (OFFSET_IN_PAGE(eidx_iova) != 0))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* switch to the new doorbell buffer */
+	ret = nvme_mdev_mmio_enable_dbs_shadow(ctx->vctrl, sdb_iova, eidx_iova);
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Response to GET_FEATURES command */
+static int nvme_mdev_adm_handle_get_features(struct adm_ctx *ctx)
+{
+	u32 value = 0;
+	u32 irq;
+	const struct nvme_features *in = &ctx->in->features;
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	unsigned int tmp;
+
+	u32 fid = le32_to_cpu(in->fid);
+	u16 cid = le16_to_cpu(in->command_id);
+
+	_DBG(ctx->vctrl, "ADMINQ: GET_FEATURES FID=0x%x\n", fid);
+
+	/* common reserved bits*/
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW12_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* reserved bits in dword10*/
+	if (fid > 0xFF)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* reserved bits in dword11*/
+	if (fid != NVME_FEAT_IRQ_CONFIG && in->dword11 != 0)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	switch (fid) {
+	/* Number of queues */
+	case NVME_FEAT_NUM_QUEUES:
+		value = (MAX_VIRTUAL_QUEUES - 1) |
+			((MAX_VIRTUAL_QUEUES - 1) << 16);
+		goto out;
+
+	/* Arbitration */
+	case NVME_FEAT_ARBITRATION:
+		value = vctrl->arb_burst_shift & 0x7;
+		goto out;
+
+	/* Interrupt coalescing settings*/
+	case NVME_FEAT_IRQ_COALESCE:
+		tmp = vctrl->irqs.irq_coalesc_time_us;
+		do_div(tmp, 100);
+		value = (vctrl->irqs.irq_coalesc_max - 1) | (tmp << 8);
+		goto out;
+
+	/* Interrupt coalescing disable for a specific interrupt */
+	case NVME_FEAT_IRQ_CONFIG:
+		irq = le32_to_cpu(in->dword11);
+		if (irq >= MAX_VIRTUAL_IRQS)
+			return DNR(NVME_SC_INVALID_FIELD);
+
+		value = irq;
+		if (vctrl->irqs.vecs[irq].irq_coalesc_en)
+			value |= (1 << 16);
+		goto out;
+
+	/* Volatile write cache */
+	case NVME_FEAT_VOLATILE_WC:
+		/*we always report write cache due to mediation*/
+		value = 0x1;
+		goto out;
+
+	/* Limited error recovery */
+	case NVME_FEAT_ERR_RECOVERY:
+		value = 0;
+		break;
+
+	/* Workload hint + power state */
+	case NVME_FEAT_POWER_MGMT:
+		value = vctrl->worload_hint << 4;
+		break;
+
+	/* Temperature threshold */
+	case NVME_FEAT_TEMP_THRESH:
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* AEN permanent masking*/
+	case NVME_FEAT_ASYNC_EVENT:
+		value = nvme_mdev_event_read_aen_config(vctrl);
+		goto out;
+	default:
+		return DNR(NVME_SC_INVALID_FIELD);
+	}
+out:
+	nvme_mdev_vsq_cmd_done_adm(ctx->vctrl, value, cid, NVME_SC_SUCCESS);
+	return -1;
+}
+
+/* Response to SET_FEATURES command */
+static int nvme_mdev_adm_handle_set_features(struct adm_ctx *ctx)
+{
+	const struct nvme_features *in = &ctx->in->features;
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+
+	u32 value = le32_to_cpu(in->dword11);
+	u8 fid = le32_to_cpu(in->fid) & 0xFF;
+	u16 cid = le16_to_cpu(in->command_id);
+	u32 nsid = le32_to_cpu(in->nsid);
+
+	_DBG(ctx->vctrl, "ADMINQ: SET_FEATURES cmd. FID=0x%x\n", fid);
+
+	if (nsid != 0xffffffff && nsid != 0)
+		return DNR(NVME_SC_FEATURE_NOT_PER_NS);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW12_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	switch (fid) {
+	case NVME_FEAT_NUM_QUEUES:
+		/* need to return the value here as well */
+		value = (MAX_VIRTUAL_QUEUES - 1) |
+			((MAX_VIRTUAL_QUEUES - 1) << 16);
+
+		nvme_mdev_vsq_cmd_done_adm(ctx->vctrl, value,
+					   cid, NVME_SC_SUCCESS);
+		return -1;
+
+	case NVME_FEAT_ARBITRATION:
+		vctrl->arb_burst_shift = value & 0x7;
+		return NVME_SC_SUCCESS;
+
+	case NVME_FEAT_IRQ_COALESCE:
+		vctrl->irqs.irq_coalesc_max = (value & 0xFF) + 1;
+		vctrl->irqs.irq_coalesc_time_us = ((value >> 8) & 0xFF) * 100;
+		return NVME_SC_SUCCESS;
+
+	case NVME_FEAT_IRQ_CONFIG: {
+		u16 irq = value & 0xFFFF;
+
+		if (irq >= MAX_VIRTUAL_IRQS)
+			return DNR(NVME_SC_INVALID_FIELD);
+
+		vctrl->irqs.vecs[irq].irq_coalesc_en = (value & 0x10000) != 0;
+		return NVME_SC_SUCCESS;
+	}
+	case NVME_FEAT_VOLATILE_WC:
+		return (value != 0x1) ? DNR(NVME_SC_FEATURE_NOT_CHANGEABLE) :
+							NVME_SC_SUCCESS;
+
+	case NVME_FEAT_ERR_RECOVERY:
+		return (value != 0) ? DNR(NVME_SC_FEATURE_NOT_CHANGEABLE) :
+							NVME_SC_SUCCESS;
+	case NVME_FEAT_POWER_MGMT:
+		if (value & 0xFFFFFF0F)
+			return DNR(NVME_SC_INVALID_FIELD);
+		vctrl->worload_hint = value >> 4;
+		return NVME_SC_SUCCESS;
+
+	case NVME_FEAT_TEMP_THRESH:
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	case NVME_FEAT_ASYNC_EVENT:
+		nvme_mdev_event_set_aen_config(vctrl, value);
+		return NVME_SC_SUCCESS;
+	default:
+		return DNR(NVME_SC_INVALID_FIELD);
+	}
+}
+
+/* Response to AER command */
+static int nvme_mdev_adm_handle_async_event(struct adm_ctx *ctx)
+{
+	u16 cid = le16_to_cpu(ctx->in->common.command_id);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW10_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	return nvme_mdev_event_request_receive(ctx->vctrl, cid);
+}
+
+/* (Dummy) response to ABORT command*/
+static int nvme_mdev_adm_handle_abort(struct adm_ctx *ctx)
+{
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_NSID | RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW10_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	return DNR(NVME_SC_ABORT_MISSING);
+}
+
+/* Process one new command in the admin queue*/
+static int nvme_mdev_adm_handle_cmd(struct adm_ctx *ctx)
+{
+	u8 optcode = ctx->in->common.opcode;
+
+	ctx->ns = NULL;
+	ctx->datalen = 0;
+
+	if (ctx->in->common.flags != 0)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	switch (optcode) {
+	case nvme_admin_identify:
+		return nvme_mdev_adm_handle_id(ctx);
+	case nvme_admin_create_cq:
+		_DBG(ctx->vctrl, "ADMINQ: CREATE_CQ\n");
+		return nvme_mdev_adm_handle_create_cq(ctx);
+	case nvme_admin_create_sq:
+		_DBG(ctx->vctrl, "ADMINQ: CREATE_SQ\n");
+		return nvme_mdev_adm_handle_create_sq(ctx);
+	case nvme_admin_delete_sq:
+		_DBG(ctx->vctrl, "ADMINQ: DELETE_SQ\n");
+		return nvme_mdev_adm_handle_delete_sq(ctx);
+	case nvme_admin_delete_cq:
+		_DBG(ctx->vctrl, "ADMINQ: DELETE_CQ\n");
+		return nvme_mdev_adm_handle_delete_cq(ctx);
+	case nvme_admin_dbbuf:
+		_DBG(ctx->vctrl, "ADMINQ: DBBUF_CONFIG\n");
+		return nvme_mdev_adm_handle_dbbuf(ctx);
+	case nvme_admin_get_log_page:
+		return nvme_mdev_adm_handle_get_log_page(ctx);
+	case nvme_admin_get_features:
+		return nvme_mdev_adm_handle_get_features(ctx);
+	case nvme_admin_set_features:
+		return nvme_mdev_adm_handle_set_features(ctx);
+	case nvme_admin_async_event:
+		_DBG(ctx->vctrl, "ADMINQ: ASYNC_EVENT_REQ\n");
+		return nvme_mdev_adm_handle_async_event(ctx);
+	case nvme_admin_abort_cmd:
+		_DBG(ctx->vctrl, "ADMINQ: ABORT\n");
+		return nvme_mdev_adm_handle_abort(ctx);
+	default:
+		_DBG(ctx->vctrl, "ADMINQ: optcode 0x%04x\n", optcode);
+		return DNR(NVME_SC_INVALID_OPCODE);
+	}
+}
+
+/* Process all pending admin commands */
+void nvme_mdev_adm_process_sq(struct nvme_mdev_vctrl *vctrl)
+{
+	struct adm_ctx ctx;
+
+	lockdep_assert_held(&vctrl->lock);
+	memset(&ctx, 0, sizeof(struct adm_ctx));
+	ctx.vctrl = vctrl;
+	ctx.hctrl = vctrl->hctrl;
+	nvme_mdev_udata_iter_setup(&vctrl->viommu, &ctx.udatait);
+
+	nvme_mdev_io_pause(ctx.vctrl);
+
+	while (!(nvme_mdev_vctrl_is_dead(vctrl))) {
+		int ret;
+		u16 cid;
+
+		ctx.in = nvme_mdev_vsq_get_cmd(vctrl, &vctrl->vsqs[0]);
+		if (!ctx.in)
+			break;
+
+		cid = le16_to_cpu(ctx.in->common.command_id);
+		ret = nvme_mdev_adm_handle_cmd(&ctx);
+
+		if (ret == -1)
+			continue;
+
+		if (ret != 0)
+			_DBG(vctrl, "ADMINQ: CID 0x%x FAILED: status 0x%x\n",
+			     cid, ret);
+		nvme_mdev_vsq_cmd_done_adm(vctrl, 0, cid, ret);
+	}
+	nvme_mdev_io_resume(ctx.vctrl);
+}
diff --git a/drivers/nvme/mdev/events.c b/drivers/nvme/mdev/events.c
new file mode 100644
index 000000000000..9854c1cabdcb
--- /dev/null
+++ b/drivers/nvme/mdev/events.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe async events implementation (AER, changed namespace log)
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include "priv.h"
+
+/* complete an AER event on the admin queue if it is pending*/
+static void nvme_mdev_event_complete(struct nvme_mdev_vctrl *vctrl)
+{
+	u16 lid, cid;
+	u32 dw0;
+
+	for_each_set_bit(lid, vctrl->events.events_pending, MAX_LOG_PAGES) {
+		/* we have pending aer requests, but no requests*/
+		if (vctrl->events.aer_cid_count == 0)
+			break;
+
+		if (!test_bit(lid, vctrl->events.events_enabled))
+			continue;
+
+		cid = vctrl->events.aer_cids[--vctrl->events.aer_cid_count];
+		dw0 = vctrl->events.event_values[lid];
+		clear_bit(lid, vctrl->events.events_pending);
+
+		_DBG(vctrl,
+		     "AEN: replying to AER (CID=%d) with status 0x%08x\n",
+		     cid, dw0);
+
+		nvme_mdev_vsq_cmd_done_adm(vctrl, dw0, cid, NVME_SC_SUCCESS);
+	}
+}
+
+/* deal with received async event request from the user*/
+int nvme_mdev_event_request_receive(struct nvme_mdev_vctrl *vctrl,
+				    u16 cid)
+{
+	int cnt = vctrl->events.aer_cid_count;
+
+	if (cnt >= MAX_AER_COMMANDS)
+		return DNR(NVME_SC_ASYNC_LIMIT);
+
+	/* don't allow AER to be pending if there is no space left in the
+	 * completion queue permanently
+	 */
+	if ((cnt + 1) >= vctrl->vcqs[0].size - 1)
+		return DNR(NVME_SC_ASYNC_LIMIT);
+
+	vctrl->events.aer_cids[cnt++] = cid;
+	vctrl->events.aer_cid_count = cnt;
+
+	_DBG(vctrl, "AEN: received new request (cid=%d)\n", cid);
+	nvme_mdev_event_complete(vctrl);
+	return -1;
+}
+
+/* Send an async event request */
+void nvme_mdev_event_send(struct nvme_mdev_vctrl *vctrl,
+			  enum nvme_async_event_type type,
+			  enum nvme_async_event info)
+{
+	u8 log_page;
+	u32 event;
+
+	// determine the log page for event types that we support
+	switch (type) {
+	case NVME_AER_TYPE_ERROR:
+		log_page = NVME_LOG_ERROR;
+		break;
+	case NVME_AER_TYPE_SMART:
+		log_page = NVME_LOG_SMART;
+		break;
+	case NVME_AER_TYPE_NOTICE:
+		WARN_ON(info != NVME_AER_NOTICE_NS_CHANGED);
+		log_page = NVME_LOG_CHANGED_NS;
+		break;
+	default:
+		WARN_ON(1);
+		return;
+	}
+
+	if (test_and_set_bit(log_page, vctrl->events.events_masked))
+		return;
+
+	event = (u32)type | ((u32)info << 8) | ((u32)log_page << 16);
+	vctrl->events.event_values[log_page] = event;
+	set_bit(log_page, vctrl->events.events_masked);
+	set_bit(log_page, vctrl->events.events_pending);
+	nvme_mdev_event_complete(vctrl);
+}
+
+u32 nvme_mdev_event_read_aen_config(struct nvme_mdev_vctrl *vctrl)
+{
+	u32 value = 0;
+
+	if (test_bit(NVME_LOG_CHANGED_NS, vctrl->events.events_enabled))
+		value |= NVME_AEN_CFG_NS_ATTR;
+	return value;
+}
+
+void nvme_mdev_event_set_aen_config(struct nvme_mdev_vctrl *vctrl, u32 value)
+{
+	_DBG(vctrl, "AEN: set config: 0x%04x\n", value);
+
+	if (value & NVME_AEN_CFG_NS_ATTR)
+		set_bit(NVME_LOG_CHANGED_NS, vctrl->events.events_enabled);
+	else
+		clear_bit(NVME_LOG_CHANGED_NS, vctrl->events.events_enabled);
+
+	nvme_mdev_event_complete(vctrl);
+}
+
+/* called when user acks an log page which causes an AER event to be unmasked*/
+void nvme_mdev_event_process_ack(struct nvme_mdev_vctrl *vctrl, u8 log_page)
+{
+	lockdep_assert_held(&vctrl->lock);
+
+	_DBG(vctrl, "AEN: log page %d ACK\n", log_page);
+
+	if (log_page >= MAX_LOG_PAGES)
+		return;
+
+	clear_bit(log_page, vctrl->events.events_masked);
+	nvme_mdev_event_complete(vctrl);
+}
+
+/* reset event state*/
+void nvme_mdev_events_init(struct nvme_mdev_vctrl *vctrl)
+{
+	memset(&vctrl->events, 0, sizeof(vctrl->events));
+	set_bit(NVME_LOG_CHANGED_NS, vctrl->events.events_enabled);
+	set_bit(NVME_LOG_ERROR, vctrl->events.events_enabled);
+}
+
+/* reset event state*/
+void nvme_mdev_events_reset(struct nvme_mdev_vctrl *vctrl)
+{
+	memset(&vctrl->events, 0, sizeof(vctrl->events));
+}
+
diff --git a/drivers/nvme/mdev/host.c b/drivers/nvme/mdev/host.c
new file mode 100644
index 000000000000..5766bad7e909
--- /dev/null
+++ b/drivers/nvme/mdev/host.c
@@ -0,0 +1,502 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe parent (host) device abstraction
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/nvme.h>
+#include <linux/mdev.h>
+#include <linux/module.h>
+#include "priv.h"
+
+static LIST_HEAD(nvme_mdev_hctrl_list);
+static DEFINE_MUTEX(nvme_mdev_hctrl_list_mutex);
+static struct nvme_mdev_inst_type **instance_types;
+
+unsigned int io_timeout_ms = 30000;
+module_param_named(io_timeout, io_timeout_ms, uint, 0644);
+MODULE_PARM_DESC(io_timeout,
+		 "Maximum I/O command completion timeout (in msec)");
+
+unsigned int poll_timeout_ms = 500;
+module_param_named(poll_timeout, poll_timeout_ms, uint, 0644);
+MODULE_PARM_DESC(poll_timeout,
+		 "Maximum idle time to keep polling (in msec) (0 - poll forever)");
+
+unsigned int admin_poll_rate_ms = 100;
+module_param_named(admin_poll_rate, poll_timeout_ms, uint, 0644);
+MODULE_PARM_DESC(admin_poll_rate,
+		 "Admin queue polling rate (in msec) (used only when shadow doorbell is disabled)");
+
+bool use_shadow_doorbell = true;
+module_param(use_shadow_doorbell, bool, 0644);
+MODULE_PARM_DESC(use_shadow_doorbell,
+		 "Enable the shadow doorbell NVMe extension");
+
+/* Create a new host controller */
+static struct nvme_mdev_hctrl *nvme_mdev_hctrl_create(struct nvme_ctrl *ctrl)
+{
+	struct nvme_mdev_hctrl *hctrl;
+	u32 max_lba_transfer;
+	unsigned int nr_host_queues;
+
+	/* TODOLATER: IO: support more page size configurations*/
+	if (ctrl->page_size != PAGE_SIZE) {
+		dev_info(ctrl->dev, "no support for mdev - page_size mismatch");
+		return NULL;
+	}
+
+	nr_host_queues = ctrl->ops->ext_queues_available(ctrl);
+	max_lba_transfer = ctrl->max_hw_sectors >> (PAGE_SHIFT - 9);
+
+	if (nr_host_queues == 0) {
+		dev_info(ctrl->dev,
+			 "no support for mdev - no mdev reserved queues available");
+		return NULL;
+	}
+
+	hctrl = kzalloc_node(sizeof(*hctrl), GFP_KERNEL,
+			     dev_to_node(ctrl->dev));
+	if (!hctrl)
+		return NULL;
+
+	kref_init(&hctrl->ref);
+	mutex_init(&hctrl->lock);
+
+	hctrl->nvme_ctrl = ctrl;
+	nvme_get_ctrl(ctrl);
+
+	hctrl->oncs = ctrl->oncs &
+		(NVME_CTRL_ONCS_DSM | NVME_CTRL_ONCS_WRITE_ZEROES);
+
+	hctrl->id = ctrl->instance;
+	hctrl->node = dev_to_node(ctrl->dev);
+	hctrl->mdts = ilog2(__rounddown_pow_of_two(max_lba_transfer));
+	hctrl->nr_host_queues = nr_host_queues;
+
+	mutex_lock(&nvme_mdev_hctrl_list_mutex);
+
+	dev_info(ctrl->dev,
+		 "mediated nvme support enabled, using up to %d host queues\n",
+		 hctrl->nr_host_queues);
+
+	list_add_tail(&hctrl->link, &nvme_mdev_hctrl_list);
+
+	mutex_unlock(&nvme_mdev_hctrl_list_mutex);
+
+	if (mdev_register_device(ctrl->dev, &mdev_fops) < 0) {
+		nvme_put_ctrl(ctrl);
+		kfree(hctrl);
+		return NULL;
+	}
+	return hctrl;
+}
+
+/* Release an unused host controller*/
+static void nvme_mdev_hctrl_free(struct kref *ref)
+{
+	struct nvme_mdev_hctrl *hctrl =
+		container_of(ref, struct nvme_mdev_hctrl, ref);
+
+	dev_info(hctrl->nvme_ctrl->dev, "mediated nvme support disabled");
+
+	nvme_put_ctrl(hctrl->nvme_ctrl);
+	hctrl->nvme_ctrl = NULL;
+	kfree(hctrl);
+}
+
+/* Lookup a host controller based on mdev parent device*/
+struct nvme_mdev_hctrl *nvme_mdev_hctrl_lookup_get(struct device *parent)
+{
+	struct nvme_mdev_hctrl *hctrl = NULL, *tmp;
+
+	mutex_lock(&nvme_mdev_hctrl_list_mutex);
+	list_for_each_entry(tmp, &nvme_mdev_hctrl_list, link) {
+		if (tmp->nvme_ctrl->dev == parent) {
+			hctrl = tmp;
+			kref_get(&hctrl->ref);
+			break;
+		}
+	}
+	mutex_unlock(&nvme_mdev_hctrl_list_mutex);
+	return hctrl;
+}
+
+/* Release a held reference to a host controller*/
+void nvme_mdev_hctrl_put(struct nvme_mdev_hctrl *hctrl)
+{
+	kref_put(&hctrl->ref, nvme_mdev_hctrl_free);
+}
+
+/* Destroy a host controller. It might still be kept in zombie state
+ * if someone uses a reference to it
+ */
+static void nvme_mdev_hctrl_destroy(struct nvme_mdev_hctrl *hctrl)
+{
+	mutex_lock(&nvme_mdev_hctrl_list_mutex);
+	list_del(&hctrl->link);
+	mutex_unlock(&nvme_mdev_hctrl_list_mutex);
+
+	hctrl->removing = true;
+	mdev_unregister_device(hctrl->nvme_ctrl->dev);
+	nvme_mdev_hctrl_put(hctrl);
+}
+
+/* Check how many host queues are still available */
+int nvme_mdev_hctrl_hqs_available(struct nvme_mdev_hctrl *hctrl)
+{
+	int ret;
+
+	mutex_lock(&hctrl->lock);
+	ret =  hctrl->nr_host_queues;
+	mutex_unlock(&hctrl->lock);
+	return ret;
+}
+
+/* Reserve N host IO queues, for later allocation to a specific user*/
+bool nvme_mdev_hctrl_hqs_reserve(struct nvme_mdev_hctrl *hctrl,
+				 unsigned int n)
+{
+	mutex_lock(&hctrl->lock);
+
+	if (n > hctrl->nr_host_queues) {
+		mutex_unlock(&hctrl->lock);
+		return false;
+	}
+
+	hctrl->nr_host_queues -= n;
+	mutex_unlock(&hctrl->lock);
+	return true;
+}
+
+/* Free N host IO queues, for allocation for other users*/
+void nvme_mdev_hctrl_hqs_unreserve(struct nvme_mdev_hctrl *hctrl,
+				   unsigned int n)
+{
+	mutex_lock(&hctrl->lock);
+	hctrl->nr_host_queues += n;
+	mutex_unlock(&hctrl->lock);
+}
+
+/* Allocate a host IO queue */
+int nvme_mdev_hctrl_hq_alloc(struct nvme_mdev_hctrl *hctrl)
+{
+	u16 qid = 0;
+	int ret = hctrl->nvme_ctrl->ops->ext_queue_alloc(hctrl->nvme_ctrl,
+			&qid);
+
+	if (ret)
+		return ret;
+	return qid;
+}
+
+/* Free an host IO queue */
+void nvme_mdev_hctrl_hq_free(struct nvme_mdev_hctrl *hctrl, u16 qid)
+{
+	hctrl->nvme_ctrl->ops->ext_queue_free(hctrl->nvme_ctrl, qid);
+}
+
+/* Check if we can submit another IO passthrough command */
+bool nvme_mdev_hctrl_hq_can_submit(struct nvme_mdev_hctrl *hctrl, u16 qid)
+{
+	return hctrl->nvme_ctrl->ops->ext_queue_full(hctrl->nvme_ctrl, qid);
+}
+
+/* Check if IO passthrough is supported for given IO optcode */
+bool nvme_mdev_hctrl_hq_check_op(struct nvme_mdev_hctrl *hctrl, u8 optcode)
+{
+	switch (optcode) {
+	case nvme_cmd_flush:
+	case nvme_cmd_read:
+	case nvme_cmd_write:
+		/* these are mandatory*/
+		return true;
+	case nvme_cmd_write_zeroes:
+		return (hctrl->oncs & NVME_CTRL_ONCS_WRITE_ZEROES);
+	case nvme_cmd_dsm:
+		return (hctrl->oncs & NVME_CTRL_ONCS_DSM);
+	default:
+		return false;
+	}
+}
+
+/* Submit a IO passthrough command */
+int nvme_mdev_hctrl_hq_submit(struct nvme_mdev_hctrl *hctrl,
+			      u16 qid, u32 tag,
+			      struct nvme_command *cmd,
+			      struct nvme_ext_data_iter *datait)
+{
+	struct nvme_ctrl *ctrl = hctrl->nvme_ctrl;
+
+	return ctrl->ops->ext_queue_submit(ctrl, qid, tag, cmd, datait);
+}
+
+/* Poll for completion of IO passthrough commands */
+int nvme_mdev_hctrl_hq_poll(struct nvme_mdev_hctrl *hctrl,
+			    u32 qid,
+			    struct nvme_ext_cmd_result *results,
+			    unsigned int max_len)
+{
+	struct nvme_ctrl *ctrl = hctrl->nvme_ctrl;
+
+	return ctrl->ops->ext_queue_poll(ctrl, qid, results, max_len);
+}
+
+/* Destroy all host controllers */
+void nvme_mdev_hctrl_destroy_all(void)
+{
+	struct nvme_mdev_hctrl *hctrl = NULL, *tmp;
+
+	list_for_each_entry_safe(hctrl, tmp, &nvme_mdev_hctrl_list, link) {
+		list_del(&hctrl->link);
+		hctrl->removing = true;
+		mdev_unregister_device(hctrl->nvme_ctrl->dev);
+		nvme_mdev_hctrl_put(hctrl);
+	}
+}
+
+/* Get the mdev instance given it sysfs name */
+struct nvme_mdev_inst_type *nvme_mdev_inst_type_get(const char *name)
+{
+	int i;
+
+	for (i = 0; instance_types[i]; i++) {
+		const char *test =
+			name + strlen(name) - strlen(instance_types[i]->name);
+
+		if (strcmp(instance_types[i]->name, test) == 0)
+			return instance_types[i];
+	}
+	return NULL;
+}
+
+/* This shows name of the instance type */
+static ssize_t name_show(struct kobject *kobj, struct device *dev, char *buf)
+{
+	return sprintf(buf, "%s\n", kobj->name);
+}
+static MDEV_TYPE_ATTR_RO(name);
+
+/* This shows description of the instance type */
+static ssize_t description_show(struct kobject *kobj,
+				struct device *dev, char *buf)
+{
+	struct nvme_mdev_inst_type *type = nvme_mdev_inst_type_get(kobj->name);
+
+	return sprintf(buf,
+		       "MDEV nvme device, using maximum %d hw submission queues\n",
+		       type->max_hw_queues);
+}
+static MDEV_TYPE_ATTR_RO(description);
+
+/* This shows the device API of the instance type */
+static ssize_t device_api_show(struct kobject *kobj,
+			       struct device *dev, char *buf)
+{
+	return sprintf(buf, "%s\n", VFIO_DEVICE_API_PCI_STRING);
+}
+static MDEV_TYPE_ATTR_RO(device_api);
+
+/* This shows how many instances of this instance type can be created  */
+static ssize_t available_instances_show(struct kobject *kobj,
+					struct device *dev, char *buf)
+{
+	struct nvme_mdev_inst_type *type = nvme_mdev_inst_type_get(kobj->name);
+	struct nvme_mdev_hctrl *hctrl = nvme_mdev_hctrl_lookup_get(dev);
+	int count;
+
+	if (!hctrl)
+		return -ENODEV;
+
+	count = nvme_mdev_hctrl_hqs_available(hctrl);
+	do_div(count, type->max_hw_queues);
+
+	nvme_mdev_hctrl_put(hctrl);
+	return sprintf(buf, "%d\n", count);
+}
+static MDEV_TYPE_ATTR_RO(available_instances);
+
+static struct attribute *nvme_mdev_types_attrs[] = {
+	&mdev_type_attr_name.attr,
+	&mdev_type_attr_description.attr,
+	&mdev_type_attr_device_api.attr,
+	&mdev_type_attr_available_instances.attr,
+	NULL,
+};
+
+/* Undo the creation of mdev array of instance types */
+static void nvme_mdev_instance_types_fini(struct mdev_parent_ops *ops)
+{
+	int i;
+
+	for (i = 0; instance_types[i]; i++) {
+		struct nvme_mdev_inst_type *type = instance_types[i];
+
+		kfree(type->attrgroup);
+		kfree(type);
+	}
+
+	kfree(instance_types);
+	instance_types = NULL;
+
+	kfree(ops->supported_type_groups);
+	ops->supported_type_groups = NULL;
+}
+
+/* Create the array of mdev instance types from our array of them */
+static int nvme_mdev_instance_types_init(struct mdev_parent_ops *ops)
+{
+	unsigned int i;
+	struct nvme_mdev_inst_type *type;
+	struct attribute_group *attrgroup;
+
+	ops->supported_type_groups = kzalloc(sizeof(struct attribute_group *)
+			* (MAX_HOST_QUEUES + 1), GFP_KERNEL);
+
+	if (!ops->supported_type_groups)
+		return -ENOMEM;
+
+	instance_types = kzalloc(sizeof(struct nvme_mdev_inst_type *)
+			* MAX_HOST_QUEUES + 1, GFP_KERNEL);
+
+	if (!instance_types) {
+		kfree(ops->supported_type_groups);
+		ops->supported_type_groups = NULL;
+		return -ENOMEM;
+	}
+
+	for (i = 0; i < MAX_HOST_QUEUES; i++) {
+		type = kzalloc(sizeof(*type), GFP_KERNEL);
+		if (!type) {
+			nvme_mdev_instance_types_fini(ops);
+			return -ENOMEM;
+		}
+		snprintf(type->name, sizeof(type->name), "%dQ_V1", i + 1);
+		type->max_hw_queues = i + 1;
+
+		attrgroup = kzalloc(sizeof(*attrgroup), GFP_KERNEL);
+		if (!attrgroup) {
+			kfree(type);
+			nvme_mdev_instance_types_fini(ops);
+			return -ENOMEM;
+		}
+
+		attrgroup->attrs = nvme_mdev_types_attrs;
+		attrgroup->name = type->name;
+		type->attrgroup = attrgroup;
+		instance_types[i] = type;
+		ops->supported_type_groups[i] = attrgroup;
+	}
+	return 0;
+}
+
+/* Updates in host controller state*/
+static void nvme_mdev_nvme_ctrl_state_changed(struct nvme_ctrl *ctrl)
+{
+	struct nvme_mdev_hctrl *hctrl = nvme_mdev_hctrl_lookup_get(ctrl->dev);
+	struct nvme_mdev_vctrl *vctrl;
+
+	switch (ctrl->state) {
+	case NVME_CTRL_NEW:
+		/* do nothing as new controller is not yet initialized*/
+		break;
+
+	case NVME_CTRL_LIVE:
+		/* new controller is live, create a mdev for it*/
+		if (!hctrl) {
+			hctrl = nvme_mdev_hctrl_create(ctrl);
+			return;
+		/* a controller is live again after reset/reconnect/suspend*/
+		} else {
+			mutex_lock(&nvme_mdev_vctrl_list_mutex);
+			list_for_each_entry(vctrl, &nvme_mdev_vctrl_list, link)
+				if (vctrl->hctrl == hctrl)
+					nvme_mdev_vctrl_resume(vctrl);
+			mutex_unlock(&nvme_mdev_vctrl_list_mutex);
+		}
+		break;
+
+	case NVME_CTRL_RESETTING:
+	case NVME_CTRL_CONNECTING:
+	case NVME_CTRL_SUSPENDED:
+		/* controller is temporarily not usable, stop using its queues*/
+		if (!hctrl)
+			return;
+
+		mutex_lock(&nvme_mdev_vctrl_list_mutex);
+		list_for_each_entry(vctrl, &nvme_mdev_vctrl_list, link)
+			if (vctrl->hctrl == hctrl)
+				nvme_mdev_vctrl_pause(vctrl);
+		mutex_unlock(&nvme_mdev_vctrl_list_mutex);
+		break;
+
+	case NVME_CTRL_DELETING:
+	case NVME_CTRL_DEAD:
+	case NVME_CTRL_ADMIN_ONLY:
+		/* host nvme controller is dead, remove it*/
+		if (!hctrl)
+			return;
+		nvme_mdev_hctrl_destroy(hctrl);
+		break;
+	}
+
+	if (hctrl)
+		nvme_mdev_hctrl_put(hctrl);
+}
+
+/* A host namespace might have its properties changed/removed.*/
+static void nvme_mdev_nvme_ctrl_ns_updated(struct nvme_ctrl *ctrl,
+					   u32 nsid, bool removed)
+{
+	struct nvme_mdev_vctrl *vctrl;
+	struct nvme_mdev_hctrl *hctrl = nvme_mdev_hctrl_lookup_get(ctrl->dev);
+
+	if (!hctrl)
+		return;
+
+	mutex_lock(&nvme_mdev_vctrl_list_mutex);
+	list_for_each_entry(vctrl, &nvme_mdev_vctrl_list, link)
+		if (vctrl->hctrl == hctrl)
+			nvme_mdev_vns_host_ns_update(vctrl, nsid, removed);
+	mutex_unlock(&nvme_mdev_vctrl_list_mutex);
+	nvme_mdev_hctrl_put(hctrl);
+}
+
+static struct nvme_mdev_driver nvme_mdev_driver = {
+	.owner = THIS_MODULE,
+	.nvme_ctrl_state_changed = nvme_mdev_nvme_ctrl_state_changed,
+	.nvme_ns_state_changed = nvme_mdev_nvme_ctrl_ns_updated,
+};
+
+static int __init nvme_mdev_init(void)
+{
+	int ret;
+
+	nvme_mdev_instance_types_init(&mdev_fops);
+	ret = nvme_core_register_mdev_driver(&nvme_mdev_driver);
+	if (ret) {
+		nvme_mdev_instance_types_fini(&mdev_fops);
+		return ret;
+	}
+
+	pr_info("nvme_mdev " NVME_MDEV_FIRMWARE_VERSION " loaded\n");
+	return 0;
+}
+
+static void __exit nvme_mdev_exit(void)
+{
+	nvme_core_unregister_mdev_driver(&nvme_mdev_driver);
+	nvme_mdev_hctrl_destroy_all();
+	nvme_mdev_instance_types_fini(&mdev_fops);
+	pr_info("nvme_mdev unloaded\n");
+}
+
+MODULE_AUTHOR("Maxim Levitsky <mlevitsk@redhat.com>");
+MODULE_LICENSE("GPL");
+MODULE_VERSION(NVME_MDEV_FIRMWARE_VERSION);
+
+module_init(nvme_mdev_init)
+module_exit(nvme_mdev_exit)
+
diff --git a/drivers/nvme/mdev/instance.c b/drivers/nvme/mdev/instance.c
new file mode 100644
index 000000000000..0e5ba5a9269f
--- /dev/null
+++ b/drivers/nvme/mdev/instance.c
@@ -0,0 +1,804 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Mediated NVMe instance VFIO code
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+
+#include <linux/init.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/vfio.h>
+#include <linux/sysfs.h>
+#include <linux/mdev.h>
+#include "priv.h"
+
+#define OFFSET_TO_REGION(offset) ((offset) >> 20)
+#define REGION_TO_OFFSET(nr) (((u64)nr) << 20)
+
+LIST_HEAD(nvme_mdev_vctrl_list);
+/*protects the list */
+DEFINE_MUTEX(nvme_mdev_vctrl_list_mutex);
+
+struct mdev_nvme_vfio_region_info {
+	struct vfio_region_info base;
+	struct vfio_region_info_cap_sparse_mmap mmap_cap;
+};
+
+/* User memory added*/
+static int nvme_mdev_map_notifier(struct notifier_block *nb,
+				  unsigned long action, void *data)
+{
+	struct vfio_iommu_type1_dma_map *map = data;
+	struct nvme_mdev_vctrl *vctrl =
+		container_of(nb, struct nvme_mdev_vctrl, vfio_map_notifier);
+
+	int ret = nvme_mdev_vctrl_viommu_map(vctrl, map->flags,
+			map->iova, map->size);
+	return ret ? NOTIFY_OK : notifier_from_errno(ret);
+}
+
+/* User memory removed*/
+static int nvme_mdev_unmap_notifier(struct notifier_block *nb,
+				    unsigned long action, void *data)
+{
+	struct nvme_mdev_vctrl *vctrl =
+		container_of(nb, struct nvme_mdev_vctrl, vfio_unmap_notifier);
+	struct vfio_iommu_type1_dma_unmap *unmap = data;
+
+	int ret = nvme_mdev_vctrl_viommu_unmap(vctrl, unmap->iova, unmap->size);
+
+	WARN_ON(ret <= 0);
+	return NOTIFY_OK;
+}
+
+/* Called when new mediated device is created */
+static int nvme_mdev_ops_create(struct kobject *kobj, struct mdev_device *mdev)
+{
+	int ret = 0;
+	const struct nvme_mdev_inst_type *type = NULL;
+	struct nvme_mdev_vctrl *vctrl;
+	struct nvme_mdev_hctrl *hctrl = NULL;
+
+	hctrl = nvme_mdev_hctrl_lookup_get(mdev_parent_dev(mdev));
+	if (!hctrl)
+		return -ENODEV;
+
+	type = nvme_mdev_inst_type_get(kobj->name);
+	vctrl = nvme_mdev_vctrl_create(mdev, hctrl, type->max_hw_queues);
+
+	if (IS_ERR(vctrl)) {
+		ret = PTR_ERR(vctrl);
+		goto out;
+	}
+
+	mutex_lock(&nvme_mdev_vctrl_list_mutex);
+	list_add_tail(&vctrl->link, &nvme_mdev_vctrl_list);
+	mutex_unlock(&nvme_mdev_vctrl_list_mutex);
+out:
+	nvme_mdev_hctrl_put(hctrl);
+	return ret;
+}
+
+/* Called when a mediated device is removed */
+static int nvme_mdev_ops_remove(struct mdev_device *mdev)
+{
+	struct nvme_mdev_vctrl *vctrl = mdev_to_vctrl(mdev);
+
+	if (!vctrl)
+		return -ENODEV;
+	return nvme_mdev_vctrl_destroy(vctrl);
+}
+
+/* Called when new mediated device is opened by a user */
+static int nvme_mdev_ops_open(struct mdev_device *mdev)
+{
+	int ret;
+	unsigned long events;
+	struct nvme_mdev_vctrl *vctrl = mdev_to_vctrl(mdev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	ret =  nvme_mdev_vctrl_open(vctrl);
+	if (ret)
+		return ret;
+
+	/* register unmap IOMMU notifier*/
+	vctrl->vfio_unmap_notifier.notifier_call = nvme_mdev_unmap_notifier;
+	events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
+
+	ret = vfio_register_notifier(mdev_dev(vctrl->mdev),
+				     VFIO_IOMMU_NOTIFY, &events,
+				     &vctrl->vfio_unmap_notifier);
+
+	if (ret != 0) {
+		nvme_mdev_vctrl_release(vctrl);
+		return ret;
+	}
+
+	/* register map IOMMU notifier*/
+	vctrl->vfio_map_notifier.notifier_call = nvme_mdev_map_notifier;
+	events = VFIO_IOMMU_NOTIFY_DMA_MAP;
+
+	ret = vfio_register_notifier(mdev_dev(vctrl->mdev),
+				     VFIO_IOMMU_NOTIFY, &events,
+				     &vctrl->vfio_map_notifier);
+
+	if (ret != 0) {
+		vfio_unregister_notifier(mdev_dev(vctrl->mdev),
+					 VFIO_IOMMU_NOTIFY,
+					 &vctrl->vfio_unmap_notifier);
+		nvme_mdev_vctrl_release(vctrl);
+		return ret;
+	}
+	return ret;
+}
+
+/* Called when new mediated device is closed (last close of the user) */
+static void nvme_mdev_ops_release(struct mdev_device *mdev)
+{
+	struct nvme_mdev_vctrl *vctrl = mdev_to_vctrl(mdev);
+	int ret;
+
+	ret = vfio_unregister_notifier(mdev_dev(vctrl->mdev),
+				       VFIO_IOMMU_NOTIFY,
+				       &vctrl->vfio_unmap_notifier);
+	WARN_ON(ret);
+
+	ret = vfio_unregister_notifier(mdev_dev(vctrl->mdev),
+				       VFIO_IOMMU_NOTIFY,
+				       &vctrl->vfio_map_notifier);
+	WARN_ON(ret);
+
+	nvme_mdev_vctrl_release(vctrl);
+}
+
+/* Helper function for bar/pci config read/write access */
+static ssize_t nvme_mdev_access(struct nvme_mdev_vctrl *vctrl,
+				char *buf, size_t count,
+				loff_t pos, bool is_write)
+{
+	int index = OFFSET_TO_REGION(pos);
+	int ret = -EINVAL;
+	unsigned int offset;
+
+	if (index >= VFIO_PCI_NUM_REGIONS || !vctrl->regions[index].rw)
+		goto out;
+
+	offset = pos - REGION_TO_OFFSET(index);
+	if (offset + count > vctrl->regions[index].size)
+		goto out;
+
+	ret = vctrl->regions[index].rw(vctrl, offset, buf, count, is_write);
+out:
+	return ret;
+}
+
+/* Called when read() is done on the device */
+static ssize_t nvme_mdev_ops_read(struct mdev_device *mdev, char __user *buf,
+				  size_t count, loff_t *ppos)
+{
+	unsigned int done = 0;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = mdev_to_vctrl(mdev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	while (count) {
+		size_t filled;
+
+		if (count >= 4 && !(*ppos % 4)) {
+			u32 val;
+
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, false);
+			if (ret <= 0)
+				goto read_err;
+
+			if (copy_to_user(buf, &val, sizeof(val)))
+				goto read_err;
+			filled = sizeof(val);
+		} else if (count >= 2 && !(*ppos % 2)) {
+			u16 val;
+
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, false);
+			if (ret <= 0)
+				goto read_err;
+			if (copy_to_user(buf, &val, sizeof(val)))
+				goto read_err;
+			filled = sizeof(val);
+		} else {
+			u8 val;
+
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, false);
+			if (ret <= 0)
+				goto read_err;
+			if (copy_to_user(buf, &val, sizeof(val)))
+				goto read_err;
+			filled = sizeof(val);
+		}
+
+		count -= filled;
+		done += filled;
+		*ppos += filled;
+		buf += filled;
+	}
+	return done;
+read_err:
+	return -EFAULT;
+}
+
+/* Called when write() is done on the device */
+static ssize_t nvme_mdev_ops_write(struct mdev_device *mdev,
+				   const char __user *buf,
+				   size_t count, loff_t *ppos)
+{
+	unsigned int done = 0;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = mdev_to_vctrl(mdev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	while (count) {
+		size_t filled;
+
+		if (count >= 4 && !(*ppos % 4)) {
+			u32 val;
+
+			if (copy_from_user(&val, buf, sizeof(val)))
+				goto write_err;
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, true);
+			if (ret <= 0)
+				goto write_err;
+			filled = sizeof(val);
+		} else if (count >= 2 && !(*ppos % 2)) {
+			u16 val;
+
+			if (copy_from_user(&val, buf, sizeof(val)))
+				goto write_err;
+
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, true);
+			if (ret <= 0)
+				goto write_err;
+			filled = sizeof(val);
+		} else {
+			u8 val;
+
+			if (copy_from_user(&val, buf, sizeof(val)))
+				goto write_err;
+			ret = nvme_mdev_access(vctrl, (char *)&val,
+					       sizeof(val), *ppos, true);
+			if (ret <= 0)
+				goto write_err;
+			filled = sizeof(val);
+		}
+		count -= filled;
+		done += filled;
+		*ppos += filled;
+		buf += filled;
+	}
+	return done;
+write_err:
+	return -EFAULT;
+}
+
+/*Helper for IRQ number VFIO query */
+static int nvme_mdev_irq_counts(struct nvme_mdev_vctrl *vctrl,
+				unsigned int irq_type)
+{
+	switch (irq_type) {
+	case VFIO_PCI_INTX_IRQ_INDEX:
+		return 1;
+	case VFIO_PCI_MSIX_IRQ_INDEX:
+		return MAX_VIRTUAL_IRQS;
+	case VFIO_PCI_REQ_IRQ_INDEX:
+		return 1;
+	default:
+		return 0;
+	}
+}
+
+/* VFIO VFIO_IRQ_SET_ACTION_TRIGGER implementation */
+static int nvme_mdev_ioctl_set_irqs_trigger(struct nvme_mdev_vctrl *vctrl,
+					    u32 flags,
+					    unsigned int irq_type,
+					    unsigned int start,
+					    unsigned int count,
+					    void *data)
+{
+	u32 data_type = flags & VFIO_IRQ_SET_DATA_TYPE_MASK;
+	u8 *bools = NULL;
+	unsigned int i;
+	int ret = -EINVAL;
+
+	/* Asked to disable the current interrupt mode*/
+	if (data_type == VFIO_IRQ_SET_DATA_NONE && count == 0) {
+		switch (irq_type) {
+		case VFIO_PCI_REQ_IRQ_INDEX:
+			nvme_mdev_irqs_set_unplug_trigger(vctrl, -1);
+			return 0;
+		case VFIO_PCI_INTX_IRQ_INDEX:
+			nvme_mdev_irqs_disable(vctrl, NVME_MDEV_IMODE_INTX);
+			return 0;
+		case VFIO_PCI_MSIX_IRQ_INDEX:
+			nvme_mdev_irqs_disable(vctrl, NVME_MDEV_IMODE_MSIX);
+			return 0;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	if (start + count > nvme_mdev_irq_counts(vctrl, irq_type))
+		return -EINVAL;
+
+	switch (data_type) {
+	case VFIO_IRQ_SET_DATA_BOOL:
+		bools = (u8 *)data;
+		/*fallthrough*/
+	case VFIO_IRQ_SET_DATA_NONE:
+		if (irq_type == VFIO_PCI_REQ_IRQ_INDEX)
+			return -EINVAL;
+
+		for (i = 0 ; i < count ; i++) {
+			int index = start + i;
+
+			if (!bools || bools[i])
+				nvme_mdev_irq_trigger(vctrl, index);
+		}
+		return 0;
+
+	case VFIO_IRQ_SET_DATA_EVENTFD:
+		switch (irq_type) {
+		case VFIO_PCI_REQ_IRQ_INDEX:
+			return nvme_mdev_irqs_set_unplug_trigger(vctrl,
+							*(int32_t *)data);
+		case VFIO_PCI_INTX_IRQ_INDEX:
+			ret = nvme_mdev_irqs_enable(vctrl,
+						    NVME_MDEV_IMODE_INTX);
+			break;
+		case VFIO_PCI_MSIX_IRQ_INDEX:
+			ret = nvme_mdev_irqs_enable(vctrl,
+						    NVME_MDEV_IMODE_MSIX);
+			break;
+		default:
+			return -EINVAL;
+		}
+		if (ret)
+			return ret;
+
+		return nvme_mdev_irqs_set_triggers(vctrl, start,
+						   count, (int32_t *)data);
+	default:
+		return -EINVAL;
+	}
+}
+
+/* VFIO_DEVICE_GET_INFO ioctl implementation */
+static int nvme_mdev_ioctl_get_info(struct nvme_mdev_vctrl *vctrl,
+				    void __user *arg)
+{
+	struct vfio_device_info info;
+	unsigned int minsz = offsetofend(struct vfio_device_info, num_irqs);
+
+	if (copy_from_user(&info, (void __user *)arg, minsz))
+		return -EFAULT;
+	if (info.argsz < minsz)
+		return -EINVAL;
+
+	info.flags = VFIO_DEVICE_FLAGS_PCI | VFIO_DEVICE_FLAGS_RESET;
+	info.num_regions = VFIO_PCI_NUM_REGIONS;
+	info.num_irqs = VFIO_PCI_NUM_IRQS;
+
+	if (copy_to_user(arg, &info, minsz))
+		return -EFAULT;
+	return 0;
+}
+
+/* VFIO_DEVICE_GET_REGION_INFO ioctl implementation*/
+static int nvme_mdev_ioctl_get_reg_info(struct nvme_mdev_vctrl *vctrl,
+					void __user *arg)
+{
+	struct nvme_mdev_io_region *region;
+	struct mdev_nvme_vfio_region_info *info;
+	unsigned long minsz, outsz, maxsz;
+	int ret = 0;
+
+	minsz = offsetofend(struct vfio_region_info, offset);
+	maxsz = sizeof(struct mdev_nvme_vfio_region_info) +
+				sizeof(struct vfio_region_sparse_mmap_area);
+
+	info = kzalloc(maxsz, GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	if (copy_from_user(info, arg, minsz)) {
+		ret = -EFAULT;
+		goto out;
+	}
+
+	outsz = info->base.argsz;
+	if (outsz < minsz || outsz > maxsz) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (info->base.index >= VFIO_PCI_NUM_REGIONS) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	region = &vctrl->regions[info->base.index];
+	info->base.offset = REGION_TO_OFFSET(info->base.index);
+	info->base.argsz = maxsz;
+	info->base.size = region->size;
+
+	info->base.flags = VFIO_REGION_INFO_FLAG_READ |
+				VFIO_REGION_INFO_FLAG_WRITE;
+
+	if (region->mmap_ops) {
+		info->base.flags |= (VFIO_REGION_INFO_FLAG_MMAP |
+						VFIO_REGION_INFO_FLAG_CAPS);
+
+		info->base.cap_offset =
+			offsetof(struct mdev_nvme_vfio_region_info, mmap_cap);
+
+		info->mmap_cap.header.id = VFIO_REGION_INFO_CAP_SPARSE_MMAP;
+		info->mmap_cap.header.version = 1;
+		info->mmap_cap.header.next = 0;
+		info->mmap_cap.nr_areas = 1;
+		info->mmap_cap.areas[0].offset = region->mmap_area_start;
+		info->mmap_cap.areas[0].size = region->mmap_area_size;
+	}
+
+	if (copy_to_user(arg, info, outsz))
+		ret = -EFAULT;
+out:
+	kfree(info);
+	return ret;
+}
+
+/* VFIO_DEVICE_GET_IRQ_INFO ioctl implementation */
+static int nvme_mdev_ioctl_get_irq_info(struct nvme_mdev_vctrl *vctrl,
+					void __user *arg)
+{
+	struct vfio_irq_info info;
+	unsigned int minsz = offsetofend(struct vfio_irq_info, count);
+
+	if (copy_from_user(&info, arg, minsz))
+		return -EFAULT;
+	if (info.argsz < minsz)
+		return -EINVAL;
+
+	info.count = nvme_mdev_irq_counts(vctrl, info.index);
+	info.flags = VFIO_IRQ_INFO_EVENTFD;
+
+	if (info.index == VFIO_PCI_INTX_IRQ_INDEX)
+		info.flags |= VFIO_IRQ_INFO_MASKABLE | VFIO_IRQ_INFO_AUTOMASKED;
+
+	if (copy_to_user(arg, &info, minsz))
+		return -EFAULT;
+	return 0;
+}
+
+/* VFIO VFIO_DEVICE_SET_IRQS ioctl implementation */
+static int nvme_mdev_ioctl_set_irqs(struct nvme_mdev_vctrl *vctrl,
+				    void __user *arg)
+{
+	int ret, irqcount;
+	struct vfio_irq_set hdr;
+	u8 *data = NULL;
+	size_t data_size = 0;
+	unsigned long minsz = offsetofend(struct vfio_irq_set, count);
+
+	if (copy_from_user(&hdr, arg, minsz))
+		return -EFAULT;
+
+	irqcount = nvme_mdev_irq_counts(vctrl, hdr.index);
+	ret = vfio_set_irqs_validate_and_prepare(&hdr,
+						 irqcount,
+						 VFIO_PCI_NUM_IRQS,
+						 &data_size);
+	if (ret)
+		return ret;
+
+	if (data_size) {
+		data = memdup_user((arg + minsz), data_size);
+		if (IS_ERR(data))
+			return PTR_ERR(data);
+	}
+
+	ret = -ENOTTY;
+	switch (hdr.index) {
+	case VFIO_PCI_INTX_IRQ_INDEX:
+	case VFIO_PCI_MSIX_IRQ_INDEX:
+	case VFIO_PCI_REQ_IRQ_INDEX:
+		switch (hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
+		case VFIO_IRQ_SET_ACTION_MASK:
+		case VFIO_IRQ_SET_ACTION_UNMASK:
+			// pretend to support this (even with eventfd)
+			ret = hdr.index == VFIO_PCI_INTX_IRQ_INDEX ?
+					0 : -EINVAL;
+			break;
+		case VFIO_IRQ_SET_ACTION_TRIGGER:
+			ret = nvme_mdev_ioctl_set_irqs_trigger(vctrl, hdr.flags,
+							       hdr.index,
+							       hdr.start,
+							       hdr.count,
+							       data);
+			break;
+		}
+		break;
+	}
+
+	kfree(data);
+	return ret;
+}
+
+/* ioctl() implementation */
+static long nvme_mdev_ops_ioctl(struct mdev_device *mdev, unsigned int cmd,
+				unsigned long arg)
+{
+	struct nvme_mdev_vctrl *vctrl = mdev_get_drvdata(mdev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	switch (cmd) {
+	case VFIO_DEVICE_GET_INFO:
+		return nvme_mdev_ioctl_get_info(vctrl, (void __user *)arg);
+	case VFIO_DEVICE_GET_REGION_INFO:
+		return nvme_mdev_ioctl_get_reg_info(vctrl, (void __user *)arg);
+	case VFIO_DEVICE_GET_IRQ_INFO:
+		return nvme_mdev_ioctl_get_irq_info(vctrl, (void __user *)arg);
+	case VFIO_DEVICE_SET_IRQS:
+		return nvme_mdev_ioctl_set_irqs(vctrl, (void __user *)arg);
+	case VFIO_DEVICE_RESET:
+		nvme_mdev_vctrl_reset(vctrl);
+		return 0;
+	default:
+		return -ENOTTY;
+	}
+}
+
+/* mmap() implementation (doorbell area) */
+static int nvme_mdev_ops_mmap(struct mdev_device *mdev,
+			      struct vm_area_struct *vma)
+{
+	struct nvme_mdev_vctrl *vctrl = mdev_get_drvdata(mdev);
+	int index = OFFSET_TO_REGION((u64)vma->vm_pgoff << PAGE_SHIFT);
+	unsigned long size, start;
+
+	if (!vctrl)
+		return -EFAULT;
+
+	if (index >= VFIO_PCI_NUM_REGIONS || !vctrl->regions[index].mmap_ops)
+		return -EINVAL;
+
+	if (vma->vm_end < vma->vm_start)
+		return -EINVAL;
+
+	size = vma->vm_end - vma->vm_start;
+	start = vma->vm_pgoff << PAGE_SHIFT;
+
+	if (start < vctrl->regions[index].mmap_area_start)
+		return -EINVAL;
+	if (size > vctrl->regions[index].mmap_area_size)
+		return -EINVAL;
+
+	if ((vma->vm_flags & VM_SHARED) == 0)
+		return -EINVAL;
+
+	vma->vm_ops = vctrl->regions[index].mmap_ops;
+	vma->vm_private_data = vctrl;
+	return 0;
+}
+
+/* Request removal of the device*/
+static void nvme_mdev_ops_request(struct mdev_device *mdev, unsigned int count)
+{
+	struct nvme_mdev_vctrl *vctrl = mdev_get_drvdata(mdev);
+
+	if (vctrl)
+		nvme_mdev_irq_raise_unplug_event(vctrl, count);
+}
+
+/* Adding a new namespace given host NS id and partition ID (e/g. n1p2 or n1) */
+static ssize_t add_namespace_store(struct device *dev,
+				   struct device_attribute *attr,
+				   const char *buf, size_t count)
+{
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+	int ret;
+	unsigned long partno = 0, nsid;
+	char *buf_copy, *token, *tmp;
+
+	if (!vctrl)
+		return -ENODEV;
+
+	buf_copy = kstrdup(buf, GFP_KERNEL);
+	if (!buf_copy)
+		return -ENOMEM;
+
+	tmp = buf_copy;
+	if (tmp[0] != 'n') {
+		ret = -EINVAL;
+		goto out;
+	}
+	tmp++;
+
+	// read namespace ID (mandatory)
+	token = strsep(&tmp, "p");
+	if (!token) {
+		ret = -EINVAL;
+		goto out;
+	}
+	ret = kstrtoul(token, 10, &nsid);
+	if (ret)
+		goto out;
+
+	// read partition ID (optional)
+	if (tmp) {
+		ret = kstrtoul(tmp, 10, &partno);
+		if (ret)
+			goto out;
+	}
+
+	// create the user namespace
+	ret = nvme_mdev_vns_open(vctrl, nsid, partno);
+	if (ret)
+		goto out;
+	ret = count;
+out:
+	kfree(buf_copy);
+	return ret;
+}
+static DEVICE_ATTR_WO(add_namespace);
+
+/* Remove a user namespace */
+static ssize_t remove_namespace_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t count)
+{
+	unsigned long user_nsid;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	ret = kstrtoul(buf, 10, &user_nsid);
+	if (ret)
+		return ret;
+
+	ret =  nvme_mdev_vns_destroy(vctrl, user_nsid);
+	if (ret)
+		return ret;
+	return count;
+}
+static DEVICE_ATTR_WO(remove_namespace);
+
+/* Show list of user namespaces */
+static ssize_t namespaces_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+	return nvme_mdev_vns_print_description(vctrl, buf, PAGE_SIZE - 1);
+}
+static DEVICE_ATTR_RO(namespaces);
+
+/* change the cpu binding of the IO threads*/
+static ssize_t iothread_cpu_store(struct device *dev,
+				  struct device_attribute *attr,
+				  const char *buf, size_t count)
+{
+	unsigned long val;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+	ret = kstrtoul(buf, 10, &val);
+	if (ret)
+		return ret;
+	nvme_mdev_vctrl_bind_iothread(vctrl, val);
+	return count;
+}
+
+/* change the cpu binding of the IO threads*/
+static ssize_t
+iothread_cpu_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+	return sprintf(buf, "%d\n", vctrl->iothread_cpu);
+}
+static DEVICE_ATTR_RW(iothread_cpu);
+
+/* change the cpu binding of the IO threads*/
+static ssize_t shadow_doorbell_store(struct device *dev,
+				     struct device_attribute *attr,
+				     const char *buf, size_t count)
+{
+	bool val;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+	ret = kstrtobool(buf, &val);
+	if (ret)
+		return ret;
+	ret = nvme_mdev_vctrl_set_shadow_doorbell_supported(vctrl, val);
+	if (ret)
+		return ret;
+	return count;
+}
+
+/* change the cpu binding of the IO threads*/
+static ssize_t shadow_doorbell_show(struct device *dev,
+				    struct device_attribute *attr, char *buf)
+{
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+
+	return sprintf(buf, "%d\n", vctrl->mmio.shadow_db_supported ? 1 : 0);
+}
+static DEVICE_ATTR_RW(shadow_doorbell);
+
+static struct attribute *nvme_mdev_dev_ns_atttributes[] = {
+	&dev_attr_add_namespace.attr,
+	&dev_attr_remove_namespace.attr,
+	&dev_attr_namespaces.attr,
+	NULL
+};
+
+static struct attribute *nvme_mdev_dev_settings_atttributes[] = {
+	&dev_attr_iothread_cpu.attr,
+	&dev_attr_shadow_doorbell.attr,
+	NULL
+};
+
+static const struct attribute_group nvme_mdev_ns_attr_group = {
+	.name = "namespaces",
+	.attrs = nvme_mdev_dev_ns_atttributes,
+};
+
+static const struct attribute_group nvme_mdev_setting_attr_group = {
+	.name = "settings",
+	.attrs = nvme_mdev_dev_settings_atttributes,
+};
+
+static const struct attribute_group *nvme_mdev_dev_attributte_groups[] = {
+	&nvme_mdev_ns_attr_group,
+	&nvme_mdev_setting_attr_group,
+	NULL,
+};
+
+struct mdev_parent_ops mdev_fops = {
+	.owner			= THIS_MODULE,
+	.create			= nvme_mdev_ops_create,
+	.remove			= nvme_mdev_ops_remove,
+	.open			= nvme_mdev_ops_open,
+	.release		= nvme_mdev_ops_release,
+	.read			= nvme_mdev_ops_read,
+	.write			= nvme_mdev_ops_write,
+	.mmap			= nvme_mdev_ops_mmap,
+	.ioctl			= nvme_mdev_ops_ioctl,
+	.request		= nvme_mdev_ops_request,
+	.mdev_attr_groups	= nvme_mdev_dev_attributte_groups,
+	.dev_attr_groups	= NULL,
+};
+
diff --git a/drivers/nvme/mdev/io.c b/drivers/nvme/mdev/io.c
new file mode 100644
index 000000000000..a731196d0365
--- /dev/null
+++ b/drivers/nvme/mdev/io.c
@@ -0,0 +1,563 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe IO command translation and polling IO thread
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/slab.h>
+#include <linux/nvme.h>
+#include <linux/timekeeping.h>
+#include <linux/ktime.h>
+#include "priv.h"
+
+struct io_ctx {
+	struct nvme_mdev_hctrl *hctrl;
+	struct nvme_mdev_vctrl *vctrl;
+
+	const struct nvme_command *in;
+	struct nvme_command out;
+	struct nvme_mdev_vns *ns;
+	struct nvme_ext_data_iter udatait;
+	struct nvme_ext_data_iter *kdatait;
+
+	ktime_t last_io_t;
+	ktime_t last_admin_poll_time;
+	unsigned int idle_timeout_ms;
+	unsigned int admin_poll_rate_ms;
+	unsigned int arb_burst;
+};
+
+/* Handle read/write command.*/
+static int nvme_mdev_io_translate_rw(struct io_ctx *ctx)
+{
+	int ret;
+	const struct nvme_rw_command *in = &ctx->in->rw;
+
+	u64 slba = le64_to_cpu(in->slba);
+	u64 length = le16_to_cpu(in->length) + 1;
+	u16 control = le16_to_cpu(in->control);
+
+	_DBG(ctx->vctrl, "IOQ: READ/WRITE\n");
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_MPTR | RSRV_DW14_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16, 0b1100000000111100))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (in->opcode == nvme_cmd_write && ctx->ns->readonly)
+		return DNR(NVME_SC_READ_ONLY);
+
+	if (!check_range(slba, length, ctx->ns->ns_size))
+		return DNR(NVME_SC_LBA_RANGE);
+
+	ctx->out.rw.slba = cpu_to_le64(slba + ctx->ns->host_lba_offset);
+	ctx->out.rw.length = in->length;
+
+	ret = nvme_mdev_udata_iter_set_dptr(&ctx->udatait, &in->dptr,
+					    length << ctx->ns->blksize_shift);
+	if (ret)
+		return nvme_mdev_translate_error(ret);
+
+	ctx->kdatait = &ctx->udatait;
+	if (control & ~(NVME_RW_LR | NVME_RW_FUA))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	ctx->out.rw.control = in->control;
+	return -1;
+}
+
+/*Handle flush command */
+static int nvme_mdev_io_translate_flush(struct io_ctx *ctx)
+{
+	ctx->kdatait = NULL;
+
+	_DBG(ctx->vctrl, "IOQ: FLUSH\n");
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW10_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (ctx->ns->readonly)
+		return DNR(NVME_SC_READ_ONLY);
+
+	return -1;
+}
+
+/* Handle write zeros command */
+static int nvme_mdev_io_translate_write_zeros(struct io_ctx *ctx)
+{
+	const struct nvme_write_zeroes_cmd *in = &ctx->in->write_zeroes;
+	u64 slba = le64_to_cpu(in->slba);
+	u64 length = le16_to_cpu(in->length) + 1;
+	u16 control = le16_to_cpu(in->control);
+
+	_DBG(ctx->vctrl, "IOQ: WRITE_ZEROS\n");
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_DPTR |
+				   RSRV_MPTR | RSRV_DW13_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!nvme_mdev_hctrl_hq_check_op(ctx->hctrl, in->opcode))
+		return DNR(NVME_SC_INVALID_OPCODE);
+
+	if (ctx->ns->readonly)
+		return DNR(NVME_SC_READ_ONLY);
+	ctx->kdatait = NULL;
+
+	if (!check_range(slba, length, ctx->ns->ns_size))
+		return DNR(NVME_SC_LBA_RANGE);
+
+	ctx->out.write_zeroes.slba =
+		cpu_to_le64(slba + ctx->ns->host_lba_offset);
+	ctx->out.write_zeroes.length = in->length;
+
+	if (control & ~(NVME_RW_LR | NVME_RW_FUA | NVME_WZ_DEAC))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	ctx->out.write_zeroes.control = in->control;
+	return -1;
+}
+
+/* Handle dataset management command */
+static int nvme_mdev_io_translate_dsm(struct io_ctx *ctx)
+{
+	unsigned int size, i, nr;
+	int ret;
+	const struct nvme_dsm_cmd *in = &ctx->in->dsm;
+	struct nvme_dsm_range *data_ptr;
+
+	_DBG(ctx->vctrl, "IOQ: DSM_MANAGEMENT\n");
+
+	if (!check_reserved_dwords(ctx->in->dwords, 16,
+				   RSRV_DW23 | RSRV_MPTR | RSRV_DW12_15))
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (le32_to_cpu(in->nr) & 0xFFFFFF00)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	if (!nvme_mdev_hctrl_hq_check_op(ctx->hctrl, in->opcode))
+		return DNR(NVME_SC_INVALID_OPCODE);
+
+	if (ctx->ns->readonly)
+		return DNR(NVME_SC_READ_ONLY);
+
+	nr = le32_to_cpu(in->nr) + 1;
+	size = nr * sizeof(struct nvme_dsm_range);
+
+	ctx->out.dsm.nr = in->nr;
+	ret = nvme_mdev_udata_iter_set_dptr(&ctx->udatait, &in->dptr, size);
+	if (ret)
+		goto error;
+
+	ctx->kdatait = nvme_mdev_kdata_iter_alloc(&ctx->vctrl->viommu, size);
+	if (!ctx->kdatait)
+		return NVME_SC_INTERNAL;
+
+	_DBG(ctx->vctrl, "IOQ: DSM_MANAGEMENT: NR=%d\n", nr);
+
+	ret = nvme_mdev_read_from_udata(ctx->kdatait->kmem.data, &ctx->udatait,
+					size);
+	if (ret)
+		goto error2;
+
+	data_ptr = (struct nvme_dsm_range *)ctx->kdatait->kmem.data;
+
+	for (i = 0 ; i < nr; i++) {
+		u64 slba = le64_to_cpu(data_ptr[i].slba);
+		/* looks like not zero based value*/
+		u32 nlb = le32_to_cpu(data_ptr[i].nlb);
+
+		if (!check_range(slba, nlb, ctx->ns->ns_size))
+			goto error2;
+
+		_DBG(ctx->vctrl, "IOQ: DSM_MANAGEMENT: RANGE 0x%llx-0x%x\n",
+		     slba, nlb);
+
+		data_ptr[i].slba = cpu_to_le64(slba + ctx->ns->host_lba_offset);
+	}
+
+	ctx->out.dsm.attributes = in->attributes;
+	return -1;
+error2:
+	ctx->kdatait->release(ctx->kdatait);
+error:
+	return nvme_mdev_translate_error(ret);
+}
+
+/* Process one new command in the io queue*/
+static int nvme_mdev_io_translate_cmd(struct io_ctx *ctx)
+{
+	memset(&ctx->out, 0, sizeof(ctx->out));
+	/* translate opcode */
+	ctx->out.common.opcode = ctx->in->common.opcode;
+
+	/* check flags */
+	if (ctx->in->common.flags != 0)
+		return DNR(NVME_SC_INVALID_FIELD);
+
+	/* namespace*/
+	ctx->ns = nvme_mdev_vns_from_vnsid(ctx->vctrl,
+					   le32_to_cpu(ctx->in->rw.nsid));
+	if (!ctx->ns) {
+		_DBG(ctx->vctrl, "IOQ: invalid NSID\n");
+		return DNR(NVME_SC_INVALID_NS);
+	}
+
+	if (!ctx->ns->readonly && bdev_read_only(ctx->ns->host_part))
+		ctx->ns->readonly = true;
+
+	ctx->out.common.nsid = cpu_to_le32(ctx->ns->host_nsid);
+
+	switch (ctx->in->common.opcode) {
+	case nvme_cmd_flush:
+		return nvme_mdev_io_translate_flush(ctx);
+	case nvme_cmd_read:
+		return nvme_mdev_io_translate_rw(ctx);
+	case nvme_cmd_write:
+		return nvme_mdev_io_translate_rw(ctx);
+	case nvme_cmd_write_zeroes:
+		return nvme_mdev_io_translate_write_zeros(ctx);
+	case nvme_cmd_dsm:
+		return nvme_mdev_io_translate_dsm(ctx);
+	default:
+		return DNR(NVME_SC_INVALID_OPCODE);
+	}
+}
+
+static bool nvme_mdev_io_process_sq(struct io_ctx *ctx, u16 sqid)
+{
+	struct nvme_vsq *vsq = &ctx->vctrl->vsqs[sqid];
+	u16 ucid;
+	int ret;
+
+	/* If host queue is full, we can't process a command
+	 * as a command will likely result in passthrough
+	 */
+	if (!nvme_mdev_hctrl_hq_can_submit(ctx->hctrl, vsq->hsq))
+		return false;
+
+	/* read the command */
+	ctx->in = nvme_mdev_vsq_get_cmd(ctx->vctrl, vsq);
+	if (!ctx->in)
+		return false;
+	ucid = le16_to_cpu(ctx->in->common.command_id);
+
+	/* translate the command */
+	ret = nvme_mdev_io_translate_cmd(ctx);
+	if (ret != -1) {
+		_DBG(ctx->vctrl,
+		     "IOQ: QID %d CID %d FAILED: status 0x%x (translate)\n",
+		     sqid, ucid, ret);
+		nvme_mdev_vsq_cmd_done_io(ctx->vctrl, sqid, ucid, ret);
+		return true;
+	}
+
+	/*passthrough*/
+	ret = nvme_mdev_hctrl_hq_submit(ctx->hctrl,
+					vsq->hsq,
+					(((u32)vsq->qid) << 16) | ((u32)ucid),
+					&ctx->out,
+					ctx->kdatait);
+	if (ret) {
+		ret = nvme_mdev_translate_error(ret);
+
+		_DBG(ctx->vctrl,
+		     "IOQ: QID %d CID %d FAILED: status 0x%x (host submit)\n",
+		     sqid, ucid, ret);
+
+		nvme_mdev_vsq_cmd_done_io(ctx->vctrl, sqid, ucid, ret);
+	}
+	return true;
+}
+
+/* process host replies to the passed through commands */
+static int nvme_mdev_io_process_hwq(struct io_ctx *ctx, u16 hwq)
+{
+	int n, i;
+	struct nvme_ext_cmd_result res[16];
+
+	/* process the completions from the hardware */
+	n = nvme_mdev_hctrl_hq_poll(ctx->hctrl, hwq, res, 16);
+	if (n == -1)
+		return -1;
+
+	for (i = 0; i < n; i++) {
+		u16 qid = res[i].tag >> 16;
+		u16 cid = res[i].tag & 0xFFFF;
+		u16 status = res[i].status;
+
+		if (status != 0)
+			_DBG(ctx->vctrl,
+			     "IOQ: QID %d CID %d FAILED: status 0x%x (host response)\n",
+			     qid, cid, status);
+
+		nvme_mdev_vsq_cmd_done_io(ctx->vctrl, qid, cid, status);
+	}
+	return n;
+}
+
+/* Check if we need to read a command from the admin queue */
+static bool nvme_mdev_adm_needs_processing(struct io_ctx *ctx)
+{
+	if (!timeout(ctx->last_admin_poll_time,
+		     ctx->vctrl->now, ctx->admin_poll_rate_ms))
+		return false;
+
+	if (nvme_mdev_vsq_has_data(ctx->vctrl, &ctx->vctrl->vsqs[0]))
+		return true;
+
+	ctx->last_admin_poll_time = ctx->vctrl->now;
+	return false;
+}
+
+/* do polling till one of events stops it */
+static void nvme_mdev_io_maintask(struct io_ctx *ctx)
+{
+	struct nvme_mdev_vctrl *vctrl = ctx->vctrl;
+	u16 i, cqid, sqid, hsqcnt;
+	u16 hsqs[MAX_HOST_QUEUES];
+	bool idle = false;
+
+	hsqcnt = nvme_mdev_vctrl_hqs_list(vctrl, hsqs);
+	ctx->arb_burst = 1 << ctx->vctrl->arb_burst_shift;
+
+	/* can't stop polling when shadow db not enabled */
+	ctx->idle_timeout_ms = vctrl->mmio.shadow_db_en ? poll_timeout_ms : 0;
+	ctx->admin_poll_rate_ms = admin_poll_rate_ms;
+
+	vctrl->now = ktime_get();
+	ctx->last_admin_poll_time = vctrl->now;
+	ctx->last_io_t = vctrl->now;
+
+	/* main loop */
+	while (!kthread_should_park()) {
+		vctrl->now = ktime_get();
+
+		/* check if we have to exit to support admin polling */
+		if (!vctrl->mmio.shadow_db_supported)
+			if (nvme_mdev_adm_needs_processing(ctx))
+				break;
+
+		/* process the submission queues*/
+		sqid = 1;
+		for_each_set_bit_from(sqid, vctrl->vsq_en, MAX_VIRTUAL_QUEUES)
+			for (i = 0 ; i < ctx->arb_burst ; i++)
+				if (!nvme_mdev_io_process_sq(ctx, sqid))
+					break;
+
+		/* process the completions from the guest*/
+		cqid = 1;
+		for_each_set_bit_from(cqid, vctrl->vcq_en, MAX_VIRTUAL_QUEUES)
+			nvme_mdev_vcq_process(vctrl, cqid, true);
+
+		/* process the completions from the hardware*/
+		for (i = 0 ; i < hsqcnt ; i++)
+			if (nvme_mdev_io_process_hwq(ctx, hsqs[i]) > 0)
+				ctx->last_io_t = vctrl->now;
+
+		/* Check if we need to stop polling*/
+		if (ctx->idle_timeout_ms) {
+			if (timeout(ctx->last_io_t,
+				    vctrl->now, ctx->idle_timeout_ms)) {
+				idle = true;
+				break;
+			}
+		}
+		cond_resched();
+	}
+
+	/* Drain the host IO */
+	for (;;) {
+		bool pending_io = false;
+
+		vctrl->now = ktime_get_coarse_boottime();
+
+		if (nvme_mdev_vctrl_is_dead(vctrl) || ctx->hctrl->removing) {
+			idle = false;
+			break;
+		}
+
+		for (i = 0; i < hsqcnt; i++) {
+			int n = nvme_mdev_io_process_hwq(ctx, hsqs[i]);
+
+			if (n != -1)
+				pending_io = true;
+			if (n > 0)
+				ctx->last_io_t = vctrl->now;
+		}
+
+		if (!pending_io)
+			break;
+
+		cond_resched();
+
+		if (!timeout(ctx->last_io_t, vctrl->now, io_timeout_ms))
+			continue;
+
+		_WARN(ctx->vctrl, "IO: skipping flush - host IO timeout\n");
+		idle = false;
+		break;
+	}
+
+	/* Drain all the pending completion interrupts to the guest*/
+	cqid = 1;
+	for_each_set_bit_from(cqid, vctrl->vcq_en, MAX_VIRTUAL_QUEUES)
+		if (nvme_mdev_vcq_flush(vctrl, cqid))
+			idle = false;
+
+	/* Park IO thread if IO is truly idle*/
+	if (idle) {
+		/* don't bother going idle if someone holds the vctrl
+		 * lock. It might try to park us, and thus
+		 * cause a deadlock
+		 */
+		if (!mutex_trylock(&vctrl->lock))
+			return;
+
+		sqid = 1;
+		for_each_set_bit_from(sqid, vctrl->vsq_en, MAX_VIRTUAL_QUEUES)
+			if (!nvme_mdev_vsq_suspend_io(vctrl, sqid)) {
+				idle = false;
+				break;
+			}
+
+		if (idle) {
+			_DBG(ctx->vctrl, "IO: self-parking\n");
+			vctrl->io_idle = true;
+			nvme_mdev_io_pause(vctrl);
+		}
+
+		mutex_unlock(&vctrl->lock);
+	}
+
+	/* Admin poll for cases when shadow doorbell is not supported */
+	if (!vctrl->mmio.shadow_db_supported) {
+		if (mutex_trylock(&vctrl->lock)) {
+			nvme_mdev_vcq_process(vctrl, 0, false);
+			nvme_mdev_adm_process_sq(ctx->vctrl);
+			ctx->last_admin_poll_time = vctrl->now;
+			mutex_unlock(&ctx->vctrl->lock);
+		}
+	}
+}
+
+/* the main IO thread */
+static int nvme_mdev_io_polling_thread(void *data)
+{
+	struct io_ctx ctx;
+
+	if (kthread_should_stop())
+		return 0;
+
+	memset(&ctx, 0, sizeof(struct io_ctx));
+	ctx.vctrl = (struct nvme_mdev_vctrl *)data;
+	ctx.hctrl = ctx.vctrl->hctrl;
+	nvme_mdev_udata_iter_setup(&ctx.vctrl->viommu, &ctx.udatait);
+
+	_DBG(ctx.vctrl, "IO: iothread started\n");
+
+	for (;;) {
+		if (kthread_should_park()) {
+			_DBG(ctx.vctrl, "IO: iothread parked\n");
+			kthread_parkme();
+		}
+
+		if (kthread_should_stop())
+			break;
+
+		nvme_mdev_io_maintask(&ctx);
+	}
+
+	_DBG(ctx.vctrl, "IO: iothread stopped\n");
+	return 0;
+}
+
+/* Kick the IO thread into running state*/
+void nvme_mdev_io_resume(struct nvme_mdev_vctrl *vctrl)
+{
+	lockdep_assert_held(&vctrl->lock);
+
+	if (!vctrl->iothread || !vctrl->iothread_parked)
+		return;
+	if (vctrl->io_idle || vctrl->vctrl_paused)
+		return;
+
+	vctrl->iothread_parked = false;
+	/* has memory barrier*/
+	kthread_unpark(vctrl->iothread);
+}
+
+/* Pause the IO thread */
+void nvme_mdev_io_pause(struct nvme_mdev_vctrl *vctrl)
+{
+	lockdep_assert_held(&vctrl->lock);
+
+	if (!vctrl->iothread || vctrl->iothread_parked)
+		return;
+
+	vctrl->iothread_parked = true;
+	kthread_park(vctrl->iothread);
+}
+
+/* setup the main IO thread */
+int nvme_mdev_io_create(struct nvme_mdev_vctrl *vctrl, unsigned int cpu)
+{
+	/*TODOLATER: IO: Better thread name*/
+	char name[TASK_COMM_LEN];
+
+	_DBG(vctrl, "IO: creating the polling iothread\n");
+
+	if (WARN_ON(vctrl->iothread))
+		return -EINVAL;
+
+	snprintf(name, sizeof(name), "nvme%d_poll_io", vctrl->hctrl->id);
+
+	vctrl->iothread_cpu = cpu;
+	vctrl->iothread_parked = false;
+	vctrl->io_idle = true;
+
+	vctrl->iothread = kthread_create_on_node(nvme_mdev_io_polling_thread,
+						 vctrl,
+						 vctrl->hctrl->node,
+						 name);
+	if (IS_ERR(vctrl->iothread)) {
+		vctrl->iothread = NULL;
+		return PTR_ERR(vctrl->iothread);
+	}
+
+	kthread_bind(vctrl->iothread, cpu);
+
+	if (vctrl->io_idle) {
+		vctrl->iothread_parked = true;
+		kthread_park(vctrl->iothread);
+		return 0;
+	}
+
+	wake_up_process(vctrl->iothread);
+	return 0;
+}
+
+/* End the  main IO thread */
+void nvme_mdev_io_free(struct nvme_mdev_vctrl *vctrl)
+{
+	int ret;
+
+	_DBG(vctrl, "IO: destroying the polling iothread\n");
+
+	lockdep_assert_held(&vctrl->lock);
+	nvme_mdev_io_pause(vctrl);
+	ret = kthread_stop(vctrl->iothread);
+	WARN_ON(ret);
+	vctrl->iothread = NULL;
+}
+
+void nvme_mdev_assert_io_not_running(struct nvme_mdev_vctrl *vctrl)
+{
+	if (WARN_ON(vctrl->iothread && !vctrl->iothread_parked))
+		nvme_mdev_io_pause(vctrl);
+}
diff --git a/drivers/nvme/mdev/irq.c b/drivers/nvme/mdev/irq.c
new file mode 100644
index 000000000000..5809cdb4d84c
--- /dev/null
+++ b/drivers/nvme/mdev/irq.c
@@ -0,0 +1,264 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe virtual controller IRQ implementation (MSIx and INTx)
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+
+#include <linux/init.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include "priv.h"
+
+/* Setup the interrupt subsystem */
+void nvme_mdev_irqs_setup(struct nvme_mdev_vctrl *vctrl)
+{
+	vctrl->irqs.mode = NVME_MDEV_IMODE_NONE;
+	vctrl->irqs.irq_coalesc_max = 1;
+}
+
+/* Enable INTx or MSIx interrupts  */
+static int __nvme_mdev_irqs_enable(struct nvme_mdev_vctrl *vctrl,
+				   enum nvme_mdev_irq_mode mode)
+{
+	if (vctrl->irqs.mode == mode)
+		return 0;
+	if (vctrl->irqs.mode != NVME_MDEV_IMODE_NONE)
+		return -EBUSY;
+
+	if (mode == NVME_MDEV_IMODE_INTX)
+		_DBG(vctrl, "IRQ: enable INTx interrupts\n");
+	else if (mode == NVME_MDEV_IMODE_MSIX)
+		_DBG(vctrl, "IRQ: enable MSIX interrupts\n");
+	else
+		WARN_ON(1);
+
+	nvme_mdev_io_pause(vctrl);
+	vctrl->irqs.mode = mode;
+	nvme_mdev_io_resume(vctrl);
+	return 0;
+}
+
+int nvme_mdev_irqs_enable(struct nvme_mdev_vctrl *vctrl,
+			  enum nvme_mdev_irq_mode mode)
+{
+	int retval = 0;
+
+	mutex_lock(&vctrl->lock);
+	retval = __nvme_mdev_irqs_enable(vctrl, mode);
+	mutex_unlock(&vctrl->lock);
+	return retval;
+}
+
+/* Disable INTx or MSIx interrupts  */
+static void __nvme_mdev_irqs_disable(struct nvme_mdev_vctrl *vctrl,
+				     enum nvme_mdev_irq_mode mode)
+{
+	unsigned int i;
+
+	if (vctrl->irqs.mode == NVME_MDEV_IMODE_NONE)
+		return;
+	if (vctrl->irqs.mode != mode)
+		return;
+
+	if (vctrl->irqs.mode == NVME_MDEV_IMODE_INTX)
+		_DBG(vctrl, "IRQ: disable INTx interrupts\n");
+	else if (vctrl->irqs.mode == NVME_MDEV_IMODE_MSIX)
+		_DBG(vctrl, "IRQ: disable MSIX interrupts\n");
+	else
+		WARN_ON(1);
+
+	nvme_mdev_io_pause(vctrl);
+
+	for (i = 0; i < MAX_VIRTUAL_IRQS; i++) {
+		struct nvme_mdev_user_irq *vec = &vctrl->irqs.vecs[i];
+
+		if (vec->trigger) {
+			eventfd_ctx_put(vec->trigger);
+			vec->trigger = NULL;
+		}
+		vec->irq_pending_cnt = 0;
+		vec->irq_time = 0;
+	}
+	vctrl->irqs.mode = NVME_MDEV_IMODE_NONE;
+	nvme_mdev_io_resume(vctrl);
+}
+
+void nvme_mdev_irqs_disable(struct nvme_mdev_vctrl *vctrl,
+			    enum nvme_mdev_irq_mode mode)
+{
+	mutex_lock(&vctrl->lock);
+	__nvme_mdev_irqs_disable(vctrl, mode);
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Set eventfd triggers for INTx or MSIx interrupts */
+int nvme_mdev_irqs_set_triggers(struct nvme_mdev_vctrl *vctrl,
+				int start, int count, int32_t *fds)
+{
+	unsigned int i;
+
+	mutex_lock(&vctrl->lock);
+	nvme_mdev_io_pause(vctrl);
+
+	for (i = 0; i < count; i++) {
+		int irqindex = start + i;
+		struct eventfd_ctx *trigger;
+		struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[irqindex];
+
+		if (irq->trigger) {
+			eventfd_ctx_put(irq->trigger);
+			irq->trigger = NULL;
+		}
+
+		if (fds[i] < 0)
+			continue;
+
+		trigger = eventfd_ctx_fdget(fds[i]);
+		if (IS_ERR(trigger))
+			return PTR_ERR(trigger);
+
+		irq->trigger = trigger;
+	}
+	nvme_mdev_io_resume(vctrl);
+	mutex_unlock(&vctrl->lock);
+	return 0;
+}
+
+/* Set eventfd trigger for unplug interrupt */
+static int __nvme_mdev_irqs_set_unplug_trigger(struct nvme_mdev_vctrl *vctrl,
+					       int32_t fd)
+{
+	struct eventfd_ctx *trigger;
+
+	if (vctrl->irqs.request_trigger) {
+		_DBG(vctrl, "IRQ: clear hotplug trigger\n");
+		eventfd_ctx_put(vctrl->irqs.request_trigger);
+		vctrl->irqs.request_trigger = NULL;
+	}
+
+	if (fd < 0)
+		return 0;
+
+	_DBG(vctrl, "IRQ: set hotplug trigger\n");
+
+	trigger = eventfd_ctx_fdget(fd);
+	if (IS_ERR(trigger))
+		return PTR_ERR(trigger);
+
+	vctrl->irqs.request_trigger = trigger;
+	return 0;
+}
+
+int nvme_mdev_irqs_set_unplug_trigger(struct nvme_mdev_vctrl *vctrl,
+				      int32_t fd)
+{
+	int retval;
+
+	mutex_lock(&vctrl->lock);
+	retval = __nvme_mdev_irqs_set_unplug_trigger(vctrl, fd);
+	mutex_unlock(&vctrl->lock);
+	return retval;
+}
+
+/* Reset the interrupts subsystem */
+void nvme_mdev_irqs_reset(struct nvme_mdev_vctrl *vctrl)
+{
+	int i;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	if (vctrl->irqs.mode != NVME_MDEV_IMODE_NONE)
+		__nvme_mdev_irqs_disable(vctrl, vctrl->irqs.mode);
+
+	__nvme_mdev_irqs_set_unplug_trigger(vctrl, -1);
+
+	for (i = 0; i < MAX_VIRTUAL_IRQS; i++) {
+		struct nvme_mdev_user_irq *vec = &vctrl->irqs.vecs[i];
+
+		vec->irq_coalesc_en = false;
+		vec->irq_pending_cnt = 0;
+		vec->irq_time = 0;
+	}
+
+	vctrl->irqs.irq_coalesc_time_us = 0;
+}
+
+/* Check if interrupt can be coalesced */
+static bool nvme_mdev_irq_coalesce(struct nvme_mdev_vctrl *vctrl,
+				   struct nvme_mdev_user_irq *irq)
+{
+	s64 delta;
+
+	if (!irq->irq_coalesc_en)
+		return false;
+
+	if (irq->irq_pending_cnt >= vctrl->irqs.irq_coalesc_max)
+		return false;
+
+	delta = ktime_us_delta(vctrl->now, irq->irq_time);
+	return (delta < vctrl->irqs.irq_coalesc_time_us);
+}
+
+void nvme_mdev_irq_raise_unplug_event(struct nvme_mdev_vctrl *vctrl,
+				      unsigned int count)
+{
+	mutex_lock(&vctrl->lock);
+
+	if (vctrl->irqs.request_trigger) {
+		if (!(count % 10))
+			dev_notice_ratelimited(mdev_dev(vctrl->mdev),
+					       "Relaying device request to user (#%u)\n",
+					       count);
+
+		eventfd_signal(vctrl->irqs.request_trigger, 1);
+
+	} else if (count == 0) {
+		dev_notice(mdev_dev(vctrl->mdev),
+			   "No device request channel registered, blocked until released by user\n");
+	}
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Raise an interrupt */
+void nvme_mdev_irq_raise(struct nvme_mdev_vctrl *vctrl, unsigned int index)
+{
+	struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[index];
+
+	irq->irq_pending_cnt++;
+}
+
+/* Unraise an interrupt */
+void nvme_mdev_irq_clear(struct nvme_mdev_vctrl *vctrl,
+			 unsigned int index)
+{
+	struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[index];
+
+	irq->irq_time = vctrl->now;
+	irq->irq_pending_cnt = 0;
+}
+
+/* Directly trigger an interrupt without affecting irq coalescing settings */
+void nvme_mdev_irq_trigger(struct nvme_mdev_vctrl *vctrl,
+			   unsigned int index)
+{
+	struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[index];
+
+	if (irq->trigger)
+		eventfd_signal(irq->trigger, 1);
+}
+
+/* Trigger previously raised interrupt */
+void nvme_mdev_irq_cond_trigger(struct nvme_mdev_vctrl *vctrl,
+				unsigned int index)
+{
+	struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[index];
+
+	if (irq->irq_pending_cnt == 0)
+		return;
+
+	if (!nvme_mdev_irq_coalesce(vctrl, irq)) {
+		nvme_mdev_irq_trigger(vctrl, index);
+		nvme_mdev_irq_clear(vctrl, index);
+	}
+}
diff --git a/drivers/nvme/mdev/mdev.h b/drivers/nvme/mdev/mdev.h
new file mode 100644
index 000000000000..d139e090520e
--- /dev/null
+++ b/drivers/nvme/mdev/mdev.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * NVME VFIO mediated driver
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+
+#ifndef _MDEV_NVME_MDEV_H
+#define _MDEV_NVME_MDEV_H
+
+#include <linux/kernel.h>
+#include <linux/byteorder/generic.h>
+#include <linux/nvme.h>
+
+struct page_map {
+	void *kmap;
+	struct page *page;
+	dma_addr_t iova;
+};
+
+struct user_prplist {
+	/* used by user data iterator*/
+	struct page_map page;
+	unsigned int index;	/* index of current entry */
+};
+
+struct kernel_data {
+	/* used by kernel data iterator*/
+	void		*data;
+	unsigned int	size;
+	dma_addr_t	dma_addr;
+};
+
+struct nvme_ext_data_iter {
+	/* private */
+	struct nvme_mdev_viommu *viommu;
+	union {
+		const union nvme_data_ptr *dptr;
+		struct user_prplist uprp;
+		struct kernel_data kmem;
+	};
+
+	/* user interface */
+	u64		count;	/* number of data pages, yet to be covered */
+
+	phys_addr_t	physical; /* iterator physical address value*/
+	dma_addr_t	host_iova; /* iterator dma address value*/
+
+	/* moves iterator to the next item */
+	int (*next)(struct nvme_ext_data_iter *data_iter);
+
+	/* if != NULL, user should call this when it done with data
+	 * pointed by the iterator
+	 */
+	void (*release)(struct nvme_ext_data_iter *data_iter);
+};
+#endif
diff --git a/drivers/nvme/mdev/mmio.c b/drivers/nvme/mdev/mmio.c
new file mode 100644
index 000000000000..cf03c1f22f4c
--- /dev/null
+++ b/drivers/nvme/mdev/mmio.c
@@ -0,0 +1,591 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe virtual controller MMIO implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/highmem.h>
+#include "priv.h"
+
+#define DB_AREA_SIZE (MAX_VIRTUAL_QUEUES * 2 * (4 << DB_STRIDE_SHIFT))
+#define DB_MASK ((4 << DB_STRIDE_SHIFT) - 1)
+#define MMIO_BAR_SIZE __roundup_pow_of_two(NVME_REG_DBS + DB_AREA_SIZE)
+
+/* Put the controller into fatal error state. Only way out is reset */
+static void nvme_mdev_mmio_fatal_error(struct nvme_mdev_vctrl *vctrl)
+{
+	if (vctrl->mmio.csts & NVME_CSTS_CFS)
+		return;
+
+	vctrl->mmio.csts |= NVME_CSTS_CFS;
+	nvme_mdev_io_pause(vctrl);
+
+	if (vctrl->mmio.csts & NVME_CSTS_RDY)
+		nvme_mdev_vctrl_disable(vctrl);
+}
+
+/* This sends an generic error notification to the user */
+static void nvme_mdev_mmio_error(struct nvme_mdev_vctrl *vctrl,
+				 enum nvme_async_event info)
+{
+	nvme_mdev_event_send(vctrl, NVME_AER_TYPE_ERROR, info);
+}
+
+/* This is memory fault handler for the mmap area of the doorbells*/
+static vm_fault_t nvme_mdev_mmio_dbs_mmap_fault(struct vm_fault *vmf)
+{
+	struct vm_area_struct *vma = vmf->vma;
+	struct nvme_mdev_vctrl *vctrl = vma->vm_private_data;
+
+	/* DB area is just one page, starting at offset 4096 of the mmio*/
+	if (WARN_ON(vmf->pgoff != 1))
+		return VM_FAULT_SIGBUS;
+
+	get_page(vctrl->mmio.dbs_page);
+	vmf->page = vctrl->mmio.dbs_page;
+	return 0;
+}
+
+static const struct vm_operations_struct nvme_mdev_mmio_dbs_vm_ops = {
+	.fault = nvme_mdev_mmio_dbs_mmap_fault,
+};
+
+/* check that user db write is valid and send an error if not*/
+bool nvme_mdev_mmio_db_check(struct nvme_mdev_vctrl *vctrl,
+			     u16 qid, u16 size, u16 db)
+{
+	if (get_current() != vctrl->iothread)
+		lockdep_assert_held(&vctrl->lock);
+
+	if (db < size)
+		return true;
+	if (qid == 0) {
+		_DBG(vctrl, "MMIO: invalid admin DB write - fatal error\n");
+		nvme_mdev_mmio_fatal_error(vctrl);
+		return false;
+	}
+
+	_DBG(vctrl, "MMIO: invalid DB value write qid=%d, size=%d, value=%d\n",
+	     qid, size, db);
+
+	nvme_mdev_mmio_error(vctrl, NVME_AER_ERROR_INVALID_DB_VALUE);
+	return false;
+}
+
+/* handle submission queue doorbell write */
+static void nvme_mdev_mmio_db_write_sq(struct nvme_mdev_vctrl *vctrl,
+				       u32 qid, u32 val)
+{
+	_DBG(vctrl, "MMIO: doorbell SQID %d, DB write %d\n", qid, val);
+
+	lockdep_assert_held(&vctrl->lock);
+	/* check if the db belongs to a valid queue */
+	if (qid >= MAX_VIRTUAL_QUEUES || !test_bit(qid, vctrl->vsq_en))
+		goto err_db;
+
+	/* emulate the shadow doorbell functionality */
+	if (!vctrl->mmio.shadow_db_en || qid == 0)
+		vctrl->mmio.dbs[qid].sqt = cpu_to_le32(val & 0x0000FFFF);
+
+	if (qid != 0)
+		vctrl->io_idle = false;
+
+	if (vctrl->vctrl_paused || !vctrl->mmio.shadow_db_supported)
+		return;
+
+	qid ? nvme_mdev_io_resume(vctrl) : nvme_mdev_adm_process_sq(vctrl);
+	return;
+err_db:
+
+	_DBG(vctrl, "MMIO: inactive/invalid SQ DB write qid=%d, value=%d\n",
+	     qid, val);
+
+	nvme_mdev_mmio_error(vctrl, NVME_AER_ERROR_INVALID_DB_REG);
+}
+
+/* handle doorbell write */
+static void nvme_mdev_mmio_db_write_cq(struct nvme_mdev_vctrl *vctrl,
+				       u32 qid, u32 val)
+{
+	_DBG(vctrl, "MMIO: doorbell CQID %d, DB write %d\n", qid, val);
+
+	lockdep_assert_held(&vctrl->lock);
+	/* check if the db belongs to a valid queue */
+	if (qid >= MAX_VIRTUAL_QUEUES || !test_bit(qid, vctrl->vcq_en))
+		goto err_db;
+
+	/* emulate the shadow doorbell functionality */
+	if (!vctrl->mmio.shadow_db_en || qid == 0)
+		vctrl->mmio.dbs[qid].cqh = cpu_to_le16(val & 0xFFFF);
+
+	if (vctrl->vctrl_paused || !vctrl->mmio.shadow_db_supported)
+		return;
+
+	if (qid == 0) {
+		nvme_mdev_vcq_process(vctrl, 0, false);
+		// if completion queue was full prior to that, we
+		// might have some admin commands pending,
+		// and this is the last chance to process them
+		nvme_mdev_adm_process_sq(vctrl);
+	}
+	return;
+err_db:
+	_DBG(vctrl,
+	     "MMIO: inactive/invalid CQ DB write qid=%d, value=%d\n",
+	     qid, val);
+
+	nvme_mdev_mmio_error(vctrl, NVME_AER_ERROR_INVALID_DB_REG);
+}
+
+/* This is called when user enables the controller */
+static void nvme_mdev_mmio_cntrl_enable(struct nvme_mdev_vctrl *vctrl)
+{
+	u64 acq, asq;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	// Controller must be reset from the dead state
+	if (nvme_mdev_vctrl_is_dead(vctrl))
+		goto error;
+
+	/* only NVME command set supported */
+	if (((vctrl->mmio.cc >> NVME_CC_CSS_SHIFT) & 0x7) != 0)
+		goto error;
+
+	/* Check the queue arbitration method*/
+	if ((vctrl->mmio.cc & NVME_CC_AMS_MASK) != NVME_CC_AMS_RR)
+		goto error;
+
+	/* Check the page size*/
+	if (((vctrl->mmio.cc >> NVME_CC_MPS_SHIFT) & 0xF) != (PAGE_SHIFT - 12))
+		goto error;
+
+	/* Start the admin completion queue*/
+	acq = vctrl->mmio.acql | ((u64)vctrl->mmio.acqh << 32);
+	asq = vctrl->mmio.asql | ((u64)vctrl->mmio.asqh << 32);
+
+	if (!nvme_mdev_vctrl_enable(vctrl, acq, asq, vctrl->mmio.aqa))
+		goto error;
+
+	/* Success! */
+	vctrl->mmio.csts |= NVME_CSTS_RDY;
+	return;
+error:
+	_DBG(vctrl, "MMIO: failure to enable the controller - fatal error\n");
+	nvme_mdev_mmio_fatal_error(vctrl);
+}
+
+/* This is called when user sends a notification that controller is
+ * about to be disabled
+ */
+static void nvme_mdev_mmio_cntrl_shutdown(struct nvme_mdev_vctrl *vctrl)
+{
+	lockdep_assert_held(&vctrl->lock);
+
+	/* clear shutdown notification bits */
+	vctrl->mmio.cc &= ~NVME_CC_SHN_MASK;
+
+	if (nvme_mdev_vctrl_is_dead(vctrl)) {
+		_DBG(vctrl, "MMIO: shutdown notification for dead ctrl\n");
+		return;
+	}
+
+	/* not enabled */
+	if (!(vctrl->mmio.csts & NVME_CSTS_RDY)) {
+		_DBG(vctrl, "MMIO: shutdown notification with CSTS.RDY==0\n");
+		nvme_mdev_assert_io_not_running(vctrl);
+		return;
+	}
+
+	nvme_mdev_io_pause(vctrl);
+	nvme_mdev_vctrl_disable(vctrl);
+	vctrl->mmio.csts |= NVME_CSTS_SHST_CMPLT;
+}
+
+/* MMIO BAR read/write */
+static int nvme_mdev_mmio_bar_access(struct nvme_mdev_vctrl *vctrl,
+				     u16 offset, char *buf,
+				     u32 count, bool is_write)
+{
+	u32 val, oldval;
+
+	mutex_lock(&vctrl->lock);
+
+	/* Drop non DWORD sized and aligned reads/writes
+	 * (QWORD  read/writes are split by the caller)
+	 */
+	if (count != 4 || (offset & 0x3))
+		goto drop;
+
+	val = is_write ? le32_to_cpu(*(__le32 *)buf) : 0;
+
+	switch (offset) {
+	case NVME_REG_CAP:
+		/* controller capabilities (low 32 bit)*/
+		if (is_write)
+			goto drop;
+		store_le32(buf, vctrl->mmio.cap & 0xFFFFFFFF);
+		break;
+
+	case NVME_REG_CAP + 4:
+		/* controller capabilities (upper 32 bit)*/
+		if (is_write)
+			goto drop;
+		store_le32(buf, vctrl->mmio.cap >> 32);
+		break;
+
+	case NVME_REG_VS:
+		if (is_write)
+			goto drop;
+		store_le32(buf, NVME_MDEV_NVME_VER);
+		break;
+
+	case NVME_REG_INTMS:
+	case NVME_REG_INTMC:
+		/* Interrupt Mask Set & Clear */
+		goto drop;
+
+	case NVME_REG_CC:
+		/* Controller Configuration */
+		if (!is_write) {
+			store_le32(buf, vctrl->mmio.cc);
+			break;
+		}
+
+		oldval = vctrl->mmio.cc;
+		vctrl->mmio.cc = val;
+
+		/* drop if reserved bits set */
+		if (vctrl->mmio.cc & 0xFF00000E) {
+			_DBG(vctrl,
+			     "MMIO: reserved bits of CC set - fatal error\n");
+			nvme_mdev_mmio_fatal_error(vctrl);
+			goto drop;
+		}
+
+		/* CSS(command set),MPS(memory page size),AMS(queue arbitration)
+		 * must not be changed while controller is running
+		 */
+		if (vctrl->mmio.csts & NVME_CSTS_RDY) {
+			if ((vctrl->mmio.cc & 0x3FF0) != (oldval & 0x3FF0)) {
+				_DBG(vctrl,
+				     "MMIO: attempt to change setting bits of CC while CC.EN=1 - fatal error\n");
+
+				nvme_mdev_mmio_fatal_error(vctrl);
+				goto drop;
+			}
+		}
+
+		if ((vctrl->mmio.cc & NVME_CC_SHN_MASK) != NVME_CC_SHN_NONE) {
+			_DBG(vctrl, "MMIO: CC.SHN != 0 - shutdown\n");
+			nvme_mdev_mmio_cntrl_shutdown(vctrl);
+		}
+
+		/* change in controller enabled state */
+		if ((val & NVME_CC_ENABLE) == (oldval & NVME_CC_ENABLE))
+			break;
+
+		if (vctrl->mmio.cc & NVME_CC_ENABLE) {
+			_DBG(vctrl, "MMIO: CC.EN<=1 - enable the controller\n");
+			nvme_mdev_mmio_cntrl_enable(vctrl);
+		} else {
+			_DBG(vctrl, "MMIO: CC.EN<=0 - reset controller\n");
+			__nvme_mdev_vctrl_reset(vctrl, false);
+		}
+
+		break;
+
+	case NVME_REG_CSTS:
+		/* Controller Status */
+		if (is_write)
+			goto drop;
+		store_le32(buf, vctrl->mmio.csts);
+		break;
+
+	case NVME_REG_AQA:
+		/* admin queue submission and completion size*/
+		if (!is_write)
+			store_le32(buf, vctrl->mmio.aqa);
+		else if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			vctrl->mmio.aqa = val;
+		else
+			goto drop;
+		break;
+
+	case NVME_REG_ASQ:
+		/* admin submission queue address (low 32 bit)*/
+		if (!is_write)
+			store_le32(buf, vctrl->mmio.asql);
+		else if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			vctrl->mmio.asql = val;
+		else
+			goto drop;
+		break;
+
+	case NVME_REG_ASQ + 4:
+		/* admin submission queue address (high 32 bit)*/
+		if (!is_write)
+			store_le32(buf, vctrl->mmio.asqh);
+		else if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			vctrl->mmio.asqh = val;
+		else
+			goto drop;
+		break;
+
+	case NVME_REG_ACQ:
+		/* admin completion queue address (low 32 bit)*/
+		if (!is_write)
+			store_le32(buf, vctrl->mmio.acql);
+		else if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			vctrl->mmio.acql = val;
+		else
+			goto drop;
+		break;
+
+	case NVME_REG_ACQ + 4:
+		/* admin completion queue address (high 32 bit)*/
+		if (!is_write)
+			store_le32(buf, vctrl->mmio.acqh);
+		else if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			vctrl->mmio.acqh = val;
+		else
+			goto drop;
+		break;
+
+	case NVME_REG_CMBLOC:
+	case NVME_REG_CMBSZ:
+		/* not supported - hardwired to 0*/
+		if (is_write)
+			goto drop;
+		store_le32(buf, 0);
+		break;
+
+	case NVME_REG_DBS ... (NVME_REG_DBS + DB_AREA_SIZE - 1): {
+		/* completion and submission doorbells */
+		u16 db_offset = offset - NVME_REG_DBS;
+		u16 index = db_offset >> (DB_STRIDE_SHIFT + 2);
+		u16 qid = index >> 1;
+		bool sq = (index & 0x1) == 0;
+
+		if (!is_write || (db_offset & DB_MASK))
+			goto drop;
+
+		if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+			goto drop;
+
+		if (nvme_mdev_vctrl_is_dead(vctrl))
+			goto drop;
+
+		sq ? nvme_mdev_mmio_db_write_sq(vctrl, qid, val) :
+		     nvme_mdev_mmio_db_write_cq(vctrl, qid, val);
+		break;
+	}
+	default:
+		goto drop;
+	}
+
+	mutex_unlock(&vctrl->lock);
+	return count;
+drop:
+	_DBG(vctrl, "MMIO: dropping write at 0x%x\n", offset);
+	mutex_unlock(&vctrl->lock);
+	return 0;
+}
+
+/* Called when the virtual controller is created */
+int nvme_mdev_mmio_create(struct nvme_mdev_vctrl *vctrl)
+{
+	int ret;
+
+	/* BAR0 */
+	nvme_mdev_pci_setup_bar(vctrl, PCI_BASE_ADDRESS_0,
+				MMIO_BAR_SIZE, nvme_mdev_mmio_bar_access);
+
+	/* Spec allows for maximum depth of 0x10000, but we limit
+	 * it to 1 less to avoid various overflows
+	 */
+	BUILD_BUG_ON(MAX_VIRTUAL_QUEUE_DEPTH > 0xFFFF);
+
+	/* CAP has 4 bits for the doorbell stride shift*/
+	BUILD_BUG_ON(DB_STRIDE_SHIFT > 0xF);
+
+	/* Shadow doorbell limits doorbells to 1 page*/
+	BUILD_BUG_ON(DB_AREA_SIZE > PAGE_SIZE);
+
+	/* Just in case...*/
+	BUILD_BUG_ON((PAGE_SHIFT - 12) > 0xF);
+
+	vctrl->mmio.cap =
+		// MQES: maximum queue entries
+		((u64)(MAX_VIRTUAL_QUEUE_DEPTH - 1) << 0) |
+		// CQR: physically contiguous queues - no
+		(0ULL << 16) |
+		// AMS: Queue arbitration.
+		// TODOLATER: IO: implement WRRU
+		(0ULL << 17) |
+		// TO: RDY timeout - 0 (done in sync)
+		(0ULL << 24) |
+		// DSTRD: doorbell stride
+		((u64)DB_STRIDE_SHIFT << 32) |
+		// NSSRS: no support for nvme subsystem reset
+		(0ULL << 36) |
+		// CSS: NVM command set supported
+		(1ULL << 37) |
+		// BPS: no support for boot partition
+		(0ULL << 45) |
+		// MPSMIN: Minimum page size supported is PAGE_SIZE
+		((u64)(PAGE_SHIFT - 12) << 48) |
+		// MPSMAX: Maximum page size is PAGE_SIZE as well
+		((u64)(PAGE_SHIFT - 12) << 52);
+
+	/* Create the (regular) doorbell buffers */
+	vctrl->mmio.dbs_page = alloc_pages_node(vctrl->hctrl->node,
+						__GFP_ZERO, 0);
+
+	ret = -ENOMEM;
+
+	if (!vctrl->mmio.dbs_page)
+		goto error0;
+
+	vctrl->mmio.db_page_kmap = kmap(vctrl->mmio.dbs_page);
+	if (!vctrl->mmio.db_page_kmap)
+		goto error1;
+
+	vctrl->mmio.fake_eidx_page = alloc_pages_node(vctrl->hctrl->node,
+						      __GFP_ZERO, 0);
+	if (!vctrl->mmio.fake_eidx_page)
+		goto error2;
+
+	vctrl->mmio.fake_eidx_kmap = kmap(vctrl->mmio.fake_eidx_page);
+	if (!vctrl->mmio.fake_eidx_kmap)
+		goto error3;
+	return 0;
+error3:
+	put_page(vctrl->mmio.fake_eidx_kmap);
+error2:
+	kunmap(vctrl->mmio.dbs_page);
+error1:
+	put_page(vctrl->mmio.dbs_page);
+error0:
+	return ret;
+}
+
+/* Called when the virtual controller is reset */
+void nvme_mdev_mmio_reset(struct nvme_mdev_vctrl *vctrl, bool pci_reset)
+{
+	vctrl->mmio.cc = 0;
+	vctrl->mmio.csts = 0;
+
+	if (pci_reset) {
+		vctrl->mmio.aqa  = 0;
+		vctrl->mmio.asql = 0;
+		vctrl->mmio.asqh = 0;
+		vctrl->mmio.acql = 0;
+		vctrl->mmio.acqh = 0;
+	}
+}
+
+/* Called when the virtual controller is opened */
+void nvme_mdev_mmio_open(struct nvme_mdev_vctrl *vctrl)
+{
+	if (!vctrl->mmio.shadow_db_supported)
+		nvme_mdev_vctrl_region_set_mmap(vctrl,
+						VFIO_PCI_BAR0_REGION_INDEX,
+						NVME_REG_DBS, PAGE_SIZE,
+						&nvme_mdev_mmio_dbs_vm_ops);
+	else
+		nvme_mdev_vctrl_region_disable_mmap(vctrl,
+						    VFIO_PCI_BAR0_REGION_INDEX);
+}
+
+/* Called when the virtual controller queues are enabled */
+int nvme_mdev_mmio_enable_dbs(struct nvme_mdev_vctrl *vctrl)
+{
+	if (WARN_ON(vctrl->mmio.shadow_db_en))
+		return -EINVAL;
+
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	/* setup normal doorbells and reset them*/
+	vctrl->mmio.dbs = vctrl->mmio.db_page_kmap;
+	vctrl->mmio.eidxs = vctrl->mmio.fake_eidx_kmap;
+	memset((void *)vctrl->mmio.dbs, 0, DB_AREA_SIZE);
+	memset((void *)vctrl->mmio.eidxs, 0, DB_AREA_SIZE);
+	return 0;
+}
+
+/* Called when the virtual controller shadow doorbell is enabled */
+int nvme_mdev_mmio_enable_dbs_shadow(struct nvme_mdev_vctrl *vctrl,
+				     dma_addr_t sdb_iova,
+				     dma_addr_t eidx_iova)
+{
+	int ret;
+
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	ret = nvme_mdev_viommu_create_kmap(&vctrl->viommu,
+					   sdb_iova, &vctrl->mmio.sdb_map);
+	if (ret)
+		return ret;
+
+	ret = nvme_mdev_viommu_create_kmap(&vctrl->viommu,
+					   eidx_iova, &vctrl->mmio.seidx_map);
+	if (ret) {
+		nvme_mdev_viommu_free_kmap(&vctrl->viommu,
+					   &vctrl->mmio.sdb_map);
+		return ret;
+	}
+
+	vctrl->mmio.dbs = vctrl->mmio.sdb_map.kmap;
+	vctrl->mmio.eidxs = vctrl->mmio.seidx_map.kmap;
+
+	memcpy((void *)vctrl->mmio.dbs,
+	       vctrl->mmio.db_page_kmap, DB_AREA_SIZE);
+
+	memcpy((void *)vctrl->mmio.eidxs,
+	       vctrl->mmio.db_page_kmap, DB_AREA_SIZE);
+
+	vctrl->mmio.shadow_db_en = true;
+	return 0;
+}
+
+/* Called on guest mapping update to
+ * verify that our mappings are still intact
+ */
+void nvme_mdev_mmio_viommu_update(struct nvme_mdev_vctrl *vctrl)
+{
+	nvme_mdev_assert_io_not_running(vctrl);
+	if (!vctrl->mmio.shadow_db_en)
+		return;
+
+	nvme_mdev_viommu_update_kmap(&vctrl->viommu, &vctrl->mmio.sdb_map);
+	nvme_mdev_viommu_update_kmap(&vctrl->viommu, &vctrl->mmio.seidx_map);
+
+	vctrl->mmio.dbs = vctrl->mmio.sdb_map.kmap;
+	vctrl->mmio.eidxs = vctrl->mmio.seidx_map.kmap;
+}
+
+/* Disable the doorbells */
+void nvme_mdev_mmio_disable_dbs(struct nvme_mdev_vctrl *vctrl)
+{
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	/* Free the shadow doorbells */
+	nvme_mdev_viommu_free_kmap(&vctrl->viommu, &vctrl->mmio.sdb_map);
+	nvme_mdev_viommu_free_kmap(&vctrl->viommu, &vctrl->mmio.seidx_map);
+
+	/* Clear the doorbells */
+	vctrl->mmio.dbs = NULL;
+	vctrl->mmio.eidxs = NULL;
+	vctrl->mmio.shadow_db_en = false;
+}
+
+/* Called when the virtual controller is about to be freed */
+void nvme_mdev_mmio_free(struct nvme_mdev_vctrl *vctrl)
+{
+	nvme_mdev_assert_io_not_running(vctrl);
+	kunmap(vctrl->mmio.dbs_page);
+	put_page(vctrl->mmio.dbs_page);
+	kunmap(vctrl->mmio.fake_eidx_page);
+	put_page(vctrl->mmio.fake_eidx_page);
+}
diff --git a/drivers/nvme/mdev/pci.c b/drivers/nvme/mdev/pci.c
new file mode 100644
index 000000000000..b7cdeaaf9c2e
--- /dev/null
+++ b/drivers/nvme/mdev/pci.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * NVMe virtual controller minimal PCI/PCIe config space implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/pci.h>
+#include "priv.h"
+
+/* setup a 64 bit PCI bar */
+void nvme_mdev_pci_setup_bar(struct nvme_mdev_vctrl *vctrl,
+			     u8 bar,
+			     unsigned int size,
+			     region_access_fn access_fn)
+{
+	nvme_mdev_vctrl_add_region(vctrl,
+				   VFIO_PCI_BAR0_REGION_INDEX +
+				   ((bar - PCI_BASE_ADDRESS_0) >> 2),
+				   size, access_fn);
+
+	store_le32(vctrl->pcicfg.wmask + bar, ~((u64)size - 1));
+	store_le32(vctrl->pcicfg.values + bar,
+		   PCI_BASE_ADDRESS_SPACE_MEMORY |
+		   PCI_BASE_ADDRESS_MEM_TYPE_64);
+}
+
+/* Allocate a pci capability*/
+static u8 nvme_mdev_pci_allocate_cap(struct nvme_mdev_vctrl *vctrl,
+				     u8 id, u8 size)
+{
+	u8 *cfg = vctrl->pcicfg.values;
+	u8 newcap = vctrl->pcicfg.end;
+	u8 cap = cfg[PCI_CAPABILITY_LIST];
+
+	size = round_up(size, 4);
+	// only standard cfg space caps for now
+	WARN_ON(newcap + size > 256);
+
+	if (!cfg[PCI_CAPABILITY_LIST]) {
+		/*special case for first capability*/
+		u16 status = load_le16(cfg + PCI_STATUS);
+
+		status |= PCI_STATUS_CAP_LIST;
+		store_le16(cfg + PCI_STATUS, status);
+
+		cfg[PCI_CAPABILITY_LIST] = newcap;
+		goto setupcap;
+	}
+
+	while (cfg[cap + PCI_CAP_LIST_NEXT] != 0)
+		cap = cfg[cap + PCI_CAP_LIST_NEXT];
+
+	cfg[cap + PCI_CAP_LIST_NEXT] = newcap;
+
+setupcap:
+	cfg[newcap + PCI_CAP_LIST_ID] = id;
+	cfg[newcap + PCI_CAP_LIST_NEXT] = 0;
+	vctrl->pcicfg.end += size;
+	return newcap;
+}
+
+static void nvme_mdev_pci_setup_pm_cap(struct nvme_mdev_vctrl *vctrl)
+{
+	u8 *cfg  =  vctrl->pcicfg.values;
+	u8 *cfgm =  vctrl->pcicfg.wmask;
+
+	u8 cap = nvme_mdev_pci_allocate_cap(vctrl,
+					    PCI_CAP_ID_PM, PCI_PM_SIZEOF);
+
+	store_le16(cfg + cap + PCI_PM_PMC, 0x3);
+	store_le16(cfg + cap + PCI_PM_CTRL, PCI_PM_CTRL_NO_SOFT_RESET);
+	store_le16(cfgm + cap + PCI_PM_CTRL, 0x3);
+	vctrl->pcicfg.pmcap = cap;
+}
+
+static void nvme_mdev_pci_setup_msix_cap(struct nvme_mdev_vctrl *vctrl)
+{
+	u8 *cfg  =  vctrl->pcicfg.values;
+	u8 *cfgm =  vctrl->pcicfg.wmask;
+	u8  cap = nvme_mdev_pci_allocate_cap(vctrl,
+					     PCI_CAP_ID_MSIX,
+					     PCI_CAP_MSIX_SIZEOF);
+
+	int MSIX_TBL_SIZE = roundup(MAX_VIRTUAL_IRQS * 16, PAGE_SIZE);
+	int MSIX_PBA_SIZE = roundup(DIV_ROUND_UP(MAX_VIRTUAL_IRQS, 8),
+				    PAGE_SIZE);
+
+	store_le16(cfg + cap + PCI_MSIX_FLAGS, MAX_VIRTUAL_IRQS - 1);
+	store_le16(cfgm + cap + PCI_MSIX_FLAGS,
+		   PCI_MSIX_FLAGS_MASKALL | PCI_MSIX_FLAGS_ENABLE);
+
+	store_le32(cfg + cap + PCI_MSIX_TABLE, 0x2);
+	store_le32(cfg + cap + PCI_MSIX_PBA, MSIX_TBL_SIZE | 0x2);
+
+	nvme_mdev_pci_setup_bar(vctrl, PCI_BASE_ADDRESS_2,
+				__roundup_pow_of_two(MSIX_TBL_SIZE +
+						MSIX_PBA_SIZE), NULL);
+	vctrl->pcicfg.msixcap = cap;
+}
+
+static void nvme_mdev_pci_setup_pcie_cap(struct nvme_mdev_vctrl *vctrl)
+{
+	u8 *cfg = vctrl->pcicfg.values;
+	u8 cap = nvme_mdev_pci_allocate_cap(vctrl,
+					    PCI_CAP_ID_EXP,
+					    PCI_CAP_EXP_ENDPOINT_SIZEOF_V2);
+
+	store_le16(cfg + cap + PCI_EXP_FLAGS, 0x02 |
+		   (PCI_EXP_TYPE_ENDPOINT << 4));
+
+	store_le32(cfg + cap + PCI_EXP_DEVCAP,
+		   PCI_EXP_DEVCAP_RBER | PCI_EXP_DEVCAP_FLR);
+	store_le32(cfg + cap + PCI_EXP_LNKCAP,
+		   PCI_EXP_LNKCAP_SLS_8_0GB | (4 << 4) /*4x*/);
+	store_le16(cfg + cap + PCI_EXP_LNKSTA,
+		   PCI_EXP_LNKSTA_CLS_8_0GB | (4 << 4) /*4x*/);
+
+	store_le32(cfg + cap + PCI_EXP_LNKCAP2, PCI_EXP_LNKCAP2_SLS_8_0GB);
+	store_le16(cfg + cap + PCI_EXP_LNKCTL2, PCI_EXP_LNKCTL2_TLS_8_0GT);
+	vctrl->pcicfg.pciecap = cap;
+}
+
+/* This is called on PCI config read/write */
+static int nvme_mdev_pci_cfg_access(struct nvme_mdev_vctrl *vctrl,
+				    u16 offset, char *buf,
+				    u32 count, bool is_write)
+{
+	unsigned int i;
+
+	mutex_lock(&vctrl->lock);
+
+	if (!is_write) {
+		memcpy(buf, (vctrl->pcicfg.values + offset), count);
+		goto out;
+	}
+
+	for (i = 0; i < count; i++) {
+		u8 address = offset + i;
+		u8 value = buf[i];
+		u8 old_value = vctrl->pcicfg.values[address];
+		u8 wmask = vctrl->pcicfg.wmask[address];
+		u8 new_value = (value & wmask) | (old_value & ~wmask);
+
+		/* D3/D0 power control */
+		if (address == vctrl->pcicfg.pmcap + PCI_PM_CTRL) {
+			u8 state = new_value & 0x03;
+
+			if (state != 0 && state != 3)
+				new_value = old_value;
+
+			if (old_value != new_value) {
+				const char *s = state == 3 ? "D3" : "D0";
+
+				if (state == 3)
+					__nvme_mdev_vctrl_reset(vctrl, true);
+				_DBG(vctrl, "PCI: going to %s\n", s);
+			}
+		}
+
+		/* FLR reset*/
+		if (address == vctrl->pcicfg.pciecap + PCI_EXP_DEVCTL + 1)
+			if (value & 0x80) {
+				_DBG(vctrl, "PCI: FLR reset\n");
+				__nvme_mdev_vctrl_reset(vctrl, true);
+			}
+		vctrl->pcicfg.values[offset + i] = new_value;
+	}
+out:
+	mutex_unlock(&vctrl->lock);
+	return count;
+}
+
+/* setup pci configuration */
+int nvme_mdev_pci_create(struct nvme_mdev_vctrl *vctrl)
+{
+	u8 *cfg, *cfgm;
+
+	vctrl->pcicfg.values = kzalloc(PCI_CFG_SIZE, GFP_KERNEL);
+	if (!vctrl->pcicfg.values)
+		return -ENOMEM;
+
+	vctrl->pcicfg.wmask = kzalloc(PCI_CFG_SIZE, GFP_KERNEL);
+	if (!vctrl->pcicfg.wmask) {
+		kfree(vctrl->pcicfg.values);
+		return -ENOMEM;
+	}
+
+	cfg = vctrl->pcicfg.values;
+	cfgm = vctrl->pcicfg.wmask;
+
+	nvme_mdev_vctrl_add_region(vctrl,
+				   VFIO_PCI_CONFIG_REGION_INDEX,
+				   PCI_CFG_SIZE,
+				   nvme_mdev_pci_cfg_access);
+
+	/* vendor information */
+	store_le16(cfg + PCI_VENDOR_ID, NVME_MDEV_PCI_VENDOR_ID);
+	store_le16(cfg + PCI_DEVICE_ID, NVME_MDEV_PCI_DEVICE_ID);
+
+	/* pci command register */
+	store_le16(cfgm + PCI_COMMAND,
+		   PCI_COMMAND_INTX_DISABLE |
+		   PCI_COMMAND_MEMORY |
+		   PCI_COMMAND_MASTER);
+
+	/* pci status register */
+	store_le16(cfg + PCI_STATUS, PCI_STATUS_CAP_LIST);
+
+	/* subsystem information */
+	store_le16(cfg + PCI_SUBSYSTEM_VENDOR_ID, NVME_MDEV_PCI_SUBVENDOR_ID);
+	store_le16(cfg + PCI_SUBSYSTEM_ID, NVME_MDEV_PCI_SUBDEVICE_ID);
+	store_le8(cfg + PCI_CLASS_REVISION, NVME_MDEV_PCI_REVISION);
+
+	/*Programming Interface (NVM Express) */
+	store_le8(cfg + PCI_CLASS_PROG, 0x02);
+
+	/* Device class and subclass
+	 * (Mass storage controller, Non-Volatile memory controller)
+	 */
+	store_le16(cfg + PCI_CLASS_DEVICE, 0x0108);
+
+	/* dummy read/write */
+	store_le8(cfgm + PCI_CACHE_LINE_SIZE, 0xFF);
+
+	/* initial value*/
+	store_le8(cfg + PCI_CAPABILITY_LIST, 0);
+	vctrl->pcicfg.end = 0x40;
+
+	nvme_mdev_pci_setup_pm_cap(vctrl);
+	nvme_mdev_pci_setup_msix_cap(vctrl);
+	nvme_mdev_pci_setup_pcie_cap(vctrl);
+
+	/* INTX IRQ number - info only for BIOS */
+	store_le8(cfgm + PCI_INTERRUPT_LINE, 0xFF);
+	store_le8(cfg + PCI_INTERRUPT_PIN, 0x01);
+
+	return 0;
+}
+
+/* teardown pci configuration */
+void nvme_mdev_pci_free(struct nvme_mdev_vctrl *vctrl)
+{
+	kfree(vctrl->pcicfg.values);
+	kfree(vctrl->pcicfg.wmask);
+	vctrl->pcicfg.values = NULL;
+	vctrl->pcicfg.wmask = NULL;
+}
diff --git a/drivers/nvme/mdev/priv.h b/drivers/nvme/mdev/priv.h
new file mode 100644
index 000000000000..9f65e46c1ab2
--- /dev/null
+++ b/drivers/nvme/mdev/priv.h
@@ -0,0 +1,700 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver private data structures and helper macros
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+
+#ifndef _MDEV_NVME_PRIV_H
+#define _MDEV_NVME_PRIV_H
+
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/rbtree.h>
+#include <linux/vfio.h>
+#include <linux/mdev.h>
+#include <linux/pci.h>
+#include <linux/eventfd.h>
+#include <linux/byteorder/generic.h>
+#include "../host/nvme.h"
+#include "mdev.h"
+
+#define NVME_MDEV_NVME_VER  NVME_VS(0x01, 0x03, 0x00)
+#define NVME_MDEV_FIRMWARE_VERSION "1.0"
+
+#define NVME_MDEV_PCI_VENDOR_ID		PCI_VENDOR_ID_REDHAT_QUMRANET
+#define NVME_MDEV_PCI_DEVICE_ID		0x1234
+#define NVME_MDEV_PCI_SUBVENDOR_ID	PCI_SUBVENDOR_ID_REDHAT_QUMRANET
+#define NVME_MDEV_PCI_SUBDEVICE_ID	0
+#define NVME_MDEV_PCI_REVISION		0x0
+
+#define DB_STRIDE_SHIFT 4 /*4 = 1 cacheline */
+#define MAX_VIRTUAL_QUEUES 16
+#define MAX_VIRTUAL_QUEUE_DEPTH 0xFFFF
+#define MAX_VIRTUAL_NAMESPACES 16 /* NSID = 1..16*/
+#define MAX_VIRTUAL_IRQS 16
+
+#define MAX_HOST_QUEUES 4
+#define MAX_AER_COMMANDS 16
+#define MAX_LOG_PAGES 16
+
+extern bool use_shadow_doorbell;
+extern unsigned int io_timeout_ms;
+extern unsigned int poll_timeout_ms;
+extern unsigned int admin_poll_rate_ms;
+
+/* virtual submission queue*/
+struct  nvme_vsq {
+	u16 qid;
+	u16 size;
+	u16 head;	/*next item to read */
+
+	struct nvme_command *data; /*the queue*/
+	struct nvme_vcq *vcq; /* completion queue*/
+
+	dma_addr_t iova;
+	bool cont;
+
+	u16 hsq;
+};
+
+/* virtual completion queue*/
+struct nvme_vcq {
+	/* basic queue settings */
+	u16 qid;
+	u16 size;
+	u16 head;
+	u16 tail;
+	bool phase; /* current queue phase */
+
+	volatile struct nvme_completion *data;
+
+	/* number of items pending*/
+	u16 pending;
+
+	/* IRQ settings */
+	int irq /* -1 if disabled*/;
+
+	dma_addr_t iova;
+	bool cont;
+};
+
+/*A virtual namespace */
+struct nvme_mdev_vns {
+	/* host nvme namespace that we are attached to it*/
+	struct nvme_ns *host_ns;
+
+	/* block device that corresponds to the partition of that namespace */
+	struct block_device *host_part;
+	fmode_t fmode;
+
+	u32 nsid;
+
+	/* NSID on the host*/
+	u32 host_nsid;
+
+	/* host partition ID*/
+	unsigned int host_partid;
+
+	/* Offset inside the host namespace (start of the partition)*/
+	u64 host_lba_offset;
+
+	/* size of each block on the real namespace, same for host and guest */
+	u8 blksize_shift;
+
+	/* size of the namespace in lbas*/
+	u64 ns_size;
+
+	/* is the namespace read only?*/
+	bool readonly;
+
+	/* UUID of this namespace */
+	uuid_t uuid;
+
+	/* Optimal IO boundary*/
+	u16 noiob;
+};
+
+/* Virtual IOMMU */
+struct nvme_mdev_viommu {
+	struct device *hw_dev;
+	struct device *sw_dev;
+
+	/* dma/prp bookkeeping */
+	struct rb_root_cached maps_tree;
+	struct list_head maps_list;
+	struct nvme_mdev_vctrl *vctrl;
+};
+
+struct doorbell {
+	volatile __le32 sqt;
+	u8 rsvd1[(4 << DB_STRIDE_SHIFT) - sizeof(__le32)];
+	volatile __le32 cqh;
+	u8 rsvd2[(4 << DB_STRIDE_SHIFT) - sizeof(__le32)];
+};
+
+/* MMIO state */
+struct nvme_mdev_user_ctrl_mmio {
+	u32 cc;		/* controller configuration */
+	u32 csts;	/* controller status */
+	u64 cap		/* controller capabilities*/;
+
+	/* admin queue location & size */
+	u32 aqa;
+	u32 asql;
+	u32 asqh;
+	u32 acql;
+	u32 acqh;
+
+	bool shadow_db_supported;
+	bool shadow_db_en;
+
+	/* Regular doorbells */
+	struct page *dbs_page;
+	struct page *fake_eidx_page;
+	void *db_page_kmap;
+	void *fake_eidx_kmap;
+
+	/* Shadow doorbells */
+	struct page_map sdb_map;
+	struct page_map seidx_map;
+
+	/* Current doorbell mappings */
+	volatile struct doorbell *dbs;
+	volatile struct doorbell *eidxs;
+};
+
+/* pci configuration space of the device*/
+#define PCI_CFG_SIZE 4096
+struct nvme_mdev_pci_cfg_space {
+	u8 *values;
+	u8 *wmask;
+
+	u8 pmcap;
+	u8 pciecap;
+	u8 msixcap;
+	u8 end;
+};
+
+/*IRQ state of the controller */
+struct nvme_mdev_user_irq {
+	struct eventfd_ctx *trigger;
+	/* IRQ coalescing */
+	bool irq_coalesc_en;
+	time_t irq_time;
+	unsigned int irq_pending_cnt;
+};
+
+enum nvme_mdev_irq_mode {
+	NVME_MDEV_IMODE_NONE,
+	NVME_MDEV_IMODE_INTX,
+	NVME_MDEV_IMODE_MSIX,
+};
+
+struct nvme_mdev_user_irqs {
+	/* one of VFIO_PCI_{INTX|MSI|MSIX}_IRQ_INDEX */
+	enum nvme_mdev_irq_mode mode;
+
+	struct nvme_mdev_user_irq vecs[MAX_VIRTUAL_IRQS];
+	/* user interrupt coalescing settings */
+	u8 irq_coalesc_max;
+	unsigned int irq_coalesc_time_us;
+	/* device removal trigger*/
+	struct eventfd_ctx *request_trigger;
+};
+
+/*AER state */
+struct nvme_mdev_user_events {
+	/* async event request CIDs*/
+	u16 aer_cids[MAX_AER_COMMANDS];
+	unsigned int aer_cid_count;
+
+	/* events that are enabled */
+	unsigned long events_enabled[BITS_TO_LONGS(MAX_LOG_PAGES)];
+
+	/* events that are masked till next log page read*/
+	unsigned long events_masked[BITS_TO_LONGS(MAX_LOG_PAGES)];
+
+	/* events that are pending to be sent when user gives us an AER*/
+	unsigned long  events_pending[BITS_TO_LONGS(MAX_LOG_PAGES)];
+	u32 event_values[MAX_LOG_PAGES];
+};
+
+/* host IO queue */
+struct nvme_mdev_hq {
+	unsigned int usecount;
+	struct list_head link;
+	unsigned int hqid;
+};
+
+/* IO region abstraction (BARs, the PCI config space */
+struct nvme_mdev_vctrl;
+typedef int (*region_access_fn) (struct nvme_mdev_vctrl *vctrl,
+				 u16 offset, char *buf,
+				 u32 size, bool is_write);
+
+struct nvme_mdev_io_region {
+	unsigned int size;
+	region_access_fn rw;
+
+	/* IF != NULL, the mmap_area_start/size specify the mmaped window
+	 * of this region
+	 */
+	const struct vm_operations_struct *mmap_ops;
+	unsigned int mmap_area_start;
+	unsigned int mmap_area_size;
+};
+
+/*Virtual NVME controller state */
+struct nvme_mdev_vctrl {
+	struct kref ref;
+	struct mutex lock;
+	struct list_head link;
+
+	struct mdev_device *mdev;
+	struct nvme_mdev_hctrl *hctrl;
+	bool inuse;
+
+	struct nvme_mdev_io_region regions[VFIO_PCI_NUM_REGIONS];
+
+	/* virtual controller state */
+	struct nvme_mdev_user_ctrl_mmio mmio;
+	struct nvme_mdev_pci_cfg_space pcicfg;
+	struct nvme_mdev_user_irqs irqs;
+	struct nvme_mdev_user_events events;
+
+	/* emulated namespaces */
+	struct nvme_mdev_vns *namespaces[MAX_VIRTUAL_NAMESPACES];
+	__le32 ns_log[MAX_VIRTUAL_NAMESPACES];
+	unsigned int ns_log_size;
+
+	/* emulated submission queues*/
+	struct nvme_vsq vsqs[MAX_VIRTUAL_QUEUES];
+	unsigned long vsq_en[BITS_TO_LONGS(MAX_VIRTUAL_QUEUES)];
+
+	/* emulated completion queues*/
+	unsigned long vcq_en[BITS_TO_LONGS(MAX_VIRTUAL_QUEUES)];
+	struct nvme_vcq vcqs[MAX_VIRTUAL_QUEUES];
+
+	/* Host IO queues*/
+	int max_host_hw_queues;
+	struct list_head host_hw_queues;
+
+	/* Interface to access user memory */
+	struct notifier_block vfio_map_notifier;
+	struct notifier_block vfio_unmap_notifier;
+	struct nvme_mdev_viommu viommu;
+
+	/* the IO thread */
+	struct task_struct *iothread;
+	bool iothread_parked;
+	bool io_idle;
+	ktime_t now;
+
+	/* Settings */
+	unsigned int arb_burst_shift;
+	u8 worload_hint;
+	unsigned int iothread_cpu;
+
+	/* Identification*/
+	char subnqn[256];
+	char serial[9];
+
+	bool vctrl_paused; /* true when the host device paused our IO */
+};
+
+/* mdev instance type*/
+struct nvme_mdev_inst_type {
+	unsigned int max_hw_queues;
+	char name[16];
+	struct attribute_group *attrgroup;
+};
+
+/*Abstraction of the host controller that we are connected to */
+struct nvme_mdev_hctrl {
+	struct mutex lock;
+
+	/* numa node of the host controller*/
+	int node;
+
+	struct list_head link;
+	struct kref ref;
+	bool removing;
+
+	/* for reference counting */
+	struct nvme_ctrl *nvme_ctrl;
+
+	/* Host area*/
+	u16 oncs;
+	u8 mdts;
+	unsigned int id;
+
+	/* book-keeping for number of host queues we can allocate*/
+	unsigned int nr_host_queues;
+};
+
+/* vctrl.c*/
+struct nvme_mdev_vctrl *nvme_mdev_vctrl_create(struct mdev_device *mdev,
+					       struct nvme_mdev_hctrl *hctrl,
+					       unsigned int max_host_queues);
+
+int nvme_mdev_vctrl_destroy(struct nvme_mdev_vctrl *vctrl);
+
+int nvme_mdev_vctrl_open(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_vctrl_release(struct nvme_mdev_vctrl *vctrl);
+
+void nvme_mdev_vctrl_pause(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_vctrl_resume(struct nvme_mdev_vctrl *vctrl);
+
+bool nvme_mdev_vctrl_enable(struct nvme_mdev_vctrl *vctrl,
+			    dma_addr_t cqiova, dma_addr_t sqiova, u32 sizes);
+
+void nvme_mdev_vctrl_disable(struct nvme_mdev_vctrl *vctrl);
+
+void nvme_mdev_vctrl_reset(struct nvme_mdev_vctrl *vctrl);
+void __nvme_mdev_vctrl_reset(struct nvme_mdev_vctrl *vctrl, bool pci_reset);
+
+void nvme_mdev_vctrl_add_region(struct nvme_mdev_vctrl *vctrl,
+				unsigned int index, unsigned int size,
+				region_access_fn access_fn);
+
+void nvme_mdev_vctrl_region_set_mmap(struct nvme_mdev_vctrl *vctrl,
+				     unsigned int index,
+				     unsigned int offset,
+				     unsigned int size,
+				     const struct vm_operations_struct *ops);
+
+void nvme_mdev_vctrl_region_disable_mmap(struct nvme_mdev_vctrl *vctrl,
+					 unsigned int index);
+
+void nvme_mdev_vctrl_bind_iothread(struct nvme_mdev_vctrl *vctrl,
+				   unsigned int cpu);
+
+int nvme_mdev_vctrl_set_shadow_doorbell_supported(struct nvme_mdev_vctrl *vctrl,
+						  bool enable);
+
+int nvme_mdev_vctrl_hq_alloc(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_vctrl_hq_free(struct nvme_mdev_vctrl *vctrl, u16 qid);
+unsigned int nvme_mdev_vctrl_hqs_list(struct nvme_mdev_vctrl *vctrl, u16 *out);
+bool nvme_mdev_vctrl_is_dead(struct nvme_mdev_vctrl *vctrl);
+
+int nvme_mdev_vctrl_viommu_map(struct nvme_mdev_vctrl *vctrl, u32 flags,
+			       dma_addr_t iova, u64 size);
+
+int nvme_mdev_vctrl_viommu_unmap(struct nvme_mdev_vctrl *vctrl,
+				 dma_addr_t iova, u64 size);
+
+/* hctrl.c*/
+struct nvme_mdev_inst_type *nvme_mdev_inst_type_get(const char *name);
+struct nvme_mdev_hctrl *nvme_mdev_hctrl_lookup_get(struct device *parent);
+void nvme_mdev_hctrl_put(struct nvme_mdev_hctrl *hctrl);
+
+int nvme_mdev_hctrl_hqs_available(struct nvme_mdev_hctrl *hctrl);
+
+bool nvme_mdev_hctrl_hqs_reserve(struct nvme_mdev_hctrl *hctrl,
+				 unsigned int n);
+void nvme_mdev_hctrl_hqs_unreserve(struct nvme_mdev_hctrl *hctrl,
+				   unsigned int n);
+
+int nvme_mdev_hctrl_hq_alloc(struct nvme_mdev_hctrl *hctrl);
+void nvme_mdev_hctrl_hq_free(struct nvme_mdev_hctrl *hctrl, u16 qid);
+bool nvme_mdev_hctrl_hq_can_submit(struct nvme_mdev_hctrl *hctrl, u16 qid);
+bool nvme_mdev_hctrl_hq_check_op(struct nvme_mdev_hctrl *hctrl, u8 optcode);
+
+int nvme_mdev_hctrl_hq_submit(struct nvme_mdev_hctrl *hctrl,
+			      u16 qid, u32 tag,
+			      struct nvme_command *cmd,
+			      struct nvme_ext_data_iter *datait);
+
+int nvme_mdev_hctrl_hq_poll(struct nvme_mdev_hctrl *hctrl,
+			    u32 qid,
+			    struct nvme_ext_cmd_result *results,
+			    unsigned int max_len);
+
+void nvme_mdev_hctrl_destroy_all(void);
+
+/* io.c */
+int nvme_mdev_io_create(struct nvme_mdev_vctrl *vctrl, unsigned int cpu);
+void nvme_mdev_io_free(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_io_pause(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_io_resume(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_assert_io_not_running(struct nvme_mdev_vctrl *vctrl);
+
+/* mmio.c*/
+int nvme_mdev_mmio_create(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_mmio_open(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_mmio_reset(struct nvme_mdev_vctrl *vctrl, bool pci_reset);
+void nvme_mdev_mmio_free(struct nvme_mdev_vctrl *vctrl);
+
+int nvme_mdev_mmio_enable_dbs(struct nvme_mdev_vctrl *vctrl);
+int nvme_mdev_mmio_enable_dbs_shadow(struct nvme_mdev_vctrl *vctrl,
+				     dma_addr_t sdb_iova, dma_addr_t eidx_iova);
+
+void nvme_mdev_mmio_viommu_update(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_mmio_disable_dbs(struct nvme_mdev_vctrl *vctrl);
+bool nvme_mdev_mmio_db_check(struct nvme_mdev_vctrl *vctrl,
+			     u16 qid, u16 size, u16 db);
+
+/* pci.c*/
+int nvme_mdev_pci_create(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_pci_free(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_pci_setup_bar(struct nvme_mdev_vctrl *vctrl,
+			     u8 bar, unsigned int size,
+			     region_access_fn access_fn);
+/* adm.c*/
+void nvme_mdev_adm_process_sq(struct nvme_mdev_vctrl *vctrl);
+
+/* events.c */
+void nvme_mdev_events_init(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_events_reset(struct nvme_mdev_vctrl *vctrl);
+
+int nvme_mdev_event_request_receive(struct nvme_mdev_vctrl *vctrl, u16 cid);
+void nvme_mdev_event_process_ack(struct nvme_mdev_vctrl *vctrl, u8 log_page);
+
+void nvme_mdev_event_send(struct nvme_mdev_vctrl *vctrl,
+			  enum nvme_async_event_type type,
+			  enum nvme_async_event info);
+
+u32 nvme_mdev_event_read_aen_config(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_event_set_aen_config(struct nvme_mdev_vctrl *vctrl, u32 value);
+
+/* irq.c*/
+void nvme_mdev_irqs_setup(struct nvme_mdev_vctrl *vctrl);
+void nvme_mdev_irqs_reset(struct nvme_mdev_vctrl *vctrl);
+
+int nvme_mdev_irqs_enable(struct nvme_mdev_vctrl *vctrl,
+			  enum nvme_mdev_irq_mode mode);
+void nvme_mdev_irqs_disable(struct nvme_mdev_vctrl *vctrl,
+			    enum nvme_mdev_irq_mode mode);
+
+int nvme_mdev_irqs_set_triggers(struct nvme_mdev_vctrl *vctrl,
+				int start, int count, int32_t *fds);
+int nvme_mdev_irqs_set_unplug_trigger(struct nvme_mdev_vctrl *vctrl,
+				      int32_t fd);
+
+void nvme_mdev_irq_raise_unplug_event(struct nvme_mdev_vctrl *vctrl,
+				      unsigned int count);
+void nvme_mdev_irq_raise(struct nvme_mdev_vctrl *vctrl,
+			 unsigned int index);
+void nvme_mdev_irq_trigger(struct nvme_mdev_vctrl *vctrl,
+			   unsigned int index);
+void nvme_mdev_irq_cond_trigger(struct nvme_mdev_vctrl *vctrl,
+				unsigned int index);
+void nvme_mdev_irq_clear(struct nvme_mdev_vctrl *vctrl,
+			 unsigned int index);
+
+/* ns.c*/
+int nvme_mdev_vns_open(struct nvme_mdev_vctrl *vctrl,
+		       u32 host_nsid, unsigned int host_partid);
+int nvme_mdev_vns_destroy(struct nvme_mdev_vctrl *vctrl,
+			  u32 user_nsid);
+void nvme_mdev_vns_destroy_all(struct nvme_mdev_vctrl *vctrl);
+
+struct nvme_mdev_vns *nvme_mdev_vns_from_vnsid(struct nvme_mdev_vctrl *vctrl,
+					       u32 user_ns_id);
+
+int nvme_mdev_vns_print_description(struct nvme_mdev_vctrl *vctrl,
+				    char *buf, unsigned int size);
+void nvme_mdev_vns_host_ns_update(struct nvme_mdev_vctrl *vctrl,
+				  u32 host_nsid, bool removed);
+
+void nvme_mdev_vns_log_reset(struct nvme_mdev_vctrl *vctrl);
+
+/* vcq.c */
+int nvme_mdev_vcq_init(struct nvme_mdev_vctrl *vctrl, u16 qid,
+		       dma_addr_t iova, bool cont, u16 size, int irq);
+
+int nvme_mdev_vcq_viommu_update(struct nvme_mdev_viommu *viommu,
+				struct nvme_vcq *q);
+
+void nvme_mdev_vcq_delete(struct nvme_mdev_vctrl *vctrl, u16 qid);
+void nvme_mdev_vcq_process(struct nvme_mdev_vctrl *vctrl, u16 qid,
+			   bool trigger_irqs);
+
+bool nvme_mdev_vcq_flush(struct nvme_mdev_vctrl *vctrl, u16 qid);
+bool nvme_mdev_vcq_reserve_space(struct nvme_vcq *q);
+
+void nvme_mdev_vcq_write_io(struct nvme_mdev_vctrl *vctrl,
+			    struct nvme_vcq *q, u16 sq_head,
+			    u16 sqid, u16 cid, u16 status);
+
+void nvme_mdev_vcq_write_adm(struct nvme_mdev_vctrl *vctrl,
+			     struct nvme_vcq *q, u32 dw0,
+			     u16 sq_head, u16 cid, u16 status);
+/* vsq.c*/
+int nvme_mdev_vsq_init(struct nvme_mdev_vctrl *vctrl, u16 qid,
+		       dma_addr_t iova, bool cont, u16 size, u16 cqid);
+
+int nvme_mdev_vsq_viommu_update(struct nvme_mdev_viommu *viommu,
+				struct nvme_vsq *q);
+
+void nvme_mdev_vsq_delete(struct nvme_mdev_vctrl *vctrl, u16 qid);
+
+bool nvme_mdev_vsq_has_data(struct nvme_mdev_vctrl *vctrl,
+			    struct nvme_vsq *q);
+
+const struct nvme_command *nvme_mdev_vsq_get_cmd(struct nvme_mdev_vctrl *vctrl,
+						 struct nvme_vsq *q);
+
+void nvme_mdev_vsq_cmd_done_io(struct nvme_mdev_vctrl *vctrl,
+			       u16 sqid, u16 cid, u16 status);
+void nvme_mdev_vsq_cmd_done_adm(struct nvme_mdev_vctrl *vctrl,
+				u32 dw0, u16 cid, u16 status);
+bool nvme_mdev_vsq_suspend_io(struct nvme_mdev_vctrl *vctrl, u16 sqid);
+
+/* udata.c*/
+void nvme_mdev_udata_iter_setup(struct nvme_mdev_viommu *viommu,
+				struct nvme_ext_data_iter *iter);
+
+int nvme_mdev_udata_iter_set_dptr(struct nvme_ext_data_iter *it,
+				  const union nvme_data_ptr *dptr, u64 size);
+
+struct nvme_ext_data_iter *
+nvme_mdev_kdata_iter_alloc(struct nvme_mdev_viommu *viommu, unsigned int size);
+
+int nvme_mdev_read_from_udata(void *dst, struct nvme_ext_data_iter *srcit,
+			      u64 size);
+
+int nvme_mdev_write_to_udata(struct nvme_ext_data_iter *dstit, void *src,
+			     u64 size);
+
+void *nvme_mdev_udata_queue_vmap(struct nvme_mdev_viommu *viommu,
+				 dma_addr_t iova,
+				 unsigned int size, bool cont);
+/* viommu.c */
+void nvme_mdev_viommu_init(struct nvme_mdev_viommu *viommu,
+			   struct device *sw_dev,
+			   struct device *hw_dev);
+
+int nvme_mdev_viommu_add(struct nvme_mdev_viommu *viommu, u32 flags,
+			 dma_addr_t iova, u64 size);
+
+int nvme_mdev_viommu_remove(struct nvme_mdev_viommu *viommu,
+			    dma_addr_t iova, u64 size);
+
+int nvme_mdev_viommu_translate(struct nvme_mdev_viommu *viommu,
+			       dma_addr_t iova,
+			       dma_addr_t *physical,
+			       dma_addr_t *host_iova);
+
+int nvme_mdev_viommu_create_kmap(struct nvme_mdev_viommu *viommu,
+				 dma_addr_t iova, struct page_map *page);
+
+void nvme_mdev_viommu_free_kmap(struct nvme_mdev_viommu *viommu,
+				struct page_map *page);
+
+void nvme_mdev_viommu_update_kmap(struct nvme_mdev_viommu *viommu,
+				  struct page_map *page);
+
+void nvme_mdev_viommu_reset(struct nvme_mdev_viommu *viommu);
+
+/* some utilities*/
+
+#define store_le64(address, value) (*((__le64 *)(address)) = cpu_to_le64(value))
+#define store_le32(address, value) (*((__le32 *)(address)) = cpu_to_le32(value))
+#define store_le16(address, value) (*((__le16 *)(address)) = cpu_to_le16(value))
+#define store_le8(address, value)  (*((u8 *)(address)) = (value))
+
+#define load_le16(address) le16_to_cpu(*(__le16 *)(address))
+#define load_le32(address) le32_to_cpu(*(__le32 *)(address))
+
+#define store_strsp(dst, src) \
+	memcpy_and_pad(dst, sizeof(dst), src, sizeof(src) - 1, ' ')
+
+#define DNR(e) ((e) | NVME_SC_DNR)
+
+#define PAGE_ADDRESS(address) ((address) & PAGE_MASK)
+#define OFFSET_IN_PAGE(address) ((address) & ~(PAGE_MASK))
+
+#define _DBG(vctrl, fmt, ...) \
+	dev_dbg(mdev_dev((vctrl)->mdev), fmt, ##__VA_ARGS__)
+
+#define _INFO(vctrl, fmt, ...) \
+	dev_info(mdev_dev((vctrl)->mdev), fmt, ##__VA_ARGS__)
+
+#define _WARN(vctrl, fmt, ...) \
+	dev_warn(mdev_dev((vctrl)->mdev), fmt, ##__VA_ARGS__)
+
+#define mdev_to_vctrl(mdev) \
+	((struct nvme_mdev_vctrl *)mdev_get_drvdata(mdev))
+
+#define dev_to_vctrl(mdev) \
+	mdev_to_vctrl(mdev_from_dev(dev))
+
+#define RSRV_NSID (BIT(1))
+#define RSRV_DW23 (BIT(2) | BIT(3))
+#define RSRV_MPTR (BIT(4) | BIT(5))
+
+#define RSRV_DPTR (BIT(6) | BIT(7) | BIT(8) | BIT(9))
+#define RSRV_DPTR_PRP2 (BIT(8) | BIT(9))
+
+#define RSRV_DW10_15 (BIT(10) | BIT(11) | BIT(12) | BIT(13) | BIT(14) | BIT(15))
+#define RSRV_DW11_15 (BIT(11) | BIT(12) | BIT(13) | BIT(14) | BIT(15))
+#define RSRV_DW12_15 (BIT(12) | BIT(13) | BIT(14) | BIT(15))
+#define RSRV_DW13_15 (BIT(13) | BIT(14) | BIT(15))
+#define RSRV_DW14_15 (BIT(14) | BIT(15))
+
+static inline bool check_reserved_dwords(const u32 *dwords,
+					 int count, unsigned long bitmask)
+{
+	int bit;
+
+	if (WARN_ON(count > BITS_PER_TYPE(long)))
+		return false;
+
+	for_each_set_bit(bit, &bitmask, count)
+		if (dwords[bit])
+			return false;
+	return true;
+}
+
+static inline bool check_range(u64 start, u64 size, u64 end)
+{
+	u64 test = start + size;
+
+	/* check for overflow */
+	if (test < start || test < size)
+		return false;
+	return test <= end;
+}
+
+/* Rough translation of internal errors to the NVME errors */
+static inline int nvme_mdev_translate_error(int error)
+{
+	// nvme status, including no error (NVME_SC_SUCCESS)
+	if (error >= 0)
+		return error;
+
+	switch (error) {
+	case -ENOMEM:
+		/*no memory - truly an internal error*/
+		return NVME_SC_INTERNAL;
+	case -ENOSPC:
+		/* Happens when user sends to large PRP list
+		 * User shoudn't do this since the maximum transfer size
+		 * is specified in the controller caps
+		 */
+		return DNR(NVME_SC_DATA_XFER_ERROR);
+	case -EFAULT:
+		/* Bad memory pointers in the prp lists*/
+		return DNR(NVME_SC_DATA_XFER_ERROR);
+	case -EINVAL:
+		/* Bad prp offsets in the prp lists/command*/
+		return DNR(NVME_SC_PRP_OFFSET_INVALID);
+	default:
+		/*Shouldn't happen */
+		WARN_ON_ONCE(true);
+		return NVME_SC_INTERNAL;
+	}
+}
+
+static inline bool timeout(ktime_t event, ktime_t now, unsigned long timeout_ms)
+{
+	return ktime_ms_delta(now, event) > (long)timeout_ms;
+}
+
+extern struct mdev_parent_ops mdev_fops;
+extern struct list_head nvme_mdev_vctrl_list;
+extern struct mutex nvme_mdev_vctrl_list_mutex;
+
+#endif // _MDEV_NVME_H
diff --git a/drivers/nvme/mdev/udata.c b/drivers/nvme/mdev/udata.c
new file mode 100644
index 000000000000..7af6b3f6d6aa
--- /dev/null
+++ b/drivers/nvme/mdev/udata.c
@@ -0,0 +1,390 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * User (guest) data access routines
+ * Implementation of PRP iterator in user memory
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/highmem.h>
+#include <linux/slab.h>
+#include <linux/mdev.h>
+#include <linux/nvme.h>
+#include "priv.h"
+
+#define MAX_PRP ((PAGE_SIZE / sizeof(__le64)) - 1)
+
+/* Setup up a new PRP iterator */
+void nvme_mdev_udata_iter_setup(struct nvme_mdev_viommu *viommu,
+				struct nvme_ext_data_iter *iter)
+{
+	iter->viommu = viommu;
+	iter->count = 0;
+	iter->next = NULL;
+	iter->release = NULL;
+}
+
+/* Load a new prp list into the iterator. Internal*/
+static int nvme_mdev_udata_iter_load_prplist(struct nvme_ext_data_iter *iter,
+					     dma_addr_t iova)
+{
+	dma_addr_t  data_iova;
+	int ret;
+	__le64 *map;
+
+	/* map the prp list*/
+	ret = nvme_mdev_viommu_create_kmap(iter->viommu,
+					   PAGE_ADDRESS(iova),
+					   &iter->uprp.page);
+	if (ret)
+		return ret;
+
+	iter->uprp.index = OFFSET_IN_PAGE(iova) / (sizeof(__le64));
+
+	/* read its first entry and check its alignment */
+	map = iter->uprp.page.kmap;
+	data_iova = le64_to_cpu(map[iter->uprp.index]);
+
+	if (OFFSET_IN_PAGE(data_iova) != 0) {
+		nvme_mdev_viommu_free_kmap(iter->viommu, &iter->uprp.page);
+		return -EINVAL;
+	}
+
+	/* translate the entry to complete the setup*/
+	ret =  nvme_mdev_viommu_translate(iter->viommu, data_iova,
+					  &iter->physical, &iter->host_iova);
+	if (ret)
+		nvme_mdev_viommu_free_kmap(iter->viommu, &iter->uprp.page);
+
+	return ret;
+}
+
+/* ->next function when iterator points to prp list*/
+static int nvme_mdev_udata_iter_next_prplist(struct nvme_ext_data_iter *iter)
+{
+	dma_addr_t iova;
+	int ret;
+	__le64 *map = iter->uprp.page.kmap;
+
+	if (WARN_ON(iter->count <= 0))
+		return 0;
+
+	if (--iter->count == 0) {
+		nvme_mdev_viommu_free_kmap(iter->viommu, &iter->uprp.page);
+		return 0;
+	}
+
+	iter->uprp.index++;
+
+	if (iter->uprp.index < MAX_PRP || iter->count == 1) {
+		// advance over next pointer in current prp list
+		// these pointers must be page aligned
+		iova = le64_to_cpu(map[iter->uprp.index]);
+		if (OFFSET_IN_PAGE(iova) != 0)
+			return -EINVAL;
+
+		ret  = nvme_mdev_viommu_translate(iter->viommu, iova,
+						  &iter->physical,
+						  &iter->host_iova);
+		if (ret)
+			nvme_mdev_viommu_free_kmap(iter->viommu,
+						   &iter->uprp.page);
+		return ret;
+	}
+
+	/* switch to next prp list. it must be page aligned as well*/
+	iova = le64_to_cpu(map[MAX_PRP]);
+
+	if (OFFSET_IN_PAGE(iova) != 0)
+		return -EINVAL;
+
+	nvme_mdev_viommu_free_kmap(iter->viommu, &iter->uprp.page);
+	return nvme_mdev_udata_iter_load_prplist(iter, iova);
+}
+
+/* ->next function when iterator points to user data pointer*/
+static int nvme_mdev_udata_iter_next_dptr(struct nvme_ext_data_iter *iter)
+{
+	dma_addr_t  iova;
+
+	if (WARN_ON(iter->count <= 0))
+		return 0;
+
+	if (--iter->count == 0)
+		return 0;
+
+	/* we will be called only once to deal with the second
+	 * pointer in the data pointer
+	 */
+	iova = le64_to_cpu(iter->dptr->prp2);
+
+	if (iter->count == 1) {
+		/* only need to read one more entry, meaning
+		 * the 2nd entry of the dptr.
+		 * It must be page aligned
+		 */
+		if (OFFSET_IN_PAGE(iova) != 0)
+			return -EINVAL;
+		return nvme_mdev_viommu_translate(iter->viommu, iova,
+						  &iter->physical,
+						  &iter->host_iova);
+	} else {
+		/*
+		 * Second dptr entry is prp pointer, and it might not
+		 * be page aligned (but QWORD aligned at least)
+		 */
+		if (iova & 0x7ULL)
+			return -EINVAL;
+		iter->next = nvme_mdev_udata_iter_next_prplist;
+		return nvme_mdev_udata_iter_load_prplist(iter, iova);
+	}
+}
+
+/* Set prp list iterator to point to data pointer found in NVME command */
+int nvme_mdev_udata_iter_set_dptr(struct nvme_ext_data_iter *it,
+				  const union nvme_data_ptr *dptr, u64 size)
+{
+	int ret;
+	u64 prp1 = le64_to_cpu(dptr->prp1);
+	dma_addr_t iova = PAGE_ADDRESS(prp1);
+	unsigned int page_offset = OFFSET_IN_PAGE(prp1);
+
+	/* first dptr pointer must be at least DWORD aligned*/
+	if (page_offset & 0x3)
+		return -EINVAL;
+
+	it->dptr = dptr;
+	it->next = nvme_mdev_udata_iter_next_dptr;
+	it->count = DIV_ROUND_UP_ULL(size + page_offset, PAGE_SIZE);
+
+	ret = nvme_mdev_viommu_translate(it->viommu, iova,
+					 &it->physical, &it->host_iova);
+	if (ret)
+		return ret;
+
+	it->physical += page_offset;
+	it->host_iova += page_offset;
+	return 0;
+}
+
+/* ->next function when iterator points to kernel memory buffer */
+static int nvme_mdev_kdata_iter_next(struct nvme_ext_data_iter *it)
+{
+	if (WARN_ON(it->count <= 0))
+		return 0;
+
+	if (--it->count == 0)
+		return 0;
+
+	it->physical = PAGE_ADDRESS(it->physical) + PAGE_SIZE;
+	it->host_iova = PAGE_ADDRESS(it->host_iova) + PAGE_SIZE;
+	return 0;
+}
+
+/* ->release function for kdata iterator to free it after use */
+static void nvme_mdev_kdata_iter_free(struct nvme_ext_data_iter *it)
+{
+	struct device *dma_dev = it->viommu->hw_dev;
+
+	if (dma_dev)
+		dma_free_coherent(dma_dev, it->kmem.size,
+				  it->kmem.data, it->kmem.dma_addr);
+	else
+		kfree(it->kmem.data);
+	kfree(it);
+}
+
+/* allocate a kernel data buffer with read iterator for nvme host device */
+struct nvme_ext_data_iter *
+nvme_mdev_kdata_iter_alloc(struct nvme_mdev_viommu *viommu, unsigned int size)
+{
+	struct nvme_ext_data_iter *it;
+
+	it = kzalloc(sizeof(*it), GFP_KERNEL);
+	if (!it)
+		return NULL;
+
+	it->viommu = viommu;
+	it->kmem.size = size;
+	if (viommu->hw_dev) {
+		it->kmem.data = dma_alloc_coherent(viommu->hw_dev, size,
+						   &it->kmem.dma_addr,
+						   GFP_KERNEL);
+	} else {
+		it->kmem.data = kzalloc(size, GFP_KERNEL);
+		it->kmem.dma_addr = 0;
+	}
+
+	if (!it->kmem.data) {
+		kfree(it);
+		return NULL;
+	}
+
+	it->physical = virt_to_phys(it->kmem.data);
+	it->host_iova = it->kmem.dma_addr;
+
+	it->count = DIV_ROUND_UP(size + OFFSET_IN_PAGE(it->physical),
+				 PAGE_SIZE);
+
+	it->next = nvme_mdev_kdata_iter_next;
+	it->release = nvme_mdev_kdata_iter_free;
+	return it;
+}
+
+/* copy data from user data iterator to a kernel buffer */
+int nvme_mdev_read_from_udata(void *dst, struct nvme_ext_data_iter *srcit,
+			      u64 size)
+{
+	int ret;
+	unsigned int srcoffset, chunk_size;
+
+	while (srcit->count && size > 0) {
+		struct page *page = pfn_to_page(PHYS_PFN(srcit->physical));
+		void *src = kmap(page);
+
+		if (!src)
+			return -ENOMEM;
+
+		srcoffset = OFFSET_IN_PAGE(srcit->physical);
+		chunk_size = min(size, (u64)PAGE_SIZE - srcoffset);
+
+		memcpy(dst, src + srcoffset, chunk_size);
+		dst += chunk_size;
+		size -= chunk_size;
+		kunmap(page);
+
+		ret = srcit->next(srcit);
+		if (ret)
+			return ret;
+	}
+	WARN_ON(size > 0);
+	return 0;
+}
+
+/* copy data from kernel buffer to user data iterator */
+int nvme_mdev_write_to_udata(struct nvme_ext_data_iter *dstit, void *src,
+			     u64 size)
+{
+	int ret, dstoffset, chunk_size;
+
+	while (dstit->count && size > 0) {
+		struct page *page = pfn_to_page(PHYS_PFN(dstit->physical));
+		void *dst = kmap(page);
+
+		if (!dst)
+			return -ENOMEM;
+
+		dstoffset = OFFSET_IN_PAGE(dstit->physical);
+		chunk_size = min(size, (u64)PAGE_SIZE - dstoffset);
+
+		memcpy(dst + dstoffset, src, chunk_size);
+		src += chunk_size;
+		size -= chunk_size;
+		kunmap(page);
+
+		ret = dstit->next(dstit);
+		if (ret)
+			return ret;
+	}
+	WARN_ON(size > 0);
+	return 0;
+}
+
+/* Set prp list iterator to point to prp list found in create queue command */
+static int
+nvme_mdev_udata_iter_set_queue_prplist(struct nvme_mdev_viommu *viommu,
+				       struct nvme_ext_data_iter *iter,
+				       dma_addr_t iova, unsigned int size)
+{
+	if (iova & ~PAGE_MASK)
+		return -EINVAL;
+
+	nvme_mdev_udata_iter_setup(viommu, iter);
+	iter->count = DIV_ROUND_UP(size, PAGE_SIZE);
+	iter->next = nvme_mdev_udata_iter_next_prplist;
+	return nvme_mdev_udata_iter_load_prplist(iter, iova);
+}
+
+/* Map an SQ/CQ queue (contiguous in guest physical memory) */
+static int nvme_mdev_queue_getpages_contiguous(struct nvme_mdev_viommu *viommu,
+					       dma_addr_t iova,
+					       struct page **pages,
+					       unsigned int npages)
+{
+	int ret;
+	unsigned int i;
+
+	dma_addr_t host_page_iova;
+	phys_addr_t physical;
+
+	for (i = 0 ; i < npages; i++) {
+		ret = nvme_mdev_viommu_translate(viommu, iova + (PAGE_SIZE * i),
+						 &physical,
+						 &host_page_iova);
+		if (ret)
+			return ret;
+		pages[i] = pfn_to_page(PHYS_PFN(physical));
+	}
+	return 0;
+}
+
+/* Map an SQ/CQ queue (non contiguous in guest physical memory) */
+static int nvme_mdev_queue_getpages_prplist(struct nvme_mdev_viommu *viommu,
+					    dma_addr_t iova,
+					    struct page **pages,
+					    unsigned int npages)
+{
+	int ret, i = 0;
+	struct nvme_ext_data_iter uprpit;
+
+	ret = nvme_mdev_udata_iter_set_queue_prplist(viommu,
+						     &uprpit, iova,
+						     npages * PAGE_SIZE);
+	if (ret)
+		return ret;
+
+	while (uprpit.count && i < npages) {
+		pages[i++] = pfn_to_page(PHYS_PFN(uprpit.physical));
+		ret = uprpit.next(&uprpit);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+/* map a SQ/CQ queue to host physical memory */
+void *nvme_mdev_udata_queue_vmap(struct nvme_mdev_viommu *viommu,
+				 dma_addr_t iova,
+				 unsigned int size,
+				 bool cont)
+{
+	int ret;
+	unsigned int npages;
+	void *map;
+	struct page **pages;
+
+	// queue must be page aligned
+	if (OFFSET_IN_PAGE(iova) != 0)
+		return ERR_PTR(-EINVAL);
+
+	npages = DIV_ROUND_UP(size, PAGE_SIZE);
+	pages = kcalloc(npages, sizeof(struct page *), GFP_KERNEL);
+	if (!pages)
+		return ERR_PTR(-ENOMEM);
+
+	ret = cont ?
+		nvme_mdev_queue_getpages_contiguous(viommu, iova, pages, npages)
+		: nvme_mdev_queue_getpages_prplist(viommu, iova, pages, npages);
+
+	if (ret) {
+		map = ERR_PTR(ret);
+		goto out;
+	}
+
+	map =  vmap(pages, npages, VM_MAP, PAGE_KERNEL);
+	if (!map)
+		map = ERR_PTR(-ENOMEM);
+out:
+	kfree(pages);
+	return map;
+}
diff --git a/drivers/nvme/mdev/vcq.c b/drivers/nvme/mdev/vcq.c
new file mode 100644
index 000000000000..7702137eb8bc
--- /dev/null
+++ b/drivers/nvme/mdev/vcq.c
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Virtual NVMe completion queue implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include "priv.h"
+
+/* Create new virtual completion queue */
+int nvme_mdev_vcq_init(struct nvme_mdev_vctrl *vctrl, u16 qid,
+		       dma_addr_t iova, bool cont, u16 size, int irq)
+{
+	struct nvme_vcq *q = &vctrl->vcqs[qid];
+	int ret;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	q->iova = iova;
+	q->cont = cont;
+	q->data = NULL;
+	q->qid = qid;
+	q->size = size;
+	q->tail = 0;
+	q->phase = true;
+	q->irq = irq;
+	q->pending = 0;
+	q->head = 0;
+
+	ret = nvme_mdev_vcq_viommu_update(&vctrl->viommu, q);
+	if (ret && (ret != -EFAULT))
+		return ret;
+
+	_DBG(vctrl, "VCQ: create qid=%d contig=%d depth=%d irq=%d\n",
+	     qid, cont, size, irq);
+
+	set_bit(qid, vctrl->vcq_en);
+
+	vctrl->mmio.dbs[q->qid].cqh = 0;
+	vctrl->mmio.eidxs[q->qid].cqh = 0;
+	return 0;
+}
+
+/* Update the kernel mapping of the queue */
+int nvme_mdev_vcq_viommu_update(struct nvme_mdev_viommu *viommu,
+				struct nvme_vcq *q)
+{
+	void *data;
+
+	if (q->data)
+		vunmap((void *)q->data);
+
+	data = nvme_mdev_udata_queue_vmap(viommu, q->iova,
+					  (unsigned int)q->size *
+					  sizeof(struct nvme_completion),
+					  q->cont);
+
+	q->data = IS_ERR(data) ? NULL : data;
+	return IS_ERR(data) ? PTR_ERR(data) : 0;
+}
+
+/* Delete a virtual completion queue */
+void nvme_mdev_vcq_delete(struct nvme_mdev_vctrl *vctrl, u16 qid)
+{
+	struct nvme_vcq *q = &vctrl->vcqs[qid];
+
+	lockdep_assert_held(&vctrl->lock);
+
+	if (q->data)
+		vunmap((void *)q->data);
+	q->data = NULL;
+
+	_DBG(vctrl, "VCQ: delete qid=%d\n", q->qid);
+	clear_bit(qid, vctrl->vcq_en);
+}
+
+/* Move queue tail one item forward */
+static void nvme_mdev_vcq_advance_tail(struct nvme_vcq *q)
+{
+	if (++q->tail == q->size) {
+		q->tail = 0;
+		q->phase = !q->phase;
+	}
+}
+
+/* Move queue head one item forward */
+static void nvme_mdev_vcq_advance_head(struct nvme_vcq *q)
+{
+	q->head++;
+	if (q->head == q->size)
+		q->head = 0;
+}
+
+/* Process a virtual completion queue*/
+void nvme_mdev_vcq_process(struct nvme_mdev_vctrl *vctrl, u16 qid,
+			   bool trigger_irqs)
+{
+	struct nvme_vcq *q = &vctrl->vcqs[qid];
+	u16 new_head;
+	u32 eidx;
+
+	if (!vctrl->mmio.dbs || !vctrl->mmio.eidxs)
+		return;
+
+	new_head = le32_to_cpu(vctrl->mmio.dbs[qid].cqh);
+
+	if (new_head != q->head) {
+		/* bad tail - can't process*/
+		if (!nvme_mdev_mmio_db_check(vctrl, q->qid, q->size, new_head))
+			return;
+
+		while (q->head != new_head) {
+			nvme_mdev_vcq_advance_head(q);
+			WARN_ON_ONCE(q->pending == 0);
+			if (q->pending > 0)
+				q->pending--;
+		}
+
+		eidx = q->head + (q->size >> 1);
+		if (eidx >= q->size)
+			eidx -= q->size;
+		vctrl->mmio.eidxs[q->qid].cqh = cpu_to_le32(eidx);
+	}
+
+	if (q->irq != -1 && trigger_irqs) {
+		if (q->tail != new_head)
+			nvme_mdev_irq_cond_trigger(vctrl, q->irq);
+		else
+			nvme_mdev_irq_clear(vctrl, q->irq);
+	}
+}
+
+/* flush interrupts on a completion queue */
+bool nvme_mdev_vcq_flush(struct nvme_mdev_vctrl *vctrl, u16 qid)
+{
+	struct nvme_vcq *q = &vctrl->vcqs[qid];
+	u16 new_head = le32_to_cpu(vctrl->mmio.dbs[qid].cqh);
+
+	if (new_head == q->tail || q->irq == -1)
+		return false;
+
+	nvme_mdev_irq_trigger(vctrl, q->irq);
+	nvme_mdev_irq_clear(vctrl, q->irq);
+	return true;
+}
+
+/* Reserve space for one completion entry, that will be added later */
+bool nvme_mdev_vcq_reserve_space(struct nvme_vcq *q)
+{
+	/* TODOLATER: track passed through commmands
+	 * If we pass through a command to host and never receive a response
+	 * we will keep space for response in CQ forever, eventually stalling
+	 * the CQ forever.
+	 * In this case, the guest is still expected to recover by resetting
+	 * our controller
+	 * This can be fixed by tracking all the commands that we send
+	 * to the host
+	 */
+
+	if (q->pending == q->size - 1)
+		return false;
+	q->pending++;
+	return true;
+}
+
+/* Write a new item into the completion queue (IO version) */
+void nvme_mdev_vcq_write_io(struct nvme_mdev_vctrl *vctrl,
+			    struct nvme_vcq *q, u16 sq_head,
+			    u16 sqid, u16 cid, u16 status)
+{
+	volatile u64 *qw = (__le64 *)(&q->data[q->tail]);
+
+	u64 phase = q->phase ? (0x1ULL << 48) : 0;
+	u64 qw1 =
+		((u64)sq_head) |
+		((u64)sqid << 16) |
+		((u64)cid << 32) |
+		((u64)status << 49) | phase;
+
+	WRITE_ONCE(qw[1], cpu_to_le64(qw1));
+
+	nvme_mdev_vcq_advance_tail(q);
+	if (q->irq != -1)
+		nvme_mdev_irq_raise(vctrl, q->irq);
+}
+
+/* Write a new item into the completion queue (ADMIN version) */
+void nvme_mdev_vcq_write_adm(struct nvme_mdev_vctrl *vctrl,
+			     struct nvme_vcq *q, u32 dw0,
+			     u16 sq_head, u16 cid, u16 status)
+{
+	volatile u64 *qw = (__le64 *)(&q->data[q->tail]);
+
+	u64 phase = q->phase ? (0x1ULL << 48) : 0;
+	u64 qw1 =
+		((u64)sq_head) |
+		((u64)cid << 32) |
+		((u64)status << 49) | phase;
+
+	WRITE_ONCE(qw[0], cpu_to_le64(dw0));
+	/* ensure that hardware sees the phase bit flip last */
+	wmb();
+	WRITE_ONCE(qw[1], cpu_to_le64(qw1));
+
+	nvme_mdev_vcq_advance_tail(q);
+	if (q->irq != -1)
+		nvme_mdev_irq_trigger(vctrl, q->irq);
+}
diff --git a/drivers/nvme/mdev/vctrl.c b/drivers/nvme/mdev/vctrl.c
new file mode 100644
index 000000000000..87bc7c435c0c
--- /dev/null
+++ b/drivers/nvme/mdev/vctrl.c
@@ -0,0 +1,515 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Virtual NVMe controller implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/mdev.h>
+#include <linux/nvme.h>
+#include "priv.h"
+
+bool nvme_mdev_vctrl_is_dead(struct nvme_mdev_vctrl *vctrl)
+{
+	return (vctrl->mmio.csts & (NVME_CSTS_CFS | NVME_CSTS_SHST_MASK)) != 0;
+}
+
+/* Setup the controller guid and serial */
+static void nvme_mdev_vctrl_init_id(struct nvme_mdev_vctrl *vctrl)
+{
+	const guid_t* guid = mdev_uuid(vctrl->mdev);
+
+	snprintf(vctrl->subnqn, sizeof(vctrl->subnqn),
+		 "nqn.2014-08.org.nvmexpress:uuid:%pUl", guid->b);
+
+	snprintf(vctrl->serial, sizeof(vctrl->serial), "%pUl", guid->b);
+}
+
+/* Change the IO thread CPU pinning */
+void nvme_mdev_vctrl_bind_iothread(struct nvme_mdev_vctrl *vctrl,
+				   unsigned int cpu)
+{
+	mutex_lock(&vctrl->lock);
+
+	if (cpu == vctrl->iothread_cpu)
+		goto out;
+
+	nvme_mdev_io_free(vctrl);
+	nvme_mdev_io_create(vctrl, cpu);
+out:
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Change the status of support for shadow doorbell */
+int nvme_mdev_vctrl_set_shadow_doorbell_supported(struct nvme_mdev_vctrl *vctrl,
+						  bool enable)
+{
+	if (vctrl->inuse)
+		return -EBUSY;
+	vctrl->mmio.shadow_db_supported = enable;
+	return 0;
+}
+
+/* Called when memory mapping are changed. Propagate this to all kmap users */
+static void nvme_mdev_vctrl_viommu_update(struct nvme_mdev_vctrl *vctrl)
+{
+	u16 qid;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	if (!(vctrl->mmio.csts & NVME_CSTS_RDY))
+		return;
+
+	/* update mappings for submission and completion queues */
+	for_each_set_bit(qid, vctrl->vsq_en, MAX_VIRTUAL_QUEUES)
+		nvme_mdev_vsq_viommu_update(&vctrl->viommu, &vctrl->vsqs[qid]);
+
+	for_each_set_bit(qid, vctrl->vcq_en, MAX_VIRTUAL_QUEUES)
+		nvme_mdev_vcq_viommu_update(&vctrl->viommu, &vctrl->vcqs[qid]);
+
+	/* update mapping for the shadow doorbells */
+	nvme_mdev_mmio_viommu_update(vctrl);
+}
+
+/* Create a new virtual controller */
+struct nvme_mdev_vctrl *nvme_mdev_vctrl_create(struct mdev_device *mdev,
+					       struct nvme_mdev_hctrl *hctrl,
+					       unsigned int max_host_queues)
+{
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = kzalloc_node(sizeof(*vctrl),
+						     GFP_KERNEL, hctrl->node);
+	if (!vctrl)
+		return ERR_PTR(-ENOMEM);
+
+	/* Basic init */
+	vctrl->hctrl = hctrl;
+	vctrl->mdev = mdev;
+	vctrl->max_host_hw_queues = max_host_queues;
+	vctrl->viommu.vctrl = vctrl;
+
+	kref_init(&vctrl->ref);
+	mutex_init(&vctrl->lock);
+	nvme_mdev_vctrl_init_id(vctrl);
+	INIT_LIST_HEAD(&vctrl->host_hw_queues);
+
+	get_device(mdev_dev(mdev));
+	mdev_set_drvdata(mdev, vctrl);
+
+	/* reserve host IO queues */
+	if (!nvme_mdev_hctrl_hqs_reserve(hctrl, max_host_queues)) {
+		ret = -ENOSPC;
+		goto error1;
+	}
+
+	/* default feature values*/
+	vctrl->arb_burst_shift = 3;
+	vctrl->mmio.shadow_db_supported = use_shadow_doorbell;
+
+	ret = nvme_mdev_pci_create(vctrl);
+	if (ret)
+		goto error2;
+
+	ret = nvme_mdev_mmio_create(vctrl);
+	if (ret)
+		goto error3;
+
+	nvme_mdev_irqs_setup(vctrl);
+
+	/* Create the IO thread */
+	/*TODOLATER: IO: smp_processor_id() is not an ideal pinning choice */
+	ret = nvme_mdev_io_create(vctrl, smp_processor_id());
+	if (ret)
+		goto error4;
+
+	_INFO(vctrl, "device created using %d host queues\n", max_host_queues);
+	return vctrl;
+error4:
+	nvme_mdev_mmio_free(vctrl);
+error3:
+	nvme_mdev_pci_free(vctrl);
+error2:
+	nvme_mdev_hctrl_hqs_unreserve(hctrl, max_host_queues);
+error1:
+	put_device(mdev_dev(mdev));
+	kfree(vctrl);
+	return ERR_PTR(ret);
+}
+
+/*Try to destroy an vctrl */
+int nvme_mdev_vctrl_destroy(struct nvme_mdev_vctrl *vctrl)
+{
+	mutex_lock(&vctrl->lock);
+
+	if (vctrl->inuse) {
+		/* vctrl has mdev users */
+		mutex_unlock(&vctrl->lock);
+		return -EBUSY;
+	}
+
+	_INFO(vctrl, "device is destroying\n");
+
+	mdev_set_drvdata(vctrl->mdev, NULL);
+	mutex_unlock(&vctrl->lock);
+
+	mutex_lock(&nvme_mdev_vctrl_list_mutex);
+	list_del_init(&vctrl->link);
+	mutex_unlock(&nvme_mdev_vctrl_list_mutex);
+
+	mutex_lock(&vctrl->lock); /*only for lockdep checks */
+	nvme_mdev_io_free(vctrl);
+	nvme_mdev_vns_destroy_all(vctrl);
+	__nvme_mdev_vctrl_reset(vctrl, true);
+
+	nvme_mdev_hctrl_hqs_unreserve(vctrl->hctrl, vctrl->max_host_hw_queues);
+
+	nvme_mdev_pci_free(vctrl);
+	nvme_mdev_mmio_free(vctrl);
+
+	mutex_unlock(&vctrl->lock);
+
+	put_device(mdev_dev(vctrl->mdev));
+	_INFO(vctrl, "device is destroyed\n");
+	kfree(vctrl);
+	return 0;
+}
+
+/* Suspends a running virtual controller
+ * Called when host needs to regain full control of the device
+ */
+void nvme_mdev_vctrl_pause(struct nvme_mdev_vctrl *vctrl)
+{
+	mutex_lock(&vctrl->lock);
+	if (!vctrl->vctrl_paused) {
+		_INFO(vctrl, "pausing the virtual controller\n");
+		if (vctrl->mmio.csts & NVME_CSTS_RDY)
+			nvme_mdev_io_pause(vctrl);
+		vctrl->vctrl_paused = true;
+	}
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Resumes a virtual controller
+ * Called when host done with exclusive access and allows us
+ * again to attach to the controller
+ */
+void nvme_mdev_vctrl_resume(struct nvme_mdev_vctrl *vctrl)
+{
+	mutex_lock(&vctrl->lock);
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	if (vctrl->vctrl_paused) {
+		_INFO(vctrl, "resuming the virtual controller\n");
+
+		if (vctrl->mmio.csts & NVME_CSTS_RDY) {
+			/* handle all pending admin commands*/
+			nvme_mdev_adm_process_sq(vctrl);
+			/* start the IO thread again if it was stopped or
+			 * if we had doorbell writes during the pause
+			 */
+			nvme_mdev_io_resume(vctrl);
+		}
+		vctrl->vctrl_paused = false;
+	}
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Called when emulator opens the virtual device */
+int nvme_mdev_vctrl_open(struct nvme_mdev_vctrl *vctrl)
+{
+	struct device *dma_dev = NULL;
+	int ret = 0;
+
+	mutex_lock(&vctrl->lock);
+
+	if (vctrl->hctrl->removing) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	if (vctrl->inuse) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	_INFO(vctrl, "device is opened\n");
+
+	if (vctrl->hctrl->nvme_ctrl->ops->flags & NVME_F_MDEV_DMA_SUPPORTED)
+		dma_dev = vctrl->hctrl->nvme_ctrl->dev;
+
+	nvme_mdev_viommu_init(&vctrl->viommu, mdev_dev(vctrl->mdev), dma_dev);
+
+	nvme_mdev_mmio_open(vctrl);
+	vctrl->inuse = true;
+out:
+	mutex_unlock(&vctrl->lock);
+	return ret;
+}
+
+/* Called when emulator closes the virtual device */
+void nvme_mdev_vctrl_release(struct nvme_mdev_vctrl *vctrl)
+{
+	mutex_lock(&vctrl->lock);
+	nvme_mdev_io_pause(vctrl);
+
+	/* Remove the guest DMA mappings - new user that will open the
+	 * device might be a different guest
+	 */
+	nvme_mdev_viommu_reset(&vctrl->viommu);
+
+	/* Reset the controller to a clean state for a new user */
+	__nvme_mdev_vctrl_reset(vctrl, false);
+	nvme_mdev_irqs_reset(vctrl);
+	vctrl->inuse = false;
+	mutex_unlock(&vctrl->lock);
+
+	WARN_ON(!list_empty(&vctrl->host_hw_queues));
+
+	_INFO(vctrl, "device is released\n");
+
+	/* If we are released after request to remove the host controller
+	 * we are dead, won't be opened again ever, so remove ourselves
+	 */
+	if (vctrl->hctrl->removing)
+		nvme_mdev_vctrl_destroy(vctrl);
+}
+
+/* Called each time the controller is reset (CC.EN <= 0 or VM level reset) */
+void __nvme_mdev_vctrl_reset(struct nvme_mdev_vctrl *vctrl, bool pci_reset)
+{
+	lockdep_assert_held(&vctrl->lock);
+
+	if ((vctrl->mmio.csts & NVME_CSTS_RDY) &&
+	    !(vctrl->mmio.csts & NVME_CSTS_SHST_MASK)) {
+		_DBG(vctrl, "unsafe reset (CSTS.RDY==1)\n");
+		nvme_mdev_io_pause(vctrl);
+		nvme_mdev_vctrl_disable(vctrl);
+	}
+	nvme_mdev_mmio_reset(vctrl, pci_reset);
+}
+
+/* setups initial admin queues and doorbells */
+bool nvme_mdev_vctrl_enable(struct nvme_mdev_vctrl *vctrl,
+			    dma_addr_t cqiova, dma_addr_t sqiova, u32 sizes)
+{
+	int ret;
+	u16 cqentries, sqentries;
+
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	lockdep_assert_held(&vctrl->lock);
+
+	sqentries = (sizes & 0xFFFF) + 1;
+	cqentries = (sizes >> 16) + 1;
+
+	if (cqentries > 4096 || cqentries < 2)
+		return false;
+	if (sqentries > 4096 || sqentries < 2)
+		return false;
+
+	ret = nvme_mdev_mmio_enable_dbs(vctrl);
+	if (ret)
+		goto error0;
+
+	ret = nvme_mdev_vcq_init(vctrl, 0, cqiova, true, cqentries, 0);
+	if (ret)
+		goto error1;
+
+	ret = nvme_mdev_vsq_init(vctrl, 0, sqiova, true, sqentries, 0);
+	if (ret)
+		goto error2;
+
+	nvme_mdev_events_init(vctrl);
+
+	if (!vctrl->mmio.shadow_db_supported) {
+		/* start polling right away to support admin queue */
+		vctrl->io_idle = false;
+		nvme_mdev_io_resume(vctrl);
+	}
+
+	return true;
+error2:
+	nvme_mdev_mmio_disable_dbs(vctrl);
+error1:
+	nvme_mdev_vcq_delete(vctrl, 0);
+error0:
+	return false;
+}
+
+/* destroy all io/admin queues on the controller  */
+void nvme_mdev_vctrl_disable(struct nvme_mdev_vctrl *vctrl)
+{
+	u16 sqid, cqid;
+
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	lockdep_assert_held(&vctrl->lock);
+
+	nvme_mdev_events_reset(vctrl);
+	nvme_mdev_vns_log_reset(vctrl);
+
+	sqid = 1;
+	for_each_set_bit_from(sqid, vctrl->vsq_en, MAX_VIRTUAL_QUEUES)
+		nvme_mdev_vsq_delete(vctrl, sqid);
+
+	cqid = 1;
+	for_each_set_bit_from(cqid, vctrl->vcq_en, MAX_VIRTUAL_QUEUES)
+		nvme_mdev_vcq_delete(vctrl, cqid);
+
+	nvme_mdev_vsq_delete(vctrl, 0);
+	nvme_mdev_vcq_delete(vctrl, 0);
+
+	nvme_mdev_mmio_disable_dbs(vctrl);
+	vctrl->io_idle = true;
+}
+
+/* External reset */
+void nvme_mdev_vctrl_reset(struct nvme_mdev_vctrl *vctrl)
+{
+	mutex_lock(&vctrl->lock);
+	_INFO(vctrl, "reset\n");
+	__nvme_mdev_vctrl_reset(vctrl, true);
+	mutex_unlock(&vctrl->lock);
+}
+
+/* Add IO region*/
+void nvme_mdev_vctrl_add_region(struct nvme_mdev_vctrl *vctrl,
+				unsigned int index, unsigned int size,
+				region_access_fn access_fn)
+{
+	struct nvme_mdev_io_region *region = &vctrl->regions[index];
+
+	region->size = size;
+	region->rw = access_fn;
+	region->mmap_ops = NULL;
+}
+
+/* Enable mmap window on an IO region */
+void nvme_mdev_vctrl_region_set_mmap(struct nvme_mdev_vctrl *vctrl,
+				     unsigned int index,
+				     unsigned int offset,
+				     unsigned int size,
+				     const struct vm_operations_struct *ops)
+{
+	struct nvme_mdev_io_region *region = &vctrl->regions[index];
+
+	region->mmap_area_start = offset;
+	region->mmap_area_size = size;
+	region->mmap_ops = ops;
+}
+
+/* Disable mmap window on an IO region */
+void nvme_mdev_vctrl_region_disable_mmap(struct nvme_mdev_vctrl *vctrl,
+					 unsigned int index)
+{
+	struct nvme_mdev_io_region *region = &vctrl->regions[index];
+
+	region->mmap_area_start = 0;
+	region->mmap_area_size = 0;
+	region->mmap_ops = NULL;
+}
+
+/* Allocate a host IO queue */
+int nvme_mdev_vctrl_hq_alloc(struct nvme_mdev_vctrl *vctrl)
+{
+	struct nvme_mdev_hq *hq = NULL, *tmp;
+	int hwqcount = 0, ret;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	list_for_each_entry(tmp, &vctrl->host_hw_queues, link) {
+		if (!hq || tmp->usecount < hq->usecount)
+			hq = tmp;
+		hwqcount++;
+	}
+
+	if (hwqcount < vctrl->max_host_hw_queues) {
+		ret = nvme_mdev_hctrl_hq_alloc(vctrl->hctrl);
+		if (ret < 0)
+			return ret;
+
+		hq = kzalloc_node(sizeof(*hq), GFP_KERNEL, vctrl->hctrl->node);
+		if (!hq) {
+			nvme_mdev_hctrl_hq_free(vctrl->hctrl, ret);
+			return -ENOMEM;
+		}
+
+		hq->hqid = ret;
+		hq->usecount = 1;
+		list_add_tail(&hq->link, &vctrl->host_hw_queues);
+	} else {
+		hq->usecount++;
+	}
+	return hq->hqid;
+}
+
+/* Free a host IO queue */
+void nvme_mdev_vctrl_hq_free(struct nvme_mdev_vctrl *vctrl, u16 hqid)
+{
+	struct nvme_mdev_hq *hq;
+
+	lockdep_assert_held(&vctrl->lock);
+	nvme_mdev_assert_io_not_running(vctrl);
+
+	list_for_each_entry(hq, &vctrl->host_hw_queues, link)
+		if (hq->hqid == hqid) {
+			if (--hq->usecount > 0)
+				return;
+			nvme_mdev_hctrl_hq_free(vctrl->hctrl, hq->hqid);
+			list_del(&hq->link);
+			kfree(hq);
+			return;
+		}
+	WARN_ON(1);
+}
+
+/* get current list of host queues */
+unsigned int nvme_mdev_vctrl_hqs_list(struct nvme_mdev_vctrl *vctrl, u16 *out)
+{
+	struct nvme_mdev_hq *q;
+	unsigned int i = 0;
+
+	list_for_each_entry(q, &vctrl->host_hw_queues, link) {
+		out[i++] = q->hqid;
+		if (WARN_ON(i > MAX_HOST_QUEUES))
+			break;
+	}
+	return i;
+}
+
+/* add a user memory mapping */
+int nvme_mdev_vctrl_viommu_map(struct nvme_mdev_vctrl *vctrl, u32 flags,
+			       dma_addr_t iova, u64 size)
+{
+	int ret;
+
+	mutex_lock(&vctrl->lock);
+
+	nvme_mdev_io_pause(vctrl);
+	ret = nvme_mdev_viommu_add(&vctrl->viommu, flags, iova, size);
+	nvme_mdev_vctrl_viommu_update(vctrl);
+	nvme_mdev_io_resume(vctrl);
+
+	mutex_unlock(&vctrl->lock);
+	return ret;
+}
+
+/* remove a user memory mapping */
+int nvme_mdev_vctrl_viommu_unmap(struct nvme_mdev_vctrl *vctrl,
+				 dma_addr_t iova, u64 size)
+{
+	int ret;
+
+	mutex_lock(&vctrl->lock);
+
+	nvme_mdev_io_pause(vctrl);
+	ret = nvme_mdev_viommu_remove(&vctrl->viommu, iova, size);
+	nvme_mdev_vctrl_viommu_update(vctrl);
+	nvme_mdev_io_resume(vctrl);
+
+	mutex_unlock(&vctrl->lock);
+	return ret;
+}
diff --git a/drivers/nvme/mdev/viommu.c b/drivers/nvme/mdev/viommu.c
new file mode 100644
index 000000000000..31b86e8f5768
--- /dev/null
+++ b/drivers/nvme/mdev/viommu.c
@@ -0,0 +1,322 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Virtual IOMMU - mapping user memory to the real device
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/highmem.h>
+#include <linux/slab.h>
+#include <linux/mdev.h>
+#include <linux/vmalloc.h>
+#include <linux/nvme.h>
+#include <linux/iommu.h>
+#include <linux/interval_tree_generic.h>
+#include "priv.h"
+
+struct mem_mapping {
+	struct rb_node rb;
+	struct list_head link;
+
+	dma_addr_t __subtree_last;
+	dma_addr_t iova_start; /* first iova in this mapping*/
+	dma_addr_t iova_last;  /* last iova in this mapping*/
+
+	unsigned long pfn;  /* physical address of this mapping */
+	dma_addr_t host_iova;  /* dma mapping to the real device*/
+};
+
+#define map_len(m) (((m)->iova_last - (m)->iova_start) + 1ULL)
+#define map_pages(m) (map_len(m) >> PAGE_SHIFT)
+#define START(node) ((node)->iova_start)
+#define LAST(node) ((node)->iova_last)
+
+INTERVAL_TREE_DEFINE(struct mem_mapping, rb, dma_addr_t, __subtree_last,
+		     START, LAST, static inline, viommu_int_tree);
+
+static void nvme_mdev_viommu_dbg_dma_range(struct nvme_mdev_viommu *viommu,
+					   struct mem_mapping *map,
+					   const char *action)
+{
+	dma_addr_t iova_start  = map->iova_start;
+	dma_addr_t iova_end    = map->iova_start + map_len(map) - 1;
+	dma_addr_t hiova_start = map->host_iova;
+	dma_addr_t hiova_end   = map->host_iova  + map_len(map) - 1;
+
+	_DBG(viommu->vctrl,
+	     "vIOMMU: %s RW IOVA %pad-%pad -> DMA %pad-%pad\n",
+	     action, &iova_start, &iova_end, &hiova_start, &hiova_end);
+}
+
+/* unpin N pages starting at given IOVA*/
+static void nvme_mdev_viommu_unpin_pages(struct nvme_mdev_viommu *viommu,
+					 dma_addr_t iova, int n)
+{
+	int i;
+
+	for (i = 0; i < n; i++) {
+		unsigned long  user_pfn = (iova >> PAGE_SHIFT) + i;
+		int ret = vfio_unpin_pages(viommu->sw_dev, &user_pfn, 1);
+
+		WARN_ON(ret != 1);
+	}
+}
+
+/* User memory init code*/
+void nvme_mdev_viommu_init(struct nvme_mdev_viommu *viommu,
+			   struct device *sw_dev,
+			   struct device *hw_dev)
+{
+	viommu->sw_dev = sw_dev;
+	viommu->hw_dev = hw_dev;
+	viommu->maps_tree = RB_ROOT_CACHED;
+	INIT_LIST_HEAD(&viommu->maps_list);
+}
+
+/* User memory end code*/
+void nvme_mdev_viommu_reset(struct nvme_mdev_viommu *viommu)
+{
+	nvme_mdev_viommu_remove(viommu, 0, 0xFFFFFFFFFFFFFFFFULL);
+	WARN_ON(!list_empty(&viommu->maps_list));
+}
+
+/* Adds a new range of user memory*/
+int nvme_mdev_viommu_add(struct nvme_mdev_viommu *viommu,
+			 u32 flags,
+			 dma_addr_t iova,
+			 u64 size)
+{
+	u64 offset;
+	dma_addr_t iova_end = iova + size - 1;
+	struct mem_mapping *map = NULL, *tmp;
+	LIST_HEAD(new_mappings_list);
+	int ret;
+
+	if (!(flags & VFIO_DMA_MAP_FLAG_READ) ||
+	    !(flags & VFIO_DMA_MAP_FLAG_WRITE)) {
+		const char *type = "none";
+
+		if (flags & VFIO_DMA_MAP_FLAG_READ)
+			type = "RO";
+		else if (flags & VFIO_DMA_MAP_FLAG_WRITE)
+			type = "WO";
+
+		_DBG(viommu->vctrl, "vIOMMU: IGN %s IOVA %pad-%pad\n",
+		     type, &iova, &iova_end);
+		return 0;
+	}
+
+	WARN_ON_ONCE(nvme_mdev_viommu_remove(viommu, iova, size) != 0);
+
+	if (WARN_ON_ONCE(size & ~PAGE_MASK))
+		return -EINVAL;
+
+	// VFIO pinning all the pages
+	for (offset = 0; offset < size; offset += PAGE_SIZE) {
+		unsigned long vapfn = ((iova + offset) >> PAGE_SHIFT), pa_pfn;
+
+		ret = vfio_pin_pages(viommu->sw_dev,
+				     &vapfn, 1,
+				     VFIO_DMA_MAP_FLAG_READ |
+				     VFIO_DMA_MAP_FLAG_WRITE,
+				     &pa_pfn);
+
+		if (ret != 1) {
+			/*sadly mdev api doesn't return an error*/
+			ret = -EFAULT;
+
+			_DBG(viommu->vctrl,
+			     "vIOMMU: ADD RW IOVA %pad - pin failed\n",
+			     &iova);
+			goto unwind;
+		}
+
+		// new mapping needed
+		if (!map || map->pfn + map_pages(map) != pa_pfn) {
+			int node = viommu->hw_dev ?
+				dev_to_node(viommu->hw_dev) : NUMA_NO_NODE;
+
+			map = kzalloc_node(sizeof(*map), GFP_KERNEL, node);
+
+			if (WARN_ON(!map)) {
+				vfio_unpin_pages(viommu->sw_dev, &vapfn, 1);
+				ret = -ENOMEM;
+				goto unwind;
+			}
+			map->iova_start = iova + offset;
+			map->iova_last = iova + offset + PAGE_SIZE - 1ULL;
+			map->pfn = pa_pfn;
+			map->host_iova = 0;
+			list_add_tail(&map->link, &new_mappings_list);
+		} else {
+			// current map can be extended
+			map->iova_last += PAGE_SIZE;
+		}
+	}
+
+	// DMA mapping the pages
+	list_for_each_entry_safe(map, tmp, &new_mappings_list, link) {
+		if (viommu->hw_dev) {
+			map->host_iova =
+				dma_map_page(viommu->hw_dev,
+					     pfn_to_page(map->pfn),
+					     0,
+					     map_len(map),
+					     DMA_BIDIRECTIONAL);
+
+			ret = dma_mapping_error(viommu->hw_dev, map->host_iova);
+			if (ret) {
+				_DBG(viommu->vctrl,
+				     "vIOMMU: ADD RW IOVA %pad-%pad - DMA map failed\n",
+				     &iova, &iova_end);
+				goto unwind;
+			}
+		}
+
+		nvme_mdev_viommu_dbg_dma_range(viommu, map, "ADD");
+		list_del(&map->link);
+		list_add_tail(&map->link, &viommu->maps_list);
+		viommu_int_tree_insert(map, &viommu->maps_tree);
+	}
+	return 0;
+unwind:
+	list_for_each_entry_safe(map, tmp, &new_mappings_list, link) {
+		nvme_mdev_viommu_unpin_pages(viommu, map->iova_start,
+					     map_pages(map));
+
+		list_del(&map->link);
+		kfree(map);
+	}
+	nvme_mdev_viommu_remove(viommu, iova, size);
+	return ret;
+}
+
+/* Removes a  range of user memory*/
+int nvme_mdev_viommu_remove(struct nvme_mdev_viommu *viommu,
+			    dma_addr_t iova,
+			    u64 size)
+{
+	struct mem_mapping *map = NULL, *tmp;
+	dma_addr_t last_iova = iova + (size) - 1ULL;
+	LIST_HEAD(remove_list);
+	int count = 0;
+
+	/* find out all the relevant ranges */
+	map = viommu_int_tree_iter_first(&viommu->maps_tree, iova, last_iova);
+	while (map) {
+		list_del(&map->link);
+		list_add_tail(&map->link, &remove_list);
+		map = viommu_int_tree_iter_next(map, iova, last_iova);
+	}
+
+	/* remove them */
+	list_for_each_entry_safe(map, tmp, &remove_list, link) {
+		count++;
+
+		nvme_mdev_viommu_dbg_dma_range(viommu, map, "DEL");
+		if (viommu->hw_dev)
+			dma_unmap_page(viommu->hw_dev, map->host_iova,
+				       map_len(map), DMA_BIDIRECTIONAL);
+
+		nvme_mdev_viommu_unpin_pages(viommu, map->iova_start,
+					     map_pages(map));
+
+		viommu_int_tree_remove(map, &viommu->maps_tree);
+		kfree(map);
+	}
+	return count;
+}
+
+/* Translate an IOVA to a physical address and read device bus address */
+int nvme_mdev_viommu_translate(struct nvme_mdev_viommu *viommu,
+			       dma_addr_t iova,
+			       dma_addr_t *physical,
+			       dma_addr_t *host_iova)
+{
+	struct mem_mapping *mapping;
+	u64 offset;
+
+	if (WARN_ON_ONCE(OFFSET_IN_PAGE(iova) != 0))
+		return -EINVAL;
+
+	mapping = viommu_int_tree_iter_first(&viommu->maps_tree,
+					     iova, iova + PAGE_SIZE - 1);
+	if (!mapping) {
+		_DBG(viommu->vctrl,
+		     "vIOMMU: translation of IOVA %pad failed\n", &iova);
+		return -EFAULT;
+	}
+
+	WARN_ON(iova > mapping->iova_last);
+	WARN_ON(OFFSET_IN_PAGE(mapping->iova_start) != 0);
+
+	offset = iova - mapping->iova_start;
+	*physical = PFN_PHYS(mapping->pfn) + offset;
+	*host_iova = mapping->host_iova + offset;
+	return 0;
+}
+
+/* map an IOVA to kernel address space  */
+int nvme_mdev_viommu_create_kmap(struct nvme_mdev_viommu *viommu,
+				 dma_addr_t iova, struct page_map *page)
+{
+	dma_addr_t host_iova;
+	phys_addr_t physical;
+	struct page *new_page;
+	int ret;
+
+	page->iova = iova;
+
+	ret = nvme_mdev_viommu_translate(viommu, iova, &physical, &host_iova);
+	if (ret)
+		return ret;
+
+	new_page = pfn_to_page(PHYS_PFN(physical));
+
+	page->kmap = kmap(new_page);
+	if (!page->kmap)
+		return -ENOMEM;
+
+	page->page = new_page;
+	return 0;
+}
+
+/* update IOVA <-> kernel mapping. If fails, removes the previous mapping */
+void nvme_mdev_viommu_update_kmap(struct nvme_mdev_viommu *viommu,
+				  struct page_map *page)
+{
+	dma_addr_t host_iova;
+	phys_addr_t physical;
+	struct page *new_page;
+	int ret;
+
+	ret = nvme_mdev_viommu_translate(viommu, page->iova,
+					 &physical, &host_iova);
+	if (ret) {
+		nvme_mdev_viommu_free_kmap(viommu, page);
+		return;
+	}
+
+	new_page = pfn_to_page(PHYS_PFN(physical));
+	if (new_page == page->page)
+		return;
+
+	nvme_mdev_viommu_free_kmap(viommu, page);
+
+	page->kmap = kmap(new_page);
+	if (!page->kmap)
+		return;
+	page->page = new_page;
+}
+
+/* unmap an IOVA to kernel address space  */
+void nvme_mdev_viommu_free_kmap(struct nvme_mdev_viommu *viommu,
+				struct page_map *page)
+{
+	if (page->page) {
+		kunmap(page->page);
+		page->page = NULL;
+		page->kmap = NULL;
+	}
+}
diff --git a/drivers/nvme/mdev/vns.c b/drivers/nvme/mdev/vns.c
new file mode 100644
index 000000000000..42d4f8d7423b
--- /dev/null
+++ b/drivers/nvme/mdev/vns.c
@@ -0,0 +1,356 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Virtual NVMe namespace implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/nvme.h>
+#include "priv.h"
+
+/* Reset the changed namespace log */
+void nvme_mdev_vns_log_reset(struct nvme_mdev_vctrl *vctrl)
+{
+	vctrl->ns_log_size = 0;
+}
+
+/* This adds entry to NS changed log and sends to the user a notification */
+static void nvme_mdev_vns_send_event(struct nvme_mdev_vctrl *vctrl, u32 ns)
+{
+	unsigned int i;
+	unsigned int log_size = vctrl->ns_log_size;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	_INFO(vctrl, "host namespace list rescanned\n");
+
+	if (WARN_ON(ns == 0 || ns > MAX_VIRTUAL_NAMESPACES))
+		return;
+
+	// check if the namespace ID is alredy in the log
+	if (log_size == MAX_VIRTUAL_NAMESPACES)
+		return;
+
+	for (i = 0; i < log_size; i++)
+		if (vctrl->ns_log[i] == cpu_to_le32(ns))
+			return;
+
+	vctrl->ns_log[log_size++] = cpu_to_le32(ns);
+	vctrl->ns_log_size++;
+	nvme_mdev_event_send(vctrl, NVME_AER_TYPE_NOTICE,
+			     NVME_AER_NOTICE_NS_CHANGED);
+}
+
+/* Read host NS/partition parameters to update our virtual NS */
+static void nvme_mdev_vns_read_host_properties(struct nvme_mdev_vctrl *vctrl,
+					       struct nvme_mdev_vns *vns,
+					       struct nvme_ns *host_ns)
+{
+	unsigned int sector_to_lba_shift;
+	u64 host_ns_size, start, nr, align_mask;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	/* read the namespace block size */
+	vns->blksize_shift = host_ns->lba_shift;
+
+	if (WARN_ON(vns->blksize_shift < 9)) {
+		_WARN(vctrl, "NS/create: device block size is bad\n");
+		goto error;
+	}
+
+	sector_to_lba_shift = vns->blksize_shift - 9;
+	align_mask = (1ULL << sector_to_lba_shift) - 1;
+
+	/* read the partition start and size*/
+	start = get_start_sect(vns->host_part);
+	nr = part_nr_sects_read(vns->host_part->bd_part);
+
+	/* check that partition is aligned on LBA size*/
+	if (sector_to_lba_shift != 0) {
+		if ((start & align_mask) || (nr & align_mask)) {
+			_WARN(vctrl, "NS/create: partition not aligned\n");
+			goto error;
+		}
+	}
+
+	vns->host_lba_offset = start >> sector_to_lba_shift;
+	vns->ns_size = nr >> sector_to_lba_shift;
+	host_ns_size = get_capacity(host_ns->disk) >> sector_to_lba_shift;
+
+	/*TODOLATER: NS: support metadata on host namespace */
+	if (host_ns->ms) {
+		_WARN(vctrl, "NS/create: no support for namespace metadata\n");
+		goto error;
+	}
+
+	if (vns->ns_size == 0) {
+		_WARN(vctrl, "NS/create: host namespace has size 0\n");
+		goto error;
+	}
+
+	/* sanity check that partition doesn't extend beyond the namespace */
+	if (!check_range(vns->host_lba_offset, vns->ns_size, host_ns_size)) {
+		_WARN(vctrl, "NS/create: host namespace size mismatch\n");
+		goto error;
+	}
+
+	/* check if namespace is readonly*/
+	if (!vns->readonly)
+		vns->readonly = get_disk_ro(host_ns->disk);
+
+	vns->noiob = host_ns->noiob;
+	if (vns->noiob != 0) {
+		u64 tmp = vns->host_lba_offset;
+
+		if (do_div(tmp, vns->noiob)) {
+			_WARN(vctrl,
+			      "NS/create: host partition is not aligned on host optimum IO boundary, performance might suffer");
+			vns->noiob = 0;
+		}
+	}
+	return;
+error:
+	vns->ns_size = 0;
+}
+
+/* Open new reference to a host namespace */
+int nvme_mdev_vns_open(struct nvme_mdev_vctrl *vctrl,
+		       u32 host_nsid, unsigned int host_partid)
+{
+	struct nvme_mdev_vns *vns;
+	u32 user_nsid;
+	int ret;
+
+	_INFO(vctrl, "open host_namespace=%u, partition=%u\n",
+	      host_nsid, host_partid);
+
+	mutex_lock(&vctrl->lock);
+	ret = -ENODEV;
+	if (nvme_mdev_vctrl_is_dead(vctrl))
+		goto out;
+
+	/* create the namespace object */
+	ret = -ENOMEM;
+	vns = kzalloc_node(sizeof(*vns), GFP_KERNEL, vctrl->hctrl->node);
+	if (!vns)
+		goto out;
+
+	uuid_gen(&vns->uuid); // TODOLATER: NS: non random NS UUID
+	vns->host_nsid = host_nsid;
+	vns->host_partid = host_partid;
+
+	/* find the host namespace */
+	vns->host_ns = nvme_find_get_ns(vctrl->hctrl->nvme_ctrl, host_nsid);
+	if (!vns->host_ns) {
+		ret = -ENODEV;
+		goto error1;
+	}
+
+	if (test_bit(NVME_NS_DEAD, &vns->host_ns->flags) ||
+	    test_bit(NVME_NS_REMOVING, &vns->host_ns->flags) ||
+	    !vns->host_ns->disk) {
+		ret = -ENODEV;
+		goto error2;
+	}
+
+	/* get the block device for the partition that we will use */
+	vns->host_part = bdget_disk(vns->host_ns->disk, host_partid);
+	if (!vns->host_part) {
+		ret = -ENODEV;
+		goto error2;
+	}
+
+	/* get exclusive access to the block device (partition) */
+	vns->fmode = FMODE_READ | FMODE_EXCL;
+	if (!vns->readonly)
+		vns->fmode |= FMODE_WRITE;
+
+	ret = blkdev_get(vns->host_part, vns->fmode, vns);
+	if (ret)
+		goto error2;
+
+	/* read properties of the host namespace */
+	nvme_mdev_vns_read_host_properties(vctrl, vns, vns->host_ns);
+
+	/* Allocate a user namespace ID for this namespace */
+	ret = -ENOSPC;
+	for (user_nsid = 1; user_nsid <= MAX_VIRTUAL_NAMESPACES; user_nsid++)
+		if (!nvme_mdev_vns_from_vnsid(vctrl, user_nsid))
+			break;
+
+	if (user_nsid > MAX_VIRTUAL_NAMESPACES)
+		goto error3;
+
+	nvme_mdev_io_pause(vctrl);
+
+	vctrl->namespaces[user_nsid - 1] = vns;
+	vns->nsid = user_nsid;
+
+	/* Announce the new namespace to the user */
+	nvme_mdev_vns_send_event(vctrl, user_nsid);
+	nvme_mdev_io_resume(vctrl);
+	ret = 0;
+	goto out;
+error3:
+	blkdev_put(vns->host_part, vns->fmode);
+error2:
+	nvme_put_ns(vns->host_ns);
+error1:
+	kfree(vns);
+out:
+	mutex_unlock(&vctrl->lock);
+	return ret;
+}
+
+/* Re-open new reference to a host namespace, after notification
+ * of change in the host namespace
+ */
+static bool nvme_mdev_vns_reopen(struct nvme_mdev_vctrl *vctrl,
+				 struct nvme_mdev_vns *vns)
+{
+	struct nvme_ns *host_ns;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	_INFO(vctrl, "reopen host namespace %u, partition=%u\n",
+	      vns->host_nsid, vns->host_partid);
+
+	/* namespace disappeared on the host - invalid*/
+	host_ns = nvme_find_get_ns(vctrl->hctrl->nvme_ctrl, vns->host_nsid);
+	if (!host_ns)
+		return false;
+
+	/* different namespace with same ID on the host - invalid*/
+	if (vns->host_ns != host_ns)
+		goto error1;
+
+	// basic checks on the namespace
+	if (test_bit(NVME_NS_DEAD, &host_ns->flags) ||
+	    test_bit(NVME_NS_REMOVING, &host_ns->flags) ||
+	    !host_ns->disk)
+		goto error1;
+
+	/* read properties of the host namespace */
+	nvme_mdev_io_pause(vctrl);
+	nvme_mdev_vns_read_host_properties(vctrl, vns, host_ns);
+	nvme_mdev_io_resume(vctrl);
+
+	nvme_put_ns(host_ns);
+	return true;
+error1:
+	nvme_put_ns(host_ns);
+	return false;
+}
+
+/* Destroy a virtual namespace*/
+static int __nvme_mdev_vns_destroy(struct nvme_mdev_vctrl *vctrl, u32 user_nsid)
+{
+	struct nvme_mdev_vns *vns;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	vns = nvme_mdev_vns_from_vnsid(vctrl, user_nsid);
+	if (!vns)
+		return -ENODEV;
+
+	nvme_mdev_vns_send_event(vctrl, user_nsid);
+	nvme_mdev_io_pause(vctrl);
+
+	vctrl->namespaces[user_nsid - 1] = NULL;
+	blkdev_put(vns->host_part, vns->fmode);
+	nvme_put_ns(vns->host_ns);
+	kfree(vns);
+	nvme_mdev_io_resume(vctrl);
+	return 0;
+}
+
+/* Destroy a virtual namespace (external interface) */
+int nvme_mdev_vns_destroy(struct nvme_mdev_vctrl *vctrl, u32 user_nsid)
+{
+	int ret;
+
+	mutex_lock(&vctrl->lock);
+	nvme_mdev_io_pause(vctrl);
+	ret = __nvme_mdev_vns_destroy(vctrl, user_nsid);
+	nvme_mdev_io_resume(vctrl);
+	mutex_unlock(&vctrl->lock);
+
+	return ret;
+}
+
+/* Destroy all virtual namespaces */
+void nvme_mdev_vns_destroy_all(struct nvme_mdev_vctrl *vctrl)
+{
+	u32 user_nsid;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	for (user_nsid = 1 ; user_nsid <= MAX_VIRTUAL_NAMESPACES ; user_nsid++)
+		__nvme_mdev_vns_destroy(vctrl, user_nsid);
+}
+
+/* Get a virtual namespace */
+struct nvme_mdev_vns *nvme_mdev_vns_from_vnsid(struct nvme_mdev_vctrl *vctrl,
+					       u32 user_ns_id)
+{
+	if (user_ns_id == 0 || user_ns_id > MAX_VIRTUAL_NAMESPACES)
+		return NULL;
+	return vctrl->namespaces[user_ns_id - 1];
+}
+
+/* Print description off all virtual namespaces */
+int nvme_mdev_vns_print_description(struct nvme_mdev_vctrl *vctrl,
+				    char *buf, unsigned int size)
+{
+	int nsid, ret = 0;
+
+	mutex_lock(&vctrl->lock);
+
+	for (nsid = 1; nsid <= MAX_VIRTUAL_NAMESPACES; nsid++) {
+		int n;
+		struct nvme_mdev_vns *vns = nvme_mdev_vns_from_vnsid(vctrl,
+				nsid);
+		if (!vns)
+			continue;
+
+		else if (vns->host_partid == 0)
+			n = snprintf(buf, size, "VNS%d: nvme%dn%d\n",
+				     nsid, vctrl->hctrl->id,
+				     (int)vns->host_nsid);
+		else
+			n = snprintf(buf, size, "VNS%d: nvme%dn%dp%d\n",
+				     nsid, vctrl->hctrl->id,
+				     (int)vns->host_nsid,
+				     (int)vns->host_partid);
+		if (n > size)
+			return -ENOMEM;
+		buf += n;
+		size -= n;
+		ret += n;
+	}
+	mutex_unlock(&vctrl->lock);
+	return ret;
+}
+
+/* Processes an update on the host namespace */
+void nvme_mdev_vns_host_ns_update(struct nvme_mdev_vctrl *vctrl,
+				  u32 host_nsid, bool removed)
+{
+	int nsid;
+
+	mutex_lock(&vctrl->lock);
+
+	for (nsid = 1; nsid <= MAX_VIRTUAL_NAMESPACES; nsid++) {
+		struct nvme_mdev_vns *vns = nvme_mdev_vns_from_vnsid(vctrl,
+								     nsid);
+		if (!vns || vns->host_nsid != host_nsid)
+			continue;
+
+		if (removed || !nvme_mdev_vns_reopen(vctrl, vns))
+			__nvme_mdev_vns_destroy(vctrl, nsid);
+		else
+			nvme_mdev_vns_send_event(vctrl, nsid);
+	}
+	mutex_unlock(&vctrl->lock);
+}
diff --git a/drivers/nvme/mdev/vsq.c b/drivers/nvme/mdev/vsq.c
new file mode 100644
index 000000000000..5b63081c144d
--- /dev/null
+++ b/drivers/nvme/mdev/vsq.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Virtual NVMe submission queue implementation
+ * Copyright (c) 2019 - Maxim Levitsky
+ */
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/vmalloc.h>
+#include "priv.h"
+
+/* Create new virtual completion queue */
+int nvme_mdev_vsq_init(struct nvme_mdev_vctrl *vctrl,
+		       u16 qid, dma_addr_t iova, bool cont, u16 size, u16 cqid)
+{
+	struct nvme_vsq *q = &vctrl->vsqs[qid];
+	int ret;
+
+	lockdep_assert_held(&vctrl->lock);
+
+	q->iova = iova;
+	q->cont = cont;
+	q->qid = qid;
+	q->size = size;
+	q->head = 0;
+	q->vcq = &vctrl->vcqs[cqid];
+	q->data = NULL;
+	q->hsq = 0;
+
+	ret = nvme_mdev_vsq_viommu_update(&vctrl->viommu, q);
+	if (ret && (ret != -EFAULT))
+		return ret;
+
+	if (qid > 0) {
+		ret = nvme_mdev_vctrl_hq_alloc(vctrl);
+		if (ret < 0) {
+			vunmap(q->data);
+			return ret;
+		}
+		q->hsq = ret;
+	}
+
+	_DBG(vctrl, "VSQ: create qid=%d contig=%d, depth=%d cqid=%d\n",
+	     qid, cont, size, cqid);
+
+	set_bit(qid, vctrl->vsq_en);
+
+	vctrl->mmio.dbs[q->qid].sqt = 0;
+	vctrl->mmio.eidxs[q->qid].sqt = 0;
+
+	return 0;
+}
+
+/* Update the kernel mapping of the queue */
+int nvme_mdev_vsq_viommu_update(struct nvme_mdev_viommu *viommu,
+				struct nvme_vsq *q)
+{
+	void *data;
+
+	if (q->data)
+		vunmap((void *)q->data);
+
+	data = nvme_mdev_udata_queue_vmap(viommu, q->iova,
+					  (unsigned int)q->size *
+					  sizeof(struct nvme_command),
+					  q->cont);
+
+	q->data = IS_ERR(data) ? NULL : data;
+	return IS_ERR(data) ? PTR_ERR(data) : 0;
+}
+
+/* Delete an virtual completion queue */
+void nvme_mdev_vsq_delete(struct nvme_mdev_vctrl *vctrl, u16 qid)
+{
+	struct nvme_vsq *q = &vctrl->vsqs[qid];
+
+	lockdep_assert_held(&vctrl->lock);
+	_DBG(vctrl, "VSQ: delete qid=%d\n", q->qid);
+
+	if (q->data)
+		vunmap(q->data);
+	q->data = NULL;
+
+	if (q->hsq) {
+		nvme_mdev_vctrl_hq_free(vctrl, q->hsq);
+		q->hsq = 0;
+	}
+
+	clear_bit(qid, vctrl->vsq_en);
+}
+
+/* Move queue head one item forward */
+static void nvme_mdev_vsq_advance_head(struct nvme_vsq *q)
+{
+	q->head++;
+	if (q->head == q->size)
+		q->head = 0;
+}
+
+bool nvme_mdev_vsq_has_data(struct nvme_mdev_vctrl *vctrl,
+			    struct nvme_vsq *q)
+{
+	u16 tail = le32_to_cpu(vctrl->mmio.dbs[q->qid].sqt);
+
+	if (!vctrl->mmio.dbs || !vctrl->mmio.eidxs || !q->data)
+		return false;
+
+	if  (tail == q->head)
+		return false;
+
+	if (!nvme_mdev_mmio_db_check(vctrl, q->qid, q->size, tail))
+		return false;
+	return true;
+}
+
+/* get one command from a virtual submission queue */
+const struct nvme_command *nvme_mdev_vsq_get_cmd(struct nvme_mdev_vctrl *vctrl,
+						 struct nvme_vsq *q)
+{
+	u16 oldhead = q->head;
+	u32 eidx;
+
+	if (!nvme_mdev_vsq_has_data(vctrl, q))
+		return NULL;
+	if (!nvme_mdev_vcq_reserve_space(q->vcq))
+		return NULL;
+	nvme_mdev_vsq_advance_head(q);
+
+	eidx = q->head + (q->size >> 1);
+	if (eidx >= q->size)
+		eidx -= q->size;
+
+	vctrl->mmio.eidxs[q->qid].sqt = cpu_to_le32(eidx);
+
+	return &q->data[oldhead];
+}
+
+bool nvme_mdev_vsq_suspend_io(struct nvme_mdev_vctrl *vctrl, u16 sqid)
+{
+	struct nvme_vsq *q = &vctrl->vsqs[sqid];
+	u16 tail = le32_to_cpu(vctrl->mmio.dbs[q->qid].sqt);
+
+	/* If the queue is not in working state don't allow the idle code
+	 * to kick in
+	 */
+	if (!vctrl->mmio.dbs || !vctrl->mmio.eidxs || !q->data)
+		return false;
+
+	/* queue has data - refuse idle*/
+	if (tail != q->head)
+		return false;
+
+	/* Write eventid to tell the user to ring normal doorbell*/
+	vctrl->mmio.eidxs[q->qid].sqt = cpu_to_le32(q->head);
+
+	/* memory barrier to ensure that the user have seen the eidx */
+	mb();
+
+	/* Check that doorbell diddn't move meanwhile */
+	tail = le32_to_cpu(vctrl->mmio.dbs[q->qid].sqt);
+	return (tail == q->head);
+}
+
+/* complete a command (IO version)*/
+void nvme_mdev_vsq_cmd_done_io(struct nvme_mdev_vctrl *vctrl,
+			       u16 sqid, u16 cid, u16 status)
+{
+	struct nvme_vsq *q = &vctrl->vsqs[sqid];
+
+	nvme_mdev_vcq_write_io(vctrl, q->vcq, q->head, q->qid, cid, status);
+}
+
+/* complete a command (ADMIN version)*/
+void nvme_mdev_vsq_cmd_done_adm(struct nvme_mdev_vctrl *vctrl,
+				u32 dw0, u16 cid, u16 status)
+{
+	struct nvme_vsq *q = &vctrl->vsqs[0];
+
+	nvme_mdev_vcq_write_adm(vctrl, q->vcq, dw0, q->head, cid, status);
+}
-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
