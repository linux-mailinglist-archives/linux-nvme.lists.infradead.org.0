Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3FD18A309
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Mar 2020 20:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dp6LyId6QKSgiQlzvVsU7djvL65FSVZe//PoQDR+hIs=; b=Ow/87vrKItW6so
	2TM0Eh1rEOCP9eCAAsoPuHch6WibtkNNTAGKFtfg61kbifs5sq5aAdwIrejNiQ4EIzVJAzF0BKApQ
	Ysdr9HzjunJw67gM9w8I8/VNEc23CE4hRDammFSmEjYGOA6oGZXMqbAMorTed/jz1zrj3q44m+tiu
	9cKJQcIGHP76nop9K9v8m+0KAXeGEfsP51vFVO0n0rYUJBg3GGe7WC7DpPlqAqipK++BESXGzgZU8
	1VRcc2v2f0Ru/243jAeqw/wX/4ZtLdkSgPvvjErZiHpZz/uR0xph9H1NkwxDGjdz8QW8BeLaN/04M
	FjnQSH5Y2IZ0tPzjdJOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEeDD-0004Sv-Kj; Wed, 18 Mar 2020 19:18:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEeD9-0004SK-M4
 for linux-nvme@lists.infradead.org; Wed, 18 Mar 2020 19:18:40 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 300A82072C;
 Wed, 18 Mar 2020 19:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584559119;
 bh=v9eoqVvpdZnE28FmoOj7MhpGzOjbh44Yedm1a9TkEio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b3CFIeGPk1Zrf5O1aMHSh3PnsiQY/o24KvxwG9Za9so8yrRr5zC8VZj6DrcYcReSv
 eW0CFQHlkx3AMttBu1wMFBWHfHpx92u322GduDpIplgvU4F/lZAp+pcVlMAmAEK1dd
 l+wPrsEtbyERm2nT0OSRD4iVawkmqukM5+IfI9Vg=
Date: Thu, 19 Mar 2020 04:18:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme: release ida resources
Message-ID: <20200318191835.GB22361@redsun51.ssa.fujisawa.hgst.com>
References: <20200318152759.199450-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318152759.199450-1-maxg@mellanox.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_121839_744429_7470F906 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: shlomin@mellanox.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 05:27:59PM +0200, Max Gurtovoy wrote:
> ida instances allocate some internal memory in addition to the base
> 'struct ida'. Use ida_destroy() to release that memory at module_exit().
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/host/core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a4d8c90..31bbf40 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -4299,6 +4299,7 @@ static void __exit nvme_core_exit(void)
>  	destroy_workqueue(nvme_delete_wq);
>  	destroy_workqueue(nvme_reset_wq);
>  	destroy_workqueue(nvme_wq);
> +	ida_destroy(&nvme_instance_ida);
>  }
>  
>  MODULE_LICENSE("GPL");

Thank you, applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
