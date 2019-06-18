Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D5A49E13
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 12:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qs5GuYjazAJCZyZBy1uWF5nqjwvPCil7T+V6HneMUyE=; b=iSW
	1ASPv2AVG2jXjheeQuXtj9jIRowFaXRjQXO6VaJI5Sc2DpP+EbMPRrfDt3Ifd2GuFUK89Vcq0txer
	+JB3icQb7q8tLhmOEKFbhzm0oXtQcC/wZLiRXG2phLtHPF9Nrh8WhIkMF4WT3i0fjF2JxJlEjr20d
	WnMO7pcZFZ2r/GoUPkq5UGtaibMVEC1JCz+e2u3AOuf41QSe16sqABQESOcAGFrxkYX/lVhdiTX9v
	ifruTmtYZzdO2RiVin1GswejXFpAK8HPXv2G3ctszqmmKHZxk2ZAmAoUWIfT31MpEOq99UPFkgH3E
	O+iIgKRIF8sazDuECJMV4MKFLhWTH/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdB4V-0002BJ-2r; Tue, 18 Jun 2019 10:10:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdB4O-0002AD-IT
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 10:10:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2E18FAE82;
 Tue, 18 Jun 2019 10:10:27 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/2] nvme: flush rescan worker before resetting
Date: Tue, 18 Jun 2019 12:10:23 +0200
Message-Id: <20190618101025.78840-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_031029_734378_0E16471A 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

There is a race condition between namespace rescanning and controller
reset; during controller reset all namespaces are quiesed vie
nams_stop_ctrl(), and after reset all namespaces are unquiesced
again.
When namespace scanning was active by the time controller reset was
triggered the rescan code will call nvme_ns_remove(), which then will
cause a kernel crash in nvme_start_ctrl() as it'll trip over
uninitialized namespaces.

To fix this two patches are required; the first one will skip the call
to nvme_ns_remove() if the controller is not live, and the second one
will flush the rescan worker before resetting to avoid this situation
from occurring.

As usual, comments and reviews are welcome.

Hannes Reinecke (2):
  nvme: Do not remove namespaces during reset
  nvme: flush scan_work when resetting controller

 drivers/nvme/host/core.c | 21 +++++++++++++++++++++
 drivers/nvme/host/fc.c   |  1 +
 drivers/nvme/host/rdma.c |  1 +
 drivers/nvme/host/tcp.c  |  1 +
 4 files changed, 24 insertions(+)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
