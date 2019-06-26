Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1173E57C93
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 08:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C12g2giCufzUrhIF7bQJSlEHSD07rg8lgLTBH11hFqw=; b=M1qWS4mXF1U1bG
	evrsQhlcJ5K7U1AftJ++76Bsds+cEuOK8WlOH0cyjpJrGzqGZWnhFE2/ql+7GHyTsp1674LUES+X0
	nYh7pI90mreRRJwrMLod0NK8RE0ZOP4zzOy3YbIioG1Vrk6W9yyQ56YcC/GllKSgo9UJ/Qse2AaCe
	PkbvfUQ0WxGR0meXNu3bLIRV4WPRG45d6YSwD9/jUVAQHHQ3y8J0HtsjnjFjh8+CrS8R72ADmul/j
	GwWpFCr0oerTCL+WgYkrG3hiln/8hFQUpBcFmxnZRb6+H4ykBTnJhZBaWDmj3BT7YONS8lFTlgaWJ
	8mI+YKONd7u6tUnKlMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOJc-0002nm-U0; Thu, 27 Jun 2019 06:55:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO98-0006KM-5w
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8VjKXhl6f4T4IhLYgkdcnRWolyhhnf5vL4hgVJFFYfo=; b=W4EgevkQZS7FhEFj/z3NOr9gu
 YLWWuF0jZueFadpREC5saQskTYzm41WX+HXuIWWfNIORQKz04mP3m2QqODUGOIxZl4TjbwnjiLpY/
 u9ypkrFywa8PNuRNt8Pf2CoVBfn6r1ysRjL3EAYW1t6/K5//UbLGA5WHRfXdptzq0kKqqDXLK+R8x
 3egCW3cvFgec0wMWr/EyR2BV6IiLYBMq1QOonAlbXrO2Byll7G3sNX/8BnBE4XS8WiFgruJFJv49W
 sEyKhp395hOxGoUSwKWVtrN2CoAbNPGuqb5wdIFETFvYCbLCsORlL0Z0ZyKf7vcfh3EDVZuTBdO5E
 DzPQw6Nyw==;
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGI8-0002iF-85
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 22:21:25 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5QMK8Kp011308; Wed, 26 Jun 2019 15:20:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=8VjKXhl6f4T4IhLYgkdcnRWolyhhnf5vL4hgVJFFYfo=;
 b=jr21TgH1CIiJel4Zv4SPmKqtkUaRFX+2cfcjamktTAgUzSeoMMYvPwV6kGOBZgnWLxm0
 vqS/jSfrKCXKCmGuBrdeimt6Tl5/FAE5S+rR7zn5xpUubiRHBdCqszMYveDg0pcQBdOI
 q5+AO6rXpzQUlV35f0RnKjFY1clV20mpEFftG7nza4ZZ7g1YaePpLEjJKEP2udeiIQsI
 gm/nle02Z7FfshOLAon2DPP7ZSstZz44/UvW5qmY2iDFDeH3LvRtWG9pZQTvp5BzQ8GG
 YMNJbiWABcqxpb5ZTfsBy+ly8e9Xc/b1XzUW1Ap2C354nH0eoAIwUiDF6Gg6orA8EPMM vQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tch6981up-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 15:20:17 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 26 Jun
 2019 15:20:16 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 26 Jun 2019 15:20:16 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 07BB03F7041;
 Wed, 26 Jun 2019 15:20:16 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x5QMKEpn025835;
 Wed, 26 Jun 2019 15:20:15 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 26 Jun 2019 15:20:14 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: fix module unloads while lports still pending
In-Reply-To: <20190625160604.3905-1-jsmart2021@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_12:, , signatures=0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019, 9:06am, James Smart wrote:

> Current code allows the module to be unloaded even if there are
> pending data structures, such as localports and controllers on
> the localports, that have yet to hit their reference counting
> to remove them.
> 
> Fix by taking a reference out on the module upon the first localport
> registered, and which is cleared when the last localport is removed.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>  drivers/nvme/host/fc.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index b7662e237eb9..bd80e2c475da 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -229,6 +229,8 @@ nvme_fc_free_lport(struct kref *ref)
>  	/* remove from transport list */
>  	spin_lock_irqsave(&nvme_fc_lock, flags);
>  	list_del(&lport->port_list);
> +	if (list_empty(&nvme_fc_lport_list))
> +		module_put(THIS_MODULE);
>  	spin_unlock_irqrestore(&nvme_fc_lock, flags);
>  
>  	ida_simple_remove(&nvme_fc_local_port_cnt, lport->localport.port_num);
> @@ -398,6 +400,11 @@ nvme_fc_register_localport(struct nvme_fc_port_info *pinfo,
>  	newrec->localport.port_num = idx;
>  
>  	spin_lock_irqsave(&nvme_fc_lock, flags);
> +	if (list_empty(&nvme_fc_lport_list) && !try_module_get(THIS_MODULE)) {
> +		spin_unlock_irqrestore(&nvme_fc_lock, flags);
> +		ret = -ENODEV;
> +		goto out_dev_put;
> +	}
>  	list_add_tail(&newrec->port_list, &nvme_fc_lport_list);
>  	spin_unlock_irqrestore(&nvme_fc_lock, flags);
>  
> @@ -407,6 +414,9 @@ nvme_fc_register_localport(struct nvme_fc_port_info *pinfo,
>  	*portptr = &newrec->localport;
>  	return 0;
>  
> +out_dev_put:
> +	if (dev)
> +		put_device(dev);
>  out_ida_put:
>  	ida_simple_remove(&nvme_fc_local_port_cnt, idx);
>  out_fail_kfree:
> 

Changes look ok.

Did you hit this during testing? Wondering because LLD would have unloaded 
prior to nvme_fc, so no lport/rport should remain if LLD behaves well.

-Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
