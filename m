Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628A29CB27
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 09:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7XwcSRKGBtzjfIdYf/Gg/xOkxFrh00Ub5NPDhis/To=; b=PMWCMBRYIWdDoi
	7Pfl+kJXYoU+8zA4IUv/FduXcu5xxCq8/BmJVvUorz1SsWgAywZ/zAaYdWY4oS9H7TcCUPVKbTy8b
	mwfib+b5V/A1eH+r91ACsGXFNn7kfu1qkB8gLBshqHkPDMgDbaoSLFVcgf3N/ZqFpULuOxYtuiT9V
	Z1tG74GCaLbTavpUCCxloEKUFH87uk8gOOkuyJzi5/6mhj+IoqLuGN83+EPMl2GV8Umotp7DVgyBn
	vr+nzNsHt4CkyFmPelAzhMqMy4UsLxagXGoG7OTun/2p7XH9MX9fDLK9UeYrvjy8Iwg+FsHdzPyJX
	/gt0vDMQgK/09VK+r2Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29uS-0001s0-Lb; Mon, 26 Aug 2019 07:59:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29uL-0001rK-SX
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 07:59:23 +0000
Received: from localhost (unknown [89.205.128.246])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24B7F20874;
 Mon, 26 Aug 2019 07:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566806361;
 bh=OG9SJrchwTyiBC/xl+WDAoFEZMQOTDerXnkioTTM3sM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wiyo61huaB4sjI4sLb9RjnSExn8D+WToxUCMZXwaMWgjaE6DvvmH0G15+xsVeq/tT
 n1xSuyM6d+iR8Ncv6a4mU5pxce3zVpIaDN6nUud/Z847ifvoHFIv5hGIVStAfrViL7
 tNmTmbwVNL0PU1BcNb0/cwva3iknwa0+LZCHZW0o=
Date: Mon, 26 Aug 2019 09:59:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190826075916.GA30396@kroah.com>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me>
 <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
 <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
 <20190826065639.GA11036@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826065639.GA11036@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_005921_945514_C9AA8B87 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 08:56:39AM +0200, Christoph Hellwig wrote:
> On Thu, Aug 22, 2019 at 12:10:23PM -0700, Sagi Grimberg wrote:
> >> You are correct that this information can be derived from sysfs, but the
> >> main reason why we add these here, is because in udev rule we can't
> >> just go ahead and start looking these up and parsing these..
> >>
> >> We could send the discovery aen with NVME_CTRL_NAME and have
> >> then have systemd run something like:
> >>
> >> nvme connect-all -d nvme0 --sysfs
> >>
> >> and have nvme-cli retrieve all this stuff from sysfs?
> >
> > Actually that may be a problem.
> >
> > There could be a hypothetical case where after the event was fired
> > and before it was handled, the discovery controller went away and
> > came back again with a different controller instance, and the old
> > instance is now a different discovery controller.
> >
> > This is why we need this information in the event. And we verify this
> > information in sysfs in nvme-cli.
> 
> Well, that must be a usual issue with uevents, right?  Don't we usually
> have a increasing serial number for that or something?

Yes we do, userspace should use it to order events.  Does udev not
handle that properly today?

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
