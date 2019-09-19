Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD975B8379
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 23:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=og8sv6BhZuZQZ1rSoYMo7xLPdin7oWVg8Yu137uelMw=; b=NG09GjeDJCVKNs
	DhvTIvt7Y3Km19B4pJx4Nv0sFlJ/75g1p8fCY1mjsRF05DcIe2ZnfLHkoyHiyupN95zgOOBT1a6Zs
	woKdonVniEtejE8y7wbJyWXMOoESVPfsgyhDRluUDz+Iow2TJET5SuWEztLmWkUYi6Prri3HDtHlH
	iMseYLYqdptDhCiM+oJ/hEWpkAVyLSknLtbFosf9I9ejV1EtZIOocmB1Z1c6s8LB5tGs1x06OQ7wt
	P+lqKn9882F/SBeUgDy7uQaQtnr0UUi8af0eahK9xrrF5/VVy+2sQ+DfFaijyiBfAT0lc4BDCFNNa
	IlQVmlEfUnssdIylu3VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB44i-0002EF-5F; Thu, 19 Sep 2019 21:34:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB44U-0002D3-KC
 for linux-nvme@lists.infradead.org; Thu, 19 Sep 2019 21:34:40 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6566F21907;
 Thu, 19 Sep 2019 21:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568928878;
 bh=S2pRwgViROl4ErAQzu6NsoLksayWhEiB8HCj0diCv8s=;
 h=From:To:Cc:Subject:Date:From;
 b=O6xKz97eiui4kYuvR7HekwiSycIchLeLYMDpImCuFaNglO/OHstjhNkgVMdDSi7fU
 oIYB+7K/bXHUhISzSeGHEiMZNuN3S9EGyB9Eb2Kj665hgesQCBfgdISMaJMPPpwqyI
 x8pfrQaNj3K4mHoGOQ17EXm7JvyI2aeU2E6BclCE=
From: kbusch@kernel.org
To: linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 0/6] nvme: double reset prevention
Date: Fri, 20 Sep 2019 06:34:25 +0900
Message-Id: <20190919213431.7864-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_143438_687131_A27686B5 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

The main objective of this series is to prevent double resets. This sort
of thing is known to have happened if a timeout occurs at roughly the same time
as a user intiated reset, like through through PCIe's FLR.

The double reset could happen because the controller disabling had been
occuring outside of the RESETTING state when we can't schedule the
reset_work, which is to occur later. When another reset schedules in
between these events, the controller ends up in the wrong state.

The end result of this series is simply to block subsequent resets by
initializing the controller state to RESETTING without actually
scheduling the reset_work. The first patches in this series are simply

v1 -> v2:

  Merged up to current linux-block for-5.4/post

  Changelog updates

  Patch reordering for correct chronological sequence

  Fixed state handling for f/w activation failures

  Included a review from James Smart on the patches that weren't changed

Keith Busch (6):
  nvme-pci: Free tagset if no IO queues
  nvme: Remove ADMIN_ONLY state
  nvme: Restart request timers in resetting state
  nvme: Introduce nvme_reset_continue
  nvme: Prevent resets during paused states
  nvme: Wait for reset state when required

 drivers/nvme/host/core.c    | 80 ++++++++++++++++++++++++-------------
 drivers/nvme/host/fabrics.h |  3 +-
 drivers/nvme/host/nvme.h    |  6 ++-
 drivers/nvme/host/pci.c     | 78 +++++++++++++++++++++---------------
 drivers/nvme/host/rdma.c    |  8 ++++
 drivers/nvme/host/tcp.c     |  8 ++++
 6 files changed, 121 insertions(+), 62 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
