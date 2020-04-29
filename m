Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5B61BE220
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 17:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbGR+b7/YZCX+24KXiVpBjXS7FSuIibQCaH2wein5do=; b=BbfY+zv7sj0c8s
	eQH4nQrv+D660yFQZ6rEjQkGtTH357bG1y1bOsXlfmz/J5E9yUs5jjbpNxO+cp8YqXBbj2ma/Y7VE
	olyjpfjOv47q2HqOeO0WcQ6XZ/fPjCTwTyVcE56LPpShS1vWeXEKy7uIBrcOrH4CNb9xTYE+l+tYM
	Sls7PQ/Yha6ZCMGM+w3fgvNLaUieHsHHQH4eXZIyaMVX5mHU6hzk2kVJNg1xgwry+rVxXWKQ1t0y2
	SLAzhxAug59ocmvpXRB4oJ1v09BCnhbY+TkBqllTCEyC8xCkYgF/4pviVXm91QHZhHvOrxCLcCPga
	YkkiqEW4/Ivh7r9TluUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToMU-0003cr-Lg; Wed, 29 Apr 2020 15:10:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToMP-0003cC-FL
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 15:10:55 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 164D72074A;
 Wed, 29 Apr 2020 15:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588173051;
 bh=8A+8vDkMP+/JIF1TdfhS0LnIA8WKy9bVLiwsTDkUSTI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c+2m4Dap45V77moeWAWH+2CYGA+rcZ2K/2OztHOy+BvupHtxBxuOcFzc0f716mlq8
 SRHd7Vuz5ZNEnYuu6ClzWTH5I0Z9AfqndxDyjDcbiHIpD9ASe9sglx4azZrWB6rq68
 aMDBsDpM1DlYf7FagC6/0AkN9e5GAbjA4COdzq3k=
Date: Thu, 30 Apr 2020 00:10:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Williams, Dan J" <dan.j.williams@intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
Message-ID: <20200429151046.GA6222@redsun51.ssa.fujisawa.hgst.com>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
 <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
 <20200428142247.GB5439@lst.de>
 <de2d78556fcb10f97364201256ac8f342a58eb75.camel@linux.intel.com>
 <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_081053_553574_7281FA0A 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "david.e.box@linux.intel.com" <david.e.box@linux.intel.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "hch@lst.de" <hch@lst.de>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 05:20:09AM +0000, Williams, Dan J wrote:
> On Tue, 2020-04-28 at 08:27 -0700, David E. Box wrote:
> > On Tue, 2020-04-28 at 16:22 +0200, Christoph Hellwig wrote:
> > > On Tue, Apr 28, 2020 at 07:09:59AM -0700, David E. Box wrote:
> > > > > I'm not sure who came up with the idea to put this into ACPI,
> > > > > but
> > > > > it
> > > > > belongs into NVMe.  Please talk to the NVMe technical working
> > > > > group
> > > > > instead of trying to overrules them in an unrelated group that
> > > > > doesn't
> > > > > apply to all of PCIe.
> > > > 
> > > > Agreed that this is not ideal since it does not apply to all of
> > > > PCIe.
> > > > But as the property already exists on shipping systems, we need
> > > > to
> > > > be
> > > > able to read it in the NVMe driver and the patch is consitent
> > > > with
> > > > the
> > > > way properties under PCI ports are read.
> > > 
> > > The point is that it is not the BIOSes job do decide how Linux does
> > > power management.  For example D3 has really horrible entry and
> > > exit
> > > latencies in many cases, and will lead to higher power usage.
> > 
> > The platform can know which pm policies will save the most power. But
> > since the solution doesn't apply to all PCIe devices (despite BIOS
> > specifying it that way) I'll withdraw this patch. Thanks.
> 
> Wait, why withdraw? In this case the platform is unfortunately
> preventing the standard driver from making a proper determination. So
> while I agree that it's not the BIOSes job, when the platform actively
> prevents proper operation due to some ill conceived non-standard
> platform property what is Linux left to do on these systems?
> 
> The *patch* is not trying to overrule NVME, and the best I can say is
> that the Intel Linux team was not in the loop when this was being
> decided between the platform BIOS implemenation and  whomever  thought
> they could just publish random ACPI properties that impacted NVME
> operation [1].
> 
> So now David is trying to get these platform unbroken because they are
> already shipping with this b0rkage.

Rather than quirking all these cases, which I get the feeling there
are many more than we've currently got in our quirk list, perhaps it'd
be simpler to default to the simple suspend. AFAIK, the simple suspend
works for all platforms, though it may not realize the best power savings
and/or exit latency.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
