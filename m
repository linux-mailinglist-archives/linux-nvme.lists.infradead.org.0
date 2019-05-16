Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD5B20D6C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/4ERMsCgqYTvfkTIi6OSRFCxd5HU7VUyo6pG+ugomg=; b=XKFMnsHif/H7iJ
	bT9Wg0rmKV4nnsqjb7k0o9oudVlmMWtSGZS+hrKg1KbD5zil5gMmZ8R+OHD4jfsdRe5FMvsYnVs+C
	7aVB9Jz+XxsljrM43jSXcXLFLKPaKOWOiKCuERDeCoAS38NQ23NZVUTYoEvaBNXX53xuBOehXeM+/
	fQLilMp2npAPPORJCad0k7QPiG6nRixt0bjIgajaXZK9HjMuYizj8+VWXoDEMwumovtyjkWVHFvN8
	fiey/0G6uaDtJf/dm6ePjelZo18oPuWPhKC75WXaFwII5//ucujXQr9SdFQgGaN+iLZyEVu/yIeWS
	hJkR7j+fOw13LXikHoAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJbg-00052g-5q; Thu, 16 May 2019 16:51:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJba-00052H-FF
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:51:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id 145so1837979pgg.9
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ObCtZFbSDNhky5YScW0KGVgZqfUpXNtMiEwUErGi5jc=;
 b=j7wfxPqpNwoS3DsGAsc46v2MUJhCVlw5wKxHM9Gdz0N7J2QSz3/n+hcfmR9lH79MJC
 OqWXJg6F2YhWdPTLHhXKIuMFgTCUm8mCHCkDYOlMwJvnKqpbTDB5MWZYT0kxKL/6obt2
 wi5Rx+aJJD3pB2+IoWNw0ZpALgCxPLvzQwrzScMbhqcitXCu/2PusS2HAWbUZpf+zfYL
 tWQQjdiGigERlL/LhPZfkbX5pXoWbqStl45cLjHK5K5EgJRnHYDMKjYXSRcQhEV/9sGJ
 q2MxDUhfmuUnT2GGsLVf7B0p+bnbkZDKvXt3k1DNK1dtDLax97uSA53pbFQ+MGP9qznw
 lCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ObCtZFbSDNhky5YScW0KGVgZqfUpXNtMiEwUErGi5jc=;
 b=YdAVjJKxYD0mXP1ze/WaM7Lp+sVo4FDuKwqV2SLAk5v/elDMaM7tOHgMVIX6y3GqRY
 ShfhLxmrdc4/QNzBU7c4qDbIVasB7nBXPXWir1/RsTx6vKXtgcugS0WegNYShndbLsOE
 n+LtjXBkd0VYKuPEzlUNyxZKk7WfRtkCVImXVXfMDg5PDeZnG0yMlPzza/mT1r8QYYIb
 RDZ1a4S2a2ZCQPW6IDVxXrKumaPaj3JZqNpPCTQmdXZGFYLaieU2RIjTqbQfQZhPJTLP
 hSg+pJz19JdJFFYJd8BkF91EX3vwCMpMBN5+uYViQXLYXJLuwaLqNJwgiggRokSgDGia
 WOvQ==
X-Gm-Message-State: APjAAAWKBQ8q1N7W0F5nRvoFeaKqa9vj2pzxq26RI0gnc8O58vXbSFle
 qDQAJceksneD88djLLWcTkk=
X-Google-Smtp-Source: APXvYqzFJV84bQeBum8uGFqzSZnbEsTzyRuhl7PRd2/Sr+NiLDPwiMYDVK6T10Tw19Lkt1cL2UGpUg==
X-Received: by 2002:a63:6196:: with SMTP id
 v144mr52008586pgb.235.1558025501991; 
 Thu, 16 May 2019 09:51:41 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r29sm1217530pga.62.2019.05.16.09.51.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 09:51:41 -0700 (PDT)
Date: Fri, 17 May 2019 01:51:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH] nvme-cli: remove unused NVME_AER_NOTICE_*
Message-ID: <20190516165137.GG24001@minwooim-desktop>
References: <1558024889-9474-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558024889-9474-1-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095142_518306_BC71C8E0 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> diff --git a/linux/nvme.h b/linux/nvme.h
> index cac4d19..13fa52a 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -589,9 +589,6 @@ enum {
>  	NVME_AER_SMART			= 1,
>  	NVME_AER_CSS			= 6,
>  	NVME_AER_VS			= 7,
> -	NVME_AER_NOTICE_NS_CHANGED	= 0x0002,
> -	NVME_AER_NOTICE_ANA		= 0x0003,
> -	NVME_AER_NOTICE_FW_ACT_STARTING = 0x0102,
>  };

It looks like we can sync-up the header files sooner or later from the
kernel code to avoid kind of conflicts you mentioned.

Anyway,

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
