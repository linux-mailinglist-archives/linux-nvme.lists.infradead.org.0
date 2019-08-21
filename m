Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA249882B
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 01:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKwERU3EOfQm0mMs9cytTI/m+BC+Qb8AQHkTgjHbFrk=; b=Ni293Ubez/BEuD
	DCU1eTScdWOyWmvs7cp7s0gYn/PHtGnaoFOSTQcY+lrB1U7MRxl9sln2yelSkCjvXUWk9IqMmKBEu
	H/XakH4Q6L3s/rmd5AULc6qNRvDB77V10Z6I5Ubz/58CG513s9rpqnJjQxBh6b2YBGgqHhfa48xzk
	NVTOHasg63Y6vYQN1S79+fEvgK2YC6p42cpbKcSL2qJtS7VcauF7nhAYqlGzXNftMYPW8CbV5dToT
	hKOE+QAPV+oA255HsupOVvqNMX/0j/+pC3b92gKdwZzU4pqlakmIvY7kOjeYQqPGqTNxWKBpxpULe
	H4AahkvyUAcQDAT/hOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aVj-0005r9-JS; Wed, 21 Aug 2019 23:59:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0aVe-0005qU-Jo
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 23:59:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2757568C7B; Thu, 22 Aug 2019 01:59:17 +0200 (CEST)
Date: Thu, 22 Aug 2019 01:59:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190821235916.GE9511@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
 <20190819144922.GC6883@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819144922.GC6883@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_165922_801229_7E739446 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Marta Rybczynska <mrybczyn@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Samuel Jones <sjones@kalray.eu>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:49:22AM -0600, Keith Busch wrote:
> On Mon, Aug 19, 2019 at 12:06:23AM -0700, Marta Rybczynska wrote:
> > ----- On 16 Aug, 2019, at 15:16, Christoph Hellwig hch@lst.de wrote:
> > > Sorry for not replying to the earlier version, and thanks for doing
> > > this work.
> > > 
> > > I wonder if instead of using our own structure we'd just use
> > > a full nvme SQE for the input and CQE for that output.  Even if we
> > > reserve a few fields that means we are ready for any newly used
> > > field (at least until the SQE/CQE sizes are expanded..).
> > 
> > We could do that, nvme_command and nvme_completion are already UAPI.
> > On the other hand that would mean not filling out certain fields like
> > command_id. Can do an approach like this.
> 
> Well, we need to pass user space addresses and lengths, which isn't
> captured in struct nvme_command.

Well, the address would fit into the data pointer.  But yes, the lack
of a command length concept in nvme makes this idea a mess and not
really workable.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
