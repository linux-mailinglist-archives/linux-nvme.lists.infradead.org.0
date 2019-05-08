Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BDF1726B
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGnnz/wzcS17LvMdv+3+Wm6zj6mmb2I/FBH2aOwn5Sc=; b=tCpZTm8FCnoQr1
	cgFdazYCLs9Pu+AskkNWq2ki++aGcT/Zbpyt/RGNJHDsRX3EEEuMrNZOwfTtNYkQDqS9OGH5ia8ee
	t4+BBprLl5K+QGaNb1cQf06b7a316qMT3sW9w+6wX9kQvJG2Sg3XI8oZakjPTkQbVsCQFKLO1+P3x
	8pS2NIvJhHiVpMQyvxQ3UaqOZ1V+HSafYJSC+mVW3IbTxa0JSU5jaNVV69stW062771oR2q4/r5vy
	+wKvqUJjM1KdXWNw5+m9fyeUzp/pSIE2Jn3NgxH1332T2O40Yub4M7H2DpG0FaXYB0RmLpgbzywf6
	mveS0xRZbN05uryfJIjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGnU-0003y9-Ii; Wed, 08 May 2019 07:15:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGnO-0003xW-O6
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 07:15:20 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 8B79568B20; Wed,  8 May 2019 09:14:56 +0200 (CEST)
Date: Wed, 8 May 2019 09:14:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-pci: Fix queue_count to consider nr_possible_cpu
Message-ID: <20190508071456.GA21604@lst.de>
References: <20190504113923.32316-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190504113923.32316-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001518_936060_51D809B9 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 08:39:23PM +0900, Minwoo Im wrote:
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -147,6 +147,7 @@ static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
>  static int queue_count_set(const char *val, const struct kernel_param *kp)
>  {
>  	int n, ret;
> +	char cnt[6];
>  
>  	ret = kstrtoint(val, 10, &n);
>  	if (ret)
> @@ -154,7 +155,8 @@ static int queue_count_set(const char *val, const struct kernel_param *kp)
>  	if (n > num_possible_cpus())
>  		n = num_possible_cpus();
>  
> -	return param_set_int(val, kp);
> +	sprintf(cnt, "%d", n);
> +	return param_set_int(cnt, kp);

This just looks weird.  If we ant to limit the number why not
get rid of all these param_ops stuff and just verify the
number in nvme_calc_irq_sets without all that boilerplate code?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
