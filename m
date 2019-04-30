Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F384AF42D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 12:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1OQN9e1lvEBjfqYIWLdv1flYivdVes/2YffqghuYkw=; b=bQltiDVuua44+U
	qluEhKo6CMA0vjpfmg+CwpA1Qs2zeXQIekNsTuzOeG0XxNaS/+nhL7250UV4wVeHd4Tivhdgxeb+w
	+adbrhQUl7yd3t3ii7X17BMUJkE7EIBOFMC2RIGOXokIiXxedfmk67j0HtDOxe0goa3oym3g0BNLS
	Z51MB6ICj4SgCqoIK7w9pPm82NgoEnkd6AN3849CDqjlmCJQ7sxhS66Q0lHFT8AT+gDRRF9ARL44A
	Tpd6/H24JDjM/r4dziglEp2RLodln5GVWIICwWqCgxr9F6y5YL9qYLx4TXp7tEKgfbbjbOJrSUi0E
	PQsXK9bOUu6jWDRpL2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPxk-0006Y5-D0; Tue, 30 Apr 2019 10:26:12 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPxf-0006XL-GA
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 10:26:09 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B407F67358; Tue, 30 Apr 2019 12:25:49 +0200 (CEST)
Date: Tue, 30 Apr 2019 12:25:49 +0200
From: "hch@lst.de" <hch@lst.de>
To: Minwoo Im <minwoo.im@samsung.com>
Subject: Re: nvmet: Return PTR_ERR_OR_ZERO in a single line
Message-ID: <20190430102549.GA19450@lst.de>
References: <CGME20190430081251epcms2p8ca90db5f46bb9211a80822dde4771640@epcms2p8>
 <20190430081251epcms2p8ca90db5f46bb9211a80822dde4771640@epcms2p8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430081251epcms2p8ca90db5f46bb9211a80822dde4771640@epcms2p8>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_032607_915965_103ECA69 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "keith.busch@intel.com" <keith.busch@intel.com>, "hare@suse.de" <hare@suse.de>,
 "jthumshirn@suse.de" <jthumshirn@suse.de>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 05:12:51PM +0900, Minwoo Im wrote:
> The previous code is not that bad, but it can be a single line to
> return the PTR_ERR or ZERO.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Minwoo Im <minwoo.im@samsung.com>
> ---
>  drivers/nvme/target/discovery.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
> index e8e09266bfa5..e3b20f1cb301 100644
> --- a/drivers/nvme/target/discovery.c
> +++ b/drivers/nvme/target/discovery.c
> @@ -372,9 +372,7 @@ int __init nvmet_init_discovery(void)
>  {
>  	nvmet_disc_subsys =
>  		nvmet_subsys_alloc(NVME_DISC_SUBSYS_NAME, NVME_NQN_DISC);
> -	if (IS_ERR(nvmet_disc_subsys))
> -		return PTR_ERR(nvmet_disc_subsys);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(nvmet_disc_subsys);

Honestly, I find the old version much more readable..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
