Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E2EF2008
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 21:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdD69JeGduHwUA42Hp1v+34hw0SZGUFzPAiTuROT0ag=; b=YqQMulWRikPn/d
	Zm7wSeXh7tMqR6LaVgKYvpnBvWne7LGlFIuPlRVrojsuPuQf2vwGzrOzXBghYklX4FFKpS1dX8XKf
	1BZRawaTKEuTnqND9aFGuc1t5BUK0a6pSt8DOwe2bDMXtxtZ2C/mBN4sEhcQIpfXx269tZJc+dxrO
	bXKU2vCM8pmDkFnVKiIXG0hI7fNQs57I5HTQ8KkudY9NPo+vrzU5fgw2sovnElF2QTMoAN8RzS+T7
	453E4g6dF5PzqNivyEZYnR6goO5i5rT+YCD9us1iFMiWzTHWOgPhSHSyRpabKWUYJgzuWLpht1//t
	sFZXK/C0axX+JpzTFZ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSS9V-0004zT-DK; Wed, 06 Nov 2019 20:43:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSS9Q-0004z9-Ro
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 20:43:38 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 877672178F;
 Wed,  6 Nov 2019 20:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573073016;
 bh=8Mn693rQoM2SAydIBUESVHGciXllzel1bh7+lM2nxjA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tUML1ucuxsTTRG834Mu9c7IqLfyH/YnnbsVj+IzDqtUGa13k+UIi0oC++1UEbGBQi
 t/xjlt4rc6BqKyewalbZDpjTb6qkWGXsd7D1kr06DHskj2qrsaa2hqNyQ9sY907PCf
 SOqT0t0w+Svc/zf5iLzlUNuSGFaT3vfdv315hVxw=
Date: Thu, 7 Nov 2019 05:43:29 +0900
From: Keith Busch <kbusch@kernel.org>
To: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: Re: [RFC PATCH] Workaround for discard on non-conformant nvme devices
Message-ID: <20191106204329.GB32215@redsun51.ssa.fujisawa.hgst.com>
References: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
 <d96335fb-8907-6b5b-14e9-08eb1a796b0d@grimberg.me>
 <20191106182339.GE29853@redsun51.ssa.fujisawa.hgst.com>
 <f9e32847-00b1-59f5-8b15-860a94598e79@hasenleithner.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9e32847-00b1-59f5-8b15-860a94598e79@hasenleithner.at>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_124336_917907_5BE8753B 
X-CRM114-Status: GOOD (  13.10  )
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

On Wed, Nov 06, 2019 at 09:22:00PM +0100, Eduard Hasenleithner wrote:
> On 06.11.19 19:23, Keith Busch wrote:
> > > This needs to come with a quirk for it.
> > 
> > Yeah, and have the broken ones to use the ctrl->discard_page so that you
> > don't need to worry about the alignment of the address kmalloc returns.
> 
> This raises some questions for me.
> Why bother maintaining a quirk list and have additional complexity with
> separate code paths?

It documents the code on why the driver is doing spec non-compliant
behavior.

> Couldn't we just simply use the discard_page for all discards?

That's normally just a fallback to ensure forward progress under memory
pressure. It's not particularly performant, though.

> Are there even nvme devices out there which have conformant behavior in this
> respect?

I believe most of them do conform, but I don't have a large sample size
to confirm.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
