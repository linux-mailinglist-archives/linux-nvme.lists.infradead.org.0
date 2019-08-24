Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B00A9BAF5
	for <lists+linux-nvme@lfdr.de>; Sat, 24 Aug 2019 04:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDf00uCwCH35jiBk7vKvWZ2NADCg2w0g+ODtfQxhh2U=; b=guidmsjc7N+51f
	1aSPfQffZWilyY5Jj/9kWbNf3h5nRJ1bTi9sRIZls+xtF5nZm/58FdfeP7rw3Z7CWrrR9cNowUPkc
	y1nmlLJzSvdMYRrOtvkgD82mg6vHeLE8eQ+hI+Q81vnrRxlv112TNAIYctLTsCmzl0Zjs6jVOoE5R
	oHeVAgORWsxXpHU5hqvSP1tswqEwOThUXW0xOZT4MGkzMM3rNL+ENcZpYRQo+fPtpPvw43Yif3ZGM
	c41jTxKp3oTydK5B1mVaJBImXJFHaeD48QLw7QkRyBYLbXi0eZnSDWZfrUfUXGQryp48d7DXm8Vfz
	rN6WDCCWkvFprwrv4/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1M3h-0008HI-Ke; Sat, 24 Aug 2019 02:45:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1M3K-0008Gu-I5
 for linux-nvme@lists.infradead.org; Sat, 24 Aug 2019 02:45:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id m3so6795372pgv.13
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 19:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8aMwYzGPUNzzMYCXDcVBbn7SztptBVvUN6wTUGVXovY=;
 b=E06+c6wLMAosJaRUIk2RLnDNHen+SA2VZP8E6LBGnrDFHueLOKnIGa0SjCWwUZJpCO
 taWBUrtu2Fy4fvHMIXs8GgXVc/3VT+1vgYv4ptfbOQYQiv18xvQf/YzKqV2lTMdslxfa
 +678x+V2y263ZF8lf4HNlcI5pzDtubbpC4jMxtOEdkx8xd2jyq46JAEKY35uYsb5V0LA
 twkI+mygdNLrGKzn/fpiEvDULFbkCJ3m0ya2Ybm8IpuIWf3hmueJh8WRUjsJZ+SFnbwk
 cXPwDjnM5qNLI07iEBU1arx0U32N1pYltJMxncUMd6ztE8itzLtS+eErlbNPNTcBbPVK
 tMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8aMwYzGPUNzzMYCXDcVBbn7SztptBVvUN6wTUGVXovY=;
 b=rYLV8C5/KU4cKXjgy4N/uMxDyghTgxr9dU4YEApkFquR9qA0cWx10cha1dAWaaJuv/
 OUgm/czuAQo2MAmmQTvFLrh3UJKOyUcdCJt5WCbNbc30mMxp+GW9UVIvyVjSAXfViF5G
 WJPZM23R+b1gu6Qy2UUGeSsONYdpILYC2a5Qb88i6OueYOa8AyD7/8Do+mjLhjy+Xf5U
 +kMb6YIsvCXSvMkwn4N21W/xnQeBt/yWHRNEtBuGkDjSHz/WEyg6lenBSZ1p4ZVrqoLq
 8R2B3M0wZfubrtCwhR+lyztritqd/fTPQ/vJYqqReCa0bZl3AeSZ93ivb2f0QWiMzvIh
 08WQ==
X-Gm-Message-State: APjAAAWNVFJKLOY1LGsY6nDs78qobwXd61r5BsaIXGl61uW+4x850/nQ
 FzcogsYWa6aPpsOBcw3eOJ72R/I0Xo4=
X-Google-Smtp-Source: APXvYqx1NM4Ve5r4DKNXFDfGyXpZuNjNWDgP2kuFdmuP3UsqMkwQzf43ceRC3859ydRatIUo5X0W9g==
X-Received: by 2002:a63:1c22:: with SMTP id c34mr6577980pgc.56.1566614717270; 
 Fri, 23 Aug 2019 19:45:17 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g2sm4599202pfm.32.2019.08.23.19.45.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 19:45:16 -0700 (PDT)
Date: Sat, 24 Aug 2019 11:45:13 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/4] nvme: add support for Get LBA Status tracing
Message-ID: <20190824024513.GB7717@minwoo-desktop>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
 <edbf18f8-fe9a-f9ec-2fa1-75e22466b6ff@grimberg.me>
 <20190822003214.GE10391@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822003214.GE10391@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_194518_625420_226A27FB 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-08-22 02:32:14, Christoph Hellwig wrote:
> On Thu, Aug 08, 2019 at 05:31:40PM -0700, Sagi Grimberg wrote:
> >
> >> Hi All,
> >>
> >> This series introduces command tracing in both host and target side for
> >> the Get LBA Statas admin command which has been added from NVMe 1.4.
> >>
> >> Please review.
> >
> > Series looks fine to me,
> 
> The patches look good to me, but I wonder how we decide if we want to
> add the full blown tracing command for various commands never used by
> the kernel itself.  If we do that for every command the tracing code
> could blow up fast.

Agreed that tracing for commands never used by the kernel can be a
burden in some point-of-view.  But I think the trace is not only just
for the kernel function or event tracing, but also for the tracing the
actual NVMe device behaviour which can be controlled by the userspace
itself.

But, I don't like the tracing not used by the kernel itself to be a
burden for the performance of kernel itself, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
