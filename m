Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1189C22C2B
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 08:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1pg/EjwHi+DI9UFzDF4iqSoqA/fIUU068g7Afw8OYHY=; b=lVR
	fkhnKKMaoNOHYyGvBwvVax6WjKcGxK13TQMKA2dAsU3aixdMd22do9n8jEdD9EOYxbvD5wMpFklmo
	rJWJHMg4dt9zcoACQSVUtn+8bC88aCncqAUhdazbmgP2rfUW9sJQQuW9EvVXTuKEivZJ6I2/2inD1
	kBjuFI8N4ROxSrUc0gcLtMz+ntErXYu1/GfnVJDuL1y35O6R/UEoLyw9M+ZTaHV6yzBieY9HVUI+L
	N0iMbjLeBBvBR18fBVTr1DJURu52V5GC43pP1JsYm3CkeqcWVeDq5EHYkDm2ObWvjy0MWGhNAZycy
	OmW0+mqS0STFs13EV8H24UBHDnF1e6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbud-0007cY-Ls; Mon, 20 May 2019 06:36:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbuS-0007Ye-Cw
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 06:36:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 916F2AC9C;
 Mon, 20 May 2019 06:36:26 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/4v3] nvme-fc: track state change failures
Date: Mon, 20 May 2019 08:36:20 +0200
Message-Id: <20190520063624.50338-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_233632_576949_17E74C4E 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

this patchset improves logging in the nvme-fc driver if expcected
state changes fail, and fixes up one case where a failed state change
might lead to a stuck controller.

Changes to v2:
- Tear down association on failure as suggested by James Smart
- Align nvme_fc_delete_association() with the exit path
Changes to v1:
- simplified accessor function as suggested by Minwoo Im
- Included suggestions from James Smart

Hannes Reinecke (4):
  nvme: separate out nvme_ctrl_state_name()
  nvme-fc: track state change failures during reconnect
  nvme-fc: fail reconnect if state change fails
  nvme-fc: align nvme_fc_delete_association() with exit path

 drivers/nvme/host/core.c | 37 ++++++++++++++++++++++---------------
 drivers/nvme/host/fc.c   | 38 +++++++++++++++++++++++++++++++-------
 drivers/nvme/host/nvme.h |  1 +
 3 files changed, 54 insertions(+), 22 deletions(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
