Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC278A2FAE
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 08:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYI8r5S2deSy8R5ZERsq7hZ378ePV4LMbekTa9NJ7uQ=; b=ATggpRDxdJdBBn
	FEl4/lKXqqdoMmsKtsba198YAmFR2UEd46EwOUQbAqfrbCTYSE97gjahRjZlCy73yB8bHpfcUDmt6
	7Pw1zTOthCC9A3EpO1OyeHRs8bXy3Du/Fyn+fnFbpSn6NaOABsc3dGW3/wtgevOBfyiYAN6d4AUQu
	TdB1yS2AWfxNnLBCCMgysSy6qgbGmhVldd93Cw9PsSsmbiwTf1hqfUTdBtH8GsjLNZ/+nMjX1yzTF
	CuEfyA4mVPvXHnimXtxXTTUw/vWUic4VnmyOZh8InasWRJr8tGlABpxzqSubLXP7HFZScqCp3u6ej
	yj6Y5RUjq1akF+vYW0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aHq-0007B7-SZ; Fri, 30 Aug 2019 06:21:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aH2-0006xu-M7
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 06:20:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DD4F2087F;
 Fri, 30 Aug 2019 06:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567146039;
 bh=FXijohpD1xppY/Izswf5sHL2hci61FgO5kTCmkEc/7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JOn8NYBJdF+nYZk35tKx1gQbjgVNO4Q23JKoMz8AtE9l31oifYcJ2t0+OjDXXvrcv
 yShLLClcyqW1Y+rBw7sg3u++MbBTXHPHfp2B6Vl/dFtdMJrBHsy/ybWYhB2Z4YhKib
 xroYwIZOsz/2Drf5WkfiL0nCLbIziN4Fw4mVsTmo=
Date: Fri, 30 Aug 2019 08:20:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190830062036.GA15257@kroah.com>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me>
 <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
 <20190826065639.GA11036@lst.de> <20190826075916.GA30396@kroah.com>
 <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac168168-fed2-2b57-493e-e88261ead73b@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232040_888903_1B80C5BA 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 11:21:02AM -0700, Sagi Grimberg wrote:
> 
> > > > > You are correct that this information can be derived from sysfs, but the
> > > > > main reason why we add these here, is because in udev rule we can't
> > > > > just go ahead and start looking these up and parsing these..
> > > > > 
> > > > > We could send the discovery aen with NVME_CTRL_NAME and have
> > > > > then have systemd run something like:
> > > > > 
> > > > > nvme connect-all -d nvme0 --sysfs
> > > > > 
> > > > > and have nvme-cli retrieve all this stuff from sysfs?
> > > > 
> > > > Actually that may be a problem.
> > > > 
> > > > There could be a hypothetical case where after the event was fired
> > > > and before it was handled, the discovery controller went away and
> > > > came back again with a different controller instance, and the old
> > > > instance is now a different discovery controller.
> > > > 
> > > > This is why we need this information in the event. And we verify this
> > > > information in sysfs in nvme-cli.
> > > 
> > > Well, that must be a usual issue with uevents, right?  Don't we usually
> > > have a increasing serial number for that or something?
> > 
> > Yes we do, userspace should use it to order events.  Does udev not
> > handle that properly today?
> 
> The problem is not ordering of events, its really about the fact that
> the chardev can be removed and reallocated for a different controller
> (could be a completely different discovery controller) by the time
> that userspace handles the event.

So?  You will have gotten the remove and then new addition uevent in
order showing you this.  So your userspace code knows that something
went away and then came back properly so you should be kept in sync.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
