Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC111F045B
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 18:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCimUyIdANn2eVZZQzSqkr7iqQmI0P8FmouGHdA865A=; b=cs1wznPn+hJ26F
	PCzPaKhQkoM67vaY7fzQ64R+poO31KAmqZjWU4cFUIRg0dERBZKGx1FB09oVQ+VpMrxAoukhS0Btt
	5lpyIzdJ/vBZc0/rwzcqShqSroyCbFBxqyys0bkv3V6T1jmM6o9UFZLwbcPqM+w4hSqn+4efRsKqB
	G6xDB4DuvfDImaAynyqieqzHCgVqcrFlWFhzk8yDyuPFUjtaa8PJf7yXLruiZhmcMEjV0hOJU60TH
	wjWlRWHFjaX8iPYUCfR+2yC9LWgSyUfSC2MP9T1RvhfateEmkI1xJVA+x0sFTj/Plk0boerSgoTju
	lmCLciTSAgPnjKfgC1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2ym-0003rP-8y; Tue, 05 Nov 2019 17:50:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2yg-0003qk-2X
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 17:50:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3AD0B68AFE; Tue,  5 Nov 2019 18:50:48 +0100 (CET)
Date: Tue, 5 Nov 2019 18:50:48 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 04/15] nvme: Inline nvme_ns_has_pi function
Message-ID: <20191105175047.GC18972@lst.de>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-6-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105162026.183901-6-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_095050_270155_BA722807 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, idanb@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 06:20:15PM +0200, Max Gurtovoy wrote:
> This function will be used by transports that support metadata/T10-PI
> mechanism.
> 
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/host/core.c | 6 ------
>  drivers/nvme/host/nvme.h | 6 ++++++
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 9ec8322..6f51471 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -18,7 +18,6 @@
>  #include <linux/pr.h>
>  #include <linux/ptrace.h>
>  #include <linux/nvme_ioctl.h>
> -#include <linux/t10-pi.h>
>  #include <linux/pm_qos.h>
>  #include <asm/unaligned.h>
>  
> @@ -194,11 +193,6 @@ static int nvme_delete_ctrl_sync(struct nvme_ctrl *ctrl)
>  	return ret;
>  }
>  
> -static inline bool nvme_ns_has_pi(struct nvme_ns *ns)
> -{
> -	return ns->pi_type && ns->ms == sizeof(struct t10_pi_tuple);
> -}

I'd rather add a flag.  Maybe we can just add a features field in
struct nvme_ns, and then set one bit for metadata supported, one for
extended lbas, one for PI supported.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
