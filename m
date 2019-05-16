Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0C208AF
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 15:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z49zFs0IcjxRnhT7ZmF0Uc76K7VI3D7+MLIaRdtgc4w=; b=Ylo7Pn6xVmgUQC
	FCRZETaar/PRF3BJZQOiILn04Pp24WsTcn6gEpoJdEYNQZEZmX5NtRoWh1s+qdmmCm/rFwLpnPspX
	EhZX0xzazJ/geedTmLmvCZxZauNrWF6tqQOTVWZi3JgfhKiRHFgz3+As5wZgDD3cttGL2Z26kCuEF
	fJgoxu9kXnMq0/m7jGeO4SWvvky6d40H9MVRVdZUYCNuu76jQJfwToYUQn4JaXkYZnw+ir/bRTlIF
	cZ3ifo6j2JPKssOpTOBnnCQuMf5+8aBCOyvRr78JhFL+b7fIJebiUrksRo6PJw+KsCsnf1KtjQudC
	giyy6xwA8G0KMWKsSNCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGrg-0005IJ-QF; Thu, 16 May 2019 13:56:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGrb-0005Hu-PF
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 13:56:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id r18so1657877pls.13
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 06:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=guykZ5OwK9IlCWHgVSPmB94Xd0cukeZ5UeXQZ7FD9OI=;
 b=mj133N1vYbK+3Aab4yVnWg0bFHfcwGwUUUV7B+WPlGRSIAdI5kzASI2Lty4TJY0g3t
 7V2xPMQCXA53cKTMnxyJLFXgpRxVGNnqstAU4TNJDFIdLUKaqrJZHUrmb3SBnN35uTmn
 CKxN9YcNm/hq+acsqqWMQvq2gTJ/wI91aBlOAdBpKd52N6kqiO9KpNDbntMIyxs37ptr
 dwuWQkoXn/JYv8xc/5CD+sCyW49TeFo+wOqTU5/wJ2+n59bvmOEBdDdKOiqBjCsB/zeD
 dXOzR/hXik9W4PfIn4vo5BXb1QbTcJMeyeiW33WVnR3aYoT2Klb5AViFZfqdL8/+iPra
 Z6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=guykZ5OwK9IlCWHgVSPmB94Xd0cukeZ5UeXQZ7FD9OI=;
 b=qr79j7lg0v8dgcLDfZiD/rT8bGHVGq3BHxfLmTJUm5i8S7+GkKiaWfyE4c8OOiDt0P
 m0kg5vD1FPCbk+qhQcaP9QpWYBMBBamKuK2Btr5kuDCFX0pVKbMrQJfbuthXXAbx2dfA
 3bR+Kjv+JI4viMy04LI1gJ6cEthCz0EGOAteaXrBzlLJsYl/mPmunsU5G2a6zcMZxuOQ
 p6RI8bUUvLiMSuf4GHyv6SUfZP/4G4/TdRCe+eIoFIY8iWYELvoMvmK6J+R4x9+r+a2a
 h1tPa1imkUhU9yo0wEjUs2QAu62LrzTgSgv3wavfkAe3ukYd9+OOH+pcmXzr5GCHrJuv
 NJrg==
X-Gm-Message-State: APjAAAUpuqaRVDh0lEhQz4zqErv1PJSuEgjE7ay34V/5Or4ZWErkIzjm
 1Z7PmiDCBKcFGTYMzgkZeTo=
X-Google-Smtp-Source: APXvYqwdb5/LClMMiiwbLm1lrYpgTDvO/cGlSopZ8woLRV2+Vd1WouFxBzecPNEVCyJImeMWrpr6FQ==
X-Received: by 2002:a17:902:7207:: with SMTP id
 ba7mr48386516plb.329.1558014962821; 
 Thu, 16 May 2019 06:56:02 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z6sm12032002pfr.135.2019.05.16.06.56.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 06:56:02 -0700 (PDT)
Date: Thu, 16 May 2019 22:55:59 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/3] nvme: separate out nvme_ctrl_state_name()
Message-ID: <20190516135558.GC24001@minwooim-desktop>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516083740.95894-2-hare@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_065603_839275_94D040BD 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Hannes,

> +const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
> +{
> +	if ((unsigned)ctrl->state < ARRAY_SIZE(nvme_ctrl_state_names) &&
> +	    nvme_ctrl_state_names[ctrl->state])
> +		return nvme_ctrl_state_names[ctrl->state];
> +	return NULL;

Perhaps we can return "unknown" here that can make callers do not
need to consider that if it gives NULL and not return a string there also.

> @@ -2989,19 +3008,10 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
>  				     char *buf)
>  {
>  	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
> -	static const char *const state_name[] = {
> -		[NVME_CTRL_NEW]		= "new",
> -		[NVME_CTRL_LIVE]	= "live",
> -		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
> -		[NVME_CTRL_RESETTING]	= "resetting",
> -		[NVME_CTRL_CONNECTING]	= "connecting",
> -		[NVME_CTRL_DELETING]	= "deleting",
> -		[NVME_CTRL_DEAD]	= "dead",
> -	};
> -
> -	if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
> -	    state_name[ctrl->state])
> -		return sprintf(buf, "%s\n", state_name[ctrl->state]);
> +	const char *state_name = nvme_ctrl_state_name(ctrl);
> +
> +	if (state_name)
> +		return sprintf(buf, "%s\n", state_name);
>  
>  	return sprintf(buf, "unknown state\n");

If so, we can make these three lines to a single one without considering
the NULL case.

What do you think?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
