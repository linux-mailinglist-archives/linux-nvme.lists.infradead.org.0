Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599721FFBEC
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 21:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUUawbXBog3DInz6g7CAfa4YuBIbr6nwOjfPwcLza4Q=; b=FFi78n8bfx1zev
	csNd+i5RipuyNg9/K3cyA3LqhQqGrdtA0Rz0r2Mh/xJYrYF4uwyCMaVFwbGJmq00IDJc8byKfC/4z
	mySXFhUS2AIbm6LNuIMokSkrFaMuiGvZxFR8J4Z/1mlMSKv0juzI8ufnknlKsXRePTKsiPrAAc6kT
	g0ZiuOjM0kjZ5KgnMvaoQaD4FsZ/EzbItXgoZKrVpk+F40ueM96RmWPro8JvgHlYOqotZd7vkZmIQ
	jYsiQ73sfRlzfk6wV6A2X/NEdJWadP2Sx5mM2Uyt3SO9wq8yk+2KOFSwDZATyzFXVRCGSVmp1olqF
	YzmqQwk/od3TqxJFcTdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm0Ph-0004mK-5S; Thu, 18 Jun 2020 19:41:29 +0000
Received: from charlie.dont.surf ([128.199.63.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm0Pc-0004lc-Ms
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 19:41:26 +0000
Received: from apples.localdomain (80-167-98-190-cable.dk.customer.tdc.net
 [80.167.98.190])
 by charlie.dont.surf (Postfix) with ESMTPSA id DA454BF56E;
 Thu, 18 Jun 2020 19:35:59 +0000 (UTC)
Date: Thu, 18 Jun 2020 21:35:56 +0200
From: Klaus Jensen <its@irrelevant.dk>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 5/5] nvme: support for zoned namespaces
Message-ID: <20200618193556.3s2gbkjsfotomot7@apples.localdomain>
References: <20200618145354.1139350-1-kbusch@kernel.org>
 <20200618145354.1139350-6-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618145354.1139350-6-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_124124_884276_59CA7A34 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: axboe@kernel.dk, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Ajay Joshi <ajay.joshi@wdc.com>,
 sagi@grimberg.me, Keith Busch <keith.busch@wdc.com>,
 Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hans Holmberg <hans.holmberg@wdc.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>, hch@lst.de,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Jun 18 07:53, Keith Busch wrote:
> diff --git a/drivers/nvme/host/zns.c b/drivers/nvme/host/zns.c
> new file mode 100644
> index 000000000000..d57fbbfe15e8
> --- /dev/null
> +++ b/drivers/nvme/host/zns.c
> @@ -0,0 +1,238 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <linux/blkdev.h>
> +#include <linux/vmalloc.h>
> +#include "nvme.h"
> +
> +static int nvme_set_max_append(struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_command c = { };
> +	struct nvme_id_ctrl_zns *id;
> +	int status;
> +
> +	id = kzalloc(sizeof(*id), GFP_KERNEL);
> +	if (!id)
> +		return -ENOMEM;
> +
> +	c.identify.opcode = nvme_admin_identify;
> +	c.identify.cns = NVME_ID_CNS_CS_CTRL;
> +	c.identify.csi = NVME_CSI_ZNS;
> +
> +	status = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
> +	if (status) {
> +		kfree(id);
> +		return status;
> +	}
> +
> +	ctrl->max_zone_append = 1 << (id->zamds + 3);
> +	kfree(id);
> +	return 0;
> +}
> +
> +int nvme_update_zone_info(struct gendisk *disk, struct nvme_ns *ns,
> +			  unsigned lbaf)
> +{
> +	struct nvme_effects_log *log = ns->head->effects;
> +	struct request_queue *q = disk->queue;
> +	struct nvme_command c = { };
> +	struct nvme_id_ns_zns *id;
> +	int status;
> +
> +	/* Driver requires zone append support */
> +	if (!(log->iocs[nvme_cmd_zone_append] & NVME_CMD_EFFECTS_CSUPP))
> +		return -ENODEV;
> +
> +	/* Lazily query controller append limit for the first zoned namespace */
> +	if (!ns->ctrl->max_zone_append) {
> +		status = nvme_set_max_append(ns->ctrl);
> +		if (status)
> +			return status;
> +	}
> +
> +	id = kzalloc(sizeof(*id), GFP_KERNEL);
> +	if (!id)
> +		return -ENOMEM;
> +
> +	c.identify.opcode = nvme_admin_identify;
> +	c.identify.nsid = cpu_to_le32(ns->head->ns_id);
> +	c.identify.cns = NVME_ID_CNS_CS_NS;
> +	c.identify.csi = NVME_CSI_ZNS;
> +
> +	status = nvme_submit_sync_cmd(ns->ctrl->admin_q, &c, id, sizeof(*id));
> +	if (status)
> +		goto free_data;
> +
> +	/*
> +	 * We currently do not handle devices requiring any of the zoned
> +	 * operation characteristics.
> +	 */
> +	if (id->zoc) {
> +		status = -EINVAL;
> +		goto free_data;
> +	}

A dev_err() here would be nice. I had to dig a bit to track down why my
emulated device didn't show up ;)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
