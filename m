Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C35D11C91B
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5RulPo/t11uuDujFnTtaL5ydO7Kr8qNOYWxpiSwROs=; b=GpCGEj1NAlituZ
	G3+u2a9DtUDHONVX4QLhUjACXmZKeKaopTaePMURxD4X0cNICZTz0UB9DNe0xIREdvrKI+30xQJl+
	sXA6kvzCuldFFZ+42fnR1JdME6kFTd2FMvl5WVswTrcA6+wNk0gW29MELQ3B+5L82rQ0xSSa9YN0u
	vJJVDhr70WzkyIh5KGuO8m+K4jHG4lgwHshV5ToeLbO2Xiiz5P47P+JQP7WIGGUWSKmO4lRqCEyJ8
	FOqQURxdQ9kG6xVqUYYRWWO6SJZm3bNa4LsJ/DWhTnFl/Aq3Yff+qOKTNj+uCANeCWebv3NyAQyPE
	EIC9A20pyrZqY7Uso4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKmB-0003gu-2g; Thu, 12 Dec 2019 09:28:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKm5-0003ga-BL
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:28:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3A03768B05; Thu, 12 Dec 2019 10:28:43 +0100 (CET)
Date: Thu, 12 Dec 2019 10:28:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V4 2/3] nvmet: make ctrl model configurable
Message-ID: <20191212092842.GI2399@lst.de>
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-3-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127094034.12334-3-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_012845_538895_EB228BE9 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Ruijter <MRuijter@onestopsystems.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static ssize_t nvmet_subsys_attr_model_show(struct config_item *item,
> +					    char *page)
> +{
> +	struct nvmet_subsys *subsys = to_subsys(item);
> +
> +	return snprintf(page, PAGE_SIZE, "%s\n",
> +			nvmet_model_number(subsys));

This whole statements easily fits onto a single line.

> +	down_write(&nvmet_config_sem);
> +	kfree(subsys->model);
> +	subsys->model = tmp_model;
> +	up_write(&nvmet_config_sem);

Without using something like RCU this means all users of ->model
now need to take nvmet_config_sem.  I guess using RCU here is simple
enough - just use rcu_swap_protected and kfree_rcu here.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
