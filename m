Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173221159B2
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Dec 2019 00:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8LbAmfv2QIi8LJo1olWGoeYhoHuBbtLeA5fM0EdFoc=; b=RjzhWKIIIpqXc8
	ERchD4dzEWrezZZ63e4w9NMxTv10+8bhjaweaYW78nHQKrqJ1qwcKXANYLIjHCbsr1PsphzHM0WU0
	GmzWlDi0YP4LXeqkh/Ygw5H6SPOQqsb30p2FAzmj5quG/uNl43Igd4hQfIl7n1ijWqtUKkQmgbFRB
	SdopnL5HVX1UYiqUetBBr0LD8tv+bmdF4hPsqeE6CPyamis20cBXlQGGL1vk2tv3PDtHCEJdi56M7
	gOXH6LX9lGG/t9iFGgDCH5gTqPXaGk8LfopuR+3xLloCoJwR0upzHiM0pbQK/kG2ZxdFnBpnRqWX6
	gaB9Xvz4vos35i4Cv6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idN1n-00039R-B2; Fri, 06 Dec 2019 23:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idN1j-00039A-KT
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 23:28:48 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B67982245C;
 Fri,  6 Dec 2019 23:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575674925;
 bh=IV8Wb0SQ2NgsdmVHQmV6VwWKn8mhTCK4pAONKyt++tY=;
 h=Date:From:To:Cc:Subject:From;
 b=P7sPowQD01jgm6rCjU/n3MylAOgMGRM8guj6B0SBiQhsJNcYFXZ77hb62S4vL3cW7
 Y5oa8GiqofriDVvQsoHpQqiKEL4UHd4z1azPYj1nDjfSbOf/OJ4Nepx7KzjpP5NQ3g
 RBbkhNr97g2gfvav47JuRcrjfRo2CbI6UDOlvOnk=
Date: Sat, 7 Dec 2019 08:28:38 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme updates for-5.5
Message-ID: <20191206232838.GB2549@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_152847_695210_B343F856 
X-CRM114-Status: UNSURE (   9.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Our second pull request ahead of the 5.5-rc.

The following changes since commit be2eca94d144e3ffed565c483a58ecc76a869c98:

  Merge tag 'for-linus-5.5-1' of git://github.com/cminyard/linux-ipmi (2019-11-25 21:41:48 -0800)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme/for-5.5

for you to fetch changes up to 7e4c6b9a5d22485acf009b3c3510a370f096dd54:

  nvme/pci: Fix read queue count (2019-12-07 02:52:47 +0900)

----------------------------------------------------------------
Edmund Nadolski (1):
      nvme: else following return is not needed

Israel Rukshin (3):
      nvme-rdma: Avoid preallocating big SGL for data
      nvme-fc: Avoid preallocating big SGL for data
      nvmet-loop: Avoid preallocating big SGL for data

James Smart (3):
      nvme_fc: add module to ops template to allow module references
      nvme: add error message on mismatching controller ids
      nvme-fc: fix double-free scenarios on hw queues

Keith Busch (5):
      nvme: Namepace identification descriptor list is optional
      nvme/pci: Remove last_cq_head
      nvme/pci: Fix write and poll queue types
      nvme/pci Limit write queue sizes to possible cpus
      nvme/pci: Fix read queue count

 drivers/nvme/host/core.c        |  6 ++++++
 drivers/nvme/host/fc.c          | 40 +++++++++++++++++++++++++++++++---------
 drivers/nvme/host/nvme.h        |  6 ++++++
 drivers/nvme/host/pci.c         | 23 +++++++++--------------
 drivers/nvme/host/rdma.c        | 10 +++++-----
 drivers/nvme/target/fcloop.c    |  1 +
 drivers/nvme/target/loop.c      |  8 ++++----
 drivers/scsi/lpfc/lpfc_nvme.c   |  2 ++
 drivers/scsi/qla2xxx/qla_nvme.c |  1 +
 include/linux/nvme-fc-driver.h  |  4 ++++
 10 files changed, 69 insertions(+), 32 deletions(-)


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
