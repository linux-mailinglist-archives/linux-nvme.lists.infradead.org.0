Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8FEE259B
	for <lists+linux-nvme@lfdr.de>; Wed, 23 Oct 2019 23:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=DfA3x8pw3y0ER3oqz/+djalAzGBjID7oKlSD96XbM+4=; b=WUUd6n7PFDlr2e
	JcrAmErVeo+smMG4uQxDMnTp4LYDYzt/GNJnLiPzQFoUruaBaw6+5Ko4fus2jeAW5cH6s+aMhRYTh
	SZpzoRszJgeZ2R9tG/6rHwYlr+alUqzU4uZEEwsoqw7TQHYmpPE5ZMJaWoaiiVQrXq3/wYhliA7Bv
	a2B2njHyU2lu7QlSuxWY+ONhAuGiDWAt++ppd8FLO1tY/eEoLOlc/goOBaZbCdi+o3qNDeeSG3Dk8
	hM2OJF3r/NN84m02i1IjB69TdRJyHv36WDt8qqmUP4JmmxU8PrkXoRJad+Pa1xPtgJFw0r3X7Gq1F
	sIQ9NSfgP0AvTbrQ7d9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOPl-0002ld-GB; Wed, 23 Oct 2019 21:43:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOPf-0002kv-JV
 for linux-nvme@lists.infradead.org; Wed, 23 Oct 2019 21:43:29 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF1FF2173B;
 Wed, 23 Oct 2019 21:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571867007;
 bh=RXxdp0rL3Oc2Jwv23Wz3NURYaA/G7KzIw2vqsSFN4X0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=FV2J0hI4E94GdHPD2ijQG+4lgY/AU5v/FiJMTAJLximf3vGgO8Q2yPIPNU6JdduLS
 CXkCtuFW8o/tM3+T8CEjDY2dvxBejnGihklq/84qINYLtasBys7KQ0Eoa7k6gP3cGj
 a+T4KclfrQxqgiqyphqXN8m73iLXy2lnP1m+TWDg=
Date: Wed, 23 Oct 2019 16:43:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jian-Hong Pan <jian-hong@endlessm.com>
Subject: Re: [PATCH] PCI/MSI: Fix restoring of MSI-X vector control's mask bit
Message-ID: <20191023214325.GA30290@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023211235.GA236419@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_144327_683629_ED4BE1C2 
X-CRM114-Status: GOOD (  31.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: linux@endlesssm.com, Matthew Wilcox <willy@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 04:12:35PM -0500, Bjorn Helgaas wrote:
> On Tue, Oct 08, 2019 at 11:42:39AM +0800, Jian-Hong Pan wrote:
> > MSI-X vector control's bit 0 is the mask bit, which masks the
> > corresponding interrupt request, or not. Other reserved bits might be
> > used for other purpose by device vendors. For example, the values of
> > Kingston NVMe SSD's MSI-X vector control are neither 0, nor 1, but other
> > values [1].
> > 
> > The original restoring logic in system resuming uses the whole MSI-X
> > vector control value as the flag to set/clear the mask bit. However,
> > this logic conflicts the idea mentioned above. It may mislead system to
> > disable the MSI-X vector entries. That makes system get no interrupt
> > from Kingston NVMe SSD after resume and usually get NVMe I/O timeout
> > error.
> > 
> > [  174.715534] nvme nvme0: I/O 978 QID 3 timeout, completion polled
> > 
> > This patch takes only the mask bit of original MSI-X vector control
> > value as the flag to fix this issue.
> > 
> > [1] https://bugzilla.kernel.org/show_bug.cgi?id=204887#c8
> > 
> > Buglink: https://bugzilla.kernel.org/show_bug.cgi?id=204887
> > Fixed: f2440d9acbe8 ("PCI MSI: Refactor interrupt masking code")
> > Signed-off-by: Jian-Hong Pan <jian-hong@endlessm.com>
> > ---
> >  drivers/pci/msi.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> > index 0884bedcfc7a..deae3d5acaf6 100644
> > --- a/drivers/pci/msi.c
> > +++ b/drivers/pci/msi.c
> > @@ -433,6 +433,7 @@ static void __pci_restore_msi_state(struct pci_dev *dev)
> >  static void __pci_restore_msix_state(struct pci_dev *dev)
> >  {
> >  	struct msi_desc *entry;
> > +	u32 flag;
> >  
> >  	if (!dev->msix_enabled)
> >  		return;
> > @@ -444,8 +445,10 @@ static void __pci_restore_msix_state(struct pci_dev *dev)
> >  				PCI_MSIX_FLAGS_ENABLE | PCI_MSIX_FLAGS_MASKALL);
> >  
> >  	arch_restore_msi_irqs(dev);
> > -	for_each_pci_msi_entry(entry, dev)
> > -		msix_mask_irq(entry, entry->masked);
> > +	for_each_pci_msi_entry(entry, dev) {
> > +		flag = entry->masked & PCI_MSIX_ENTRY_CTRL_MASKBIT;
> > +		msix_mask_irq(entry, flag);
> 
> This makes good sense: before your patch, when we restore, we set the
> mask bit if *any* bits in the Vector Control register are set.
> 
> There are other paths leading to __pci_msix_desc_mask_irq(), so I
> think it would be better to do the masking there, e.g.,
> 
>   if (flag & PCI_MSIX_ENTRY_CTRL_MASKBIT)
>     mask_bits |= PCI_MSIX_ENTRY_CTRL_MASKBIT;
> 
> I think the other paths all pass either 0 or 1, so they're all safe
> today.  But doing the masking in __pci_msix_desc_mask_irq() removes
> that assumption from the callers.
> 
> I applied the patch below to pci/msi, let me know if it doesn't work
> for you.
> 
> > +	}
> >  
> >  	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_MASKALL, 0);
> >  }
> 
> commit 1a828a554650
> Author: Jian-Hong Pan <jian-hong@endlessm.com>
> Date:   Tue Oct 8 11:42:39 2019 +0800
> 
>     PCI/MSI: Fix incorrect MSI-X masking on resume
>     
>     When a driver enables MSI-X, msix_program_entries() reads the MSI-X Vector
>     Control register for each vector and saves it in desc->masked.  Each
>     register is 32 bits and bit 0 is the actual Mask bit.
>     
>     When we restored these registers during resume, we previously set the Mask
>     bit if *any* bit in desc->masked was set instead of when the Mask bit
>     itself was set:
>     
>       pci_restore_state
>         pci_restore_msi_state
>           __pci_restore_msix_state
>             for_each_pci_msi_entry
>               msix_mask_irq(entry, entry->masked)   <-- entire u32 word
>                 __pci_msix_desc_mask_irq(desc, flag)
>                   mask_bits = desc->masked & ~PCI_MSIX_ENTRY_CTRL_MASKBIT
>                   if (flag)       <-- testing entire u32, not just bit 0
>                     mask_bits |= PCI_MSIX_ENTRY_CTRL_MASKBIT
>                   writel(mask_bits, desc_addr + PCI_MSIX_ENTRY_VECTOR_CTRL)
>     
>     This means that after resume, MSI-X vectors were masked when they shouldn't
>     be, which leads to timeouts like this:
>     
>       nvme nvme0: I/O 978 QID 3 timeout, completion polled
>     
>     On resume, set the Mask bit only when the saved Mask bit from suspend was
>     set.
>     
>     This should remove the need for 19ea025e1d28 ("nvme: Add quirk for Kingston
>     NVME SSD running FW E8FK11.T").
>     
>     [bhelgaas: commit log, move fix to __pci_msix_desc_mask_irq()]
>     Fixes: f2440d9acbe8 ("PCI MSI: Refactor interrupt masking code")
>     Link: https://bugzilla.kernel.org/show_bug.cgi?id=204887
>     Link: https://lore.kernel.org/r/20191008034238.2503-1-jian-hong@endlessm.com
>     Signed-off-by: Jian-Hong Pan <jian-hong@endlessm.com>
>     Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

I forgot; this probably should be marked for stable, too.

> diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> index 0884bedcfc7a..771041784e64 100644
> --- a/drivers/pci/msi.c
> +++ b/drivers/pci/msi.c
> @@ -213,12 +213,13 @@ u32 __pci_msix_desc_mask_irq(struct msi_desc *desc, u32 flag)
>  
>  	if (pci_msi_ignore_mask)
>  		return 0;
> +
>  	desc_addr = pci_msix_desc_addr(desc);
>  	if (!desc_addr)
>  		return 0;
>  
>  	mask_bits &= ~PCI_MSIX_ENTRY_CTRL_MASKBIT;
> -	if (flag)
> +	if (flag & PCI_MSIX_ENTRY_CTRL_MASKBIT)
>  		mask_bits |= PCI_MSIX_ENTRY_CTRL_MASKBIT;
>  
>  	writel(mask_bits, desc_addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
