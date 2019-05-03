Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE8F12F56
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 15:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tys6ztuDH/iBKqafm+H530vDl7EggeS6SChWUEMmo3I=; b=Bb7
	OME2+kj1+O/f8IzT7hilgK6zZGu9FdK/kKpcVlBNB6uAiFhGlMlBJEjgztgixEmIV9FghS+qvKn1C
	/ziuZifRJRHo1hpXHvNyEzD36BZWcykZpGZArDDz5WToxfYHxw9T076C5w+XflfbnivCV/YQeeaDb
	06waz8u3BmJE1oFmfgquayY2m1yrROyxXSENymWgN+0KqzMb1qQFJgV98q/1Qh9CDlzJ5BoySkCaZ
	27yvr0vh0c3wf+an/tBbnGB9RMNSlSGAryTuVz5APSa4F6zvckrnDD7A9ctoPqMa+9BkxO2/MgRg5
	1nIAxrxBKty5JXSxAQIyI/jX7+FMcTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYNp-0005Rj-8q; Fri, 03 May 2019 13:37:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYNj-0005QZ-Lp
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 13:37:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C660AAC11;
 Fri,  3 May 2019 13:37:41 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv3 0/2] nvme: validate CNTLID
Date: Fri,  3 May 2019 15:37:34 +0200
Message-Id: <20190503133736.111201-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_063744_002590_FA9FF0E6 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

here are two patches to validate correct CNTLID information.
A controller might violate the constrain the each CNTLID has to
be unique within a subsystem, which then would cause the host
to crash.
So these patches prevent this situation by validate the CNTLID
and not use the cntlid as part of the device name.

As usual, comments and reviews are welcome.

Changes to v1:
- split cntlid validation into a separate helper and moved to
  nvme_init_subsystem()

Changes to v2:
- move nvme_validate_cntlid() into critical section when adding
  nvme controller to the list as suggested by hch

Hannes Reinecke (2):
  nvme-multipath: avoid crash on invalid subsystem cntlid enumeration
  nvme: validate cntlid during controller initialisation

 drivers/nvme/host/core.c      | 32 ++++++++++++++++++++++++++++++--
 drivers/nvme/host/multipath.c |  2 +-
 2 files changed, 31 insertions(+), 3 deletions(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
