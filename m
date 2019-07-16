Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86B6A6DC
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 12:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHs3A6iibTqneYUnEs6m41XPBrP0Dorks3xjreTZRk8=; b=Xa47+Yyr/vTJyC
	Nyq1vVLwbhcyhGZxee0kHA0wnKn7+uIVu8Af4jucyo3PJlhCYmsgwV8oXdo0YY3GG5VnEyFWyCaIi
	LyYJPDPlmi9IRj29no2snH9ybLHpJfRljgOP6yvBviPzpwXeIqyxtL8cFG37zR3p6d760A1QBWtyn
	XRhHrpxOP3z4A0dhI7Lj5ZQLIPHMhQg/amN5eVEfyZuTbl2V5EnUOAwJbPE6fqa0ru/xxeBQTG/LA
	rvElJL0KA53DPbJmT0K5AaIUNBemfcr0wftH6SDRcWlTDXMbfmLe+rQO/fRQ8hjQ+IPtvdOzLxUz7
	E4ildywpc0tz6CpvKXCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLAX-0002R1-Rw; Tue, 16 Jul 2019 10:58:50 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLAO-0002Q1-1B
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 10:58:41 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6GAwSFL022497;
 Tue, 16 Jul 2019 05:58:30 -0500
Message-ID: <bfbc7352951d1adc714f699acb49e298c24fe7e3.camel@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 16 Jul 2019 20:58:28 +1000
In-Reply-To: <20190716093301.GA32562@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
 <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
 <20190716093301.GA32562@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_035840_227213_74F159A9 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 11:33 +0200, Christoph Hellwig wrote:
> > >    So back to the version
> > > you circulated to me in private mail that just sets q->sqes and has a
> > > comment that this is magic for The Apple controller.  If/when we get
> > > standardized large SQE support we'll need to discover that earlier or
> > > do a disable/enable dance.  Sorry for misleading you down this road and
> > > creating the extra work.  
> > 
> > I think it's still ok, let me know...
> 
> Ok, let's go with this series then unless the other maintainers have
> objections.
> 
> I'm still not sure if we want to queue this up for 5.3 (new hardware
> enablement) or wait a bit, though.

The main risk is if existing controllers return crap in SQES and we try
to then use that crap. The rest should essentially be NOPs.

Maybe I should add some kind of printk to warn in case we use/detect a
non-standard size. That would help diagnosing issues.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
