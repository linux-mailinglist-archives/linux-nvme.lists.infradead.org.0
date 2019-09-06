Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE28BABF28
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pz1IJ5o9V/iDWq69vrbzCiysjIodkY714PyCo48YmvU=; b=HJs
	Axy55Z2Q3EBdpXffz7G/vGLOBB/hT6RrvIt1tZED+Q7z9sWTD1IKgDxsOH3WeWhWXtDWEFbsfHMnD
	XfC3VgMNImjvD30OPkyeOCyVdtVnzqLyYbmSJ6fxhD8CXW6BY81VICmNIey/QU0UJ5b0m20boPMO+
	vTTQoOFalfTsSdIF2kE9jbl6MUw/Szot4fJlb2YQzrrPVevHlctfGFbcrF+b0s4kfBg05XGkI0Pbp
	wGNy8umiJnVzz1fUgXLzK+xJL1y19AGiqGrm1elUetjtYLjba1SYrCh/SYtF5MeZKxY6QNmThmE0j
	aZX6HQtyFqY4pfBFXSQ5dX8Z6Sjmr+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Iiv-0001P5-WE; Fri, 06 Sep 2019 18:12:42 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Iip-0001O2-Or; Fri, 06 Sep 2019 18:12:35 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v5 0/4] Support discovery log change events
Date: Fri,  6 Sep 2019 11:12:30 -0700
Message-Id: <20190906181235.20365-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We want to be able to support discovery log change events automatically
without user intervention.

The definition of discovery log change events applies on "persistent" long
lived controllers, so first we need to have discovery controllers to stay
for a long time and accept kato value.

Then when we do happen to get a discovery log change event on the persistent
discovery controller, we simply fire a udev event to user-space to re-query
the discovery log page and connect to new subsystems in the fabric.

This works with latest nvme-cli master with the nvme-cli patch added
to this series.

Changes from v4:
- fixed comma at end-of-line
- fixed lines >80 characters
- removed redundant conditions on ctrl->opts
- fixed dev argument name
- collected review tags

Changes from v3:
- Add nvme_class uevent callout for controller specific environment variables
- send discovery just like any AEN that we send to userspace
- merged discovery aen enable + send uevents to userspace into a single patch
  as they are now trivially adding support for the feature
- Added nvme-cli modifications to handle the new information from the event

Changes from v2:
- added patch to always enable aen, regardless of the number of I/O queues
- fixes line over 80 characters

Changes from v1:
- rebase to nvme-5.3
- pass none if trsvcid is uninitialized
- pass NVME_CTRL_NAME instead of NVME_CTRL_INSTANCE

Sagi Grimberg (4):
  nvme-fabrics: allow discovery subsystems accept a kato
  nvme: enable aen regardless of the presence of I/O queues
  nvme: add uevent variables for controller devices
  nvme: send discovery log page change events to userspace

 drivers/nvme/host/core.c    | 40 ++++++++++++++++++++++++++++++++++---
 drivers/nvme/host/fabrics.c | 12 ++---------
 2 files changed, 39 insertions(+), 13 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
