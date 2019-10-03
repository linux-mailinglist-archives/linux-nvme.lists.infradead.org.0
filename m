Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17619C9DC0
	for <lists+linux-nvme@lfdr.de>; Thu,  3 Oct 2019 13:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5PWz0y8cHa7a8lU1abZix36mOiUERcFvWdHy8r1+1Y=; b=PKOjuf/wvo9u5K
	Q3EHZc8XLuxE/etfpzuknLrryzGJT5B727C6GzI/FHTz2oiaMxtjHEhzV8j4a/luMKbl+Q8AFGPok
	G9YeuB6RL/pq8lnh7c4yiK5aSg2kK8V2wjqZWXYCj+ErUqfz3i3ufENn2t5k8+OWKn+egeSbr3JZc
	Yf/afRHst6jz4iEcBFZK/dPF9DR+WVu3snDSpZdKDiRXlrfxOF5/cufGC1uHV9R8HnV40rclsclz9
	xK4amZz28mwXrOpzqe/si6TTAbDzjYHUreBy6hl1Wa9IA/9rXFk43iRj20H6cDM0rwaNII5K6Fd5n
	6Dt7hckSTc1l5JpiPtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzbp-0006Xo-8b; Thu, 03 Oct 2019 11:49:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzbl-0006X0-4M
 for linux-nvme@lists.infradead.org; Thu, 03 Oct 2019 11:49:22 +0000
Received: from C02WT3WMHTD6.fritz.box (37-247-85-246.natip.skydsl.at
 [37.247.85.246])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01C472070B;
 Thu,  3 Oct 2019 11:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570103360;
 bh=xC8ylYcA/lMM2kMlCBJnJ1GNs3GZjc1QnkFivqYu5Co=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FmrtwM/pg1FFXVT7EIUutXqbdZhWR8xGoceecs+2isgVr9u2XyIuwqd/s4xxUG6+E
 E+kMMXn+C1Z1aDoA3G+iGfBPAmlxMMSymkIYnFmz3v+2pVabnyfTZSNDacs50OHhno
 1MttRYgU2YWT1bxPl3Z8/zTb5xVTRymepvLbm1GM=
Date: Thu, 3 Oct 2019 05:49:01 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC PATCH] nvme: retain split access workaround for capability
 reads
Message-ID: <20191003114901.GA34459@C02WT3WMHTD6.fritz.box>
References: <20191002073643.5339-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002073643.5339-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_044921_190653_D207D045 
X-CRM114-Status: GOOD (  16.20  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@fb.com, ilias.apalodimas@linaro.org, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 09:36:43AM +0200, Ard Biesheuvel wrote:
> Recent changes to the NVMe core have re-introduced an issue that we
> have attempted to work around in the past, in commit a310acd7a7ea
> ("NVMe: use split lo_hi_{read,write}q").
> 
> The problem is that some PCIe NVMe controllers do not implement 64-bit
> outbound accesses correctly, which is why the commit above switched
> to using lo_hi_[read|write]q for all 64-bit BAR accesses.
> 
> In the mean time, the NVMe subsystem has been refactored, and now calls
> into the PCIe support layer for NVMe via a .reg_read64() method, which
> fails to use lo_hi_readq(), and thus reintroduces the problem that the
> commit above aimed to address.
> 
> Given that, at the moment, .reg_read64() is only used to read the
> capability register [which is known to tolerate split reads, which is
> not guaranteed in the general case, given that the NVMe BAR may be
> non-prefetchable], let's switch .reg_read64() to lo_hi_readq() as
> well.
> 
> To ensure that we will spot any changes that will start using the
> .reg_read64() method for other purposes, WARN() if the requested
> offset != NVME_REG_CAP.
> 
> This fixes a boot issue on some ARM boxes with NVMe behind a
> Synopsys DesignWare PCIe host controller.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
> Broken since v5.3, so if this gets fixed one way or the other, please
> add cc: stable.

Since 5.3?! 'git blame' says the code has been this way since 7fd8930f26be4,
which was from 2015 during the 4.4 development cycle.

Please add a:

  Fixes: 7fd8930f26be4 ("nvme: add a common helper to read Identify Controller data")

to your change log above your sign-off, and remove the WARN_ON().

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
