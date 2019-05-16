Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CEB20168
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 10:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cUKSB5vBYxpqDMPuaIqprDzCQyMPnKyAG1lAY6UmmfY=; b=gxK
	q0EagMliYMq/qKEcbcZFBUbPJ0/Q/lpbsGbdu8OPDQLmLYp0kjHJ6bsZdxnpzGqj1AMyZsTOjgRju
	nOOp+gcAiJuEviPVXhOoh3jw3Rb99WDOatzWq1TKQfFt0R294VBSML1iR8r0L4I6YGO3dsGxYNzqc
	BRv5JgavSV9vMqXWSKUvzczoZH8XbwJmuXz+t1lxPFUeV2njtFkMlJ1XX4x4J2eu4Sf1HVPV97ZIw
	w6iXsXFv+mGbnhb+dwrHBiMNQcWx71k2jLomi6d6kalFEp4yQJV1ULCRSzuUNPTXTipsBaG3tD0Zl
	2wlFXK2HsRppFS2EcUVsQ8UGKenhSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBth-00037M-0C; Thu, 16 May 2019 08:37:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBtb-00035m-0i
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 08:37:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 15699AE2C;
 Thu, 16 May 2019 08:37:45 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/3] nvme-fc: track state change failures
Date: Thu, 16 May 2019 10:37:37 +0200
Message-Id: <20190516083740.95894-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013747_208064_C6557CC5 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

this patchset improves logging in the nvme-fc driver if expcected
state changes fail, and fixes up one case where a failed state change
might lead to a stuck controller.

Hannes Reinecke (3):
  nvme: separate out nvme_ctrl_state_name()
  nvme-fc: track state change failures during reconnect
  nvme-fc: fail reconnect if state change fails

 drivers/nvme/host/core.c | 36 +++++++++++++++++++++++-------------
 drivers/nvme/host/fc.c   | 23 +++++++++++++++++------
 drivers/nvme/host/nvme.h |  1 +
 3 files changed, 41 insertions(+), 19 deletions(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
