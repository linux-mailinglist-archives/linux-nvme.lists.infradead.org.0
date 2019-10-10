Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E8D2E5A
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yrbXE/OPyAAxhJyIzqncA4pbIpGc1hr2bbYewOyTHw=; b=b1/RMW2H2LJy5J
	fPuVjYZhDkmds+NK0kypVvHesBl3mX8ER2Hzp6aV7kzxpfQIt3HnJ7I+70RZ/CVbUFuugwcwrUnWT
	fAfRWOXvwgdKSi5FyNeb5TsHzCQBUayuAIIHXbODRv/O3dz0IgOXH9Ns4NdIV4sckFYPgYtewHeoJ
	iHgk/nSUCzwV42RVZXJKyc3ZWGtTyrgsUosk1kpaTXZ3B9tky3Z/VjvkZc9JTe1GxHvfOfl9HEKdo
	hgu+S170UPB97U4kLpB8WfYR+gQLlTjHEiIih6Rwvl6T3ozuooFd6YXve0H/N94Yc+ffSupniJwWS
	LKXXLyQXcweVP6j05ZLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIb0E-0003Fz-S0; Thu, 10 Oct 2019 16:09:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIb08-0003FU-F5
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:09:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8579A68C7B; Thu, 10 Oct 2019 18:09:11 +0200 (CEST)
Date: Thu, 10 Oct 2019 18:09:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 4/5] nvme: Prevent resets during paused controller state
Message-ID: <20191010160911.GA1868@lst.de>
References: <20191010160527.22376-1-kbusch@kernel.org>
 <20191010160527.22376-5-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010160527.22376-5-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_090917_183653_7F42747E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Edmund Nadolski <edmund.nadolski@intel.com>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 01:05:26AM +0900, Keith Busch wrote:
> +/*
> + * Use this function to proceed with scheduling reset_work for a controller
> + * that had previously been set to the resetting state. This is intended for
> + * code paths that can't be interrupted by other reset attempts.
> + */
> +static int nvme_reset_schedule(struct nvme_ctrl *ctrl)
> +{
> +	if (ctrl->state != NVME_CTRL_RESETTING)
> +		return -EBUSY;
> +	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
> +		return -EBUSY;
> +	return 0;
> +}
> +
>  int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
>  {
>  	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> @@ -3829,13 +3843,13 @@ static void nvme_fw_act_work(struct work_struct *work)
>  		if (time_after(jiffies, fw_act_timeout)) {
>  			dev_warn(ctrl->device,
>  				"Fw activation timeout, reset controller\n");
> -			nvme_reset_ctrl(ctrl);
> -			break;
> +			nvme_reset_schedule(ctrl);
> +			return;

I don't really see a point in that nvme_reset_schedule helper,
especially as the name is a little confusing.  Moving the comment here
and just open coding a

			if (ctrl->state == NVME_CTRL_RESETTING)
				queue_work(nvme_reset_wq, &ctrl->reset_work))

would seem much more obvious and matches the nvme_handle_aen_notice
side.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
