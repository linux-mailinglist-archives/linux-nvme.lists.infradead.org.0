Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD02C5290B
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 12:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMsSomdieZ4NFRr508fG7slcOgLJ7dPHn+Mt0XpGhUA=; b=oqYA8B9hP9wnm2
	KfNZ9ahxLTr/fMkX7GqLfCZ87K2jyN6NuuVAzLh1UVJwx/9Ene0+XB2jYVoYrfUtB2MbcN1ydHefZ
	mMB4TvxSL0V8MTRXtAX+QtUrHbW4RmM1NVz5vcvpSYmzT/wIbdbHSsFmhzlBNnfR+Qvn6ZzQVJ7y5
	1LcuoYZwVzcjrBIXd1qzMoEhwYwcXOU3xq3hNZJL4C2RgHKmPFzI31DXwnkfGonc9ihv8Ce8y1O7L
	Hvc67/g+BPHTDOGnzlfDBRjHQSzvX4Ms6DuUUMN9toEiT57Lc1Vgt3JjLQb13DGao9NajDFL5DEkS
	5sxeQQ2Gd3PDsaOOA+CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiNN-0004EL-HA; Tue, 25 Jun 2019 10:08:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiN7-0004Dw-Nx
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 10:08:18 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1D860550BB;
 Tue, 25 Jun 2019 10:08:06 +0000 (UTC)
Received: from ming.t460p (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A3176012E;
 Tue, 25 Jun 2019 10:07:46 +0000 (UTC)
Date: Tue, 25 Jun 2019 18:07:27 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
Message-ID: <20190625100722.GB11214@ming.t460p>
References: <92778741dff3723fc94cd75df3043adc9c8bf21a.camel@rohdewald.de>
 <20190625091704.GA30606@ming.t460p>
 <CAOSXXT5PgPJqouD0G7qJjar5tmy-9z+wWdFMqpD2K1=5vQZ+HA@mail.gmail.com>
 <20190625094532.GA11214@ming.t460p> <20190625095013.GA1353@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625095013.GA1353@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 25 Jun 2019 10:08:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_030817_793201_78E8B25B 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Wolfgang Rohdewald <wolfgang@rohdewald.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Keith Busch <keith.busch@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

On Tue, Jun 25, 2019 at 11:50:13AM +0200, Christoph Hellwig wrote:
> On Tue, Jun 25, 2019 at 05:45:35PM +0800, Ming Lei wrote:
> > On Tue, Jun 25, 2019 at 06:38:58PM +0900, Keith Busch wrote:
> > > The first two sg elements should have been merged to one and would have
> > > avoided the error. The bug is kernel, nothing to do with the device.
> > 
> > The default max segment size is 64k, so the first two can't be merged.
> > 
> > And the 1st sg should have been dispatched as single request.
> 
> Well, that is exactly what I fixed with my patches that went into
> 5.2.  Looks like we need to backport those as well.

Even though without your patch, this issue shouldn't happen given the
two sg shouldn't be submitted in single request. Something must be
wrong, I'd suggest to root cause it.
 

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
