Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226BB1E6208
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 15:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nwRcEWMRrHg9Mu7KBHiG38Sfsf4571SCjMlzQdy+nAU=; b=uf10DSs2A1WOc8
	Yqc63/MEOlwbFitZYJPzEoFsuuK3WYTCxN5vVfD9VGGtbceRpEozPScTCnRYuQ/RyqphvvElbtILp
	V9H03Dax3wnXfejXyECa/AOq6m6W5k5mRiAGmjUbBJuhYZvG6m3rj+vhmhP2bEgSJF9kwpQ3x0Ohg
	Opt0JmxGK27zoQ2Y1fIow590PM+M1GLesrm+LD2VA5QdwYnUpoEmqSW1FvI3o7T0AGER2nIQ4jwU6
	lpT0WuyVh76fxvFOXDvHYNHvU/8N+QrG7355eFHCuaJUG9F0mkF27Gvbf2OLckIk8wGfpDHHG4CPM
	mkaUKRKQB5XqAL7F+hXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIUZ-0004o1-0M; Thu, 28 May 2020 13:22:39 +0000
Received: from p4fdb1ad2.dip0.t-ipconnect.de ([79.219.26.210] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jeIUT-0004mt-Ts; Thu, 28 May 2020 13:22:34 +0000
Date: Thu, 28 May 2020 15:22:31 +0200
From: Christoph Hellwig <hch@infradead.org>
To: axboe@fb.com
Subject: [GIT PULL] nvme fix for 5.7
Message-ID: <20200528132231.GA837884@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following changes since commit b69e2ef24b7b4867f80f47e2781e95d0bacd15cb:

  nvme-pci: dma read memory barrier for completions (2020-05-12 18:02:24 +0200)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.7

for you to fetch changes up to 9210c075cef29c1f764b4252f93105103bdfb292:

  nvme-pci: avoid race between nvme_reap_pending_cqes() and nvme_poll() (2020-05-27 20:32:56 +0200)

----------------------------------------------------------------
Dongli Zhang (1):
      nvme-pci: avoid race between nvme_reap_pending_cqes() and nvme_poll()

 drivers/nvme/host/pci.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
