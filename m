Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79866E8ADB
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 15:36:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wuv7E52nQVbMvPXYCIc3mZn3WqqPczj4R77MSwMVW+I=; b=FiZFYWn+7+Bc4j
	Ui62bMorBBSmzvvvPRt+ac8Teef2tKDo60COnyM3MBgUhxv8O2vghGTmEVo2dls/mnleqPngwIN2K
	pTPS12NuOV95bfQVJafA4dkRnJsZi6F8hYcpNCa2lNVCmkkVkT8/thZtmLRcWJnBLPYl7NmUiJzZZ
	s7NPFTRv/TqFfM2d07SNxXn78BZX3OnUY1UUORbsujvQSAgTtvEiCjVn+y0/Kg55lqkLyh0jzW3FA
	HnUlber+V+eXZcRQrL80FGibn1zpLodlOBf3pFLobKzSs5w+qUZXlI14OCrE2rFmpyZNP8k6OEOWd
	eeM8YldPbsTC7sqCErLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSbK-0004rJ-Rs; Tue, 29 Oct 2019 14:36:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSbG-0004qj-AO
 for linux-nvme@lists.infradead.org; Tue, 29 Oct 2019 14:35:59 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 475AF2087E;
 Tue, 29 Oct 2019 14:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572359758;
 bh=9j1xxCziR66NkEJP4VLio1PTvZJgxG19+IJg/HU0xpY=;
 h=Date:From:To:Cc:Subject:From;
 b=bs+Zjb0z0m3cJyEPdmqksQBDpPkoz4Zsm9K8iRnENeTj6dkBLv8QJYJ3LLOazISv4
 tsEbb4PwfL6ifpER3SGmDll4Q9tSTmr6zA7L0fr59RM75X0OuTbrJw6ZyplEvFLfen
 0WsaQLjFVHzOktnZD5PRWlTfiV7W8xTTplIlF0ZU=
Date: Tue, 29 Oct 2019 23:35:53 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.4
Message-ID: <20191029143553.GA14564@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_073558_380504_F558EB70 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Just one fabrics connection fix, and a cleanup made possible with
that fix.

The following changes since commit 88a2d41b5fc35fe330a50267be5499c9ba88644c:

  io_uring: revert "io_uring: optimize submit_and_wait API" (2019-10-22 13:14:37 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.4

for you to fetch changes up to be4516014ed8040e2e63484c005ed301607c9aeb:

  nvme-multipath: remove unused groups_only mode in ana log (2019-10-23 09:58:16 +0900)

----------------------------------------------------------------
Anton Eidelman (2):
      nvme-multipath: fix possible io hang after ctrl reconnect
      nvme-multipath: remove unused groups_only mode in ana log

 drivers/nvme/host/multipath.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
