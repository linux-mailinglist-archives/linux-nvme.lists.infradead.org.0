Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CA21C8D46
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 16:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VNTYU5s2t01IKC99gyw3FrRSM2Ku3FEd7JIqdKeYJN8=; b=imj
	nGK+POasn8W+JCq6xOp3TKIpB20OmhDd5zoEWvuPfX763XIcCONwcfHkJzPcw0w2T9kRTbpzlbv84
	WnkwMAXzNzygelxv8VfZ23ZotLUaqtPNIVUdlF53pSp0PX/5Rh3TUYoPqSqY/t/C+0nLeIB1M+1Gx
	wmLx4qwfHAd+y1e2cEat0vV9yzlG55kDkRacTua3vKlhWobT+/dTKbl8XVGbRVB6K4/G6V0opzkfH
	nXRHYLCIAvA75Xe4vwGoPdqYQMmLRkRJNbMmbxU28winnYTE7Y2MP7TmffhfzN/XZVpDqDRjn2Spb
	WLb1bWOVkHEzk1dMl3YVCYXoYXFuWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh7N-0007J0-3d; Thu, 07 May 2020 14:03:17 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh6k-0006oU-Hv
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 14:02:42 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 yorayz@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 7 May 2020 17:02:26 +0300
Received: from dev-l-vrt-071.mtl.labs.mlnx (dev-l-vrt-071.mtl.labs.mlnx
 [10.134.71.1])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 047E2QSS022772;
 Thu, 7 May 2020 17:02:26 +0300
From: Yoray Zack <yorayz@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/3] Add nvme-tcp hpda support
Date: Thu,  7 May 2020 17:02:01 +0300
Message-Id: <1588860124-40089-1-git-send-email-yorayz@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070239_170872_CB09C931 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Yoray Zack <yorayz@mellanox.com>, Boris Pismenny <borisp@mellanox.com>,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Given the padding defined by user-space, the host driver will
send the requested hpda to the target which will support that
on nvme/tcp c2h capsules. The host will parse the capsules
according to the padding.

The request hpda is 0's based value in units of dwords in the range 0  to 31
(e.g., values 0, 1, and 2 correspond to 4 byte, 8 byte, and 12 byte alignment)).

Yoray Zack (3):
  nvme-fabrics: Add support for padding alignment (pda) option on tcp
  nvme-tcp: Add target padding support
  nvme-tcp: Add Host hpda support

 drivers/nvme/host/fabrics.c | 14 ++++++++++++++
 drivers/nvme/host/fabrics.h |  4 ++++
 drivers/nvme/host/tcp.c     | 21 +++++++++++++++++++--
 drivers/nvme/target/tcp.c   | 24 ++++++++++++++----------
 4 files changed, 51 insertions(+), 12 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
