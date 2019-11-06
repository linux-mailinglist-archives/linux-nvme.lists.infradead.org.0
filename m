Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AACF1D77
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 19:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9i7rGXtKiIbWAF77XYj0yPmLkxL16Wk4FHPL4rH3+BI=; b=XwUy7zQH5XKPsh
	D67TsOLKaAWwcoDpj9ZWNS5gajWd1Y6tQck2JHWvYgndcKvpERl48lJe4UdWKb8/twxgTUeu0vCgk
	TFxHGO0GWGpT2OzDcGfFZPZS+SDMaujVR9eOhcwGYdBenb0VGAU5UCExYmUXbMbvTXEJZrJ+9rOws
	1xglmIMC6svU9wvpnauY+YHB7wvnCZRMGVhWwdjH/MWvv1V1BvSHXPSaXKwNZO4f+ouSWWGi49fxl
	YAR2vRqgpgh2JEr/ZzbtWa0ECIDKS2MyshNTGgAULAx570e0+71fHXsDzFDDIn21WhYMaaaoTkt1l
	DY7X+okXa1FIo7t+dzPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSPyB-00007C-Dr; Wed, 06 Nov 2019 18:23:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSPy6-00006m-BX
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 18:23:47 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 152A120869;
 Wed,  6 Nov 2019 18:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573064625;
 bh=NrZNbCYPFQKOTYSIaeYQqCu682wR5qwHA9joi8r1kL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2fQsqsbSBv/iV03EhbpYVgtWhizMQdSc6duZEabWA1LBns7wOiI+cKrIoPGkfNXOa
 YSwxnn8DTi/IkbdbcHIly/msF+WMNGgUw2j02XVJlyvkNt66cK1vKDWQyWpLOH5wgE
 dNDVXHmfxO6I2gdBNxQ24jRTg4hAqjQzvPPCZmK8=
Date: Thu, 7 Nov 2019 03:23:39 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [RFC PATCH] Workaround for discard on non-conformant nvme devices
Message-ID: <20191106182339.GE29853@redsun51.ssa.fujisawa.hgst.com>
References: <f220c69a-793d-9160-4f20-921c52748009@hasenleithner.at>
 <d96335fb-8907-6b5b-14e9-08eb1a796b0d@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d96335fb-8907-6b5b-14e9-08eb1a796b0d@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_102346_415883_48086846 
X-CRM114-Status: GOOD (  19.18  )
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
Cc: linux-nvme@lists.infradead.org,
 Eduard Hasenleithner <eduard@hasenleithner.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 08:52:20AM -0800, Sagi Grimberg wrote:
> > As documented in https://bugzilla.kernel.org/show_bug.cgi?id=202665
> > there are lots of Linux nvme users which get IO-MMU related errors when
> > performing discard on nvme. So far analysis suggests that the errors are
> > caused by non-conformat nvme devices which are reading beyond the end of
> > the buffer containing the segments to be discarded.
> > 
> > Until now two different variants of this behavior have been observed:
> > The controller found on an Intel 660p always reads a multiple of 512
> > bytes. If the last chunk exceeds a page it continues with the subsequent
> > page. For a Corsair MP510 the situation is even worse: The controller
> > always reads a full page (4096) bytes. Then when the address is not
> > aligned to 4096 it will continue reading at the address given in PRP2
> > (which is most of the time 0).
> > 
> > This patch makes the nvme_setup_discard function always request a
> > multiple of a page size (4096) from the kernel for storing the segment
> > array. Since this makes the buffer always page-aligned the device
> > reading beyond end of a page is avoided.
> 
> This needs to come with a quirk for it.

Yeah, and have the broken ones to use the ctrl->discard_page so that you
don't need to worry about the alignment of the address kmalloc returns.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
