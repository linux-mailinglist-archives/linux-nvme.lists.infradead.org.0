Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165971EE53A
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 15:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RISpBfilhTO6RhDMQzMkk+bl6wIjFuiKxK06yU//mQ=; b=W/LvZhykfrFt06
	RzhQhJduV95HlzTPFMJqvdX/lJRaRkBkJnqVi4fPgmysojmSu5IqRcd2YeUsHAIPubw6Jywk5N6xS
	9F0PpdkCNCj2rDrUBbzyZdp+fGBEbTGq3AHSh9qYtSzaMm6M81O/pRHWvOhTt0oUWe0O0B+OtNsZc
	CrRuOSwu5cGcVSAYZbbxzmIgniAyxUbdlb2QM75314mZ4+GMOuaO3N9xbHrR5w3Vb8W++RgeTaY1g
	+zdM8zeG7Q+pHhc46yarmpu2gNXvBWQoWfqEqQb6dUUot5BgrpVBxQqxbdNj8sHf7RYstrCicFaoR
	KOrEe3If+KcizX/fVYRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgppq-0001Gf-8p; Thu, 04 Jun 2020 13:23:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgppm-0001G9-6B
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 13:23:03 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFB8E207DF;
 Thu,  4 Jun 2020 13:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591276981;
 bh=WCrgd5DvCA9X0Fts4kRjDoBSvnReKLjWH56d/ZxJ9VE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZiWl7zaxZRCTMZGJJBP9urIt9ArdsApSXDJCKnFzWSvphd6NwO0fRas4qrTrpjT9j
 lh83zMu2gL6K93kmJHdRbGM0z29Apg4nQaeqxQ6fUvyUJ2+k03xqNYb22hoX159C+G
 mXsLIm5fQBD2929xkZZRMAzMW4qi3QlWloKgS+sU=
Date: Thu, 4 Jun 2020 06:22:59 -0700
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme: check for NVME_CTRL_LIVE in nvme_report_ns_ids()
Message-ID: <20200604132259.GA146361@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200604115602.78446-1-hare@suse.de>
 <20200604115602.78446-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604115602.78446-2-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_062302_249285_DCD01E50 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@wdc.com>, Daniel Wagner <daniel.wagner@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 01:56:01PM +0200, Hannes Reinecke wrote:
> When a controller reset happens during scanning nvme_identify_ns()
> will be aborted, but the subsequent call to nvme_identify_ns_descs()
> will stall as it will only be completed once the controller reconnect
> is finished.

If nvme_identify_ns() is aborted, shouldn't we not proceed to the next
command? It looks like the code already does that, from nvme_alloc_ns():

	ret = nvme_identify_ns(ctrl, nsid, &id);
	if (ret)
		goto out_free_queue;

And then from nvme_revalidate_disk():

	ret = nvme_identify_ns(ctrl, ns->head->ns_id, &id);
	if (ret)
		goto out;

Those are the only two paths to nvme_identify_ns_descs(), so it looks
like nvme_identify_ns() must be successful in order to get there.

> But as the reconnect waits for scanning to complete the particular
> namespace will deadlock and never reconnected again.

The fix looks a bit fragile. What if the controller is reset immediately
after the check for live? It'd be safer such that reconnect didn't have
to wait for scan_work, no?  The pci transport has no such dependency,
for example.

> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 569671e264b5..b811787505f7 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1792,7 +1792,7 @@ static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
>  		memcpy(ids->eui64, id->eui64, sizeof(id->eui64));
>  	if (ctrl->vs >= NVME_VS(1, 2, 0))
>  		memcpy(ids->nguid, id->nguid, sizeof(id->nguid));
> -	if (ctrl->vs >= NVME_VS(1, 3, 0))
> +	if (ctrl->vs >= NVME_VS(1, 3, 0) && ctrl->state == NVME_CTRL_LIVE)
>  		return nvme_identify_ns_descs(ctrl, nsid, ids);
>  	return 0;
>  }

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
