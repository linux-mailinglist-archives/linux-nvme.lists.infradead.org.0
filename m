Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627046B67A
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 08:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88JccEGejhr7ZXFl53VsrMncgMlzKzk1joQSYba1w7I=; b=BaiVqtStcxu3KI
	ZFydkqRaFH36x8Mlo0MoIS0utunjVBdavh9e2oE94vYuIhKm9JltIDXn+fRXQeDEInElgivVxGnBW
	W17AxyDL97rkLCdPmh62n3j/mEGs08JQavyYVzotutQzW37at/5sDodAucGwHUd51OKACUmO/grC0
	n5+LWimpFMIt8z2Wo54atN1TFGExj0qRF/O+7cJjtBva9QCd8vgYgBpEQlYWPqBtp2CbT4WgU/WPz
	bFqSw7FTJEdduXU635i8FIXJ78YIrC/JIsLPTd2rU8mea4w/zhZxVMngiJC+Qg4+m615biQ/wjRDB
	X6nIoctJZWBH55cWxjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndHx-0005Sy-Uo; Wed, 17 Jul 2019 06:19:42 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndHn-0005SO-H7
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 06:19:32 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H6JP0L013091;
 Wed, 17 Jul 2019 01:19:26 -0500
Message-ID: <78e76d9ba48e6b1feefaab30882f735326a2d819.camel@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Wed, 17 Jul 2019 16:19:24 +1000
In-Reply-To: <20190717042646.GA4583@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
 <20190717042646.GA4583@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231931_717340_6325420D 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
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
Cc: Jens Axboe <axboe@fb.com>, Ming Lei <tom.leiming@gmail.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 06:26 +0200, Christoph Hellwig wrote:
> On Wed, Jul 17, 2019 at 10:15:00AM +1000, Benjamin Herrenschmidt
> wrote:
> > Yes. Reverting this brings the speed back to 2GB/s
> 
> Thanks.  Can you try this series as well:
> 
> 
http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-max-mapping-size-fix

This works. The performance is normal.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
