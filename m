Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C223052895
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 11:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUZ/a2nVEDzPw08XgOKNe2X8kvlQ29TQdMz6Nhy3Qro=; b=rDIUebbvVXTTr0
	SwVAYyzvcRUNuNNsFhzgg7WF6GR1P9QrIF23395a76rOdsTuE87inRB32FKBjrG3Ctaqtbiygn8Bx
	v55J70aDWSzGZSsdwyta4hNXkaYKE2FpYyO0nXoHYF7h3KsnTMi+PDRUgEuhJVBszxWIRhRqzohf5
	nR5HbRBYEfYuqb1y6BZGVPcsebUEl/p2M6RD04lL6Ye9AjmIwcxQVUemTd6a8YjLSYE5Ja45EpjSb
	zxRUWhiF9rHvMjWbCB4PrGjahc08N9wdlEHQq5cRjjnN/ebaIHA6/2ZF5hOE+IzJpl0c+T2qbDuah
	t770vpobOChBvCPu6Oyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfi6O-0004hy-IW; Tue, 25 Jun 2019 09:51:00 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi6C-0004hR-Ak
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 09:50:49 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5273D68B05; Tue, 25 Jun 2019 11:50:14 +0200 (CEST)
Date: Tue, 25 Jun 2019 11:50:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [nvme] Invalid SGL for payload:91648 nents:3
Message-ID: <20190625095013.GA1353@lst.de>
References: <92778741dff3723fc94cd75df3043adc9c8bf21a.camel@rohdewald.de>
 <20190625091704.GA30606@ming.t460p>
 <CAOSXXT5PgPJqouD0G7qJjar5tmy-9z+wWdFMqpD2K1=5vQZ+HA@mail.gmail.com>
 <20190625094532.GA11214@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625094532.GA11214@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025048_522148_2E2AEE53 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Jens Axboe <axboe@fb.com>, Wolfgang Rohdewald <wolfgang@rohdewald.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Keith Busch <keith.busch@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 05:45:35PM +0800, Ming Lei wrote:
> On Tue, Jun 25, 2019 at 06:38:58PM +0900, Keith Busch wrote:
> > The first two sg elements should have been merged to one and would have
> > avoided the error. The bug is kernel, nothing to do with the device.
> 
> The default max segment size is 64k, so the first two can't be merged.
> 
> And the 1st sg should have been dispatched as single request.

Well, that is exactly what I fixed with my patches that went into
5.2.  Looks like we need to backport those as well.

Wolfgang, can you try the latest 5.2-rc git tree?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
