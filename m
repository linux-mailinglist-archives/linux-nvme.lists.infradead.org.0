Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE4F9A2DE
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BEra5N6d7ZKtXZbX5FTXLq4zL05jTHJFrwdDo4pKY5E=; b=JiF
	dNIznyZBoiSKZQXdj4EXv0IqBHp9NFkx3YpvrcFXLzcDb7w720cIgqaU0Terj5TdJWOxcmfyuA3Y5
	qcnzAJbmSkHO815VdoZJREwaJ2AfzORJMAZYST5ydbyjdvPWo/JmUXOiX7AtwJO+yZrgh+He8Rvi6
	X9s7c7Hq/fymICZvvfKhP1gfds/EoTQa5IZ2NGnTRJZEwywF2TzsjFPJDcyGnIu9mhOtwAtHoIy/B
	KT8MHHOnjdc5iiS9kML6Ho+K3zq1ULDB5+TelRqeLZW33/HqMDykt9EuKi9r5abNm0l22VtkgZ+dN
	E9u5SGGtz/mKFqJ76W3IPvjFtkoxzKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vZC-0002HO-16; Thu, 22 Aug 2019 22:28:26 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vZ6-0002Gi-1O; Thu, 22 Aug 2019 22:28:20 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 0/4] Support discovery log change events
Date: Thu, 22 Aug 2019 15:28:14 -0700
Message-Id: <20190822222818.9845-1-sagi@grimberg.me>
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

This works with latest nvme-cli master with the discovery aen code.

Changes from v2:
- added patch to always enable aen, regardless of the number of I/O queues
- fixes line over 80 characters

Changes from v1:
- rebase to nvme-5.3
- pass none if trsvcid is uninitialized
- pass NVME_CTRL_NAME instead of NVME_CTRL_INSTANCE

Sagi Grimberg (4):
  nvme-fabrics: allow discovery subsystems accept a kato
  nvme: enable aen regardles of the presence of I/O queues
  nvme: enable aen also for discovery controllers
  nvme: fire discovery log page change events to userspace

 drivers/nvme/host/core.c    | 36 +++++++++++++++++++++++++++++++++---
 drivers/nvme/host/fabrics.c | 12 ++----------
 2 files changed, 35 insertions(+), 13 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
