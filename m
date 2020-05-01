Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9421A1C1298
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 15:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWyXyJb8xskUoS28a69TzXq+SPQlQTeJzr/tdQBxQkM=; b=YIGx7lRIgwY62s
	UbYPS5pKq9h1uODxYmn44paockVo3u1EQIwfMEgFYwZD0tX5hhdqbEakH2VuCMQGE1wkwOerGPdOm
	e8q2YFtfTVLR6ni/JXK9OG9Nw43kOQBZaZCoPa7b1MIU1IAObpJRHQHq7U6HpbWpvfM6y/zVX3weO
	8K7gjrq3+3C35kwmdDd4CxzKMRXRuulBIFg0Y4r9nethrG9IxQ0NW+BxQ/OF03xinVuNeIQ+Bo/Yb
	i+H7sSoT4mMtvVqo7pCCxEU6xGvheDGm9IHpHq8uRPPnmXbg2IhbuKQ2Dw5ZOX20kHhYpQWqou+Mz
	iILk1ADe9Lh9Acmhs94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVQo-0000Dt-8W; Fri, 01 May 2020 13:10:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVQc-0007mz-My
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 13:10:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9444168BFE; Fri,  1 May 2020 15:10:01 +0200 (CEST)
Date: Fri, 1 May 2020 15:10:01 +0200
From: "hch@lst.de" <hch@lst.de>
To: "Williams, Dan J" <dan.j.williams@intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
Message-ID: <20200501131001.GA6600@lst.de>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
 <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
 <20200428142247.GB5439@lst.de>
 <de2d78556fcb10f97364201256ac8f342a58eb75.camel@linux.intel.com>
 <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_061006_926188_A6E8D53C 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "kbusch@kernel.org" <kbusch@kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "hch@lst.de" <hch@lst.de>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 05:20:09AM +0000, Williams, Dan J wrote:
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

So can we please clearly mark this as a quirk and warn in the kernel
log about a buggy BIOS?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
