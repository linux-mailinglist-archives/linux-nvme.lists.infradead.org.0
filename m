Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D91D72839
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 08:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOkmGy7+sZLm14ztt0uG7A9BR+KU+yHeOgP5NIdFU/U=; b=JWuwa43daEx03k
	YPtjEuSgi2bBAxZChLd5M9EGLPnkwjb3WvlCCl4D+JdBnmoJqDUJhRlhxA5KcDeZGnyXx0GLa8Jkt
	/VhGo7cpWB1i3W7JDblKyzulkj6B14PSl4fPAGSLWKPYoJaQAWshLzPEWhZuO7bye7Iq7zny5I4Sj
	5cz5vc046464m1lzAbNl37+j6p5HvU8auQGo4/uq2tHpP1RBtRy3A4ulJKOx3VIrmovdJXulyfy4x
	64XhAtWYrZmuS5XRS5ZwbZyDedgbRjV7+Qa1SlDFea5oEQcTHFYBS+yfgJgbWHSHscVqZKCYnsYX0
	aEsE1L7wj05HGfYJPSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAm5-00022V-2z; Wed, 24 Jul 2019 06:29:17 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAlm-00021k-NB
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 06:29:00 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x6O6ScK3028619;
 Tue, 23 Jul 2019 23:28:39 -0700
Date: Wed, 24 Jul 2019 11:58:38 +0530
From: Potnuri Bharat Teja <bharat@chelsio.com>
To: sagi@grimberg.me, hch@lst.de
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while reading
 socket
Message-ID: <20190724062836.GA25058@chelsio.com>
References: <20190708095200.15921-1-bharat@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708095200.15921-1-bharat@chelsio.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_232858_762660_64A926B4 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Monday, July 07/08/19, 2019 at 15:22:00 +0530, Potnuri Bharat Teja wrote:
> Using socket specific read_sock() calls instead of directly calling
> tcp_read_sock() helps lld module registered handlers if any, to be called
> from nvme-tcp host.
> This patch therefore replaces the tcp_read_sock() with socket specific
> prot_ops.
> 
> Signed-off-by: Potnuri Bharat Teja <bharat@chelsio.com>
> Acked-by: Sagi Grimberg <sagi@grimberg.me>
> ---
Hi Sagi/Christoph,
Can this be queued for rc?

Thanks,
Bharat

>  drivers/nvme/host/tcp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index 08a2501b9357..6ba667e62b75 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -1016,14 +1016,15 @@ static int nvme_tcp_try_send(struct nvme_tcp_queue *queue)
>  
>  static int nvme_tcp_try_recv(struct nvme_tcp_queue *queue)
>  {
> -	struct sock *sk = queue->sock->sk;
> +	struct socket *sock = queue->sock;
> +	struct sock *sk = sock->sk;
>  	read_descriptor_t rd_desc;
>  	int consumed;
>  
>  	rd_desc.arg.data = queue;
>  	rd_desc.count = 1;
>  	lock_sock(sk);
> -	consumed = tcp_read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
> +	consumed = sock->ops->read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
>  	release_sock(sk);
>  	return consumed;
>  }
> -- 
> 2.18.0.232.gb7bd9486b055
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
