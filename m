Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A956BBF8
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 13:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23jofVmxCt14+T4rJnQY+pXLRbfKmt63II311tNA5JE=; b=La/RzbZcCPtPsm
	qDWidMjZJTZQl0jd+lqvUuqL3jooLA97+mCSAGAPa5bHCWr4idVxTti3btrMGF83Tnk4wH41VlnHN
	qPJ67au7O5ggnuidC2IPI3Bb2+EPMhm0KLiQpzfmRkbX1nHkAWZkPdX55m6wGDm3oTwnXJyjfZsSo
	Z3SqVgUeVwmZcbZ2UQoJgNzTxLqwcUvEy/UVGcFYnn5+zp5skJYcT077+5ePjRs6gGF0aMblKmJsD
	XEhZTkKoKdyYEMA4lemS4fEZs7vGz+wp014pHPgoximusCpWlHLKEw+UpwhMqbcMUAgYxCavcQ8jI
	9eQZMm99EudZdZ8WY8UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniYi-0006r1-R1; Wed, 17 Jul 2019 11:57:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniYd-0006qX-Fe
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 11:57:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so10740997pff.8
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 04:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4Uxow3cycqJTrv8QCuRAaifqNNkOSR4osz8ZOQC0YV8=;
 b=ZhbxOu/rM9MdFM4LmxPdaMwe7M/yE7DkFMiVcryLKlUXtOOE/pcPz8VFfhUibpXJmH
 HzwvGDjri3Y91tn/Ciaf7WkdB/en8rAl11MMbXwDIoMq+i54MPPOZL7EGT+MiE75BGS4
 lC8eban/PfAEs4RiGQQ87dlF7ODUJSsS7RFwx6n7Wkcr+6vk6FA51XGFWrjhq+9V/qoK
 RE8jm+YwiQcm8bHeMNAjqRcJ2zOCQ2c+2G8Hh0oiAqSEgfxz31TwZaJuP3lTVToXkSr3
 GOGGMPC2I2nQRK476HleTC32mr5yG87560bpcgrg5zBJo0FvQdArmxyRsfpE/ZK9Aw6x
 yn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4Uxow3cycqJTrv8QCuRAaifqNNkOSR4osz8ZOQC0YV8=;
 b=bjmIZBJP8/CipnCF8uEjRttqTqR34Xnoj6vKJrryagDbp2Et+sVtEIO9OpyGOiGjCg
 IX/psvvm208CDElh0yGhO4sIEGAn6RZjE9dyILicx+l8h3CPQqMvIEoq/dl37fIta5BC
 2rT43gpMxT4cInOtu+KBkNWhqVtBQ8mhEbA1LWAyS8Nig4L8ySsMB/CueKYJgEXszF06
 Ray1fB/84Dam77jJxkd+bXhF74x8FimefuftdrZt4AhI10Im4SwMSENjrx9BE64Rgy5v
 zr83QYtqG3VFRrbn3sa1jlyM9pkcLuutrG8ju4EKvmXZ8ctsGdhvNemshClRrUo8JD2G
 AUoQ==
X-Gm-Message-State: APjAAAWniqKHiokLuIK2B55iNuFmiXLyeWh6E+Bj7zcpzLONHUWslHgM
 01Qs3gzTXMvE/wOj3x5tUZ0=
X-Google-Smtp-Source: APXvYqxi/ukEOWxogNkFe50SK2F0JRfVKCXwdjjcwR2r7aOBOssaQX/bLMdNikjmCZC1rihqLoY3rg==
X-Received: by 2002:a17:90a:cb87:: with SMTP id
 a7mr44800362pju.130.1563364634979; 
 Wed, 17 Jul 2019 04:57:14 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i123sm34048638pfe.147.2019.07.17.04.57.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 04:57:14 -0700 (PDT)
Date: Wed, 17 Jul 2019 20:57:11 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
Message-ID: <20190717115711.GD10495@minwoo-desktop>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-8-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716211241.7650-8-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_045715_546022_DC4216B2 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-16 14:12:38, James Smart wrote:
> In preparation for searching controllers to match with connect args:
> 
> Create a new routine find_ctrl_with_connectargs() that will search the
> controllers that exist in the system to find one that has attributes
> that match the connect arguments specified.  If found, the routine
> returns the controller name ("nvme?"). If not found, a NULL is returned.
> 
> Routine is defined as a global as a subsequent patch will use it
> from the fabrics routines.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> ---
>  nvme.c | 37 +++++++++++++++++++++++++++++++++++++
>  nvme.h |  1 +
>  2 files changed, 38 insertions(+)
> 
> diff --git a/nvme.c b/nvme.c
> index 7f706c8..3fc2658 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -2048,6 +2048,43 @@ cleanup_exit:
>  	return found;
>  }
>  
> +/*
> + * Look through the system to find an existing controller whose
> + * attributes match the connect arguments specified
> + * If found, a string containing the controller name (ex: "nvme?")
> + * is returned.
> + * If not found, a NULL is returned.
> + */
> +char *find_ctrl_with_connectargs(struct connect_args *args)
> +{
> +	struct dirent **devices;
> +	char *devname = NULL;
> +	int i, n;
> +
> +	n = scandir(nvme_ctrl_dir, &devices, scan_ctrls_filter, alphasort);
> +	if (n < 0) {
> +		fprintf(stderr, "no NVMe controller(s) detected.\n");
> +		return NULL;
> +	}
> +
> +	for (i = 0; i < n; i++) {
> +		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
> +			devname = strdup(devices[i]->d_name);
> +			if (devname == NULL)
> +				fprintf(stderr, "no memory for ctlr name %s\n",

nitpick: s/ctlr/ctrl

Maybe it can be updated when it gets merged.

Otherwise, it looks good to me.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
