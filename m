Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D9217058B
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 18:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xj5bLieXrWowUcjNT8Pz0zyPMXV4fEZ/XVlNZmJKjCM=; b=UZl9Hwq6hUBWQ4
	uD5JFnMlMvt3czlpdiv5iyCJF3uVqPbK4RY51ZKSpBLkz5YyezNQQA2HPz9ep2ayGmCGC89unWYq9
	k99JUN1Xqgc4fDNoIlYMTH0xwvLONMrkLeaGvNmrja4+v+jzVomO72Tv4mlJ3MSwXow984yRbAc7L
	1LKWKRwLW1zC2w9aMgJ6KcFf6Tgi/sn+k5H/IND2jYIrVIKvROEPoITADSu/B6EfuZ2Hb3vhG036X
	txcalFkouD//xC4hPMOYBzQ7ETYTxBl5iGYma+wLiLCeguBnKl+FNPkdm5CrG1dcoWLqeh04zsukA
	jzhoWeQ6Qmz9rWtQ8nlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j709j-0008Jc-Gy; Wed, 26 Feb 2020 17:07:31 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j709b-0008IE-O4
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 17:07:27 +0000
Received: by mail-qk1-x742.google.com with SMTP id q18so78041qki.10
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 09:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zJXj8DxHphvulR2gCvno0W04q2u7Wkypz7ZH4wJylqE=;
 b=Wv1AqPjuwXkOB/njGtF2BF/1NOZTU2+kuUSK17wpcvBT98hrLIfYadg+8GDY2himwB
 12GqbinMI++gHctZP4iPizpRKzjVxrSKdVIA/7H9r6hAMKIQmMG76cPBumAo4gzGayF+
 KTpbKOQ14UKSWIozBn4AtkjkP3pV6550mxaMtyigt45+YZiUCje4k6Ejk+KiCeKsmbe6
 R1JZm56jk7NZPPyqH0Xr3HI6+OPwsBD13IZ9vJSD2rtvNfySee1lmrox/8m/efFFtUjC
 p+FSnONhaxJ3T2MtLHPpcVGJo+jxvklm8pgDuVU7RwAe0dRVPLZqBAe2WGzOHV/KgEFu
 Iejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zJXj8DxHphvulR2gCvno0W04q2u7Wkypz7ZH4wJylqE=;
 b=JQpd6RxDjGZoTJCY7oKhBYB0GVtVuKIQK5QtxujSB8thKMNI2n08TEKjrNk5ECSbzf
 qsrUGGy3dYneZl7JsM4kjeu989tJPQMEJPw2hUnCrC/Rfe8W+Gh0mmrVwqsSEBAvXDaM
 qoMF0FuF2cpYOv/nXJ0bfa13lDkCJITC+os+s5y+64FLBQAWtwmaJkZYPpswt5YPtwKe
 5EFkskmRtH38AtfqwxkOJk3Ko/mJMMEAzkpEO5S+fKTbNS40Dx2EyYWr6uX7A8MTY96T
 VfxwGZFP57PoG2iXuALfw0/Wg1rv1taG6NRIFEf7PxWQQ+YMa2nqJEjWq+dfSA6VdgZA
 DgMA==
X-Gm-Message-State: APjAAAVWp1S5uvMjvGV0tU7W2y9sM9HKTlN9uBu3LVYrmphC4mZ2yIwy
 wrxc2nXwT10xlBAUv9yjIJD9ig==
X-Google-Smtp-Source: APXvYqx5TusC9XJvNC9+oUb0CSQkpV/9oThwnh3Js3FWKR4q9T3c3XgV0HvkjWeSxLFn9Ko5CUVkIA==
X-Received: by 2002:a37:ae85:: with SMTP id x127mr113672qke.190.1582736841857; 
 Wed, 26 Feb 2020 09:07:21 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id r10sm1405268qkm.23.2020.02.26.09.07.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Feb 2020 09:07:21 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j709Y-0004Gj-OF; Wed, 26 Feb 2020 13:07:20 -0400
Date: Wed, 26 Feb 2020 13:07:20 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Krishnamraju Eraparaju <krishna2@chelsio.com>
Subject: Re: [PATCH for-rc] nvme-rdma/nvmet-rdma: Allocate sufficient RW ctxs
 to match hosts pgs len
Message-ID: <20200226170720.GY31668@ziepe.ca>
References: <20200226141318.28519-1-krishna2@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226141318.28519-1-krishna2@chelsio.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_090723_930769_1EC5613B 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, linux-rdma@vger.kernel.org, bharat@chelsio.com,
 nirranjan@chelsio.com, linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 07:43:18PM +0530, Krishnamraju Eraparaju wrote:
> diff --git a/include/linux/nvme-rdma.h b/include/linux/nvme-rdma.h
> index 3ec8e50efa16..2d6f2cf1e319 100644
> +++ b/include/linux/nvme-rdma.h
> @@ -52,13 +52,15 @@ static inline const char *nvme_rdma_cm_msg(enum nvme_rdma_cm_status status)
>   * @qid:           queue Identifier for the Admin or I/O Queue
>   * @hrqsize:       host receive queue size to be created
>   * @hsqsize:       host send queue size to be created
> + * @hmax_fr_pages: host maximum pages per fast reg
>   */
>  struct nvme_rdma_cm_req {
>  	__le16		recfmt;
>  	__le16		qid;
>  	__le16		hrqsize;
>  	__le16		hsqsize;
> -	u8		rsvd[24];
> +	__le32		hmax_fr_pages;
> +	u8		rsvd[20];
>  };

This is an on the wire change - do you need to get approval from some
standards body?

Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
