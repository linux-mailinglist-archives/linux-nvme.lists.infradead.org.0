Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EC05505E
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 15:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7gqkzcPYZwBvoJAuFJqtdj7dLpJXMKe8KZm31/zeI0=; b=uLos/2FhZW5MHj
	NcSS3zkQ4MnN9tcIjOQtet/+2jHAm7ErXsAQXjcsqJqLiQlsj0EVQNEpd7K0XAOOoMzbyCamTe4QB
	tRVGomMc+eUwsjiLEOJJJ91OGpzM+cd6/gXbiEgyOzCw1PfDZy9Hkq+EhCFybFhk37DX8eb3ae4Av
	D2SN/pNZ7QpZnIccat4Q//wzy0Ixiu5dL4YjCu7vnBIuXYICaXZiZUfqj2g2ba28j4X04hPND6vRz
	+zDn2AapMFEPNMRxxt9Q4wnqiifbUS2wo+N9w6ZlpgJUE1L2NIvRZxmPx9S12S0qaH8chq9kwPgBM
	IfqzDq6tnQXIHtIptIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflW9-0000bR-Ku; Tue, 25 Jun 2019 13:29:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflW4-0000Zp-Mf
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 13:29:45 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5CC26F74CE;
 Tue, 25 Jun 2019 13:29:19 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 526296085B;
 Tue, 25 Jun 2019 13:29:07 +0000 (UTC)
Date: Tue, 25 Jun 2019 21:29:02 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Wolfgang Rohdewald <wolfgang@rohdewald.de>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
Message-ID: <20190625132900.GA22428@ming.t460p>
References: <92778741dff3723fc94cd75df3043adc9c8bf21a.camel@rohdewald.de>
 <20190625091704.GA30606@ming.t460p>
 <CAOSXXT5PgPJqouD0G7qJjar5tmy-9z+wWdFMqpD2K1=5vQZ+HA@mail.gmail.com>
 <20190625094532.GA11214@ming.t460p> <20190625095013.GA1353@lst.de>
 <336692273232ee2441e30e7e2a1c542201854010.camel@rohdewald.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <336692273232ee2441e30e7e2a1c542201854010.camel@rohdewald.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 25 Jun 2019 13:29:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062944_760073_7E056BE4 
X-CRM114-Status: GOOD (  19.17  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <keith.busch@gmail.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 02:11:04PM +0200, Wolfgang Rohdewald wrote:
> On Di, 2019-06-25 at 11:50 +0200, Christoph Hellwig wrote:
> > On Tue, Jun 25, 2019 at 05:45:35PM +0800, Ming Lei wrote:
> > > On Tue, Jun 25, 2019 at 06:38:58PM +0900, Keith Busch wrote:
> > > > The first two sg elements should have been merged to one and would have
> > > > avoided the error. The bug is kernel, nothing to do with the device.
> > > 
> > > The default max segment size is 64k, so the first two can't be merged.
> > > 
> > > And the 1st sg should have been dispatched as single request.
> > 
> > Well, that is exactly what I fixed with my patches that went into
> > 5.2.  Looks like we need to backport those as well.
> > 
> > Wolfgang, can you try the latest 5.2-rc git tree?
> 
> 5.2.0-rc6 works fine.
> 
> Do you still want me to apply nvme_dump_rq() to 5.1 for finding the root cause?

Yeah, please dump the request, and maybe there is issue in merge code.
BTW, please replace the trace_printk with printk in the debug patch.

Also not sure if Christoph's patch can be backported safely, given there
is report wrt. too big max segment size recently.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
