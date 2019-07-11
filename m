Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE046572D
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 14:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOjAdIzt9PexU0WfNpYMA63IYAiq0sNMyMvfMdT3PL4=; b=afAaCdP+/xbejU
	UPYgyJTeTKqPtQYVjsc+fZs2Gijd8I41rjhDaYR1Sc5cAPEUdoep9n8PVVOjjI8yj/ZwYTD6iTpg0
	fp8TWMX4R8revGHFHclIyYIMtu2KGv99a0aNtcQCUFxSo0JnIQjgj9ijzv3ZXgOJI9Ea+b2F6vCTX
	sgJYtcGn2WZxjE2738Cf8osRO7z/usOHPirQx90i/tFux73j99rspJ/n/dbUTGTWRk2EVAl4KSp/q
	Qt7bKjd0uMHdBNHbj4taN5bNtXKNctE2RZ5HmgQlp6liaJsTuchThieN+iyxaggnidMEBhpoItRHi
	E5xNvuWuXAswcQOLTlqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYO7-0003e7-D1; Thu, 11 Jul 2019 12:41:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYO1-0003dS-55
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 12:41:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so2962759plr.12
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iPs86FPpGHgLxChYj+VHNXWNwXwGQzC0Bz8U5ysTaKM=;
 b=FAaQ3MyfU/wOyLONletMCXgdlSDDd77I+ZNps3Cb6kmOcH58JZxEZp1qQYw8lSVpC1
 UQ5OEFaEV4/U3IJiKVB0Bh/rhVPUO/pBQ+pXZVQ+JjoYbC4rEzJoP/aKE+WC63GuAbvw
 WKE4VAh4KkuTlv6C4TsaStMgMNmEqwOlysgZePT1WIVcPo+pVhV3INIyCmYq5SCsa4wq
 srGeX3zgh6NLyrYb6hF5Z3Qre5oEe43d8wNfE1wfMCJSmB606+urXwMgIIFJ94xiq+wi
 ka4Lu1z4PP88dGRBM88hPVuUUL2PNO+SsGXKcS7vYFh3dw5scd2EbuI4g29lTdKo6Fdj
 8Qbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iPs86FPpGHgLxChYj+VHNXWNwXwGQzC0Bz8U5ysTaKM=;
 b=OYTZhLQFMjbj4896LQRmoNEqt32xAiwYbHQKT/fwV8lhuNDogqifxikGFtTGjsAuTt
 YiuhOeaRzvG62pZmr8eOk1nFZ0vLLdPkbgimt+R2Ma7iZr6RiOf+vmT6QRGHAsYm6nf9
 QhZTJM7cRIRQvSefv3OEabCTBu3BlTSL9GPqpdyEZAa6bHymESvMwwAdlSU77i1Ez7mc
 zcrU0cr67bv5ndaaqTB4ARWhh3lonhEmvQAgMm4gJdPR0C3QwmibPSpwWosvkq7ZoPKe
 ONmRSufD/i+Nz9RQ7QfIQkqgI6ADtaTMXsky1E641J+G3ILIznHq8S42R6AJIe/4CtAS
 JnsQ==
X-Gm-Message-State: APjAAAWtn7GhWVdPFeaTKkzNKCZpFUnSM53FfB1b9zsqWZlJZQfXdpnA
 cQHI1yskVhjIYpV4IRsp+LU=
X-Google-Smtp-Source: APXvYqwHcl3srSFfJhYp/+xJpLjtzGqeHmClX02OsfifqaqmGbN4WJfdfIJ4myMBIw9QbJrp7zep0g==
X-Received: by 2002:a17:902:2bcb:: with SMTP id
 l69mr4477388plb.155.1562848880334; 
 Thu, 11 Jul 2019 05:41:20 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o15sm7560715pgj.18.2019.07.11.05.41.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 05:41:19 -0700 (PDT)
Date: Thu, 11 Jul 2019 21:41:16 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>, Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc 3/6] nvme-cli: allow discover to address discovery
 controller by persistent name
Message-ID: <20190711124116.GC8398@minwoo-desktop>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-4-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710232740.26734-4-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_054121_219831_BA7AD93B 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-10 16:27:37, James Smart wrote:
> To support discovery (connect/connect-all) to operate against a
> persistent discovery controller, let the discovery controller to
> be specified by its device node name rather than new connection
> attributes.
> 
> Example:
>   nvme connect-all ... --device=nvme5
> 
> Also centralize extraction of controller instance from the controller
> name to a common helper.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Hi Sagi and James,

I think it might be too late review on this, but please have a look my
comments below :)

> +static int ctrl_instance(char *device)
> +{
> +	int ret, instance;
> +
> +	device = basename(device);
> +	ret = sscanf(device, "nvme%d", &instance);
> +	if (ret < 0)
> +		return ret;

It's just nitpick, but could we just do like:

	ret = sscanf(device, "nvme%d", &instance);
	if (ret < 0)
		return -errno;

> +	if (!ret)
> +		return -1;

Same here.  Can we please do:

	if (!ret)
		return -EINVAL;


These two things are not from this commit, but if you don't like it to
be involved in this scope of the commit, I think I can make it later, if
you don't mind.

> +	return instance;
> +}

I have a doubt here.  In case of multipath, if this function is given an
argument like "nvme0n1", Is "0" really an instance of that controller?
I think it could be an instance of the subsystem.  If so, can we just
prevent the argstr as a namespace node?

Please correct me if I'm wrong here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
