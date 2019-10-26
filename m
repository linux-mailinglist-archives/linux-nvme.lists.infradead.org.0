Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85096E57B2
	for <lists+linux-nvme@lfdr.de>; Sat, 26 Oct 2019 03:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqAIX+WyJzUic9iWUgCKHb6j15EgOgoQBT7Ng6sg3XA=; b=Zym40UyOipNqHH
	jnP9vBmnaCJQvtVjVLKlmIupaPrY8wD24dhBueHE/np1l3FR+PGvEG8nRCmSod9uWFW1gchVh/X3H
	0O/LWRtluhyX6laHcPhJx21xaqr4TvKf8kFRrPb0C2mlstQjT+p3nHhSDoCcdXGm+tl1orQMVaxV4
	L26eIoL/rG0QC//fB6g5JvFbyD6xO4i7JT6wexLE7F+kD7qsHwPU7VfnNr9uWXvL+a+qUzAGgr63C
	sKVu/lDBZgQ0YpwaM+nYoLtRXBcWw0PEYdof7LQksQk3CqYMMfo1JKiN3//+JfY8AdvF5Am2rthPM
	OaAQHppXzzXALk2NLa+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOAXB-0004m8-Vw; Sat, 26 Oct 2019 01:06:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOAX7-0004lI-IE
 for linux-nvme@lists.infradead.org; Sat, 26 Oct 2019 01:06:22 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B34B720679;
 Sat, 26 Oct 2019 01:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572051979;
 bh=zbbKa1aKtmwBZUSaM1YpDsHSWg6hKENUsMcZGllWIx4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CrQod7WdTh3S76qkeypKC+6a8tHewmhyQXShvN3IuiiPY4YqOfGfpPaCmg42WNsvj
 64UFOYZlqLeCgBiZIsHFfqRA0j4bWTaADWeDEH7FpM0o0Fbztsq1f2oR9iLU7hlq4e
 5IgQf3sw+rWNLEEHfaekv9GsidIiBgP2FkbUckAA=
Date: Sat, 26 Oct 2019 10:06:13 +0900
From: Keith Busch <kbusch@kernel.org>
To: Mark Ruijter <MRuijter@onestopsystems.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Message-ID: <20191026010613.GA3210@redsun51.ssa.fujisawa.hgst.com>
References: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
 <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
 <FA6B6A9F-649B-4B58-99D0-2D09076E2482@onestopsystems.com>
 <20191025040540.GA19941@redsun51.ssa.fujisawa.hgst.com>
 <20191025042658.GB19941@redsun51.ssa.fujisawa.hgst.com>
 <109617B2-CC73-4CDE-B97A-FDDB12CD22BD@onestopsystems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <109617B2-CC73-4CDE-B97A-FDDB12CD22BD@onestopsystems.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_180621_630345_4FD93FEF 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 08:44:00AM +0000, Mark Ruijter wrote:
> 
> Hi Keith,
> 
> I am indeed not using buffered io.
> Using the VFS increases my 4k random write performance from 200K to 650K when using raid1. 
> So the difference is huge and becomes more significant when the underlying drives or raid0 can handle more iops.

You're observing a difference only when using RAID? I just tried some
simple tests on a machine comparing ramdisk files and loop block devices
as the backing storage, and there appears to be a similar performance
difference there as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
