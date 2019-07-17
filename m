Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172CF6B59D
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 06:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGnT9vkGbXSIng6QmmGvCKHmIOECaPzBESjL9IY3fLo=; b=KWhOrYpW1QU1GL
	8PmUMLlCMHm998raUe0Ruf0eGrz/Zxgi2cGBNVV+PtTo+YP0O2AKXeudkPdnv9tBOqGj5li9FtLVR
	RWwplCPpRgk2OjEd66REfHwwxaBvoCxt2du6kzBYSX8qCwXT84cYcbMZyKiQl96n90qGn40b+Aw9W
	LXHKPN/DNFWx+9KfKWBIPBHtGEN8Ah3M4ATqcB20oFY3vXk9m6oiXuw+rCxCLw/hnsxP14cmkDlan
	dD/4VjBNK1dAxe9slP6Km9VjBluOaVnrV7oOylv18GJOkkB3Euig1bJhC3M6pH7NDkHg3EXGnR9ty
	3LnqV2JK7WxB78d2CJyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbkM-0004zD-FJ; Wed, 17 Jul 2019 04:40:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbkB-0004yW-ME
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 04:40:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B33E568B05; Wed, 17 Jul 2019 06:40:41 +0200 (CEST)
Date: Wed, 17 Jul 2019 06:40:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
Message-ID: <20190717044041.GB4755@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
 <20190717042646.GA4583@lst.de>
 <a510b276a5c94fa79ec86dfde78fcbc0edb06053.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a510b276a5c94fa79ec86dfde78fcbc0edb06053.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_214043_877789_BC7E8F41 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
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
Cc: Jens Axboe <axboe@fb.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 02:33:59PM +1000, Benjamin Herrenschmidt wrote:
> On Wed, 2019-07-17 at 06:26 +0200, Christoph Hellwig wrote:
> > On Wed, Jul 17, 2019 at 10:15:00AM +1000, Benjamin Herrenschmidt
> > wrote:
> > > Yes. Reverting this brings the speed back to 2GB/s
> > 
> > Thanks.  Can you try this series as well:
> > 
> > 
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-max-mapping-size-fix
> 
> With or without
> 
>  "nvme-pci: limit max_hw_sectors based on the DMA max mapping size"
> 
> ?

With.  Just pull in the branch :)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
