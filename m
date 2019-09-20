Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A02B96F5
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 20:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRj1/SR3n1TsqNgSePX0zWNfujJsQa/qs4ATHwZvkcc=; b=IL7VxPCNjzgd1P
	LPyJ2CQ3oFztnfVOeWZkLSLVOe+cM7q70K+H07no04YjcF0k9qoFHjU5/1SQ3e7SgZCgiaRkOh9tI
	lso3sLF1knePNgOFCiH7q8q8R4oUM0MjKqErR9faNOnyL+dBpoQBtEKuyH7mS9fhpKssqzAjYfYNW
	8bgWQOGym9ZnJlLohu8dzoS+cLFGVxoCACPQpHn4uvz8cs3XcpAVjUv+PS4iIr7njE+1GUYYlOv2w
	fxfNOsNNmSUNs2e1efSAqmTe6POTeIeEUkLyxSPN496knFrKQtLqSbF8Ad7fzPLdrJx0Hvuwsyumf
	zjZNbhnA49J/DMdzub3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNL2-00031J-CU; Fri, 20 Sep 2019 18:09:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNKy-00030w-1B
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 18:08:57 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60CCF20717;
 Fri, 20 Sep 2019 18:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569002935;
 bh=nS2LTBFxiEbsEh43096jdzy5B6z5+oP3z5M/FX39Opg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HGNfS6GnpFl6U2xTuhLtMx/VmQnTYZrQhxh/jEFE2CX/sW9E9TmPdOE0JJXYxjmsf
 ZC5xf6gJJlaInAhLlww2BBTS7ufH7Zo99WWHiQ5c1l6BqtoN36u3bvhfQngSNlSpIp
 qnqz1oO2todhPVG48Q0hRefk139E24JWjv0lxGQ0=
Date: Fri, 20 Sep 2019 12:08:53 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
Message-ID: <20190920180853.GC97854@C02WT3WMHTD6>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
 <c31bee2b-5f43-9744-8fbc-971c3504622e@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c31bee2b-5f43-9744-8fbc-971c3504622e@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_110856_097039_2F2329B1 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 11:05:22AM -0700, Sagi Grimberg wrote:
> 
> >   drivers/nvme/host/core.c | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 95b74d020506..33b5729763c2 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -3742,15 +3742,14 @@ static void nvme_fw_act_work(struct work_struct *work)
> >   		if (time_after(jiffies, fw_act_timeout)) {
> >   			dev_warn(ctrl->device,
> >   				"Fw activation timeout, reset controller\n");
> > -			nvme_reset_ctrl(ctrl);
> > -			break;
> > +			nvme_reset_continue(ctrl);
> > +			return;
> >   		}
> >   		msleep(100);
> >   	}
> > -	if (ctrl->state != NVME_CTRL_LIVE)
> > +	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
> >   		return;
> > -
> >   	nvme_start_queues(ctrl);
> >   	/* read FW slot information to clear the AER */
> >   	nvme_get_fw_slot_info(ctrl);
> > @@ -3768,7 +3767,8 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
> >   		nvme_queue_scan(ctrl);
> >   		break;
> >   	case NVME_AER_NOTICE_FW_ACT_STARTING:
> > -		queue_work(nvme_wq, &ctrl->fw_act_work);
> > +		if (nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> > +			queue_work(nvme_wq, &ctrl->fw_act_work);
> 
> btw, what happens if someone just initiated a reset here when the event
> is handled? just ignore the fw activation?

Yep, if someone reset the controller before the driver got to handle the
activation notice event, there's nothing for fw_act_work to do anymore
since CSTS.PP is not valid after toggling CC.EN.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
