Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E491B462A
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 05:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Msk/sP4gaUWTjQF2aTmod3oySIbs1aGtwTCWDdRwBog=; b=cXFlnXXVwUFOep
	DA5261o1C2+6AxhJNcJA8kLSxjP4ToWqIG6pjYo6rdpKfAVxpsfT3HIctc6kvE/zoAQhiDqT3igxT
	Py7Jd7CZFa1CBfRuoOa/nscgHKILToKCr0jf0pvNqvv8iVvot0f4upKmmjci0A7EiIdlxoXaR+GjD
	7W9AJyQ7yQ39LsNiuxo3X/cYhWXeSqoiLpwFHTp4UmJOlLcf2E57QkQH38ijhAmx2ZiclTJg55fCd
	JljHIizQj8wYgspaspD32nI8xRiVkBVfvv+nAzGoqIKwZTM9THciBD7pl6dyk1/rjfFnrCB9pEOeY
	T4dJ8hul/5Skd+ioANaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA4ZE-0001qD-TZ; Tue, 17 Sep 2019 03:54:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA4Z7-0001pq-Bg
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 03:54:10 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 519F220678;
 Tue, 17 Sep 2019 03:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568692446;
 bh=KkMrZXBHWzI8XV45MIYtGlr69G1Ci1pXf5kjMUjvkC0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n7oBfJuuEFItaD5Kj47v0Yz9pp3Q97+bSiyDmeorc49zIwRm9HM+nH9AT8BocZmv/
 LT4F89MuGFlqtCy79FC0lKGIzZwULhtrONuF/dqlLOyMfCoRHtNUM7nNJJZivYbAjV
 ohknIXxoB7JtYE+dw4wuqbRdZkbdJ/tmGG6p6Rn8=
Date: Mon, 16 Sep 2019 21:54:04 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Singh, Balbir" <sblbir@amazon.com>
Subject: Re: [PATCH v2 2/2] nvme/host/core: Allow overriding of wait_ready
 timeout
Message-ID: <20190917035403.GA11481@keith-busch>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <20190913233631.15352-2-sblbir@amzn.com>
 <20190916074153.GA25606@lst.de>
 <c51a4ac0b974e6efbd4f9d67adc8a70ae94ac325.camel@amazon.com>
 <20190916160117.GB1455@lst.de>
 <b9eb8038c04e3ae87d4f55ea228f8d12ef1ed42a.camel@amazon.com>
 <20190917011441.GA31163@C02WT3WMHTD6>
 <9612b87ed79704b89da559f42e3051ecb171a2ce.camel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9612b87ed79704b89da559f42e3051ecb171a2ce.camel@amazon.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_205409_424965_13F47388 
X-CRM114-Status: GOOD (  18.13  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sblbir@amzn.com" <sblbir@amzn.com>,
 "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 02:56:44AM +0000, Singh, Balbir wrote:
> On Mon, 2019-09-16 at 19:14 -0600, Keith Busch wrote:
> > On Mon, Sep 16, 2019 at 09:04:31PM +0000, Singh, Balbir wrote:
> > > I wonder if I should just call it debug_wait_ready_timeout and in the
> > > comments about the help/description call out that this is a debug
> > > feature.
> > > 
> > > What do you suggest?
> > 
> > I recommend going to the vendors that report incorrect timeout values, and
> > apparently broken controllers that can't initialize, to have them fix
> > both. If it doesn't initialize in 128 seconds, your only debugging
> > recourse is to report to the vendor anyway; overriding the timeout to
> > something under what the device reports it requires doesn't exactly
> > provide you any additional debugging information.
> > 
> 
> In my case I was doing a simple mirror (using madadm across two nvme
> devices) and when I get timeouts on one, I need to wait up to 128 seconds
> before switching over. Ideally I want this to be really fast and drop
> the slow broken controller.

So it's really for debugging at all.

The initialization code will abort if you send the thread a SIGKILL. I'm
don't think we currently provide a nice way to determine the PID you want
to signal, but I think making that known to user space and controlling
the early termination from there might be the better way to go.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
