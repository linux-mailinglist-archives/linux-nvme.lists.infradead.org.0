Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58A04BA88
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 15:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6bfWUQ2ci2GGJxcRZWVmxXta1wBZ6q/SJHnStNVmZI=; b=c/xnLBqnKe0rZ3
	tlcf+GI0dTmdBVJ8tgaOSQQTgj0Zd+huZXapRtdOqIosmHz98BreWq5yXRMaA3wPa6zXm8BmYlH4l
	MWTzUKE2O/YZuP9j2OEp1XD4PocAK5Jp0KKcNpHeDmnfW2GuLU5PtOIgX1lxnn2I0kJfXfAb27Y6L
	Utcz80r+Ryp/q8e5tv5m6zV/2yJSte1YqC/0A7dvUHiA0uPQmYUGBRlhfxDXVmTFMbqPKwPE9tyPr
	iOuAh2TslWspUPibcxjI+sAI8gPeaiBpXx9Le1X7EF5q87gbJfbdHfQpU0531WscjPNNFXKaWqRGB
	IjS6Faj1ydawhBEFqYyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdb0e-00008l-Um; Wed, 19 Jun 2019 13:52:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdb0Y-000084-Mh
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 13:52:15 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5804121670;
 Wed, 19 Jun 2019 13:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560952333;
 bh=hclDymaNDOsDIbtMIl2LJFfnJSsWaLYy2U58GCdGL90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B3jizonAV2P/nKMYqbPEgPAL9k/qW8ysXT3xel3+pdhOYp0ed6QM+M43NYXIgDS4R
 TJwpRuRfyoYWC2o6XWzDHvFF1BZojHDXeUNX9GB+zXKfS/3M2bZW6qfeZgiw1jGLr+
 ne2uDEFhd+dqrxNPw95QMPUZSaRWDeBIuK7jqKjw=
Date: Wed, 19 Jun 2019 08:52:12 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
Message-ID: <20190619135212.GB143205@google.com>
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
 <06c38b3e-603b-5bae-4959-9965ab40db62@suse.de>
 <CAD8Lp44rqGh3nmUOFhwq+SSxpJGuWvLFJ8sKtM0q1GeY0j4v9A@mail.gmail.com>
 <1f56c881-9005-f8ad-1557-5efd6e0ef535@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f56c881-9005-f8ad-1557-5efd6e0ef535@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_065214_755530_DF06D9A8 
X-CRM114-Status: GOOD (  13.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PCI <linux-pci@vger.kernel.org>, Keith Busch <keith.busch@gmail.com>,
 Daniel Drake <drake@endlessm.com>, linux-ide@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 05:15:52PM +0200, Hannes Reinecke wrote:
> On 6/18/19 10:06 AM, Daniel Drake wrote:

> > We can probably also use these registers for MSI support. I
> > started to experiment, doesn't quite work but I'll keep poking.
> > The doc suggests there is a single MSI-X vector for the AHCI SATA
> > device, and AHCI MSI-X Starting Vector (AMXV) has value 0x140 on
> > this platform. No idea how to interpret that value. From
> > experimentation, the AHCI SATA disk generates interrupts on vector
> > 0.
> > 
> The 0x140 is probably the offset into the PCI config space where the
> AHCI MSI-X vector table can be found ...

An MSI-X vector table is in memory space, not config space.  You'd
have to look at PCI_MSIX_TABLE_BIR to find which BAR maps it, and then
add PCI_MSIX_TABLE_OFFSET to the BAR value.

Bjorn

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
