Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120CD17BD9C
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 14:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rinjsirp96FH4l0okh5dN/Imr2g3PpAl1VzdfVGhezs=; b=VO1
	s6auZxachCjRyQIgrPy08veuemzAgH3sk3jKnuCck/wjApbeWQHMaotxRGQkHZEGCa9u7y7NYDchR
	hNgXpMa9Ci7dpRKnQ6mpCOYNeG2N0sDZEHXuuaJ+XKiw3bZPfy8Udk7ZLmItzsgCJzbWofP+bQb1J
	iYAC8roneo69FF+a5K1bfwxDFNQoQ51eEjJKyW5PhfKPtlyItVQRctcbq06z4G+bMS3mk5TOABtc9
	PG5BJHX58nks87DLzzPmPRYSSSgxE0N/047qgvXp/evUQFGlgkbdeXTXcQ+w53Jt/IN2j5B0+zau3
	M6gFLl37UtPtPzL1tfrBikPg04hbSGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACfE-0008HQ-1A; Fri, 06 Mar 2020 13:05:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACeq-0008EP-Lr
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 13:04:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2FF6BB1F7;
 Fri,  6 Mar 2020 13:04:49 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/3] nvmet/fcloop fixes
Date: Fri,  6 Mar 2020 14:04:37 +0100
Message-Id: <20200306130440.16864-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_050452_867166_2835899A 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Keith Busch <keith.busch@wdc.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi James,

here are some fixes to be applied on top of your recent patchset
for nvme-fc (or even to be included with it). With these fixes my fcloop
blktest runs without issues and I can even unload the fcloop
module afterwards.

As usual, comments and reviews are welcome.

Hannes Reinecke (3):
  nvmet/fc: Sanitize tgtport reference counting for LS requests
  nvme/fcloop: short-circuit LS requests if no association is present
  nvme/fcloop: flush workqueue before calling
    nvme_fc_unregister_remoteport()

 drivers/nvme/target/fc.c     | 23 ++++++++++++-----------
 drivers/nvme/target/fcloop.c | 38 ++++++++++----------------------------
 2 files changed, 22 insertions(+), 39 deletions(-)

-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
