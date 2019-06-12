Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B5427F4
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 15:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Mig2aqhlVjFJTnhYwktuf3DoxiywIR22YG9TmMPLqs=; b=gOqFYJD12lZ78t
	Y0NaH/UycVpDfY/KGJMdV4jDhGpTMThbdRRCBILlEuMbWZgg/+cO0ucdpgTYprDgn9c7NiDxCroAm
	GkMHtgNc4El2CjA09Kn12kH+mfLDCNBkd5sj4PFJhNRntJuQV1nQp62tLsnYRdxp4ooCrSF5ROtVB
	7mgLJi8rM55KTdPJApQPtTv3wMkk4xkaLiYso7v8cGLcvv5RMAAE96pewAqIfCFBNh9C8t1vECRnX
	i8bL9kOH+pDtudKUPR4XLyro5TFsnHwXxM7/HTDGsy8JKZqP1UYV/InAnJ+rzmn2w9DGuWX0ZsPFl
	vU//ImR5sr8QzLiy/e8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3d5-0005Eq-GL; Wed, 12 Jun 2019 13:49:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3d0-0005EB-S2
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 13:49:28 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F9A3208CA;
 Wed, 12 Jun 2019 13:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560347366;
 bh=XxmYfcW64R7kQ/+LuOTWFbRjfanmeG4vLimtAoJAOpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e89zFSzf/8xvYW51g1/UatnItMta3xse8v/K0qRw1bvXcOM9C02qULISPJbuwNvp9
 vx21Lx0SwpZjMsFqHJnSuznkoCL1FxWVSI/cSLboVq/G5C89u3IhxFKeiN1wwNWSFs
 Se33l9/x64vRdLKELqgVlCc8uQQIrYC9Ojp12/IM=
Date: Wed, 12 Jun 2019 08:49:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
Message-ID: <20190612134925.GC13533@google.com>
References: <20190610074456.2761-1-drake@endlessm.com>
 <20190610211628.GA68572@google.com>
 <CAD8Lp47BmOtEgFUDCMyLrDpoPZSxcWmbrXEbh4PXS0FSG8ukLA@mail.gmail.com>
 <20190611195254.GB768@google.com>
 <CAD8Lp479mY=dAhFvGT2ZiJP12KXszhWev=QpCcgfgoew0TxgWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD8Lp479mY=dAhFvGT2ZiJP12KXszhWev=QpCcgfgoew0TxgWg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_064926_926721_2038D545 
X-CRM114-Status: GOOD (  16.39  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, mjg59@srcf.ucam.org,
 Sagi Grimberg <sagi@grimberg.me>, Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, linux-ide@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 11:16:03AM +0800, Daniel Drake wrote:
> On Wed, Jun 12, 2019 at 3:52 AM Bjorn Helgaas <helgaas@kernel.org> wrote:

> > Why do you need these to be PCI devices?
> 
> I don't have a particular preference, but was trying to explore the
> suggestions from the last round of review:
> 
> https://marc.info/?l=linux-ide&m=147923593001525&w=2
> "implementing a bridge driver like VMD"
> http://lists.infradead.org/pipermail/linux-nvme/2017-October/013325.html
> "The right way to do this would be to expose a fake PCIe root port
> that both the AHCI and NVMe driver bind to."
> 
> > It looks like the main thing
> > you get is a hook to bind the driver to.  Could you accomplish
> > something similar by doing some coordination between the ahci and nvme
> > drivers directly, without involving PCI?
> 
> That's basically what Dan Williams originally proposed, and Christoph
> Hellwig was not particularly excited by it...
> 
> Can you take a quick at the original patches and see what you think?
> https://marc.info/?l=linux-ide&m=147709611121482&w=2
> https://marc.info/?l=linux-ide&m=147709611621483&w=2
> https://marc.info/?l=linux-ide&m=147709612221484&w=2
> https://marc.info/?l=linux-ide&m=147709612721485&w=2
> https://marc.info/?l=linux-ide&m=147709613221487&w=2

I see Christoph's objections starting at
https://marc.info/?l=linux-ide&m=147711904724908&w=2
and I agree that this AHCI/NVMe melding is ugly.

But given the existence of this ugly hardware, my opinion is that
Dan's original patch series (above) is actually a nice way to deal
with it.  That's exactly the sort of thing I was proposing.

Part of Christoph's objection was the issue of how reset works, and
that objection absolutely makes sense to me.  But IMO adding a fake
PCI host bridge and fake PCI devices that really don't work because
they have read-only config space just smears the issue over
PCI/VFIO/etc in addition to AHCI and NVMe.

Bjorn

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
