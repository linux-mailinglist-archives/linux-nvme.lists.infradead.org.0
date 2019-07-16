Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428CE6A4F4
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 11:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxQBIhtVXYZiWO6qKgOkvIznvcDRMRDW/XTuZiAc41w=; b=sczrs0bDLm5Ewp
	JTQ28xTSOB3KAqk6kovigSUWwLOk7HbmVCtSa/Vm291lTPXzdQaVC31hFWmzLhU+zaq1FNGfmJ0kZ
	Yj5/jvFEtSmE4lF73WktsygkdniM+sSNzOH1NPHsdgIPm1gTVwv5fCg8vBlqsgGwRIiFTrYdeGyvd
	3jW4TqmAJae2LQl62j6FSEPaMNx+3z8LXOhnLsg3yrFEyHbQjgE7r/i+WCwQue0+TSYpDaUSoDXZN
	zodYI74VUARXVQgtQFMKLvkrkY7yZ4YHtgj8IMRpQa75R9uKrCGE0oVnhphhTr46qixOut222pkKK
	6sNbL7bw+F+rcNLdmOyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJpm-0001Vz-8V; Tue, 16 Jul 2019 09:33:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJpc-0001V7-5L
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 09:33:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3360468B05; Tue, 16 Jul 2019 11:33:02 +0200 (CEST)
Date: Tue, 16 Jul 2019 11:33:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
Message-ID: <20190716093301.GA32562@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
 <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_023308_353416_338A314F 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 04:21:14PM +1000, Benjamin Herrenschmidt wrote:
> > Actually, this doesn't work on a "real" nvme controller, to change CC
> > values the controller needs to be disabled.
> 
> Not really. The specs says that MPS, AMD and CSS need to be set before
> enabling, but IOCQES and IOSQES can be modified later as long as there
> is no IO queue created yet.

I guess that is true based on the spec.

> This is necessary otherwise there's a chicken and egg problem. You need
> the admin queue to do the controller id in order to get the sizes and
> for that you need the controller to be enabled.
> 
> Note: This is not a huge issue anyway since I only update the register
> if the required size isn't 6 which is probably never going to be the
> case on non-Apple HW.

Yes, but the whole point of making you go down the route is so that
we can share the code with eventual real nvme controllers that can
support a larger SQE size.

> >   So back to the version
> > you circulated to me in private mail that just sets q->sqes and has a
> > comment that this is magic for The Apple controller.  If/when we get
> > standardized large SQE support we'll need to discover that earlier or
> > do a disable/enable dance.  Sorry for misleading you down this road and
> > creating the extra work.  
> 
> I think it's still ok, let me know...

Ok, let's go with this series then unless the other maintainers have
objections.

I'm still not sure if we want to queue this up for 5.3 (new hardware
enablement) or wait a bit, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
