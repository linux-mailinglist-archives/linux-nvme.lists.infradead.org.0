Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672DBC0D78
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD6O5fmlGqHYLeKJVUELJ/Bdb/tWfT+bEVYSc+wwxPs=; b=j27sJX/XfcLWHz
	OCp/IahboIqBEh0zTAHp6pRiuZH/d/KR7h+WT4ThOc4H11YabReit3aeKw5taOIb/BIDdjCDPA5fm
	yHzheTlBQfiFthAmlBAP9rg8iEe/qr6H626IlWZW6Ynbs+LgtVr0PqW6GIiJBilgM/MLX6WA3jlg9
	/6qWrZSxWFWujS4U60QGJo81jDybixU2Po/H+3EBpy2PFTt47R5IxAuqn980eRFcPaAMlZseBghDU
	0n0OaOoyNwX8AZrmsYOo9wGWhNAsxfnMp7+LTR+y9KOhiBG4vOQawvqX44u0HPFjF9Zdm4ReHfy0L
	hUcai67nSV5uBo/Cb2dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDy2U-0005Z2-9Z; Fri, 27 Sep 2019 21:44:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDy2O-0005Y9-Sg
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:44:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8475E68B05; Fri, 27 Sep 2019 23:44:25 +0200 (CEST)
Date: Fri, 27 Sep 2019 23:44:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: kbusch@kernel.org
Subject: Re: [PATCHv2 4/6] nvme: Introduce nvme_reset_continue
Message-ID: <20190927214425.GM16819@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-5-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919213431.7864-5-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_144429_079046_29A394A2 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
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
Cc: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
> +int nvme_reset_continue(struct nvme_ctrl *ctrl)
>  {
> -	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> +	if (ctrl->state != NVME_CTRL_RESETTING)
>  		return -EBUSY;
>  	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
>  		return -EBUSY;
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(nvme_reset_continue);

Also, aside from the other discussion items there doesn't seem to be a
point in exporting this function.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
