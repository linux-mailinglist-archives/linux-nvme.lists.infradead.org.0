Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B6C10EC84
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 16:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt99soveftDiwKJ8uV/PAtVwti4tRPPmPmUKTPLEM8Y=; b=G+N9iegUSU+xQZ
	MDRqJFj+kJFvq4c25jT6o4D6UoK12L2w7IeebXPT8hKRpX50VPiHAzPL/F7l9UJbfMmpaDRmoAg4u
	nGNV8euJGxjCslwYokQpyoSek+zdElifqLRCTSp/w+1U4SScuvN66wDbkF+dj2whKyd8OwZ9zGlWX
	hyc/ZnfLiscB/+lRUmam9N0u27N76KzShWDPpORYCqMUHh7uCHFp8rDZq6L8NfC9GyM5qvc+ZcCZI
	ydIbs9hIZQHFX0D12jZNX/0ADkmKrquBnzo3qUk0luVeOsPTmx5NMbcc+bqR1DYq3NuBzBECLb3YN
	OX1rmyiFqBPPBsedAN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnnU-0002QS-PC; Mon, 02 Dec 2019 15:39:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnnO-0002Ot-0t
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 15:39:31 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13B232084F;
 Mon,  2 Dec 2019 15:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575301168;
 bh=WUeCbwbZl+dMge+efOSDlOAMp0vXqdS3EjUC/UJaLd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YTCDVmJy6Wy7W4o4pLElWVl/cVEBnV3OabzbFT14icQejrjU97i/DcSDZm0bAXqjo
 IWWj8vSZ/B2BTS4rUrJ/Q6z0cPZPcSC2Y3EDJIlmhfNPL+BkoPPSncY5JQy3hWrrgc
 IAPCocVA5ijhjfjqDUKI56+6VurnNo3hQosdJgHw=
Date: Tue, 3 Dec 2019 00:39:25 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ingo Brunberg <ingo_brunberg@web.de>
Subject: Re: Regression: kernel 5.4 does not show NVME SSD
Message-ID: <20191202153925.GA8561@redsun51.ssa.fujisawa.hgst.com>
References: <m3fti36pll.fsf@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3fti36pll.fsf@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_073930_098097_120E8EE6 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 10:31:18AM +0100, Ingo Brunberg wrote:
> Hi experts,
> 
> starting with linux kernel 5.4 my NVME SSD from HP is no longer detected
> correctly, nvme list shows no result. I made no relevant changes
> regarding .config between kernels 5.3 and 5.4.
> 
> Please have a look at this bugzilla entry:
> https://bugzilla.kernel.org/show_bug.cgi?id=205679
> 
> Maybe all SSDs with a Silicon Motion 2263 controller are affected.
> If you need more information, please ask.

It's a regression from commit 538af88ea7d9de241e6b6f006e9049c4d96723bb.
This one should have only returned the error if < 0, otherwise we can
proceed. Will get post a patch shortly with a 5.4 stable request.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
