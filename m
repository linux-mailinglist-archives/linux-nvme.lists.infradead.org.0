Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE3D6A40E
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 10:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUAn1ECMrh2090wX7zwpmSPxsOV7PAA6Yyn4OS6KITw=; b=OQ1lzg7fj9sQ7Z
	+5yBJEmL/efy/O5yHug3HACyrMC7VHFRfyv7Zbr+YXzzTuxclneX3eLlGvVvFXTjf2XnOBsYGFYco
	LB6dTpg9LTo0Z+hj/ia0vdoNAfd8sALpSfW0/Mr3w5gn8267dMBItD0y5NM/eYzv1p6vq6d5Nf98l
	C7aTKvL5gqtUdr/borhH/9aR44xItIVVeX6jfMQch92rk6YooNbSarTKxp67F51RLRSZZcHJn1PN2
	QLsfWgvQy5FaZhu2eu7+Vok/AFT1EZNY/Oeqw0XaUWw8Uk/hpHKEJbFV+673z0vtqRZDSG3m+Sq2z
	EE/Ml+dyojdaII5PJiwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ21-0006l1-D8; Tue, 16 Jul 2019 08:41:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ1e-0006kK-PG
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 08:41:32 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87236206C2;
 Tue, 16 Jul 2019 08:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563266490;
 bh=DBB35/iLHNMA2FqwsQw7nORQLk+gotkl4bG0qEae5FE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GcbF00sNNjwSXPu5gKOghSSg4FUS77FkWYXLH2OHtiZsRL7sw0/HdavXE6cD9RaAd
 z/cH/IXOeLS7+aHtptJbgGtIPZg017FReeS8eayIXTg3k2B9IFa15jlllMiSXKCLK0
 EdEtZQP/o8VexmZoG3PiLmEjXwWp8ZO+N0gToid0=
Date: Tue, 16 Jul 2019 11:41:26 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Message-ID: <20190716084126.GJ10130@mtr-leonro.mtl.com>
References: <20190715091913.15726-1-selvin.xavier@broadcom.com>
 <20190716071030.GH10130@mtr-leonro.mtl.com>
 <20190716071644.GA21780@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716071644.GA21780@kroah.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014130_839280_0DD333D1 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Selvin Xavier <selvin.xavier@broadcom.com>,
 Parav Pandit <parav@mellanox.com>, linux-rdma@vger.kernel.org,
 stable@vger.kernel.org, jgg@ziepe.ca, dledford@redhat.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 04:16:44PM +0900, Greg KH wrote:
> On Tue, Jul 16, 2019 at 10:10:30AM +0300, Leon Romanovsky wrote:
> > On Mon, Jul 15, 2019 at 05:19:13AM -0400, Selvin Xavier wrote:
> > > GID entry consist of GID, vlan, netdev and smac.
> > > Extend GID duplicate check companions to consider vlan_id as well
> > > to support IPv6 VLAN based link local addresses. Introduce
> > > a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.
> > >
> > > The issue is discussed in the following thread
> > > https://www.spinics.net/lists/linux-rdma/msg81594.html
> > >
> > > Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> > > Cc: <stable@vger.kernel.org> # v5.2+
> > > Reported-by: Yi Zhang <yi.zhang@redhat.com>
> >
> > > Co-developed-by: Parav Pandit <parav@mellanox.com>
> > > Signed-off-by: Parav Pandit <parav@mellanox.com>
> >
> > I never understood why bad habits are so stinky.
> >
> > Can you please explain us what does it mean Co-developed-by and
> > Signed-off-by of the same person in the same patch?
>
> See Documentation/process/submitting-patches.rst for what that tag
> means.

Read it, it doesn't help me to understand if I should now add
Co-developed-by tag to most of RDMA Mellanox upstreamed patches,
which already care my Signed-off-by, because I'm changing and fixing
them many times.

Maybe I should write for my upstreamed patched something like this?
Co-developed-by: Leon R...
Reviewed-By: Leon R...
Tested-by: Leon R...
Signed-by: Leon R...

Thanks

>
> thanks,
>
> greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
