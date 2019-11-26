Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7457B10A26B
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0LRktr7LXUep3TgkyLF/si1FFOuYRE8ENOAGkQQpMA=; b=eVYpZMEdUofV06
	ChqdOa8WhbFJAzGYKvdEguQt7pBlehNduJj9d9rLOiVCjt2D4+owESUCAjDBDYMXPiSgD+liUX4ai
	l6woWlmuaFHmKdb3fdNdTOoRnISVwNLz1FGjops8I4DYOkvZZypRArWkhkRir3TJHsUg91ljTK4aX
	hN9W0E8SVk/94OituuTEmnSWKJoa/c8M7qIMFyQu/eKeabP046gCAN5IQEn75copqTZt1udKzPBCO
	KxoBbvR3eU78kLx0VEh/x5wuTtMRXmGZy/0P6V5mEYPkIu9guYzWh+8ZINikR65qs6ZK1pc4aUrCE
	eWMHwFOHRkKPZ45Iy3+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZe0J-0002vW-1T; Tue, 26 Nov 2019 16:47:55 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iZe0G-0002vL-5O; Tue, 26 Nov 2019 16:47:52 +0000
Date: Tue, 26 Nov 2019 08:47:52 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH 1/2] nvme: remove unused return code from nvme_alloc_ns
Message-ID: <20191126164752.GA10487@infradead.org>
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
 <20191125160612.3542-2-edmund.nadolski@intel.com>
 <1ca1b4c3-8c42-c728-d987-18821f83088a@suse.de>
 <221e4352-7fab-abea-9f43-2cd1df60dbaa@intel.com>
 <20191125170644.GA1639@redsun51.ssa.fujisawa.hgst.com>
 <BYAPR04MB5749859E2636E3FCF355769386450@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749859E2636E3FCF355769386450@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Keith Busch <kbusch@kernel.org>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 04:01:11AM +0000, Chaitanya Kulkarni wrote:
> On 11/25/2019 09:07 AM, Keith Busch wrote:
> > It would be informative to just log the error that occurred so we have
> > something indicating why an expected namespace wasn't created. Otherwise,
> > I can't think of anything else the caller should do in response to an
> > error in this path.
> 
> Please do this, shouldn't be ignoring return value completely at first
> place.

Well, what would you do instead?  We call nvme_alloc_ns during the
initial probe and every reset / recan.  If we fail to allocate a
controller for whatever reason we'd much rather still have a working
controller with at least the admin queue and maybe other namespaces
rather than shutting everything down.  So just logging a message
inside nvme_alloc_ns as suggested by Keith sounds like a good idea to
me.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
