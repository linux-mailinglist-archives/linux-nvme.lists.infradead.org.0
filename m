Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935D010ED10
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 17:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygf5jp2snAUfn27Bwui3s9fUvInVK6uceyX35gWwuPI=; b=m9tPQtf6PxUk7Y
	/sPy6ASUYkNQZsGNNQkgsSHBIC1Q6jnfvDjG6CsS1cnTO1vJjq/0NSMhQW1MUnZeKnTTazcwBEwio
	vptwsKSfrza8Aru0DrGOdyXEFeSPbAe/mu7eES3RzkMzt0cfi6EEKcUXh5RAU8IkTjpnY7ywdH4Xc
	5u7a0Q5O1wemY/tks0B1q0TbzL0sLXezu18lVJpUUJfpDaFH0vdYWyHexAvv3XZL/YqhAAcNvym6Q
	Tfq2bOzEwo2KavbAXd1zSnqZHKkbheywOPqG+Q7urzjpnM6e/wKTCTj2Tpa/i2YJkgJ+caAuA9NnB
	m3UkeGN48PdZXGCaOrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iboTb-0003eJ-PA; Mon, 02 Dec 2019 16:23:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iboTX-0003dx-Di
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 16:23:04 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5347020722;
 Mon,  2 Dec 2019 16:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575303783;
 bh=1W62lKAHoX5DFVxI9rx8bmsU7wU6WRiSLV5A7U3IC5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nqNFbnCmu5370+RZw0nARYvEnKSc1g4bIs190QpCKRLz71StfxfHy0IEbjarkQYN9
 AaHn45/ZdBvgEiHWG3bY7gPr6oGqP9J2qhNuNHbFDH9CApMFKTotxuyQ5IHvEGqM5N
 W8pSmyOzV58AkwfgtUL0ENFojjTT5bpkhs9edaJw=
Date: Tue, 3 Dec 2019 01:22:56 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: Namepace identification descriptor list is optional
Message-ID: <20191202162256.GA21631@redsun51.ssa.fujisawa.hgst.com>
References: <20191202155611.21549-1-kbusch@kernel.org>
 <20191202161545.GA7434@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202161545.GA7434@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_082303_484469_3FA61822 
X-CRM114-Status: GOOD (  13.50  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, Ingo Brunberg <ingo_brunberg@web.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 05:15:45PM +0100, Christoph Hellwig wrote:
> On Tue, Dec 03, 2019 at 12:56:11AM +0900, Keith Busch wrote:
> > Despite NVM Express specification 1.3 requires a controller claiming to
> > be 1.3 or higher implement Identify CNS 03h (Namespace Identification
> > Descriptor list), the driver doesn't really need this identification in
> > order to use a namespace. The code had already documented in comments
> > that we're not to consider an error to this command.
> > 
> > Return success if the controller provided any response to an
> > namespace identification descriptors command.
> > 
> > Fixes: 538af88ea7d9de24 ("nvme: make nvme_report_ns_ids propagate error back")
> > Reported-by: Ingo Brunberg <ingo_brunberg@web.de>
> 
> Why would we ignore the error?  Do you have a buggy controller messing
> this up?

I don't have such a controller, but many apparently do. The regression
was reported here:

http://lists.infradead.org/pipermail/linux-nvme/2019-December/028223.html

And of course it's the SMI controller ...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
