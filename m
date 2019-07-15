Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86D9685A8
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 10:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HHoIHah7aDIIzW4kNm4sVcA/IsL47qbruBb3nsgswY=; b=YH/+ksPB576WEQ
	6/1ktK9BMGVlbJXdpaqu5rVzBE2KFRRx4PVUwuEMadyt5VENfcJWtyWKSbrNCjhnvZxd72WEPw1te
	5N/rKOs9qSdTosWhCEVblODiedy896s8hZaat/ctnIKrkO66UGqlbOLi2bM8VDhaWbna1hGNzVXJp
	gv0GJ3jbgxwxgexB5n587ha2DWxvsyf0G6f7FVdBPouhULCvI8BZuqhWEIV6uaK7o9JgQlx4ukZyn
	HwmUaNFKzU2UIhlORk1h3p4p/aKx5k4E8ubrjwygqhUw08LLfCqno4atEbo0r9DnggJiVp61Rd322
	mLNtsYtLMQb5sNdudxzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwaG-0003Hn-Ae; Mon, 15 Jul 2019 08:43:44 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwa7-0003HO-NM
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 08:43:37 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6F8hQwi025286;
 Mon, 15 Jul 2019 03:43:27 -0500
Message-ID: <c088cb27f99adbcc1f8faf8e86167903f11593b8.camel@kernel.crashing.org>
Subject: Re: [PATCH] nvme: Add support for Apple 2018+ models
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Mon, 15 Jul 2019 18:43:25 +1000
In-Reply-To: <20190715081041.GB31791@lst.de>
References: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
 <20190715081041.GB31791@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_014335_911897_746FE8DC 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-07-15 at 10:10 +0200, Christoph Hellwig wrote:
> > +	/*
> > +	 * Apple 2018 and latter variant has a few issues
> > +	 */
> > +	NVME_QUIRK_APPLE_2018			= (1 << 10),
> 
> We try to have quirks for the actual issue, so this should be one quirk
> for the irq vectors issues, and another for the sq entry size.  Note that
> NVMe actually has the concept of an I/O queue entry size (IOSQES in the
> Cc register based on values reported in the SQES field in Identify
> Controller.  Do these controllers report anything interesting there?

Ah good to know, I'll dig.

> At the very least I'd make all the terminology based on that and then
> just treat the Apple controllers as a buggy implementation of that model.

Yup, sounds good. I'll poke around tomorrow.

> Btw, are there open source darwin NVMe driver that could explain this
> mess a little better?

You wish...

> > @@ -504,8 +505,11 @@ static inline void nvme_write_sq_db(struct nvme_queue *nvmeq, bool write_sq)
> >  static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
> >  			    bool write_sq)
> >  {
> > +	u16 sq_actual_pos;
> > +
> >  	spin_lock(&nvmeq->sq_lock);
> > -	memcpy(&nvmeq->sq_cmds[nvmeq->sq_tail], cmd, sizeof(*cmd));
> > +	sq_actual_pos = nvmeq->sq_tail << nvmeq->sq_extra_shift;
> > +	memcpy(&nvmeq->sq_cmds[sq_actual_pos], cmd, sizeof(*cmd));
> 
> This is a little too magic.  I think we'd better off making sq_cmds
> a void array and use manual indexing, at least that makes it very
> obvious what is going on.

Ok. That's plan B as I described in the message. There's an advantage
to do that, it merges the indexing shift and the quirk shift into one.

I'll look into it & respin

> > -				nvmeq->sq_cmds, SQ_SIZE(nvmeq->q_depth));
> > +				nvmeq->sq_cmds, SQ_SIZE(nvmeq));
> 
> Btw, chaning SQ_SIZE to take the queue seems like something that should
> be split into a prep patch, making the main change a lot smaller.

Sure. Will do.

> > -	if (!polled)
> > +	if (!polled) {
> > +
> > +		/*
> > +		 * On Apple 2018 or later implementations, only vector 0 is accepted
> 
> Please fix the > 80 char line.

Ok.

Thanks for the review.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
