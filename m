Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5596A213
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 08:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVxcbEgEvlvuemvVziGKBC7X7f4cjILPjUGQ6cMSsPE=; b=a1b10tuGfNA4YM
	4rdZ2kv1h6TXGRIoviEGkc3s70inBsJhjmi0BJQJe4Mh1iSeo5nGq3dqT7pR6Oe++el60QMJmSCJF
	AflcjV+v4RLfiVsvFjLgpkof6YYlf0wEsyOJK9n7Nslwi7DC/muzydiDErm73N6Qy74gbjYn9LTkU
	vFwRssuVzJK/bPtqOiGhObYO/70FGKQuIhPnoFvsJEaQKUHILAZ/LHyTzMATNqJYIdvXNmO6S08mV
	KgbuNnzNzQqGPUK6YFZGxxs/8tpCnzLWNB1UNXkKSG0JRzJ+nClbCouGSy1VZqEhGpJUrCiCccKbj
	/wdRBRoM9ApF0Bqc5aCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGZv-0002ii-VI; Tue, 16 Jul 2019 06:04:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGZm-0002iF-VU
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 06:04:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6649468C65; Tue, 16 Jul 2019 08:04:31 +0200 (CEST)
Date: Tue, 16 Jul 2019 08:04:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
Message-ID: <20190716060430.GB29414@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716004649.17799-2-benh@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_230435_162438_3E088A72 
X-CRM114-Status: GOOD (  10.69  )
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	/* Use default IOSQES. We'll update it later if needed */
>  	ctrl->ctrl_config |= NVME_CC_IOSQES | NVME_CC_IOCQES;
>  	ctrl->ctrl_config |= NVME_CC_ENABLE;
>  
> @@ -2698,6 +2699,30 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>  		ctrl->hmmin = le32_to_cpu(id->hmmin);
>  		ctrl->hmminds = le32_to_cpu(id->hmminds);
>  		ctrl->hmmaxd = le16_to_cpu(id->hmmaxd);
> +
> +		/* Grab required IO queue size */
> +		ctrl->iosqes = id->sqes & 0xf;
> +		if (ctrl->iosqes < NVME_NVM_IOSQES) {
> +			dev_err(ctrl->device,
> +				"unsupported required IO queue size %d\n", ctrl->iosqes);
> +			ret = -EINVAL;
> +			goto out_free;
> +		}
> +		/*
> +		 * If our IO queue size isn't the default, update the setting
> +		 * in CC:IOSQES.
> +		 */
> +		if (ctrl->iosqes != NVME_NVM_IOSQES) {
> +			ctrl->ctrl_config &= ~(0xfu << NVME_CC_IOSQES_SHIFT);
> +			ctrl->ctrl_config |= ctrl->iosqes << NVME_CC_IOSQES_SHIFT;
> +			ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC,
> +						     ctrl->ctrl_config);
> +			if (ret) {
> +				dev_err(ctrl->device,
> +					"error updating CC register\n");
> +				goto out_free;
> +			}
> +		}

Actually, this doesn't work on a "real" nvme controller, to change CC
values the controller needs to be disabled.  So back to the version
you circulated to me in private mail that just sets q->sqes and has a
comment that this is magic for The Apple controller.  If/when we get
standardized large SQE support we'll need to discover that earlier or
do a disable/enable dance.  Sorry for misleading you down this road and
creating the extra work.  

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
