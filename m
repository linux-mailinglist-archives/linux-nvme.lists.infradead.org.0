Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9642B307
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 13:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw0slkBVOz8/sfLIhSVzmeYen1OMfD3hHOFFQP1MW8c=; b=UWJ4uskrI7ipCL
	uHNu514+Eb9pMdm9XAmT0jDxXSq8vSInJp0z2L3gJF2YdcIcRaEHVmPTIbzthTLwMp3kpd+0YMuEw
	fUMFyqLrY7MousS53YvkBXNjRTUUiUELsj8Fw2jK1fQAlteejzQJvQ16sZgkBAxWUSduu+5zqL0v8
	i1Bum30MfPeq18DC6L5n+ADX2VCHEZYP1Z1zczwhn/86l9dfWplyPxkK6PPBvgNBix88SqPigcLcP
	2XdQ0Fw4vxXEhC8uvpyBwt8DIKmAijSNpEua6BcIpqDeCPPa3D/oZ/7d6+wisZacN1+optq0fB68T
	OdfFC6N6z/Pk6nDfOWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDbK-00038E-F6; Mon, 27 May 2019 11:15:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDbG-00037v-01
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 11:15:31 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A7CE20883;
 Mon, 27 May 2019 11:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558955729;
 bh=abFhqbcVcrasy/wr5aCm8Glq6HOxIRsVdv0H1i3SDnc=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=J3NvQTbaYjRiw/RE9MlC9Ug4WIfDfl+Cijv8OZTajxW2gXsYhqFzgHZqUn9KyPpvj
 BQ68zJD2eSfJBxk9VxPE0JWfrqL54pNHnpdVXmCn0dbpkJIVH5L/qlnEjItNyJxu2I
 jM7++WXGlW8Y4YhcFwsCQoB5Vs29zBafdmVaszn0=
Date: Mon, 27 May 2019 13:15:25 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [5.2-rc1 regression]: nvme vs. hibernation
In-Reply-To: <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
Message-ID: <nycvar.YFH.7.76.1905271313520.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
 <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_041530_059020_2C15A821 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 27 May 2019, Jiri Kosina wrote:

> > Looks this has been discussed in the past.
> > 
> > http://lists.infradead.org/pipermail/linux-nvme/2019-April/023234.html
> > 
> > I created a fix for a case but not good enough.
> > 
> > http://lists.infradead.org/pipermail/linux-nvme/2019-April/023277.html
> 
> That removes the warning, but I still seem to have ~1:1 chance of reboot 
> (triple fault?) immediately after hibernation image is read from disk. 
> Seems like that has been going all the way down to 4.19, which seems to be 
> rock stable. It's a bit hard to bisect, as I am not really 100% sure 
> whether this is one issue or two intermixed ones, and it doesn't reproduce 
> completely reliably.

So far this seems to be independent issue, related to kASLR, I'll look 
into that separately.

Still, we should either remove the warning or fix the underlying issue.

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
