Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9020270C28
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 23:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dme5ajUDTbEWUCx8yCILXbl1gTRttHOnB3tt4kcUSMc=; b=q6OUh1AinCwPA/
	3NMToBDWD+RZBjv+JDYdk0P6RzB7uSMhF61nUnYmPzVuxniY1tFNhFde+hrkBKYQTz+rOlyDkjPsc
	ctTtyBhdqpS2oXjmyltsB70/o6Tm2BRsSWQgxnjbOL1meuMrqRzTu8g6oSBK0Qp3gzVpGwRB4IA6C
	F6FkJuR9DqM2b5RQSyXEgfldcqA0EZjmv2QzO1zHntnZo49iKQKcrBFA4uMb/tWCnkPIwSIUM0ZNf
	Sw1OM4nb+XweyMS0N0ZwTTDBzyaygTsS5w8lodEtM82ZCkkQ6RkHtu+NxpEYoH2FYsTuI6mEh+Oje
	JpBSMdn4BrDL2ydFufqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgH9-00073b-FN; Mon, 22 Jul 2019 21:55:19 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgGt-0006FE-K4
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 21:55:05 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6MLsoj3012638;
 Mon, 22 Jul 2019 16:54:51 -0500
Message-ID: <00f7a7e127467c0de98b114f2fe38f836601eef8.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 23 Jul 2019 07:54:49 +1000
In-Reply-To: <91ef44522140bf83720f6c377648b307964d34e4.camel@kernel.crashing.org>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190719122859.GA30193@lst.de>
 <91ef44522140bf83720f6c377648b307964d34e4.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_145503_851220_65C862B5 
X-CRM114-Status: GOOD (  11.04  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-07-19 at 23:51 +1000, Benjamin Herrenschmidt wrote:
> On Fri, 2019-07-19 at 14:28 +0200, Christoph Hellwig wrote:
> > Yikes, that things looks worse and worse.  I think at this point
> > we'll
> > have to defer the support to 5.4 unfortunately as it is getting more
> > and more involved..
> 
> Well, at least v3 of that patch, thanks to Damien's idea, isn't
> particularly invasive and I've hammered the SSD with it over night with
> a combination of IOs and smart commands, it's solid.
> 
> But if you prefer waiting for 5.4, no worries.

BTW. It's been solid for 3 days now, so I think that was the last of it
(famous last words...)

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
