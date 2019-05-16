Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F66720A90
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 17:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=097OSjTtf4q792COldUVfzSlxdHeDZHHSbtBV+U1Dpw=; b=VkJtbuyf0Xmkzy
	eHIE190SP2Vl15VRJumwNDqSa2wnDqgaYXZPOvFQBwG4g2UwHjwEIVEWz/MD+NIsC+gbwDbGoZsBJ
	PRDyPA86HvD8i//j8C+1ZYkQfXRceL6p9XZYTILcTMhP2htNKmCRrJP05H1EBuEtLek41GZO37bDM
	HaT5jNyLr/lBzCsUHjhOVFu0885xBtuyJjPl91wT+Qix6F8cSKAjOvksil8eNHhaQB7EdrjWS+4jt
	oFf/OAI9oBB7PACFwWEIVXGGiK7p0h3MpPTkJ4vLML9Qf3tZArlhx/BLDN5OJ0oZVV7VgeerpBqfA
	LqYhNQXRoMwMtjf1WCew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHtv-0001Hh-Ni; Thu, 16 May 2019 15:02:31 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHtr-0001HF-3u
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 15:02:28 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 08:02:26 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 16 May 2019 08:02:25 -0700
Date: Thu, 16 May 2019 08:57:10 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190516145710.GA23416@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <20190516144017.GA23372@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516144017.GA23372@localhost.localdomain>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080227_206054_A25CF5DA 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 08:40:17AM -0600, Keith Busch wrote:
> On Wed, May 15, 2019 at 11:46:51PM -0700, Christoph Hellwig wrote:
> > On Wed, May 15, 2019 at 03:33:51PM -0600, Keith Busch wrote:
> > > So here's a solution that no one will like: pull subsystem and controller
> > > instances from the same IDA so that there won't be any namespace block
> > > devices with a matching controller handle name. While this does nothing
> > > to clear up device relationships, this will force the user to think
> > > really hard about what they're doing and avoid such mistakes.
> > 
> > Hmm.  So we'll get:
> > 
> > /dev/nvme0
> >  - chardev subsys X ctl 1
> > 
> > /dev/nvme1n1
> > /dev/nvme1n2
> >  - namespaces for subsys X
> > 
> > /dev/nvme2
> >  - chardev subsys X ctl 2
> > 
> > /dev/nvme3
> >  - chardev subsys Y ctl 1
> > 
> > ...
> > 
> > This should work.  Not sure it really buys us so much, though.
> 
> Right, it's not much. The only thing I want accomplish with this is to remove any excuse for
> sending commands to the wrong handle. We can insist that it's wrong 

[finishing the sentence]

We can insist that it's wrong for anyone to have assumed a chardev is the
controller of a specific blkdev, but amount of feedback I've received
indicates the current naming is a little too easy for people to shoot
themselves in the foot. This new naming will put a stop to such mistakes
without breaking anything.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
