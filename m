Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F1CE22D
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 14:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZKTeDsywWg5+zygqXpgdpHz4lzyibulx5ujjoSLlkg=; b=Uqv7JGniJJD3Qt
	KR7CxIqGAw9Ty87NexXggBvzHA3+90g9CUpIvtVoshncagzTBRuHA7v6VDjYejSTDSI101EBhUDOZ
	m6LVvtyfGFA336UUbK/SrdZo2mMdzr+FiIB6rgJ+mELw6VoYDso5QOPWs7p8eN+m48qms+6RBo7Bv
	nCP/o1hUCxvbiGmP4jhnSFKFEggdLlTpah60LNaR3UE9u8yC+rqxE7Fmgazy2hri94py117hzbR3H
	ufTbo4jf2b7KU8yRxkHWx+rFnbXdb5l4R70BVkB38YyIGhFbEbS9lLMt//ihXQF+l/c49Ywm7dHGr
	2dBL3DO0Xk5QNYc3qTRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSRc-00068a-34; Mon, 07 Oct 2019 12:48:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSRR-000682-WC
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 12:48:49 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F82A20867;
 Mon,  7 Oct 2019 12:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570452525;
 bh=w7mo3IWMYbV3u8KgcWU0LeBRkWAOqm+vrId+OShjgTs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pjp2YQSMwwEcF9lzBzBIDOTR0p0TEvDwFTEL5Oq9XbjEaDywaPIid8zB1CdfzdlXf
 BjObsiYgEnvveTmpoWS+Yyu3TlBKiQ/hLEbgyAb5IX6i4IVzhiNUNE9hHtSCpxmAiy
 3sKGLXCYyafeTFubUU11UNO3HW0e5e2TeKj2j8j0=
Date: Mon, 7 Oct 2019 06:48:43 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
Message-ID: <20191007124843.GA53339@C02WT3WMHTD6>
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
 <20191007120721.GA21060@lst.de>
 <CAKv+Gu_mYpopYMCiq=TqHBkzZoRLJD_0Xi8J0GB8+sCHJSmK9A@mail.gmail.com>
 <20191007122738.GA24804@lst.de>
 <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_054847_940205_08788718 
X-CRM114-Status: GOOD (  22.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@fb.com, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 02:32:43PM +0200, Ard Biesheuvel wrote:
> On Mon, 7 Oct 2019 at 14:27, Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Mon, Oct 07, 2019 at 02:24:58PM +0200, Ard Biesheuvel wrote:
> > > > If you interconnect doesn't support 8-byte MMIO read/write TLPs you
> > > > have a much deeper problem, as this will break all drivers using
> > > > readq/writeq.  And we currently only have compile time detection for
> > > > readq/writeq, not runtime so you'll have to invent a scheme if this
> > > > works at all or not.
> > >
> > > Sure. But the practical reality is that the hardware in question
> > > (including the Apple controller) worked perfectly fine until commit
> > > 7fd8930f26be4 introduced a readq() call into a file that had
> > > deliberately been switched to using lo_hi_readq() because readq()
> > > doesn't work reliably for all hardware we would like it to support.
> > > Theorizing about *why* readq() doesn't work reliably in which
> > > particular case doesn't seem that useful to me, given how trivial the
> > > fix is.
> >
> > My point here is that if it isn't the PCIe device that is broken like
> > in the apple case, but your interconnect you have a problem that can't
> > be fixed just in the nvme driver.  We have tons of other drivers relying
> > in readq/writeq working if it is available.  You'll need to find a more
> > general workaround, independent of the fact that we have a few NVMe
> > controllers that always need this workaround.  And at least for NVMe
> > the spec specically allows split 32-bit access at least.
> 
> OK, that is good to know. Mind you, I used 'interconnect' in the
> abstract sense, meaning whatever sits between the CPU doing the read
> and the 64-bit register in the BAR space.
> 
> But I fail to see your point. Why is it relevant for deciding whether
> to apply a NVMe fix if the affected hardware can or cannot use other
> types of PCIe devices? Note that I am not proposing some hacky
> workaround to be applied, but just to stick with the workaround that
> was already accepted (and I'm pretty sure that this Apple hardware got
> broken too with commit 7fd8930f26be4)

The point is the reasoning in the changelog does not justify *this* patch. If
you change the wording to not mention your host controller, and instead just
refer to the previous NVMe behavior (and modify your comment accordingly), then
we should be fine.

If you explain this patch by saying it's to fix a host controller, then the
patch is no longer sufficient on it's own and should be fixed elsewhere,
perhaps by providing a special pci_ops structure for your controller.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
