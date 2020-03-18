Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72481189FB4
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Mar 2020 16:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHWf7doH9pvBNqud7G3hLw6G+S7GIEXJqntLRvnD9R8=; b=IoNgXA7p1Ik553
	HJ8nhtFGYqLsuewYIsy0dSDKhgxp59ZzfGC/wD8zqH0R4Se6EhuBDdeLKfQvP0eQhN1pcrBb5DRta
	014X7o0zAXKXjKtabWe97RpJQ/BYiJF825RQkinuioLix948yts8sMu7KHj3UUDAJmDi2R5ItqpvV
	7FAbPZL/DsuogvfAxywIKm0yXMtIJGZDtlwaZFas8YeXuK6zgpa+G7gM0OsdeBRINN8S2qiieLrKt
	k1pqS4KE9vFrxMcutFApdF/bVpVbrUSckuC6dCGcfihV97Mh7KHVsKTEr/2PATc+Hh3S2hs3Tec6X
	PQxySGP4YtVBTyS6JMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEahb-0006f8-4C; Wed, 18 Mar 2020 15:33:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEahW-0006ej-DO
 for linux-nvme@lists.infradead.org; Wed, 18 Mar 2020 15:33:48 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DB64D68C65; Wed, 18 Mar 2020 16:33:41 +0100 (CET)
Date: Wed, 18 Mar 2020 16:33:41 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme: release ida resources
Message-ID: <20200318153341.GA14201@lst.de>
References: <20200318152759.199450-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318152759.199450-1-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_083346_603041_C13FD394 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kbusch@kernel.org, shlomin@mellanox.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
