Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7E998885
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXoK0H+n/gS1Er4jXe7R9uiSATYZcf0vW3KsOZ/kVp8=; b=H8wHNH1tc1Q7Sc
	rTZKXl+l8rQNAh2SXdcX71tvcm2j7r3sFkuMccLCebFbU7Gf9NrXwo2Yr80dsNnjQQPHS5u3WMZEn
	AWDmp01x/BPFkgTauyj3BSLS2//TkJDFCzQkm3BrIfHx7kNpvRYvpqmkJKN3BfCj/iA3eJxk62cDh
	mwlE1ac+6v3+11VzFq13MD6n68eGD9FCVCqbnEdSHBnKHlUb10Nw9ovwzst5pB7XU+V6FHV2L6pUw
	Ws8h19g5Rf8zyPeRs8eIMlml5CEn3EfoHJU6D1nelwPZatcUgBrnFLsA9G+GWWR6kRaJPGRM5IAsH
	xMUd0KCAjx6MuR20v5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b14-0003f8-Hn; Thu, 22 Aug 2019 00:31:50 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b0x-0003ei-AP
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:31:45 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x7M0VEVU012747;
 Wed, 21 Aug 2019 19:31:15 -0500
Message-ID: <87e1fea1c297ef98f989175b3041c69e8b7de020.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 2/4] nvme-pci: Add support for variable IO SQ element
 size
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 22 Aug 2019 10:31:14 +1000
In-Reply-To: <20190822002818.GA10391@lst.de>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <20190807075122.6247-3-benh@kernel.crashing.org>
 <20190822002818.GA10391@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173143_591480_A49AD199 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 02:28 +0200, Christoph Hellwig wrote:
> On Wed, Aug 07, 2019 at 05:51:20PM +1000, Benjamin Herrenschmidt
> wrote:
> > +#define NVME_NVM_ADMSQES	6
> >  #define NVME_NVM_IOSQES		6
> >  #define NVME_NVM_IOCQES		4
> 
> The NVM in the two defines here stands for the NVM command set,
> so this should just be named NVME_ADM_SQES or so.  But except for
> this
> the patch looks good:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> 
> So maybe Sagi can just fix this up in the tree.

Ah ok I missed the meaning. Thanks. Sagi, can you fix that up or do you
need me to resubmit ?

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
