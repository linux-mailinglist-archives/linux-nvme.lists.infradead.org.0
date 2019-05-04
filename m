Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED4F13894
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 12:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kRh/iyIs30NPKD27bZOWc2GPCzdFFuYo/mWmZ2hyFfc=; b=Gv388sWZx4uiLT8DJ1aELsExa
	AyAXIg+VFxwDNGt5+s7XS3wpfx2MbGkGCm3r46zzZhXbdqTOF/RNwBM2Cx++Y5HDddev0nXd/A39a
	7Q8Vxe0zK9W5A3itfWnUYYB+o2u0lP9TI09f24HwRvaLc2XUoIwzQLT+bk1Vw2plyD9vd4EI0X4t+
	KRNGxHCRJ3M/4T3ieYG/o/tqdNpQ+WZZzf9AoEyssgatpZGM1DLaUEtoVrIm/S3IpKk79jyJXfHgD
	mNQzkrSB/8k/JHT7Ks1tkwMXETulc/TKO0I2yWv6hXJS/FIoizp7KI5OgzlE+X1ps6/RuDggYem/h
	foRKDIcfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMrXO-0001yp-TU; Sat, 04 May 2019 10:04:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMrXK-0001xx-AX
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 10:04:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so3963101pgc.3
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 03:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gfIdtbvl+cU5+4oOsDFHcXYeeYkozHfEYXRLh0N3BKE=;
 b=FNs6zsS4m6E3vHqa1w/FdmSh4GwdllDL2fGoTv0cPqrTDLX6MBdGVxqyIk5Ip7PRrE
 /VMTkhZyCJQXSgl1ixaH9D5HvMCQb4dSOb84ItgH5it4MsNzRt80LGlF1/Bt8/gzaF5g
 EIH1Ux2Cf5I2eyZgYAum6NkY/MF/YiPi/90CyyP8aNCCnPHOMKO7CZdbKRZbDgSnzxZ0
 W0TrMa9it4HOZ9euUN5L4WrwLRWWGTmQwGGYfgWaTEuSJOFmmhc2j8qgezlywCQf4FY4
 wq5w3p/zwgz5WT5tj5MEZqZ6nkL3l5WKtSLOuows1V7Y9vFBU76a3wBic5ASGxcyHwMY
 taDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gfIdtbvl+cU5+4oOsDFHcXYeeYkozHfEYXRLh0N3BKE=;
 b=n440DydITs/lm5hytn8zQqe+JIldyBLeAYtuUEYt9+TraedkIzgrOkc74RBp7yLed9
 hXGPcf3ACoZAxVMp5WXeRYZykayzr5h6jK+m+5gj9OnNwPLnOUrVERibAjPASZYRWQnb
 /RANqihfiHJQzWvg2cAlxxG3l8kJw1ImjzIuPgDtiyamU/Xdvat25XnbNsoYu4qUru8T
 Oi/WqapRdsQFLR0BP3HjiOA+e/g+DWo+J0MYFwXXt171g/Vd9I4R6SiPQL/VPpdM6a4b
 dtXMMr+T38mgno/nc2FDyMpbvLBZj6FnAlvuSURAp7oAfMI+4M9sdfA8BdG9u3Op7JPE
 j2Qw==
X-Gm-Message-State: APjAAAXt4A3l1prQJBfKRJHCFWqyKFY9isgXG3Mf0fnWieQowy24MjRz
 UoHmqdByoY3GOaz+c51TCmg=
X-Google-Smtp-Source: APXvYqxh9+Xd48+1ehg/SIwAK+M/lJBxN7I/+Apl6JWEq7lsZXZpJdT4c6hP/DhHWMkSAInRYLIzYA==
X-Received: by 2002:a63:e004:: with SMTP id e4mr17677804pgh.344.1556964291118; 
 Sat, 04 May 2019 03:04:51 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k7sm5519422pfk.93.2019.05.04.03.04.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 03:04:50 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme-pci: add device coredump support
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <66a5d068-47b1-341f-988f-c890d7f01720@gmail.com>
Date: Sat, 4 May 2019 19:04:46 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_030454_370329_FA7D13A6 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Akinobu,

Regardless to reply of the cover, few nits here.

On 5/2/19 5:59 PM, Akinobu Mita wrote:
> +
> +static const struct nvme_reg nvme_regs[] = {
> +	{ NVME_REG_CAP,		"cap",		64 },
> +	{ NVME_REG_VS,		"version",	32 },

Why don't we just go with "vs" instead of full name of it just like
the others.

> +	{ NVME_REG_INTMS,	"intms",	32 },
> +	{ NVME_REG_INTMC,	"intmc",	32 },
> +	{ NVME_REG_CC,		"cc",		32 },
> +	{ NVME_REG_CSTS,	"csts",		32 },
> +	{ NVME_REG_NSSR,	"nssr",		32 },
> +	{ NVME_REG_AQA,		"aqa",		32 },
> +	{ NVME_REG_ASQ,		"asq",		64 },
> +	{ NVME_REG_ACQ,		"acq",		64 },
> +	{ NVME_REG_CMBLOC,	"cmbloc",	32 },
> +	{ NVME_REG_CMBSZ,	"cmbsz",	32 },

If it's going to support optional registers also, then we can have
BP-related things (BPINFO, BPRSEL, BPMBL) here also.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
