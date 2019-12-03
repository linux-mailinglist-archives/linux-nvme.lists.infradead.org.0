Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA2B10F822
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 07:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yAyEDtJAiJbJQASpGS4EZMEO8R+c95ygDeJgwD8Ga8=; b=LvJKyJhLOEQ+Ra
	kNeO+RUVAgLlrwW+/KtClA7VfugUZQIxcDki79vvzk90+dFNOBhNBXDPbxRESDvj8L/WsmwevPoYB
	AcD+t54oRwVLMicN9nY1BE9Md2UEHqZdoRwQZC+1yWkZB7i9+h2g6R+uD8AnZv8CvQjPjiSUPfjzH
	obyHR5EZ9NGGYob6gygiKcVBS5vIqDvVy4veq7JoZfzltETTQo1Tr/4XrCypxnbc3weNU5gTzqh6N
	Q0Toy6PAQP/e22Jgj8CJtoG2DBzWcY5/zEHaHvhHcX5GilXHaCRmdOCNYAJJ3wbcpdi7WvtKNltQI
	y6Ei8J9uCbIOU5E1x2KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic24u-0005zj-Iu; Tue, 03 Dec 2019 06:54:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic24o-0005wv-Nc
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 06:54:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 33DC968C65; Tue,  3 Dec 2019 07:54:22 +0100 (CET)
Date: Tue, 3 Dec 2019 07:54:21 +0100
From: "hch@lst.de" <hch@lst.de>
To: "Singh, Balbir" <sblbir@amazon.com>
Subject: Re: [RFC][PATCH] nvme/core: Notify udev about capacity change
Message-ID: <20191203065421.GA23032@lst.de>
References: <20191129002746.6622-1-sblbir@amazon.com>
 <20191129082449.GA9953@lst.de>
 <0a5fc287a4ac392b9b192402e6786e7129b9d5f2.camel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a5fc287a4ac392b9b192402e6786e7129b9d5f2.camel@amazon.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_225426_923449_45224FA8 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "Sangaraju, Someswarudu" <ssomesh@amazon.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 11:35:47PM +0000, Singh, Balbir wrote:
> On Fri, 2019-11-29 at 09:24 +0100, Christoph Hellwig wrote:
> > I don't think this makes sense, and they way it has been done in
> > virtio_blk and xen-blkfront is an utter hack.  Please first add a
> > properly documented block helper, and then make sure it doesn't send the
> > even for the first call that moves from a 0 capacity.  SCSI also will
> > need updating to use the helper.
> 
> Makes sense, I am wondering if I should refactor
> set_capacity to __set_capacity and have set_capacity do notifcations
> for
> 
> oldsize vs newsize where oldsize is not 0

I pretty much hate the set_capacity name to start with, so what about
a more descriptive name for new the helper?  blk_set_capacity?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
