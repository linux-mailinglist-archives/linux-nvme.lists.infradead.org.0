Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5668BB5EE
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 14:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4BvV7YKmWFg2IOu/SmBlGfqc7l9zkjhR6vsC4Rx0oA=; b=Od4H69peQM/bu7
	dJwm/4mzjqFVEU2CVqyUsiKnSWGUe1m3nCc2d4AjssMVQn7EOrvHkiJGEjUbFLOlBcsRMePM9KlvW
	ZLrg7WVTNImLBC9RbRLqTMxECAEqpTNc31haD8bWdAsrrCyXjISgv3DaTbiHbw6z4JSg9qyPYedBb
	kCbwwHa8H5Js4RrK+XzEzedmlrd9j0GCPWpsIRBL65M/ctx0qArJqdwSMO16qoDFtFzX33BRjRItl
	YjO6+P3pUk48/Wr25TSFyD98qu2Vy0LSeB9keF8yGz5RylQW+gGpPg987z6/fGtxHp3dIITxTS4y4
	KAOc4W6FNniNgBftZgyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKiZ4-00040e-2o; Sun, 28 Apr 2019 12:05:50 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hKiZ0-00040V-Kj; Sun, 28 Apr 2019 12:05:46 +0000
Date: Sun, 28 Apr 2019 05:05:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 1/2] nvme: improve logging
Message-ID: <20190428120546.GB9759@infradead.org>
References: <20190425024041.17657-1-chaitanya.kulkarni@wdc.com>
 <20190425024041.17657-2-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425024041.17657-2-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: hare@suse.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:40:40PM -0700, Chaitanya Kulkarni wrote:
> Currently nvme is very reluctant if it comes to logging anything,
> _unless_ it's an ANA AEN. So this patch tries to remedy this by
> decreasing the priority for the ANA AEN logging message, and improve
> the logging when calling nvme_reset_ctrl().
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

If this is originally from Hannes it also needs a From: tag in the
body so that git attribute it to him.

Also please add a changelog vs Hannes v1 in the cover letter.

> +static const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
> +{
> +	static const char *const state_name[] = {
> +		[NVME_CTRL_NEW]		= "new",
> +		[NVME_CTRL_LIVE]	= "live",
> +		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
> +		[NVME_CTRL_RESETTING]	= "resetting",
> +		[NVME_CTRL_CONNECTING]	= "connecting",
> +		[NVME_CTRL_DELETING]	= "deleting",
> +		[NVME_CTRL_DEAD]	= "dead",
> +	};

Can we move this array outside the function?  Yes, with the static
it doesn't really make a difference, but it just feels nicer to me.

> +	const char *state_name = nvme_ctrl_state_name(ctrl);
>  
> +	return sprintf(buf, "%s\n", state_name);

I don't think we even need the state_name local variable here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
