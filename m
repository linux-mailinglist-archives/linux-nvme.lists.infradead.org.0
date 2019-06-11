Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBF43C157
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 04:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lE+aHId/ie6DiZS1NA+rN3bD681VDkefVm5VMMQzxCU=; b=W8gRChPLAX/vJE
	LR6m/TznCH2IfNThr4P/Uoo8/oFJY3u8ln5o+CwrSULRc4KjRHousQi6faNmpH31jKBLvNK10IsKW
	Z+Ug3/7c20IKY0MVcY5CMQNPxT7mpKlTMnppVfbUudEkiQry3zMw9r/8U/8cf3jqak9+3PCZR7U/O
	eF8Hi2FmvrNN8STJYeayJGnvFaWYnObcWc/bJGJ93+45c2F5yZs0u2irR4YKEJ6NmbEvXJCUkUZIC
	CQfgaSUehmVjRXrdxZOEEz35ouYSXenQLKFUFyJJehLMSyo983RAHYhE47pmfdebyPvRRAt+cZZoT
	ydwe+j26c3OeRLpmFjrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haWoJ-0004p4-Pz; Tue, 11 Jun 2019 02:46:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haWoA-0004oA-C4
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 02:46:48 +0000
Received: by mail-qt1-x841.google.com with SMTP id s15so12777970qtk.9
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 19:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0m35NGQgea2Dtho1tkMpAy982wOOgH1ICR+Vwx3GZeE=;
 b=B7mV3IItGXU3TGMF4QJRflUaAgL4S43JkzhIxxw0iqm4+OLzf9fKB8j2JP2dVCDPil
 sW384G7A11k2gPbEjKGTOv5X2Z3ryeV9M6ryiSLro3IxjT9OZyDo3pObjYM7A1rlex5o
 JM/lbTbVKx0jeE+Hz8BQ5+xUiAB+RIJKjWpmOGWMVU2PHOUFA3YILO2buWSMwliLUQET
 D1qvaiKdx5eSJQsH2Z8ksyja4hIH3EWjs1jAF4U61bv0JbaavY2pVTYjrZaqFU5vAwOY
 NK/8qG5MN2Gn1DUikSm2ti8MCRGEJwUYBqBSQCGhBK+/QkiLzAuqnJRCDVqUQDsWMwXP
 O3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0m35NGQgea2Dtho1tkMpAy982wOOgH1ICR+Vwx3GZeE=;
 b=AzwjG+KQ0i7OOntbvtS/cfXKVPPFRoS0ht91P77jVVYtBT1IB9DhCUqOm/bIUBpucf
 59eO+oBIwJPAcQVrI3qBuGVx8YLMHRMt/pStCmTFmFHYzKAru4KEOKGJfTSBLunzC+Nc
 7/YYoL+tZaShwaCGxv703+JpCj0g3AR4hYCmdm4cslPthUQA8R2VKZVEq4cNhAFOd8oG
 LgrobKy9fgQLP0rZpb3gYJN+xYcJVl7xGEyUVlfvRRkaaLdjnmh1WQBR2OIig2HExbtu
 mX+OR8/nUaupiM/HagQV2uRbaUmM/8w3/3BmPgHfHmXdAjxBM4qIkmt+JuTZPBMbHUQZ
 j0yw==
X-Gm-Message-State: APjAAAW8HxDK7LBFDML2X1ONj11petoSYSHO13OkU7Ox4yw9UBtBpVPD
 Xy2K1Zkyn2OKdDaVOoXOYFJpx6Uo+ckrIaYUiS0hdHErteKatw==
X-Google-Smtp-Source: APXvYqx/p8Wk437d+ei9zOMYRa2j+hTRwjg4+eaMD3R6/xZEyIIMKtLlMd2J9aaBFx62GGYjdo6hkJN+cGx/sK9kwI4=
X-Received: by 2002:ac8:2ec3:: with SMTP id i3mr17155681qta.110.1560221203710; 
 Mon, 10 Jun 2019 19:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
In-Reply-To: <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
From: Daniel Drake <drake@endlessm.com>
Date: Tue, 11 Jun 2019 10:46:32 +0800
Message-ID: <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Keith Busch <keith.busch@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_194646_553675_8DED6AA6 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 linux-ide@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 12:00 AM Keith Busch <keith.busch@gmail.com> wrote:
>
> On Mon, Jun 10, 2019 at 1:45 AM Daniel Drake <drake@endlessm.com> wrote:
> > +       /* We don't support sharing MSI interrupts between these devices */
> > +       nrdev->bus->bus_flags |= PCI_BUS_FLAGS_NO_MSI;
>
> And this is a problem, isn't it? Since we don't have an option to open
> the MSI implementation in RAID mode your experience will be much
> better to disable this mode when using Linux as per the current
> recommendation rather than limping along with legacy IRQ.

What's the specific problem that you see here? Is it that the
interrupt delivery mechanism is legacy wire instead of MSI, or is the
problem that the interrupt is shared over the whole set of storage
devices?

I installed Windows 10 on this product in RAID mode and it is using
the legacy interrupt too. Also, on Linux, MSI interrupts have already
been disabled on the AHCI part of such setups for a good while now:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f723fa4e69920f6a5dd5fa0d10ce90e2f14d189c

The earlier patches from Dan Williams also had the design of sharing
the legacy interrupt:
https://marc.info/?l=linux-ide&m=147709610621480&w=2

I think some kind of MSI support may be possible, perhaps something
similar to what is done by drivers/pci/controller/vmd.c, but it needs
a bit more thought, and I was hoping that we could get the base device
support in place before investigating MSI as a separate step. However,
if the concern you are raising is regarding the sharing of interrupts,
I think that cannot change because the NVMe devices PCI config space
is totally inaccessible when in this mode. That means there is no way
we can configure a per-device MSI message, so the interrupt will
continue to be shared regardless of delivery mechanism.

Thanks,
Daniel

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
