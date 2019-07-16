Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0978A6A60A
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 11:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ii4hpXD/nzXQZI9d577OyCLHfsQ3gijFYmiXn4HgsVM=; b=Xte8BAXor1qBX0
	Y+etNS/6ZNCmntbu0scgFVv+vJIACwoEPrzYepfP5fPQEJW7C5VKiMOcuxBb8pPDZH7eBEwYhHXBv
	IV3l1v+7qgVC3Ony7Kjb05jWCiHO5ir1AXeLr+cxWs86BIkFAHApwtzg7y+1QiKlhrzch+jI/ekdM
	7s+yyGHNkCwLDG1a94G08ohMt6FLRAbdS+GM3WcqwIwdc3VMj8dPch/B+IHz1TbeG56Mee/JA/v1o
	2is2xNfDpYjcwoeiBMxr7ztRgXteUiMwk/cqwvNZ4yhDXm+afsGym9iEdZG2hmV/JuCl1dI/4HwMu
	SKSgevB3sTRrXLpXUJwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKEj-0003uq-LL; Tue, 16 Jul 2019 09:59:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKEZ-0003uN-6T
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 09:58:56 +0000
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5101320665;
 Tue, 16 Jul 2019 09:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563271134;
 bh=v9XvJy/c5tA1mo1RZ6zKxrNRk0gXQ2W9VKS7ymtUeAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1pSSrO14fBnDUIHsEVBL0tg15WEbi13MiQIuXHj7ORLbc1T02p96f8tARmfAhvc52
 IU3RwOwEXTtlflLEUVjo9sXc+gv0d5pmiEIE6EKxM8UVy1uO8svkJIRP6o2rG74DaD
 0RwhIcKMD25ByC0N7iP4EM4uKIWF8uw/zkmdndW4=
Date: Tue, 16 Jul 2019 18:58:52 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Message-ID: <20190716095852.GA25228@kroah.com>
References: <20190715091913.15726-1-selvin.xavier@broadcom.com>
 <20190716071030.GH10130@mtr-leonro.mtl.com>
 <20190716071644.GA21780@kroah.com>
 <20190716084126.GJ10130@mtr-leonro.mtl.com>
 <20190716090917.GA11964@kroah.com>
 <20190716095007.GK10130@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716095007.GK10130@mtr-leonro.mtl.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_025855_279943_CF1565E9 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Selvin Xavier <selvin.xavier@broadcom.com>,
 Parav Pandit <parav@mellanox.com>, linux-rdma@vger.kernel.org,
 stable@vger.kernel.org, jgg@ziepe.ca, dledford@redhat.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:50:07PM +0300, Leon Romanovsky wrote:
> On Tue, Jul 16, 2019 at 06:09:17PM +0900, Greg KH wrote:
> > On Tue, Jul 16, 2019 at 11:41:26AM +0300, Leon Romanovsky wrote:
> > > On Tue, Jul 16, 2019 at 04:16:44PM +0900, Greg KH wrote:
> > > > On Tue, Jul 16, 2019 at 10:10:30AM +0300, Leon Romanovsky wrote:
> > > > > On Mon, Jul 15, 2019 at 05:19:13AM -0400, Selvin Xavier wrote:
> > > > > > GID entry consist of GID, vlan, netdev and smac.
> > > > > > Extend GID duplicate check companions to consider vlan_id as well
> > > > > > to support IPv6 VLAN based link local addresses. Introduce
> > > > > > a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.
> > > > > >
> > > > > > The issue is discussed in the following thread
> > > > > > https://www.spinics.net/lists/linux-rdma/msg81594.html
> > > > > >
> > > > > > Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> > > > > > Cc: <stable@vger.kernel.org> # v5.2+
> > > > > > Reported-by: Yi Zhang <yi.zhang@redhat.com>
> > > > >
> > > > > > Co-developed-by: Parav Pandit <parav@mellanox.com>
> > > > > > Signed-off-by: Parav Pandit <parav@mellanox.com>
> > > > >
> > > > > I never understood why bad habits are so stinky.
> > > > >
> > > > > Can you please explain us what does it mean Co-developed-by and
> > > > > Signed-off-by of the same person in the same patch?
> > > >
> > > > See Documentation/process/submitting-patches.rst for what that tag
> > > > means.
> > >
> > > Read it, it doesn't help me to understand if I should now add
> > > Co-developed-by tag to most of RDMA Mellanox upstreamed patches,
> > > which already care my Signed-off-by, because I'm changing and fixing
> > > them many times.
> >
> > It depends, it's your call, if you think you deserve the credit, sure,
> > add it.  If you are just doing basic "review" where you tell people what
> > needs to be done better, that's probably not what you need to do here.
> 
> I'll probably not use this and not because I don't deserve credit, but
> because it looks ridiculously to me to see my name repeated N times for
> my work.

That's up to you, and your fellow co-authors to decide.

> > One example, where I just added myself to a patch happened last week
> > where the developer submitted one solution, I took it and rewrote the
> > whole implementation (from raw kobjects to using the driver model).  The
> > original author got the "From:" and I got a Co-developed-by line.
> 
> In old days, we simply changed Author field if changes were above some
> arbitrary threshold (usually half of the original patch) and added SOB.
> 
> Why wasn't this approach enough?

Because we have had some patches where it really was a work of multiple
people and it is good to show the correct authorship wherever possible.

If you look, this tag was added based on a document in the kernel tree
that Thomas and I worked on together and we both wanted the "blame" for
it :)

> > Does that help?
> 
> Yes, and it makes me wonder when we will need to hire compliance officer
> who will review all our upstreamed patches to comply with more and more
> bureaucracy.

Oh come on, this is about the ability to give people credit where they
did not have it before.  It's not about being "compliant", it's about
being "nice" and "fair".  Something that no one should complain about.

There is no one forcing you to add this tag to patches with your name on
it if you do not want to.  But for those who work on changes together,
it is important to give them that type of credit.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
