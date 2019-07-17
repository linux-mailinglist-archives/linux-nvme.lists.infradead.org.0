Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ADC6BBD6
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 13:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1puj20gMDDNjrNqpqaW1sAFGdttJxL3CZy5fC+j2ZA=; b=c7LYJCjnuRihA0
	zI8SxhT+JJtfBqEJohzXzTN7IbwDIZMpDk0gaxhebWnidrRhXjJdme0ZtEJ/NGA3NUurZ4sbppNtF
	ZA17MzlJPGhAYzkJ2XbJwsHIqWcW+ZCQtIHJkBz730XSmmGGyKxQ4HNXlOc7TpNeIMuH0/sRqwfwd
	DanUr/a7RJuDEgld7Hx+Ps+rj9E7QIxQMrwIqxhW3HLZ7xcJ8jrBSUUE8jxXZ1dXMpcTdWDYCwBJ8
	oIp6vwGS51/nmCyfpDFVfH83jEguHKGuB4Ws9Qrrb3Rr/XZiz4YINr0NhA5fTGJdGOSb3+hWjvLBI
	mfgen+GjWUSYg/oCR2eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniTS-0004D1-4s; Wed, 17 Jul 2019 11:51:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniTN-0004CK-O1
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 11:51:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so10719198pff.9
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 04:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GIJbr25lVT/D/Vy27DLzuKerhv8UbYHOIOCQJikwBFA=;
 b=uIzwJ/ze91LaMB3BoL1PAbHbciev+otvhS8f4ghjEtZICozZi6YfWLlksybW7RfJ0w
 ol5s203a37yS0N/j6P6msr0Cn7wmAtOdEA+oSWiYe8+nJcErHR2bCcuQ8lqR1s42okzP
 fFrIHf6Uc38uyBGRDbcz2YxUkNNMN7d3DXupfXAH3T4izSWPcr9xnXFGgHDgZGRDNWFm
 xXKfS3WW53MdkuPvAXfZUbvsyzckXH+dcknPhehbXdI3zL8kbZK9W7Kp8OymyGg/1FPk
 y+tEpiS4sguwTasF3IEkweGCeeoDZUcXb/7UEKMuKaU2Qsm8N7Jan9Q5KeuRT0VVz23W
 FmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GIJbr25lVT/D/Vy27DLzuKerhv8UbYHOIOCQJikwBFA=;
 b=oK+arVgr2G/YTPMJL2DkfDud9DkZZLQ2dNIpzSEWPRpd5kqtq1YWNdwMomQBh9LJIB
 nDMPziursMs66FiktTCjiZikQTnR8CagDvpH33mCq4yDfaXp1nkqQD57BFU6Fc7ReO2G
 0w+0/uawFoC4i5K0Tl5nSYooY/Oi4K6WQ3aY4Ny8nASffY4UGBGU/8vTN4+44PJJEM7B
 behFO1tIXl/svJN9unD+yRA0mU4Nb38lSBCXiwBAdf2pMVfQgEvOxfXmlFu/CWXPV7o1
 lffaA/y84PyUdqnPTMfBORe9uvlJVQzEeq1AaMinRqsJEH1yMvf/IT5O9OVwufggmvQw
 FK+Q==
X-Gm-Message-State: APjAAAXub6jcSg8UoJl1Gd1XL7fUNdkuJJt/0cKE02RRmafDDLwh+raO
 ykf18gTiPzIR5mfj5nhfmS0=
X-Google-Smtp-Source: APXvYqzZd5w1gpD8uRbzHmNaVRtBwb7cvYeYpwZdI59MbwsKJhhvaXtRon+6DReuMIy9nrRfH9xrow==
X-Received: by 2002:a63:ee08:: with SMTP id e8mr16191189pgi.70.1563364309173; 
 Wed, 17 Jul 2019 04:51:49 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id u6sm20799749pjx.23.2019.07.17.04.51.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 04:51:48 -0700 (PDT)
Date: Wed, 17 Jul 2019 20:51:45 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v2 2/3] nvme-pci: Add support for variable IO SQ element
 size
Message-ID: <20190717115145.GB10495@minwoo-desktop>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-2-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717004527.30363-2-benh@kernel.crashing.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_045149_813324_3AEF627C 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-17 10:45:26, Benjamin Herrenschmidt wrote:
> The size of a submission queue element should always be 6 (64 bytes)
> by spec.
> 
> However some controllers such as Apple's are not properly implementing
> the standard and require a different size.
> 
> This provides the ground work for the subsequent quirks for these
> controllers.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
>  drivers/nvme/host/pci.c | 11 ++++++++---
>  include/linux/nvme.h    |  1 +
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 8f006638452b..1637677afb78 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -28,7 +28,7 @@
>  #include "trace.h"
>  #include "nvme.h"
>  
> -#define SQ_SIZE(q)	((q)->q_depth * sizeof(struct nvme_command))
> +#define SQ_SIZE(q)	((q)->q_depth << (q)->sqes)
>  #define CQ_SIZE(q)	((q)->q_depth * sizeof(struct nvme_completion))
>  
>  #define SGES_PER_PAGE	(PAGE_SIZE / sizeof(struct nvme_sgl_desc))
> @@ -100,6 +100,7 @@ struct nvme_dev {
>  	unsigned io_queues[HCTX_MAX_TYPES];
>  	unsigned int num_vecs;
>  	int q_depth;
> +	int io_sqes;
>  	u32 db_stride;
>  	void __iomem *bar;
>  	unsigned long bar_mapped_size;
> @@ -162,7 +163,7 @@ static inline struct nvme_dev *to_nvme_dev(struct nvme_ctrl *ctrl)
>  struct nvme_queue {
>  	struct nvme_dev *dev;
>  	spinlock_t sq_lock;
> -	struct nvme_command *sq_cmds;
> +	void *sq_cmds;

It would be great if it can remain the existing data type for the
SQEs...  But I'm fine with this also.

It looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
