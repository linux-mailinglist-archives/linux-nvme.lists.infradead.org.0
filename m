Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225B71FBC3C
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 19:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7od8ZPnOlRcC0emSc5cXdULpJ4097yFrQ+iQWTqcx6g=; b=Jwy5pOKf5xu86T
	Nob+vi95nFPo57VAfXVZRyVqKV6mVYFxUp9COXjt8Qp4A8SKLoYF0oQvluqChsP58Ew62jctBqXce
	vNqtVFzc9boex2CLyM7a/SitDVWx+pTaZLuzYao8BQtxidsGNXiSwvt4joj1dWKXUGmX283keVDUT
	nUcRBEZ+O296ykM1q4CRG/51aQEYaALJzpA4y1lsYG4e0c1KEEI/V/Fdr4DejNBefs7D7aSaTtfKs
	L+NoyFQztV0MST07FqU/iVYwvz9v5UKfUbKKf3SVSa1ZyEW0mfRQ9UARNqXZ0Pcpsj/Vlsmfv55Gv
	OqdhwLisWvD3hbk//ajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlExz-0006JR-Id; Tue, 16 Jun 2020 17:01:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlExv-0006J3-CU
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 17:01:40 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D019E208E4;
 Tue, 16 Jun 2020 17:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592326898;
 bh=EKyYHXK56kGXUHZvZEG6MdiO03J4tJGKnPinUlkYWWY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KjhgnnDoC0n2mREAdtWxwM7yLVLHZpLio6Cc2TqswBr0RJX6OtIQiOkSZiFvhA+74
 eaFCNmfDRXiOjwZQOxeq/rPkOL4lz20M8kbRzQyGOlQ2MYmsnIbPg/R6DkqHGoQVyJ
 Sz4nq+YZmJ2v5qGUmGa4ZnVzQ9BlhkROF2tCFBXc=
Date: Tue, 16 Jun 2020 10:01:35 -0700
From: Keith Busch <kbusch@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH 3/5] nvme: implement I/O Command Sets Command Set support
Message-ID: <20200616170135.GC521206@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-4-keith.busch@wdc.com>
 <yq1ftavm29u.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1ftavm29u.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_100139_455684_2DC55D32 
X-CRM114-Status: GOOD (  12.37  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Matias =?iso-8859-1?Q?Bj=F8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:58:59AM -0400, Martin K. Petersen wrote:
> > @@ -1113,8 +1126,9 @@ static int nvme_identify_ns_descs(struct nvme_ctrl *ctrl, unsigned nsid,
> >  	status = nvme_submit_sync_cmd(ctrl->admin_q, &c, data,
> >  				      NVME_IDENTIFY_DATA_SIZE);
> >  	if (status) {
> > -		dev_warn(ctrl->device,
> > -			"Identify Descriptors failed (%d)\n", status);
> > +		if (ctrl->vs >= NVME_VS(1, 3, 0))
> > +			dev_warn(ctrl->device,
> > +				"Identify Descriptors failed (%d)\n", status);
> 
> Not a biggie but maybe this should be a separate patch?

Actually I think we can just get rid of this check before the warning.
We only call this function if the version is >= 1.3 or if multi-css was
selected. Both of those require this identification be supported.
 
> > @@ -1808,7 +1828,8 @@ static bool nvme_ns_ids_equal(struct
> > nvme_ns_ids *a, struct nvme_ns_ids *b) { return uuid_equal(&a->uuid,
> > &b->uuid) && memcmp(&a->nguid, &b->nguid, sizeof(a->nguid)) == 0 &&
> > -		memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0; +
> > memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0 && +
> > a->csi == b->csi; }
> 
> No objection to defensive programming. But wouldn't this be a broken
> device?

It could be a broken device, but I think it's checking against mistaken
identify, like if we're racing with namespace management commands
deleting and recreating namespaces that the driver is still bound to.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
