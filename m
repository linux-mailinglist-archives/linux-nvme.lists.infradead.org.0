Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DED51361F5
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 21:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UevrUJf0vwRrfJEJjdYhbuCTOQ+J8S4b+ddrrijVyII=; b=B/oFO7rPNm5PL3
	rfyF7Ejke5RuunOi2fdfzmPGc4wt1xfhh3dy0Coaw6CBrBo3kl6gCwvq7w0O6CWmb8kD6aEk8aXZm
	JC8szzhIFWtGtqW+kBO7Q/J5fFuZdhzTGjebK5sSigPGgjE+bBUgHryGKeWeVfq/GdJN1i9GGOOnw
	jVALjAYSIIPCKdh7Ob2M3G45deXDuL7HrUfbSFHuwcq4WPN6P86366c+hLohkSl/YHW2G+mUEe1XF
	EyDpIiBLC5tk3+J9ZgfJZljO/CZDou+sIozh57j50NqGN3AaCruVCZmJQi7bcz4PMWKQitw40LmVt
	ChxEWtCOedLi5olJAv0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipeky-0000qw-BZ; Thu, 09 Jan 2020 20:50:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipeku-0000pt-QM
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 20:50:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9DDF20721;
 Thu,  9 Jan 2020 20:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578603011;
 bh=ARakHJWebRxrWmk3CRyh6lER7aPfQyggbZPXfFW3bQY=;
 h=Date:From:To:Cc:Subject:From;
 b=0Fh1rUYPTKJJHTRJhhbl5gwI0TLibXUIpcvZsY6/VB62iBrFEMF9MjDASp38oNpnb
 lX53M+nFumAHWazDbF2rJABUVJyhv75GxOl7Bgz0FTd0lY3mxfcyuDxVIK3g2BVqv+
 UpkP/xU9PtIwRDUAva1xcLGMVr9G333hNg/t9JxA=
Date: Fri, 10 Jan 2020 05:50:07 +0900
From: Keith Busch <kbusch@kernel.org>
To: axboe@kernel.dk
Subject: [GIT PULL] nvme fixes for 5.5-rc
Message-ID: <20200109205007.GA17148@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_125012_879674_8E3B17DD 
X-CRM114-Status: UNSURE (   8.51  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

We've recovered from the holidays and collecting fixes again. Here are
two that have been pending for some time. Please pull.

The following changes since commit 802ca0381befe29ba0783e08e3369f9e87ef9d0d:

  fs: move guard_bio_eod() after bio_set_op_attrs (2020-01-05 17:45:33 -0700)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.5-rc

for you to fetch changes up to c2740eb04cd0c713c71727245f52b5cc140a16fb:

  nvmet: fix per feat data len for get_feature (2020-01-09 07:54:50 -0800)

----------------------------------------------------------------
Amit Engel (1):
      nvmet: fix per feat data len for get_feature

Keith Busch (1):
      nvme: Translate more status codes to blk_status_t

 drivers/nvme/host/core.c        |  2 ++
 drivers/nvme/target/admin-cmd.c | 12 +++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
