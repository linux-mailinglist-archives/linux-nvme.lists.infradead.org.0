Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E41D10EE40
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 18:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGuUh4++48jEa0xe5MKzMYPrJ9RZCfuTGd/e7WE8Vh8=; b=kli7KIOWXxfJ2u
	JfR+aQHknp51cLXWoprvKEvEaJmymjrPuUVmQegpD77L56yYNg616Sl9aG4VYAhn89O/jSER0lELP
	rSJSHSsjFBMXncxQpoudVR2V++x1f0h1WrSkHcMj8lLxG/APRRnGq8RQUJrsrOM3ZiNyD/qrdFuxF
	6BDbQA0lwBF4CxTv8Rv1sWIZ0/uaDIbYP3G4B3/BGhLcBbTWGb7hpZ0DaNFh3zNWU+gmoKMvbNp5K
	KUIsWE3Hb04U/IBNFIlr0Iyxar7qLvbC1OkKu0PwTwCqMtpPdUFo9M/o7q8C0Wg60Fq34ImoNKl4B
	FQJGMM8h2J1aCQ4k9mjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibpaZ-0004d2-Fl; Mon, 02 Dec 2019 17:34:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibpaU-0004ca-50
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 17:34:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EF4B868BE1; Mon,  2 Dec 2019 18:34:14 +0100 (CET)
Date: Mon, 2 Dec 2019 18:34:14 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: Namepace identification descriptor list is optional
Message-ID: <20191202173414.GA8950@lst.de>
References: <20191202155611.21549-1-kbusch@kernel.org>
 <20191202161545.GA7434@lst.de>
 <20191202162256.GA21631@redsun51.ssa.fujisawa.hgst.com>
 <10e6520d-bc8c-94ff-00c4-32a727131b89@intel.com>
 <20191202162905.GA7683@lst.de>
 <20191202164903.GA21650@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202164903.GA21650@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_093418_344790_2C8E222E 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Ingo Brunberg <ingo_brunberg@web.de>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, stable@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 01:49:03AM +0900, Keith Busch wrote:
> Customer or OEM requirments are poorly written, like "Must report NVMe
> version 1.3". Nobody bothers to mention that it must also be compliant
> to that version, or even realize they never cared for those features in
> the first place.
> 
> Compliance testing like from UNH should have caught this before shipping
> with such a device, but it's a cheap device, so maybe they skip that step.
> 
> >  I wonder if we actually do users a favour by allowing that..
> 
> I think it's too late now. We did successfully use such namespaces
> before 5.4, even if they're fundamentally broken.
> 
> Johannes also commented *not* to consider these errors when this
> identification was originally implemented, so either he knew vendors
> screwed this up, or had the forethought to know they would.

Yes. I guess your patch is the best thing for now:

Reviewed-by: Christoph Hellwig <hch@lst.de>

But I think we might need a new kernel tain flag or something like
it for devices that are so obviously broken in their identifiers.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
