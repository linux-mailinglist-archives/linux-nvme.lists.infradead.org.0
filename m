Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFC817283
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnhHfFFt5H1UYyGFrlR9oGna0fGiu/iCD0x/I4ItkeE=; b=hjtORo9U1J2AJf
	BvZaqFilbI0zseF/LvPItl46Gx5S0Q1dCrPRoEe50aRcJ/4Nkp+j77bwHWLTVXngvHivXiQMFe6AV
	I8FsvV8JBR0GkR3kulMxI59OApe0ocUBhWoklOM2LRUYsXsUQkxw1lMugiudzd/PxSoa8tgWcJ7gd
	LT6lV2XUxtqLj3zZQ/ak15wR57XUCw1yA/ZzadrjM2MnODFR8x+SbQcPgaehi93Mx7YhwH5J1s7xy
	20CRSx1GB32/Ie3XvKW3PwXXpjMAnMCQMOh2F0wKDS4gOkOWzJKCtYwXL8NPTZxdyXA4kzonjKjiT
	GhKZu9154Wr0AOl+vHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGvF-0006BD-UH; Wed, 08 May 2019 07:23:25 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGvA-0006An-MY
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 07:23:22 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 525D968AA6; Wed,  8 May 2019 09:23:01 +0200 (CEST)
Date: Wed, 8 May 2019 09:23:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im@samsung.com>
Subject: Re: [PATCH 1/2] nvme: Introduce nvme_is_fabrics to check fabrics cmd
Message-ID: <20190508072301.GC21823@lst.de>
References: <SN6PR04MB452746C95169477C3DD9C8A786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-2-minwoo.im.dev@gmail.com>
 <CGME20190506224156epcas4p4e0dbe316e46fc76f4e36f5f23bd61cf1@epcms2p3>
 <20190506225938epcms2p357314dad168e5822fa4145e7873f5709@epcms2p3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506225938epcms2p357314dad168e5822fa4145e7873f5709@epcms2p3>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_002320_970451_BF4DD38E 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 James Smart <james.smart@broadcom.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 07:59:38AM +0900, Minwoo Im wrote:
> Chaitanya,
> 
> Thanks for your kindly review on this.
> 
> > I'm not sure if we need change right now, reason :-
> > 
> > Existing code is pretty straight forward and we are not having
> 
> Yeah, the code looks readable.  But I thought it would be nicer if
> it can be removed to reduce duplications in code.
> 
> > any complicated logic in the helper function. I'll let the
> 
> In fact, this is why I have introduced an inline function here.  If it
> has complicated logic inside, I would not introduce it. :)

I think I'm ok with this check.  We keep growing a few more of those,
so a little helper like this might be useful.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
