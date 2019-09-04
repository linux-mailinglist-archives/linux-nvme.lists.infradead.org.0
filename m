Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F948A863C
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 17:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5KwpNxCwbh2WA0MzpHb+XOvt/TI6JdpdcpVTcOlzPk=; b=IzwUMHChLlvnhv
	bAQlLoa2LGJ5bwp4gPvxQXZkLtFYGf8oDc+n0Kn/6MMLvfsVlQSLKZeOa6xI2uhR16efiK4f2Ww6v
	7nApDtnrFY1Eix91Y0HcmVbGy6+GIc8LYxNdTDOrAAg7PD3sQGZO8QTi/pIBwHYMx7lqCQJKTWWg1
	Dk7tX8/hRwQBHFr2Rr+8Sks9t5ldWEZapf7I8c7rAoe8QlvV6x7+bXQwavBW4fz8bWkf8VppZad2Q
	sI+AGvHxU7L7xnZEu3MQhCv036saKytRneABC+0UBRlRafeUZoXPI1OXN6cRN5y86a6d41N2t3+1T
	UoqI5gI6cwfIgniJ/FXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xdy-00010V-Af; Wed, 04 Sep 2019 15:56:26 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xdq-000107-4S
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 15:56:19 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 08:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="199059841"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 08:56:16 -0700
Date: Wed, 4 Sep 2019 09:54:45 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-core: Fix subsystem instance mismatches
Message-ID: <20190904155445.GD21302@localhost.localdomain>
References: <20190831000139.7662-1-logang@deltatee.com>
 <20190831152910.GA29439@localhost.localdomain>
 <33af4d94-9f6d-9baa-01fa-0f75ccee263e@deltatee.com>
 <20190903164620.GA20847@localhost.localdomain>
 <20190904060558.GA10849@lst.de>
 <20190904144426.GB21302@localhost.localdomain>
 <20190904154215.GA20422@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904154215.GA20422@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_085618_219942_2E66CEA6 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 05:42:15PM +0200, Christoph Hellwig wrote:
> On Wed, Sep 04, 2019 at 08:44:27AM -0600, Keith Busch wrote:
> > Let me step through an example:
> > 
> >   Ctrl A gets instance 0.
> > 
> >   Its subsystem gets the same instance, and takes ref count on it:
> >   all namespaces in this subsystem will use '0'.
> > 
> >   Ctrl B gets instance 1, and it's in the same subsystem as Ctrl A so
> >   no new subsytem is allocated.
> > 
> >   Ctrl A is disconnected, dropping its ref on instance 0, but the
> >   subsystem still has its refcount, making it unavailable.
> > 
> >   Ctrl A is reconnected, and allocates instance 2 because 0 is still in
> >   use.
> > 
> > Now all the namespaces in this subsystem are prefixed with nvme0, but no
> > controller exists with the same prefix. We still have inevitable naming
> > mismatch, right?
> 
> I think th major confusion was that we can use the same handle for
> and unrelated subsystem vs controller, and that would avoid it.
>
> I don't see how we can avoid the controller is entirely different
> from namespace problem ever.

Can we just ensure there is never a matching controller then? This
patch will accomplish that and simpler than wrapping the instance in a
refcount'ed object:

http://lists.infradead.org/pipermail/linux-nvme/2019-May/024142.html

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
