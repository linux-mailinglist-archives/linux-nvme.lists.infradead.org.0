Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB7AA95B3
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 00:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PGrVGAt9f1iauxyKrlH+MJb5eApTmbLRwqBtMPA7vnY=; b=GDe
	cksIU/9DULcmwXZshzwYqPJeuP9oMO7QNDiuGFngMcLZLWtxixXwsyVQUx41XEXLZEETymXpuponR
	xxjNH4QiZA5fcyyLY/MU0XxK0Bph6L4Bp8hgH1dIZbQEjs8Na6/81bHBGkOBnfSaXm70InRSQ0l/o
	UimBex5kXYpD1pJHsJQ7wQmqfdDdGeRK+ELejQdy5dSkuSD293l0KDQtGWpBnd+QxFjB8FErPiY3h
	q1/VVU0Hj8QQnjg8kyFFA7Nmd/nMZVvsgx6YKAUDerKIYxryMiSiyyKgE6kzYzWHMHfPurjntYoyu
	M7JOopgmtCtvcKDfQ7U3E95OVYA5A6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dK2-0006Pm-Od; Wed, 04 Sep 2019 22:00:15 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dJl-0005pf-Ga; Wed, 04 Sep 2019 21:59:58 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 0/4] Support discovery log change events
Date: Wed,  4 Sep 2019 14:59:49 -0700
Message-Id: <20190904215954.15423-1-sagi@grimberg.me>
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
