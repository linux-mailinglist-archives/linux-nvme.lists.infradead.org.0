Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113F91FB9F1
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 18:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b020RYmO1o8F0X6bpr3u1F6s9TeEAYwo15fx57GEYW0=; b=QI9aUUC8Xk/kWR
	peSEYhhmGz1TKykwGX59Hjs0zGyYDhyr5CvxFUK3FL3dLPnHwnq/Q90XbeVs7knzaFLAuMU954Si3
	WMZUhfwoQVoydBHigm+S2DFe2InzvkgfWwW6GpX3GEHn/332Q5D/1bHaxMiIXiofJ2qAo9aJymvzY
	256ZT/R6yLo02Ol8EvJlP52fvS32pz4eyygOq8yGj2zzL66AD8acdhOuRGmbKv0422q/HZRO72zKP
	vRiDJ85l63gva/rG/Uf19s17i+HzrgwYIX/o7rYRhPn96t072yhORod49fzdXklVMhKUrfPQ7C8KJ
	PRMdWCb9qO5x0zPu+dWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE7W-0003ZQ-74; Tue, 16 Jun 2020 16:07:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlE7H-0003VL-Ao
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 16:07:16 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 005572071A;
 Tue, 16 Jun 2020 16:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592323635;
 bh=3FKReWcTjxvtWSUP+wv760H8pXRYIvClXEOzXJsmKFs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UZpcW41sZs78uweTNWmMHceoI27W6QrK2th1ZNmdYMFnEbV45nWsMaStiXP8jtx1q
 44Xj4Arvy0uvR4kWThVQkxNpjeuEfD8gyJWl06RFdKDPiBI0kJIpyT8Trn9spTz8GU
 blNykQbTSBXDvBsj/YCdDFgHUaXQZLzpxd9V0WDo=
Date: Tue, 16 Jun 2020 09:07:12 -0700
From: Keith Busch <kbusch@kernel.org>
To: Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200616160712.GB521206@dhcp-10-100-145-180.wdl.wdc.com>
References: <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616141620.omqf64up523of35t@MacBook-Pro.localdomain>
 <CY4PR04MB37512BCDD74996057697F5CAE79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
 <20200616154812.GA521206@dhcp-10-100-145-180.wdl.wdc.com>
 <20200616155526.wxjoufhhxkwet5ya@MacBook-Pro.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616155526.wxjoufhhxkwet5ya@MacBook-Pro.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_090715_408238_ECC2450B 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Ajay Joshi <Ajay.Joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <Keith.Busch@wdc.com>,
 Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>,
 Matias =?iso-8859-1?Q?Bj=F8rling?= <mb@lightnvm.io>,
 Christoph Hellwig <hch@lst.de>, Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 05:55:26PM +0200, Javier Gonz=E1lez wrote:
> On 16.06.2020 08:48, Keith Busch wrote:
> > On Tue, Jun 16, 2020 at 05:02:17PM +0200, Javier Gonz=E1lez wrote:
> > > This depends very much on how the FS / application is managing
> > > stripping. At the moment our main use case is enabling user-space
> > > applications submitting I/Os to raw ZNS devices through the kernel.
> > > =

> > > Can we enable this use case to start with?
> > =

> > I think this already provides that. You can set the nsid value to
> > whatever you want in the passthrough interface, so a namespace block
> > device is not required to issue I/O to a ZNS namespace from user space.
> =

> Mmmmm. Problem now is that the check on the nvme driver prevents the ZNS
> namespace from being initialized. Am I missing something?

Hm, okay, it may not work for you. We need the driver to create at least
one namespace so that we have tags and request_queue. If you have that,
you can issue IO to any other attached namespace through the passthrough
interface, but we can't assume there is an available namespace.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
