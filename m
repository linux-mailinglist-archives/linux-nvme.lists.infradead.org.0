Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B61C1AD0
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 18:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1ctWnGs+dn1SYmPXWPNJfkGaE4CmmiXR8PciPgS0SE=; b=oQoEcFotapFDQf
	wF2I6cPjH9gTg8woZDUydtBvaCRWRZlvk/nwLUi3knooHPF8AJGeLWtVSaoqfjqlQHEJEo1FzmRPt
	ZtUmgPmmHVkLJPQ9sHi646kxQmbICicC/a3vQtRLLmBTOizZgjv4dnvVq2+9FvYpXiLFWCP6tLpXJ
	9/BcfOm53NiD+clSq/oMWVElf+RQ/j2saarv2OyBrxUJkuy1gxZ8Wi/VHecxX0VGo5/a+mZ+txx5F
	IIkwsk4RCzPG80LRiF5h9RXmql2z/k4lEwXPdMNeTFB6co0R8Anz8P2MsSTe2RvYjt705+QisXiZT
	GkYgzaoWwM2H4jFQ6UUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYps-0004Du-OE; Fri, 01 May 2020 16:48:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYpp-0004Da-2W
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 16:48:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3715D68BFE; Fri,  1 May 2020 18:48:18 +0200 (CEST)
Date: Fri, 1 May 2020 18:48:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 15/15] nvmet-rdma: add metadata/T10-PI support
Message-ID: <20200501164818.GA19607@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-16-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428131135.211521-16-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_094821_263052_10A5A4E8 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static u16 nvmet_rdma_check_pi_status(struct ib_mr *sig_mr)
> +{
> +	struct ib_mr_status mr_status;
> +	int ret;
> +	u16 status = 0;
> +
> +	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
> +		return 0;

I'd expect this in the callers..

> +static void nvmet_rdma_set_sig_domain(struct blk_integrity *bi,
> +		struct nvme_command *cmd, struct ib_sig_domain *domain,
> +		u16 control)
> +{
> +	domain->sig_type = IB_SIG_TYPE_T10_DIF;
> +	domain->sig.dif.bg_type = IB_T10DIF_CRC;
> +#ifdef CONFIG_BLK_DEV_INTEGRITY
> +	domain->sig.dif.pi_interval = 1 << bi->interval_exp;
> +#endif

With the genhd.h tweak I sent in response to the host code, we
shouldn't need this.

> +	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
> +		return;

Same comment as above.

> +	if (nvmet_rdma_need_data_out(rsp)) {
> +		if (rsp->req.md_len)

Can we have a helper for metadata len that also uses
IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY) to let the compiler garbage collect
the whole code if it is compiled out?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
