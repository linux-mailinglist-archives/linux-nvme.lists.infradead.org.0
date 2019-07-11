Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EE265E3E
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 19:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MV2rj1w7g9XeRKLw2RUNFL0chaoxcu7u2MXMGPBIG2o=; b=QwAJfdVpOaCsex
	4UTtVJxittfkWS0nPvDEpV7zuWQXhasBT/7qfZD15gd5C/L8qAw5dhbsYMwqd4Yrk5/X0H/j09o3G
	gxacCxKtFBvr8U/TEhxk/XZaY1N8kcItN+Mv/JZtKjI+3kZ6QZtsnaWzmF5Qodkhw3vr+isFb+JL2
	4yPFdhZ2WaIfRa0IgYMeikxrtxvKgveccmvQMTLYldLnEfJsumSvDigsaQuAvHWl45OTAp2Gy218B
	w/r41EI0Y04DBTqmYHRgPjhfaBHtNWb3QmSewFJCpCHj9Cawlt0wzH1NnR2mvdvyC2j6Y3Li+2neu
	AgGyHvWv6Yp0oUMKyeSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcc2-0000hR-Uq; Thu, 11 Jul 2019 17:12:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcbu-0000h5-QB
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 17:12:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id q4so3243991pgj.8
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 10:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PdMQzZsJ/1NJ73BWgu9uZUzxX0mRsGpsZbs4XkJXhS4=;
 b=V81vo3gdksCKuurAm5HihE2brNYpn5LUw17yclucuHcvsSrTgmwFVf11eMXt5q96Sh
 ocG76sK/zjJ9ovtqV7WDoTIIh8q8jtODkE/gwUTIe2EcJ17kP0V3in6HduOthWnmQlkY
 MnWB1DhUy3cVOyphMtdwlaUpjsCSiq4yz5HacyxpsnzmqsfHgGROyygkSTbISjpJ338o
 6kR8BcRmhwyAlN19P/CiqpqBc6Z4mrWKbuRpA6LHJv2/phZunBNutCPrdmPhcoFWDL/4
 gd4mRMuW9Qt63Eo7rFEU+/FyucxygsU8UktAIVy+bnQNPnM24TG4k+zn+5RhCByAJUeQ
 LY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PdMQzZsJ/1NJ73BWgu9uZUzxX0mRsGpsZbs4XkJXhS4=;
 b=WCh0oWskIPyMZFtbXHZSX5czgE9OA9FwqCIZghuiRzg7klZxiTRJrtA/W4AGu5Vzoe
 gi3uCSDkjBSeI/eZ/uUnIZRBG9yE4YRbdOvBt2qCHEizlB+6p7wVRniRkKCisbQ9ug7A
 5L9GYl0sjevz02LknwO/N9estQwlV/+HHsuiKgbfuzHzPA6EwGuD944qmzzaF+kPzKyg
 cNSJo4fzv7/4StBlwXyeGq9yI14bWNtinUHRPY6ZGZd+iW3hZNPf+Cbl2pFwJjltibwX
 ksKCJIxMn+Kb3MJgfIU0dD/EDLwB4G2SUVwgODx/oBSmIEhxUg0xk4B0p65PnTGj4+pF
 MEyw==
X-Gm-Message-State: APjAAAWIY+DKvb5f8KzdmA6f/qtuoCJ6itmKsulWspERvr0pi/0kYIRl
 gh/3BCkjud23D/rOXRroHptn8LdLPU0=
X-Google-Smtp-Source: APXvYqyQWsKs99jnW6KzyW3CiLZEdNG5TlFrQY7L/zy6pHUQCYTpR6AyxI6NjK21BWr7/rbjBkZ8/g==
X-Received: by 2002:a63:2326:: with SMTP id j38mr5643203pgj.134.1562865116185; 
 Thu, 11 Jul 2019 10:11:56 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x65sm6870137pfd.139.2019.07.11.10.11.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 10:11:55 -0700 (PDT)
Date: Fri, 12 Jul 2019 02:11:52 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH rfc 3/6] nvme-cli: allow discover to address discovery
 controller by persistent name
Message-ID: <20190711171152.GB17328@minwoo-desktop>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-4-jsmart2021@gmail.com>
 <20190711124116.GC8398@minwoo-desktop>
 <39f7417d-dd5c-8c81-a4d5-7b8a313deaab@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39f7417d-dd5c-8c81-a4d5-7b8a313deaab@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_101158_857122_34526ECB 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On 19-07-11 09:16:37, James Smart wrote:
> On 7/11/2019 5:41 AM, Minwoo Im wrote:
> > On 19-07-10 16:27:37, James Smart wrote:
> > > To support discovery (connect/connect-all) to operate against a
> > > persistent discovery controller, let the discovery controller to
> > > be specified by its device node name rather than new connection
> > > attributes.
> > > 
> > > Example:
> > >    nvme connect-all ... --device=nvme5
> > > 
> > > Also centralize extraction of controller instance from the controller
> > > name to a common helper.
> > > 
> > > Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> > > Signed-off-by: James Smart <jsmart2021@gmail.com>
> > > Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> > 
> > Hi Sagi and James,
> > 
> > I think it might be too late review on this, but please have a look my
> > comments below :)
> 
> well,  it was posted as an RFC, so....

Yup, Thanks :)

> > 
> > > +static int ctrl_instance(char *device)
> > > +{
> > > +	int ret, instance;
> > > +
> > > +	device = basename(device);
> > > +	ret = sscanf(device, "nvme%d", &instance);
> > > +	if (ret < 0)
> > > +		return ret;
> > 
> > It's just nitpick, but could we just do like:
> > 
> > 	ret = sscanf(device, "nvme%d", &instance);
> > 	if (ret < 0)
> > 		return -errno;
> 
> I would think that what sscanf might report as a problem may not be
> something understandable for someone using the cli. I'd like to replace
> this with something like -EINVAL for an invalid argument rather than
> ret/-errorno.

-EINVAL would be fine to me also.

> > 
> > > +	if (!ret)
> > > +		return -1;
> > 
> > Same here.  Can we please do:
> > 
> > 	if (!ret)
> > 		return -EINVAL;
> 
> yep
> 
> 
> > 
> > 
> > These two things are not from this commit, but if you don't like it to
> > be involved in this scope of the commit, I think I can make it later, if
> > you don't mind.
> > 
> > > +	return instance;
> > > +}
> > 
> > I have a doubt here.  In case of multipath, if this function is given an
> > argument like "nvme0n1", Is "0" really an instance of that controller?
> > I think it could be an instance of the subsystem.  If so, can we just
> > prevent the argstr as a namespace node?
> > 
> > Please correct me if I'm wrong here.
> 
> it should never be given an argument with the n? suffix. We're dealing with
> controllers only. And multipath won't confuse that.  Perhaps we should
> verify it ends at the controller name.

Yeah.. It should not be given like that.  But I think it would be great
if we can verify the given argument indicates a controller, not a
namespace node in somewhere because people are sometimes get confused
and may give some ns node here ;(

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
