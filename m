Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49241F20DF
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 22:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjFSCgybCBdjLzhLB0xdaGK4jpJqvqK21Fb20PbChO4=; b=M3VeFzKPL0LSPg
	oN0lfweTukrih3cV9a+6Qho+xkcyUv6bZBfNOI43CRrxTC/hNYU/K1rn3GVMc9ZSW3HRQwM/Fqd8H
	f4F1ylRhkzhbyDlVIrMrVlkK6Pz6Uau+h1uFaxW2I/XwdTFqw4S4XPmAFHj9URWhcY3PxtMjleZCC
	X+2cX1PSKV3q19Zphn6b8ovv3642KkJuPw1fCN77qXBsm+356PQO4qOBkv30mCEZlRAKzOSBrABL8
	Iuousq1aKYKtu4XEoeqZHk62fX/MKFw/KVHYDiNu+Qs3iWzJKxgayw/drQ3GVUeW8rEHRawa2ytQq
	XfTwIwftUliXLQZpuNEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSwS-000079-PV; Wed, 06 Nov 2019 21:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSwN-00006e-FX
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 21:34:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 895012166E;
 Wed,  6 Nov 2019 21:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573076051;
 bh=SuV2UHwfH5+kWTYJPQHFsjavAYbiTOZxmHFjr4BmYbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TEzptdIS/p4V2y7jFpj7BpoPbvy9qV6xz5NFSqk4ubIYojB59dstphSvEe1HLFhFL
 Ff+stGmFZJsyON+290/2nvCu+W6wbHOKRZ3kr2HUorOAKpdepcS1wJKMdm5xQYzbJT
 HV2GrxN94BtQnUDSZmz5XNf6PiwfXo/D6NpJZ0kI=
Date: Thu, 7 Nov 2019 06:34:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: Re: [RFC PATCH] Workaround for discard on non-conformant nvme devices
Message-ID: <20191106213403.GA308@redsun51.ssa.fujisawa.hgst.com>
References: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
 <d96335fb-8907-6b5b-14e9-08eb1a796b0d@grimberg.me>
 <20191106182339.GE29853@redsun51.ssa.fujisawa.hgst.com>
 <f9e32847-00b1-59f5-8b15-860a94598e79@hasenleithner.at>
 <20191106204329.GB32215@redsun51.ssa.fujisawa.hgst.com>
 <ea1ddc8d-9612-1fa1-09bc-ce803b0a38ef@hasenleithner.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea1ddc8d-9612-1fa1-09bc-ce803b0a38ef@hasenleithner.at>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_133411_539820_4D497249 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:10:58PM +0100, Eduard Hasenleithner wrote:
> On 06.11.19 21:43, Keith Busch wrote:
> > On Wed, Nov 06, 2019 at 09:22:00PM +0100, Eduard Hasenleithner wrote:
> > > Couldn't we just simply use the discard_page for all discards?
> > 
> > That's normally just a fallback to ensure forward progress under memory
> > pressure. It's not particularly performant, though.
> 
> So we are accepting a considerable performance impact for the "broken"
> devices?

I'd wager the devices that got this wrong are operating on DSMs beyond
QD1 anyway, the impact to them is probably much less than "considerable".
 
> > > Are there even nvme devices out there which have conformant behavior in this
> > > respect?
> > 
> > I believe most of them do conform, but I don't have a large sample size
> > to confirm.
> 
> Do you have an IO-MMU active on your setup?

Sometimes, but that's not why I know at least some devices are
compliant. I've wasted too many hours analyzing protocol traces.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
