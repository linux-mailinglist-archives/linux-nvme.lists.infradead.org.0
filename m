Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E23257282
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqNsw1aTuGhYP0lCfKf2uHSpsH6wznFISf8ovKW82Sk=; b=RFHVq4j7/7hkQV
	6KQv02asp6LPSzYcfHJde4whHuf3UizXbgt+VGJ/jfmnRhvCceIMH+/gNGVdVToMP3ZUaPlBD2YR4
	wxPHR9Z78XtBoVplhr5CWNrGwX3ct5XU3LyIU/ptcLVi4AgsbEtcGbX7FaGg/5pdtir2I2ZBrnFTm
	xUWKy+PKMIY0s6xzG2ej7ih3I1sNjUf/ygUeW5TxtXJO7U1nv3XqWudcbawwKUKtZ+MEHOzuFIYWe
	DuABh+tymdMLZHpZ5ynT5Z9RsNks+ioH9mwqclBmpwLh1pbfnVygZvLCnNz+GjpmE9SoRqV//SV3D
	hmCCazhMGnC++0QgVmAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgES4-0004wg-8i; Wed, 26 Jun 2019 20:23:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgERn-0004vQ-Ed
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:23:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so1723954pgp.11
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1sFRYli76Oa9Fpzatk5dKJj5bbhDS+hpfpOSa39CM/g=;
 b=Uw/peMiDEBTcscGvhEOaR8eZH/EpoXIst/MpQF5Zjbawytad/jS6Me0x1z4eMD1peF
 YElaFb9RYpjZgzleYOqgYfk+JTk5Tbp1vt9MH44Za+PVUbm0iaU2m5b32J4zlUgNP9Ox
 7I6JSYwfeuMn/P3zxEdbtNrf4AmWOZtib6mhwd9qGPaGQ8Qc1ZAAbFGm083lO5yReKO9
 KxH0blycJFDAveYnxoGY83lr4Ej1qBwpFGSxA+aCzPzjMJE0k7EfLuXcfpDNCg9MKtkn
 s5JoMo83/Thv4RE4c14l6FGnDG6JLk6lpq3HbSog9Qm44y4Omi6WalBMDu1C3icmw+v2
 GMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1sFRYli76Oa9Fpzatk5dKJj5bbhDS+hpfpOSa39CM/g=;
 b=r+m/o5qmyDfT/1yHY+Lp+ZpJ/Zw6ul9JlVPl7wK85HaHRO0KA97+g7Hyh7cLC1QoO+
 jIetITPzSqw4YObfzlXsZpXUpqcHWjDHZfBY4QpMD9rZ/wX4N1g18xQ8YP6DGH4BSQpR
 0Mc+S1sByQs4klPBFdjYQDgXxR7fAqInhAAmDPrtC+r0x9lJ3v5Mjf4B8QIMeIC6knDx
 hxnuvr6X6+DhPjVtrgqDMznX5xoVOw8YT/0CuvhLXXcovPP48uh7jocqxfXwdsmvUW6B
 kEMLQHgr3rzfEHTtlNB5ayvo4AWhJu9l7vM+2MC8/Ngo8NlCDgVPGtVafc7r6B6ULr4T
 6Idw==
X-Gm-Message-State: APjAAAVLS6yH57mVl14W1y9sGEAMhfM2g6UXEIlJLk2YuQWpYMqEyzuU
 G1IehmvsxrtOuxYNvy6TO+8=
X-Google-Smtp-Source: APXvYqwrOkJyA1bmUCcxC73Xdrb6sRHtJ3fe2VIjQ16DdeXFTHSVgSP92v7hi1aV0eBBAVVN5kNmYw==
X-Received: by 2002:a17:90a:3401:: with SMTP id o1mr1143077pjb.7.1561580594906; 
 Wed, 26 Jun 2019 13:23:14 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 1sm99647pfe.102.2019.06.26.13.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 13:23:14 -0700 (PDT)
Date: Thu, 27 Jun 2019 05:23:11 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] nvme-pci: Make nvme_dev_pm_ops static
Message-ID: <20190626202311.GB4934@minwooim-desktop>
References: <20190626020902.38240-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626020902.38240-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_132315_549413_00265DD9 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: keith.busch@intel.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com,
 Minwoo Im <minwoo.im.dev@gmail.com>, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-26 10:09:02, YueHaibing wrote:
> Fix sparse warning:
> 
> drivers/nvme/host/pci.c:2926:25: warning:
>  symbol 'nvme_dev_pm_ops' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/nvme/host/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 1893520..f500133 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2923,7 +2923,7 @@ static int nvme_simple_resume(struct device *dev)
>  	return 0;
>  }
>  
> -const struct dev_pm_ops nvme_dev_pm_ops = {
> +static const struct dev_pm_ops nvme_dev_pm_ops = {
>  	.suspend	= nvme_suspend,
>  	.resume		= nvme_resume,
>  	.freeze		= nvme_simple_suspend,

IMHO, it should be in static.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
