Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD876A861D
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 17:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfIKF+kgsgE95GyiLiEfGgpsZDO52fVkR9+2cZv5mvA=; b=DQADnB7TECfSVS
	eIeTnBPrrJ9KkhUhBxZwAfCrapcvO3Od6a+oZEYzgReoza9DxJWUoYSRyAGknjlnp0vPQnmLnQpmC
	jzJO2R95fCCrF/c2/UaZuQZmwrvWMlut4dEK3p++/5xP0RPqoflv8oqlf3bj2enzBxPR6JKMj6UGR
	uf8USM/VzooQfb9lyVp7dWMhKhm/VsR92aGSFRc6cDx8fZADqJzRPzXpEXK1d/WPWNcIpRfpIM/Nm
	wERIYZSScXVTx8/dDuobs4lQ+NTZOd9phDLs1IUYb3DZaYJnC7VlSyl5f6pcM0+EY6wX+FRBB0+ns
	/edx1pR3orjPv8QczZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XQS-0004Ub-OY; Wed, 04 Sep 2019 15:42:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XQK-0004U5-C3
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 15:42:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 08E65227A8A; Wed,  4 Sep 2019 17:42:16 +0200 (CEST)
Date: Wed, 4 Sep 2019 17:42:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-core: Fix subsystem instance mismatches
Message-ID: <20190904154215.GA20422@lst.de>
References: <20190831000139.7662-1-logang@deltatee.com>
 <20190831152910.GA29439@localhost.localdomain>
 <33af4d94-9f6d-9baa-01fa-0f75ccee263e@deltatee.com>
 <20190903164620.GA20847@localhost.localdomain>
 <20190904060558.GA10849@lst.de>
 <20190904144426.GB21302@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904144426.GB21302@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_084220_562982_D1F773DB 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Jens Axboe <axboe@fb.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 08:44:27AM -0600, Keith Busch wrote:
> Let me step through an example:
> 
>   Ctrl A gets instance 0.
> 
>   Its subsystem gets the same instance, and takes ref count on it:
>   all namespaces in this subsystem will use '0'.
> 
>   Ctrl B gets instance 1, and it's in the same subsystem as Ctrl A so
>   no new subsytem is allocated.
> 
>   Ctrl A is disconnected, dropping its ref on instance 0, but the
>   subsystem still has its refcount, making it unavailable.
> 
>   Ctrl A is reconnected, and allocates instance 2 because 0 is still in
>   use.
> 
> Now all the namespaces in this subsystem are prefixed with nvme0, but no
> controller exists with the same prefix. We still have inevitable naming
> mismatch, right?

I think th major confusion was that we can use the same handle for
and unrelated subsystem vs controller, and that would avoid it.

I don't see how we can avoid the controller is entirely different
from namespace problem ever.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
