Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE1A674EC
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 20:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m3vC4ekV2LY3wdXTP8j6fxAP+LiIbOgVqeQnrimeBcw=; b=qQU
	IEwl+rWC281yMBW0XNUMT/G48HH33AjM/6ZprfqE2LU1iBMPlNiF5vUWuZEebNzdPa34Pk8VHk14m
	c9w/o49Te1gPRVyO1EF+6kTqSbLT4zN4tToZM4AjkcGaONlXn1psY0aDFqk2y4eefoYdojslE8ani
	Amx4ltVmuTwm27gCzqsTwwsg/S7FXiQ04YeqEUdI3QnuRtZ3Dr/72M/dBAiKDarV+PFmltBf5WjMC
	HFJG7zjZSoafr7PdGvcMUwy6LTcZqMnc1DONXfzQQe/lqy7OUA+B1YjQGILE/RD4OUGR7+yGpe5Ge
	ySk0UVPO0XpWV2cwt18QgmlSiLFn8pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzsd-0003VX-4W; Fri, 12 Jul 2019 18:02:47 +0000
Received: from [2601:647:4800:973f:10a0:43d6:25f7:7bc3]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzs5-0003D0-Cn; Fri, 12 Jul 2019 18:02:13 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/3] Support discovery log change events
Date: Fri, 12 Jul 2019 11:02:08 -0700
Message-Id: <20190712180211.26333-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
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

This works with James' latest nvme-cli patches.

Changes from v1:
- rebase to nvme-5.3
- pass none if trsvcid is uninitialized
- pass NVME_CTRL_NAME instead of NVME_CTRL_INSTANCE

Sagi Grimberg (3):
  nvme-fabrics: allow discovery subsystems accept a kato
  nvme: enable aen also for discovery controllers
  nvme: fire discovery log page change events to userspace

 drivers/nvme/host/core.c    | 39 ++++++++++++++++++++++++++++++++++---
 drivers/nvme/host/fabrics.c | 12 ++----------
 2 files changed, 38 insertions(+), 13 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
