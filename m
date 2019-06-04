Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCFB33FFF
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 09:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4P5kgNM+yE8CLBxMPrCbD9G8zuRM7MT4AwjUrA0j90=; b=AL6hA+FIVT5TgV
	KHfsLVSjaXZ+bPkhgVKAywOBz3pn36Wjw5AvGBQn+P+kZy7mVfaCBaITQx7F6FTShtGtjbvbOPx2V
	ovgpyv+X2ixgK3qk6hgaSKPiUbAxktSFWyolXXsphChdC7v25+CpDlzwVsBU6z1Ho0PJ3x1X3hcsk
	+F1CLPq3SYrBpVKqEtcQNxXGjvQ8LmY36A/ZZfS0T9Zj0KLLFgJtnDieUAQksTPiIsVqK7jKZSZdw
	wAEKtCnjjLnUU3SDuZqvnVGaBmvsOP6b84qJzXJgYM5E/TB7fQXj7+vPhPkM2x6WzRPmDIeeEGFES
	zww3jAMeSpodZ9xoUtJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3nj-0006bc-T6; Tue, 04 Jun 2019 07:24:07 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3nf-0006b7-1E
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 07:24:04 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id C002268B02; Tue,  4 Jun 2019 09:23:36 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:23:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v2 2/3] nvme: enable to inject errors into admin commands
Message-ID: <20190604072336.GC15680@lst.de>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559483421-11361-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_002403_219350_3120F89F 
X-CRM114-Status: GOOD (  11.26  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>  	struct nvme_fault_inject *fault_inject = NULL;
>  	u16 status;
>  
> -	/*
> -	 * make sure this request is coming from a valid namespace
> -	 */
>  	if (disk) {
>  		struct nvme_ns *ns = disk->private_data;
>  
>  		if (ns)
>  			fault_inject = &ns->fault_inject;


Not new in this code, but how could ns ever be NULL here?

> @@ -257,6 +266,8 @@ struct nvme_ctrl {
>  	 */
>  	struct thermal_zone_device *tzdev[9];
>  #endif

Looks like this series seem to be based on the thermal zone series.

> -struct nvme_fault_inject {
> -#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
> -	struct fault_attr attr;
> -	struct dentry *parent;
> -	bool dont_retry;	/* DNR, do not retry */
> -	u16 status;		/* status code */
> -#endif

It would be nicer to already move it up earlier when you change the ifdef
guared.

Otherwise the whole series looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
