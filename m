Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0259613E341
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 18:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2UjNIiVYILqCyNIETH5VQdOuuhnoDvMoWHsXLS+skc=; b=SNt0VLP8AocBCA
	eQWTy9vFdnRZ1CfxOxvmLCZGpvkU6Yo9uEzl33SJEnzKEO7BMmsURSz/unnx9FMjk/F4+H+cR/vvd
	IP7t/bAtXpMOuIsAWq4yxLtmZg7/BLnJ1MgUPjgUpJeW71bTB97/0QNI6hOrkypaY2D8WajkBeB54
	/AeDwoYw2iR27wJ8z5z8nh3tPR2s/Ob69jjw55RD/FQe7/DYEERJAYr/PFPiYpwfpGYA3TrSXUTM2
	vIEVQOFwEq5i1mtqOUlec6PYpE782jpD7GxjpZq76dGKpThYLtFkbitFfdRkjLdURQCaqvbYN4ZRs
	3yk39B8eTopBR4b98Rfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8WA-0001Fs-Ma; Thu, 16 Jan 2020 17:01:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8QV-00035N-93
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 16:55:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2FF2468B05; Thu, 16 Jan 2020 17:55:20 +0100 (CET)
Date: Thu, 16 Jan 2020 17:55:19 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V2 4/4] nvmet: update AEN list and array at one place
Message-ID: <20200116165519.GA23960@lst.de>
References: <20200109050244.5493-1-chaitanya.kulkarni@wdc.com>
 <20200109050244.5493-5-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109050244.5493-5-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085523_491263_E2587166 
X-CRM114-Status: UNSURE (   7.58  )
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +
> +	if (!status)
> +		return;
> +
> +	mutex_lock(&ctrl->lock);
> +	while (ctrl->nr_async_event_cmds) {
> +		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
> +		mutex_unlock(&ctrl->lock);
> +		nvmet_req_complete(req, status);
> +		mutex_lock(&ctrl->lock);
> +	}
> +	mutex_unlock(&ctrl->lock);

I think this hunk doesn't belong into nvmet_async_events_process.
I'd keep it as nvmet_async_events_free(), and then call

	nvmet_async_events_process(ctrl, NVME_SC_INTERNAL | NVME_SC_DNR);
	nvmet_async_events_free(ctrl);

in nvmet_sq_destroy (which would really benefit from a local ctrl
variable now).

Otherwise this looks good.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
