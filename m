Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D2331A9E
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 10:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNiqC950YO8v6fcIDe0jLN+ycFxS53Ix7GwCFSVKikw=; b=XcUob2SSId3Zcj
	0KvKPNYl6/9MGUD8fRf67sL5TPQpe9DLv9i+9RrmumqLGyCwtdQ7M8o4RLy0cd09w9W0GKbaxNyID
	WDXESwuwQ9Q6JWkFTQHl50budcBuoCMLAVBy5s2GNjQu+tnMh4L1W6pyHkYT8OlhO8FpoYFi4gNNA
	Bss0bTIZ+HjFYI2ZdQWLc5/gJVFFui5Vv/Q5wHZwmuxz+vJpJBvOR04T69+99PF9YZ50uTAA487IB
	Fa5cZMPmhcifsF/QA3eKAf9UJcvU6oxbGREs3NK//rxMzkhaf2TrAXg+VKrJiQtojVW5Ou17jQdkF
	SqWqEUDgYgaOgZz2uk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzj1-0008MZ-8i; Sat, 01 Jun 2019 08:50:51 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWziw-0008Lk-OG
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 08:50:48 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5954B68B02; Sat,  1 Jun 2019 10:50:17 +0200 (CEST)
Date: Sat, 1 Jun 2019 10:50:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V5 1/5] nvme: Make trace common for host and target both
Message-ID: <20190601085016.GA6375@lst.de>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
 <20190601072143.21233-2-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601072143.21233-2-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_015046_939953_FB8753A3 
X-CRM114-Status: GOOD (  11.24  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> diff --git a/drivers/nvme/Makefile b/drivers/nvme/Makefile
> index 0096a7fd1431..12f193502d46 100644
> --- a/drivers/nvme/Makefile
> +++ b/drivers/nvme/Makefile
> @@ -1,3 +1,6 @@
>  
> +ccflags-y		+= -I$(src)
> +obj-$(CONFIG_TRACING)	+= trace.o

this will always build the file into the kernel if CONFIG_TRACING,
even if no nvme code is enabled.

And looking at the later patches I don't even think this sharing is
worth it, as the actual trace points are pretty different.

I'd much prefer to have different implementations for host vs target for
now instead of introducing a common library.  Maybe we could revisit
that later if we end up having a lot of shared code.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
