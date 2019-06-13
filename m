Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19124346F
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 10:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLoR24+kuNmvsxbk7e7aeJi9IAK7oxJNe2o32lsfj7g=; b=a8G8aHmD8NGr5t
	zjy9XOr71gcJYjrgCsbzyruQp+rNg8usJy1aw+vj3niYr4mGPy8LckihYsWPl/re3olm6oRgFo1ic
	3VoSoWg3UIpC28NjenQrPtUEeIUCttgELyAgM/ArcSx5BdwQkXYzu3FYE+qX92SBSf/NfnPL7AUca
	htl5E+entAEFn3Mf7BNMTklMLk7thjK/lW6dE4WMPnswhqcPy5n5jrvECmM4bxY4+ioGLnNDiuCbH
	7X0rzeXtUEikS19IRrJyZ90xpc0cH3li/2yimxaHIr/YOzx0PK8goelic/FnN4vw5hmTR+2hnCojt
	9GSYALMhtmBmylJQ/1AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLVK-0004Hf-8u; Thu, 13 Jun 2019 08:54:42 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLV9-0004Gw-VS
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 08:54:33 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 2E87468B02; Thu, 13 Jun 2019 10:54:03 +0200 (CEST)
Date: Thu, 13 Jun 2019 10:54:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
Message-ID: <20190613085402.GC13442@lst.de>
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_015432_170957_88576800 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-ide@vger.kernel.org, Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Daniel Drake <drake@endlessm.com>,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 08:32:46AM -0600, Keith Busch wrote:
> On Mon, Jun 10, 2019 at 8:46 PM Daniel Drake <drake@endlessm.com> wrote:
> > What's the specific problem that you see here?
> 
> Performance. Have you had a chance to benchmark these storage devices
> comparing legacy vs MSI interrupts? I don't think anyone would chose
> the slower one on purpose. These platforms have an option to disable
> raid mode, so the kernel's current recommendation should be the user's
> best option.

And it isn't just performance.  I really don't understand how

 a) quirks on the PCI ID
 b) reset handling, including the PCI device removal as the last
    escalation step
 c) SR-IOV VFs and their management
 d) power management

and probably various other bits I didn't even think of are going to
work.

So until we get very clear and good documentation from Intel on that
I don't think any form of upstream support will fly.  And given that
Dan who submitted the original patch can't even talk about this thing
any more and apparently got a gag order doesn't really give me confidence
any of this will ever work.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
