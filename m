Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFBD5F29A
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 08:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F9jp5lhsNLIYnleGLDCZiEgaM6su7nznmV6qLDofHdY=; b=JQg
	YJe9P3WdUx4CSc/nmw9u/02MLsLrtdjCcw0M+2L6M9T0p1u1yz3PLr6bcztf4Y2bpZ/RheUDjy8tQ
	f53pkXT0agQ8YOImw5fuj6EqL/Gg2xZEKwBVn99JSSMIU4FCKYcJ5LKd1YoKHwd6W+7BNg7B+EZs9
	oyvQ2XulK50A57EDMJLWV28BzExE1LdxhzlisKrLZ0lPvozuPiLClfTZ8WSW8BEmoRIJWf0x1uZuk
	xrDhfYqXTFcIBqRiZ0N0IA80zAm5lWhn7Rcr7Cx6aWypzBAh4giO48uKnodqr8G//HP3fTyZeRL03
	pwnYBQeDvlS7V4POB23tdmBXtzXlvgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuxT-0007Yl-SZ; Thu, 04 Jul 2019 06:11:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuxK-0007XV-Am
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 06:10:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C1A5FAF55;
 Thu,  4 Jul 2019 06:10:51 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 0/2] nvme-multipath: path selection fixes
Date: Thu,  4 Jul 2019 08:10:45 +0200
Message-Id: <20190704061047.94976-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_231054_524274_3CEAE991 
X-CRM114-Status: UNSURE (   8.78  )
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

during analysing a mysterious failure due to blk_queue_split() (again)
I've found that the multipath path selection might return invalid
namespaces under certain circumstances.
This patchset fixes those scenarios.

As usual, reviews and comments are welcome.

Changes to v1:
- Use common helper nvme_path_is_disabled()

Hannes Reinecke (2):
  nvme-multipath: check singular list in vme_round_robin_path()
  nvme-multipath: do not select namespaces which are about to be removed

 drivers/nvme/host/multipath.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
