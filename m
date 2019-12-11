Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BBD11B869
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 17:18:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYT7mMLkVAHW63jIb9dZG/lCEG4ZvPHAD8JawBqlogA=; b=hCy6K5lAfFcHLt
	3cD4yvFaBGeNkpqqepSlssWAeNvDKCf9VwYlhxrLI20+EQ5rZF36ZLbzbphtQZoCNUs2MTuJ6tASO
	/7zhn2RRyLSwaWCAv3XrQeq9FW/R2EV60VypO/7j3q9+nFGVJoRjAJhUFd+Wsaq0DP67JcTJIWqFh
	MUZTW0B7XolldHZ8uFPHbLazZR9keQMSVzQRBVfj+yZMgFn8Kj2yEgK4YXj7b9L4Vvq0m0kyGgrrn
	5LNrLayeZSRQjXId+y9QZuFHVVPRbu8xTq+znzqEvu4gzjA66U8nzuKqfZ5yZ+z+F6aDhKM1rhfhY
	leq6SwaBUQq+4lNy5D1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4hA-0004o8-2C; Wed, 11 Dec 2019 16:18:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4h4-0004nl-MA
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 16:18:31 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2DD2205C9;
 Wed, 11 Dec 2019 16:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576081109;
 bh=wK2PSuxQD024ene7zXvOKPSUJnmOFoWdG8mDjLlZkT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f4Z8cw2PcUbpKXRztsX8C2fxEXl3FwJ8W00zL7ZJqomEzeyd9DNIcxIW4iPn+TBVy
 IWNmIhq8nHQ13UgTW/nOMF7+rB0mH/NjJ9SAM72uJBzWz9DepgCHDp2ZVYLRVNlvGr
 xXd/JdSaCeHcNJc9JhanhPQE1PFKgo930ijjGtiM=
Date: Thu, 12 Dec 2019 01:18:23 +0900
From: Keith Busch <kbusch@kernel.org>
To: tsutomu.owa@kioxia.com
Subject: Re: [RFC PATCH 0/5] to add more nvme reset functions
Message-ID: <20191211161823.GA493@redsun51.ssa.fujisawa.hgst.com>
References: <346d379a5f9940dcba60242d2d9e119a@tgxml778.toshiba.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <346d379a5f9940dcba60242d2d9e119a@tgxml778.toshiba.local>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_081830_750568_C4EFE6BB 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@infradead.org, sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 02:34:15AM +0000, tsutomu.owa@kioxia.com wrote:
> This series of patch is to add support for nvme reset functions
> described in NVM-Express specification 1.4 "7.3.2 Controller Level Reset" 
> (conventional hot reset, link down reset and function level reset)
> and "7.3.3 Queue Level" (queue level reset).

You're not providing any justification for why you want these implemented
in the nvme driver. What issue is this addressing?
 
> I'm still wondoring
> 	- if it's ok to export functions from drivers/pci.

Probably not. They are private for a reason.

> 	- if it would be better not to use CONFIG_NVME_PCI_RESET
> 	  and/or CONFIG_NVME_QUELE_LEVEL_RESET as these are noisy
> 	  and these features are based on specification anyway...

First, if you're going to introduce a Kconfig option, don't split the
patch that actually uses it. Second, don't introduce new kernel config
options for such features in the first place.

> 	- what is the best way to export nvme_pci_* functions in
> 	  drivers/nvme/host/pci.c to drivers/nvme/host/core.c.

Don't export functions that direction. Use ctrl->ops if core needs to
call a transport specific routine.

> Any comments would be highly appreciated.

The majority of this series is at the pci protocol level, and the pci
driver already provides the requested capabilities (but with a more
safe implementation). Let's not reinvent it just because one nvme
transport happens to use the pci bus.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
