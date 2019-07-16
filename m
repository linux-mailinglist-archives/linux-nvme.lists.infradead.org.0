Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3509E6A88C
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 14:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HecNzNSCQE0XNvGIpkkYGgXzdiFcsoxOkzj+LrFkrdE=; b=eIK2EHL2JOHqnD
	M/Eyd31aM4jXtbFzddtLJdvFcAm1Uk8imp3eCk7xsYj+dzr45V8NWDtzzLR96vp255Q0gVmsG+a3+
	fo9AzUqH9zjd+sGG9HLic504lzkxpbwMWQp6nlKNUq3Xc0I2WgPy8DTTXM8NclnY7haSUt0M50h6L
	0knk1vXGovtBOXcWMcV/e2+PDn1YOMbXgMNf+w4Yj8RqLMKjcFe8Kf4C6oNVMKrKakG+8S8ictxgJ
	yNf7m9x6Mdd5tPMdcqgRoffwNVDbVDwb9wltf2c4GNQJ9tmTaVIjGdzQimiF7KwaCtwXyZo4kwS6Q
	t9LO1XRS41t6wh7hDRrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMPO-00081Z-Fk; Tue, 16 Jul 2019 12:18:14 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMPG-0007qh-E9
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 12:18:07 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6GCHu04027160;
 Tue, 16 Jul 2019 07:17:57 -0500
Message-ID: <cca6fd560aa1688ca94fc270310a91ccda9aed06.camel@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 16 Jul 2019 22:17:56 +1000
In-Reply-To: <20190716120547.GA2388@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
 <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
 <20190716093301.GA32562@lst.de>
 <bfbc7352951d1adc714f699acb49e298c24fe7e3.camel@kernel.crashing.org>
 <20190716120547.GA2388@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_051806_628048_859AEA0E 
X-CRM114-Status: GOOD (  10.85  )
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

On Tue, 2019-07-16 at 14:05 +0200, Christoph Hellwig wrote:
> On Tue, Jul 16, 2019 at 08:58:28PM +1000, Benjamin Herrenschmidt wrote:
> > The main risk is if existing controllers return crap in SQES and we try
> > to then use that crap. The rest should essentially be NOPs.
> > 
> > Maybe I should add some kind of printk to warn in case we use/detect a
> > non-standard size. That would help diagnosing issues.
> 
> Given that the spec currently requires bits 0 to 3 of SQES to be 6
> we might as well not check SQES and just hardcode it to 6 or 7 depending
> on the quirk.  That actually was my initial idea, I just suggested using
> the SQES naming and indexing.

If we're going to do that, then I can move it back to pci.c and leave
core.c alone then I suppose. Up to you. I'm just doing that for fun, no
beef in that game :-) let me know how you want it.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
