Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B65728B9
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 08:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zavhuJfAEgdGFfjhnpuI9uOrIg7P6kE+nTUjciTw+wQ=; b=SfdLoAFy+0a3Wp
	fyFFQuVhrUq3o4UvxfVytyNUaaPA4TuWvs2F0BDXTbEX2+y/fjz010cEEO5VoVnQ5gbeCZLsxk/Aj
	4sHisShYk3lm8v5c1PoYwkwInMgIaYVjSFpvNMcRalKBmJMHPoODaFgrB/SiEbdsWgG6w1MlXfhf5
	Np3iirti6+/H4kCQANoPlsK0+cpC216tE0243vfQk/RusvAEUDtoyp/Z2naENYPzbBRBkmMES1h1D
	k3Tx5NI+Esvb4BwHKFQMXRkWJHOgryeRzioDB5/c4IxTWM0B1bshkGRo9zvUWfexSNmBz1ra9RPc7
	rFgbVK4CxAGqZbiVhlpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBFU-0006uH-JY; Wed, 24 Jul 2019 06:59:40 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBF9-0006tn-1r
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 06:59:20 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x6O6wxsD028772;
 Tue, 23 Jul 2019 23:59:00 -0700
Date: Wed, 24 Jul 2019 12:28:59 +0530
From: Potnuri Bharat Teja <bharat@chelsio.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while reading
 socket
Message-ID: <20190724065858.GA25528@chelsio.com>
References: <20190708095200.15921-1-bharat@chelsio.com>
 <20190724062836.GA25058@chelsio.com> <20190724063324.GA1999@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724063324.GA1999@lst.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_235919_102458_C4FFBC8A 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wednesday, July 07/24/19, 2019 at 08:33:24 +0200, Christoph Hellwig wrote:
> On Wed, Jul 24, 2019 at 11:58:38AM +0530, Potnuri Bharat Teja wrote:
> > On Monday, July 07/08/19, 2019 at 15:22:00 +0530, Potnuri Bharat Teja wrote:
> > > Using socket specific read_sock() calls instead of directly calling
> > > tcp_read_sock() helps lld module registered handlers if any, to be called
> > > from nvme-tcp host.
> > > This patch therefore replaces the tcp_read_sock() with socket specific
> > > prot_ops.
> > > 
> > > Signed-off-by: Potnuri Bharat Teja <bharat@chelsio.com>
> > > Acked-by: Sagi Grimberg <sagi@grimberg.me>
> > > ---
> > Hi Sagi/Christoph,
> > Can this be queued for rc?
> 
> How is this a -rc candidate?  I was planning on queuing it up for 5.4444.
I believe its a trivial one, so was hoping it could get into immediate rc(rc-2).
If you think otherwise I am fine with 5.4 also.
Thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
