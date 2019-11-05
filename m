Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FD6F098B
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 23:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z6ev64i+laKFueMbF9shL8CFKPoMXxH1JGDumSNdOlA=; b=G/hBlUIMPJOq5/
	eQG1Un7ExLOlumf/AeUUSMojdGC0gZLyecVcgKJFVjhmCP/dAntNTEV59TBxJgs7d2dgARGS81ufG
	mBtgwAlbkui3KDP/tFn6sVOnTfmXRk4WIAfO7gRPYQJjWM4hAfkDG1Kj/lUi96KbK7YKhb+gX8eAR
	yIb8BCAzihj8RtI15wws07PgO4VVWNdZZVqFm3wuZMtwTDzAOODiVLNusmmqvKVtl4WbcLeLg9mTA
	lMtd5gvyXH6tG6ByETbFvC9CcN/uvt+Mni4DXaVh8PSrIwcfG2YjJ88nCnQmmcFdh4XV2q0haAu1O
	fQEx4KumLBSzQsYEcq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7MF-0008Py-RC; Tue, 05 Nov 2019 22:31:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7MA-0008PO-2f
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 22:31:23 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6E02204EC;
 Tue,  5 Nov 2019 22:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572993080;
 bh=MF1loyVSRhT6EiXY82+Ak3OOa1/5Hsy6LLv2oZBVDE0=;
 h=Date:From:To:Cc:Subject:From;
 b=IC/6PabmrCkKl7WWVPmtGgaiAWSmqFhPPDq4xZNHSOHQ0gAL1xnmgyi2863zSNpA7
 vOx2TJnEKGcq6YoDHQbEBaPxVm3ObSsJHImBZIMlRe7vBf7235XkdHVUeLG/1+YJR0
 yh5K/edmk2DwkB0z0d4j4hHCeKo8N+to8w6+NDDs=
Date: Wed, 6 Nov 2019 07:31:17 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme-5.4rc7
Message-ID: <20191105223117.GB890@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_143122_140561_3095948B 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

We have a few late nvme fixes for a couple device removal kernel crashes,
and a compat fix for a new ioctl introduced during this merge window.

The following changes since commit 41591a51f00d2dc7bb9dc6e9bedf56c5cf6f2392:

  iocost: don't nest spin_lock_irq in ioc_weight_write() (2019-10-31 11:40:57 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.4-rc7

for you to fetch changes up to 0d6eeb1fd625272bd60d25f2d5e116cf582fc7dc:

  nvme: change nvme_passthru_cmd64 to explicitly mark rsvd (2019-11-06 06:17:38 +0900)

----------------------------------------------------------------
Anton Eidelman (1):
      nvme-multipath: fix crash in nvme_mpath_clear_ctrl_paths

Charles Machalow (1):
      nvme: change nvme_passthru_cmd64 to explicitly mark rsvd

Max Gurtovoy (1):
      nvme-rdma: fix a segmentation fault during module unload

 drivers/nvme/host/multipath.c   | 2 ++
 drivers/nvme/host/rdma.c        | 8 ++++++++
 include/uapi/linux/nvme_ioctl.h | 1 +
 3 files changed, 11 insertions(+)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
