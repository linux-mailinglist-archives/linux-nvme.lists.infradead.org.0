Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69533719D7
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 15:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SK/+XsJXdVtPXw1GDS9s8gH8iIyISK1l0Mx4m7XX8Cw=; b=P9IQDWlP56ZVz1
	7XufAn/ApcoUrLY8L8Uee59n5deiKJ63eKwzSWZBFYsCKYQTlVtqn07TIltwDk2/vGiiG75Lw/ifi
	M7SzSS9MIDThgTz639jO516snkngDLDdgi54KmYmGqVMMXFuqHaSY/os7oyG2IG2O8kgKa2KF8tut
	4/qo3Egrpu+dVUZQ53pRvilJYfRiELAL/8Qy1S5zf6cLDLAGPSxUP+3I7iG3B8GRHnOpVGgvNinnE
	s7ZW3fCe8N5LuNJEQ7EW0WnMI33jYQLfaOJbZI/Can/0CoQq5pwF+Uzo2+QfEYrCQgLgdCjq7yMUt
	CbdmgcmoUCLZiNRrX1BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvJe-0005rh-6A; Tue, 23 Jul 2019 13:58:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvJW-0005rN-9P
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 13:58:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so19207358pff.8
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 06:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Zi610s/b90AFtAUVxPvK3YGzBiBtENbHyBMW2564WAs=;
 b=tP50Dfu53YUWYMSm69CfvlChdKM8c54f7iLOFltd3ixTJY8JqUrxounkdKPO8v4U+t
 i6WCLQlLsp7StiqY1KJks6ppi9NAjMZZaUbs9A46/mDyOYVCQ7HjkXPAlfy5aAqaiszm
 VpIclMAZmovdrE9UwToKDxArAMrssY1qS0eFUe1j59oNO6GCMfqz3VapURwyTy31NuqS
 bhSJcENodENjM/FETgfvMewQn4ueixcBGTlO6NoVCTf4HIgzAxZA3gF7GBpqpaWQSVom
 yLuyQqphsLaTylr3ObmuVq+VyIILH7ijjqZUFtKWe4OrlHZanV8PqQLVl5ghhG/8nOjA
 QAFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zi610s/b90AFtAUVxPvK3YGzBiBtENbHyBMW2564WAs=;
 b=bzos9DGyekGd+p60iOmvVQu72Z9z3TXUYyvvadMGvHFwTOc0zUk3c3HF/R0MH2a+HM
 e42myzTbv+cML7D1b6TO2I4YPAbTPN1QM753hIYBOqWrtK30i0NwRTv4tQSE6r0ibnjA
 3BuVV9MZ2sPCyOdRaYzzW9y2ver0Rw2nmsSkFbAF7S5WMFSPUTqZYVkZdVa27rYv9IVY
 Sh0wuBY5WGU+BOM4su6KiCVydU50chM5znsqbZLmspm6qYrKRnGbno+IOJMJWCBrXbos
 Kza9eBX2RWpWY0LrmlctcqSJD5B2MgwhTv5hO1YQxsdg9ba6eKPKGrtWiq8J09RIKdsV
 tmjQ==
X-Gm-Message-State: APjAAAWV1L+i+ikg6ZUu+J9dacdtkvlH+z3kHj/gtogUzO8Lu2LTtaVl
 yotskZUB+bMcb0f+PB4nmpM=
X-Google-Smtp-Source: APXvYqw1z+sYFMhbsiJrrst5lFZtCqAULXeIwpmf3SYcVdWLetOEzvwmmlm+adNz3viJYy3yWGhTOw==
X-Received: by 2002:a17:90a:c70c:: with SMTP id
 o12mr56949746pjt.62.1563890325411; 
 Tue, 23 Jul 2019 06:58:45 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c130sm41953910pfc.184.2019.07.23.06.58.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 06:58:44 -0700 (PDT)
Date: Tue, 23 Jul 2019 22:58:42 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/3] nvme: move sqsize setting to the core
Message-ID: <20190723135842.GE7148@minwoo-desktop>
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723000654.6448-3-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_065846_331293_4DD978DB 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-22 17:06:53, Sagi Grimberg wrote:
> nvme_enable_ctrl reads the cap register right after, so
> no need to do that locally in the transport driver. Have
> sqsize setting in nvme_init_identify.

Okay, I think it looks better.  Please ignore my comments on previous
patch, but the review tag :)


> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index bb970ca82517..e11d50599a51 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1695,7 +1695,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
>  	lo_hi_writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
>  	lo_hi_writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);
>  
> -	result = nvme_enable_ctrl(&dev->ctrl, dev->ctrl.cap);
> +	result = nvme_enable_ctrl(&dev->ctrl);
>  	if (result)
>  		return result;
>  
> @@ -2316,6 +2316,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>  
>  	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
>  				io_queue_depth);
> +	dev->ctrl.sqsize = dev->q_depth - 1; /* 0's based queue depth */

Sagi,

It seems like could be split into another commit, couldn't it?  It's
because that PCIe host driver never set the sqsize in my experience.  If
so, can we have it in another commit?

If I miss something here, please let me know :)

Thanks,
	Minwoo Im

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
