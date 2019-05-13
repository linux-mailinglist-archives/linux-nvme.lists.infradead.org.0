Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0FE1B6FB
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXDueBbI64l0BQmEOWmw/Zvl1nl1wGNUFoJJSzg0GbM=; b=tVYmh4dVzDD2Xo
	d/fBeQNXeX7taPIQtLplCkZfXl3/QNPvBwfSAk88Eu6byeMQClvFTOvm/slj9pu9uyKObUHW9cHL0
	bTLjW/kFbIujv6kHPdQlS3bQOmfJkp6/CW+PSYWO5wx1oZ0YZ8nc/a0Df1s2g+EG/Eh4eluoDStnC
	IwrcOvPv96T8qsNgdaNi/v/aG1W2vl4IykGddSNAEr61ybXiRc5Zzi209HiKIQ6zVj+EaqV6o67zX
	lxt5a9oXB4kesL/i6V4hmNI8ZVXgV4gqXkD+3Rn2t4xViRKdJEy+Qjp4pTDN9zq8ROCuq/810rVOL
	70EH9EnRWV73C5Jfa7og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAxF-0002at-Mr; Mon, 13 May 2019 13:25:21 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hQAxC-0002aj-3V; Mon, 13 May 2019 13:25:18 +0000
Date: Mon, 13 May 2019 06:25:17 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Message-ID: <20190513132517.GB2661@infradead.org>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
 <20190510214255.GA11723@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510214255.GA11723@localhost.localdomain>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 03:42:56PM -0600, Keith Busch wrote:
> On Wed, May 08, 2019 at 11:36:31AM -0700, Chaitanya Kulkarni wrote:
> > This patch-series adds a filter to allow only certain user commands.                                   
> > Right now we use this infrastructure to prevent the user get log page
> > commands where RAE bit is cleared. We only allow get log pages to be
> > read with RAE == 0 where we issue the uevent to the userspace so that
> > user can clear the log pages.
> > 
> > Here we white list the log pages which are only allowed when RAE == 0.
> > We also allow Vendor Specific log pages irrespective of the RAE.
> 
> I'm generally against the passthrough interface examining commands. It
> is not for the driver to decide what an admin can't send to their devices.

Well, the whole AER model is based around log pages clearing the
event, so if userspace clears these events we are in pretty deep
trouble.  Would you prefer just setting the RAE bit unconditionally
for these log pages?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
