Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623B686BF
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 12:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54VjxbsIrAxfjQZht8IjT0ObNg92Gj0BsP6KnkhrzE0=; b=LlusIn0Mk/56Zy
	oI5yyGsZ7fQvnSV/WqqC+iqQi67L8R2MCPPt7fX/4PSQOHPugDncpIhW5WQu8wzI4faq80a6jpnMD
	wmyO7tSuZbBNeCfAy8V6IpDt+sGVxcVwjraVO/Id3d8MpDk07Kq8NFhJrJIxBom9bUGX+3hHqpRYJ
	JJmIGm+YiTvHxrSFmt0X0j66dgH8NJKe7oOeS+HMC9yNqC4cIgwmpHXxGhxnB2AfYlPrPdiUT8ToN
	q+YocHDIlCez+mUOOH7f+BvIru3EuAnORmG1dfla63zh4ua4q6s2z85Ss0xMgE+Pbud8WJvjPZtvM
	aQaPMsgTydsyWXo1zQng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxnN-0001YA-Mh; Mon, 15 Jul 2019 10:01:22 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxnH-0001Xn-D0
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 10:01:16 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6FA15xe030672;
 Mon, 15 Jul 2019 05:01:06 -0500
Message-ID: <c82b6aa094f1681272ec1e2a55e47758c435f784.camel@kernel.crashing.org>
Subject: Re: [PATCH] nvme: Add support for Apple 2018+ models
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Maxim Levitsky <mlevitsk@redhat.com>, Christoph Hellwig <hch@lst.de>
Date: Mon, 15 Jul 2019 20:01:05 +1000
In-Reply-To: <4caeb954b2fa91445e02bac7ac9610ca886b4dd8.camel@redhat.com>
References: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
 <20190715081041.GB31791@lst.de>
 <c088cb27f99adbcc1f8faf8e86167903f11593b8.camel@kernel.crashing.org>
 <25c3813ab1c2943658d7e79756803801b14a34db.camel@kernel.crashing.org>
 <4caeb954b2fa91445e02bac7ac9610ca886b4dd8.camel@redhat.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_030115_595370_0ACFD9F2 
X-CRM114-Status: GOOD (  12.00  )
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

On Mon, 2019-07-15 at 12:28 +0300, Maxim Levitsky wrote:
> 
> To be honest, the spec explicitly states that minimum submission queue entry size is 64 
> and minimum completion entry size should be is 16 bytes for NVM command set:
> 
> "Bits 3:0 define the required (i.e., minimum) Submission Queue Entry size when
> using the NVM Command Set. This is the minimum entry size that may be used.
> The value is in bytes and is reported as a power of two (2^n). The required value
> shall be 6, corresponding to 64."

Yes, I saw that :-) Apple seems to ignore this and CC:IOSQES and
effectively hard wire a size of 7 (128 bytes) for the IO queue.

> "Bits 3:0 define the required (i.e., minimum) Completion Queue entry size when using
> the NVM Command Set. This is the minimum entry size that may be used. The value
> is in bytes and is reported as a power of two (2^n). The required value shall be 4,
> corresponding to 16."
> 
> Pages 136/137, NVME 1.3d.
> 
> In theory the spec allows for non NVM IO command set, and for which the sq/cq entry sizes can be of any size,
> as indicated in SQES/CQES and set in CC.IOCQES/CC.IOSQES, but than most of the spec won't apply to it.
> 
> 
> Also FYI, values in CC (IOCQES/IOSQES) are for I/O queues, which kind of implies that admin queue,
> should always use the 64/16 bytes entries, although I haven't found any explicit mention of that.

Right, and it does on the Apple HW as well.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
