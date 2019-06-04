Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451713401C
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 09:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2s2EqlEv2pWXgcKlmvuLTdj5rsyDnHAnBfymsQc66Hg=; b=qeGUysckLktziZ
	VRisPCDzleyE26SPWMfXc8kirq8BTZMFfu3CAR9gPFtj+YkETpu/wFaLuZNVHROxR6/TiLh/kSV8r
	NRwFUyuGS8p+p3F0qZZyVq3iz2mHTfz4R9RVpZaTDerbLrVEJTK5iy/zv5PXMBEYf3X/rvUm0amm+
	Clt6tRKk7u9A3ZaRZzGLjqaMwXyCSFFWI+z/k38O/myLNXvSRssoW3sqewAiRCDVHYKsxZJvgv7ur
	/6mzQj4QLwt/biQijgNYGHwRRs/SG3urK3k+hBc76/mkDvkx0iDun0D+m1dRWXKKEdmwYJwkErBMh
	rFxV9a/0n9GbxKqm9sdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3sr-0000gG-7D; Tue, 04 Jun 2019 07:29:25 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3sm-0000ft-IT
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 07:29:22 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D5B0568B02; Tue,  4 Jun 2019 09:28:53 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:28:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V5 1/5] nvme: Make trace common for host and target both
Message-ID: <20190604072853.GG15680@lst.de>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
 <20190601072143.21233-2-minwoo.im.dev@gmail.com>
 <20190601085016.GA6375@lst.de> <20190602014737.GA28933@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602014737.GA28933@minwooim-desktop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_002920_758341_9AA98B60 
X-CRM114-Status: GOOD (  12.02  )
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

On Sun, Jun 02, 2019 at 10:47:38AM +0900, Minwoo Im wrote:
> > I'd much prefer to have different implementations for host vs target for
> > now instead of introducing a common library.  Maybe we could revisit
> > that later if we end up having a lot of shared code.
> 
> As you know, nvmet handles not only nvme fabrics commands, but normal
> commands in nvmet_req_init() and nvmet_req_complete().  Which means that
> we already have a lot of shared codes in parsing point of view.
> 
> The host/trace.c provides parsing admin commands which can be used by
> nvmet also.  I guess it's enough to be shared for host and target both.
> 
> I hope you can correct me if I missed someting here.

I'm not against sharing per se, but I'm really worried about either
building that code in the core kernel, or even just a new module, as
that'll waste at least 8k and will cause more cache misses when
tracing.  So for now my preference would be to just duplicate the code
at least at the binary level.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
