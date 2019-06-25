Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62C255610
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 19:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXXE/H2M2weNg755Wt8LSHQk4RIzVGlHipQKbpMVlfA=; b=oBEDtVgC6SSLRI
	tUtBq8btaMP8NM2y5CQzwmKYefJ8bSlAhbkqnbAKR/o9MeJPt5w86ut5YrhcAXiWfjgH6hXoBwQHo
	7Q/nvuBeixioLF8Zz8yBsQdFcBlDu/WAH/7vcbn5zUHteBUlcao/ha4rdft71J06AZF3ovPbqKF3g
	XtIji+PFimfmozaZLpWFDxQjDL/N0lbhx9rdFSAfn/jLEFqzMqCHMCWMuzVJBLo74ccOTLQYKi/py
	Aj1AXuhgQI7fWIxD188nvymiKjLnkr/k/pQpML2WN0dKYrSWARmvwU4m9hTSwTScAUfHAiZ7yLQEh
	lAyJnax1uNyglV11wtyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpOL-0003xT-5X; Tue, 25 Jun 2019 17:38:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpOD-0003x6-4z
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 17:37:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id 16so17092420ljv.10
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 10:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DNAZwCZByYTbwclhe+TRUuG+E9r9+02rmdbcNH7Mmz8=;
 b=lUsxVGOoG1NO6l4C8BzqvLJGYIHn9NBTvfi1hvl8sbq9UfISi/DiG7NAMTPX3A/i0E
 5rWz/pMBO/E3d0f9sMm9kXE75gp95sALBgULgsfBhzxf5z12LDfTN/01qbcpA3ZzhHeT
 dwUc3LuFJyfUXlzHJ3/iezOHVorIUIrL9+sdryXG2MCffezNXIso9yvtiWIZOdAX6UbR
 jg49EGCvuOpuQDO20Km1UaTjuWU0WeHrdv2dZKReL3eIF+pPQnhmhknzU4uwE9AC/BH3
 jIX8WwQyF/8smrzi9HPNxpOH97gNbas05jDQK36KHgVuKxUa09Xu2yy1XAkmyyMNT76M
 vixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DNAZwCZByYTbwclhe+TRUuG+E9r9+02rmdbcNH7Mmz8=;
 b=CXFz341S9Q9xokAa8BU6bs4ePnbyFZqX2VIuPX0dnhh0UdDmN+BeT+khIhiBT3kZD3
 G+EffPuUf2+1ECugwpHnBIAotXKpfOIaON3fudsLskvnkU9eqGQ93UisV8CDzbmGZklz
 8wCNlV9qsC1m7duR1rpa3yTb4Tggnibd5XhuEIePscyjKqPsIaukS8TnMijA4xFAA0PM
 VjXtmq/OCu7VhIzLcGOdWmUtMZnNw0N4j8sa5PzxxXd1De6MggUyH0/pRhCy92F2yTV6
 xyc5zCiFmUzar2NdBzM3STphfWc/TaAGn8vgGIG5vH4U+D7gsalG8gaFnLAhN+0V+daY
 PBHw==
X-Gm-Message-State: APjAAAWXmbQc+PrTp0eIQwWJsmpW2ex/TQNToMMU3IzheANl4TMjWACb
 tmpn3N0tkwIl5X/mqhOWfoDOlLgXXs5OhgVwf+CmsA==
X-Google-Smtp-Source: APXvYqyiObVIKA2qPWuAhfgFDYhZGh15UieP1P60TReILtL0Ua81Cv/VdkMO8Y95D5uCov0sYjjTNCX5npohSrG/GLU=
X-Received: by 2002:a2e:9b81:: with SMTP id z1mr22408671lji.101.1561484271278; 
 Tue, 25 Jun 2019 10:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <1561420642-21186-1-git-send-email-alan.mikhak@sifive.com>
 <39cc44bb-28b8-0daf-b059-b78791c77eb1@intel.com>
In-Reply-To: <39cc44bb-28b8-0daf-b059-b78791c77eb1@intel.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Tue, 25 Jun 2019 10:37:40 -0700
Message-ID: <CABEDWGy1X_HfmnMF05VKzMW7pNMaY+EMRFkTFPmc7Y0evoWZqQ@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Avoid leak if pci_p2pmem_virt_to_bus() returns
 null
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_103753_194129_9450043C 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@fb.com, sagi@grimberg.me, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Paul Walmsley <paul.walmsley@sifive.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:10 AM Heitke, Kenneth
<kenneth.heitke@intel.com> wrote:
>
>
>
> On 6/24/2019 5:57 PM, Alan Mikhak wrote:
> > Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem()
> > to free the memory it allocated using pci_alloc_p2pmem()
> > in case pci_p2pmem_virt_to_bus() returns null.
> >
> > Make sure not to call pci_free_p2pmem() if pci_alloc_p2pmem()
> > returned null which can happen if CONFIG_PCI_P2PDMA is not
> > configured.
> >
> > Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> > ---
> >   drivers/nvme/host/pci.c | 14 +++++++++-----
> >   1 file changed, 9 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 524d6bd6d095..5dfa067f6506 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -1456,11 +1456,15 @@ static int nvme_alloc_sq_cmds(struct nvme_dev *dev, struct nvme_queue *nvmeq,
> >
> >       if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
> >               nvmeq->sq_cmds = pci_alloc_p2pmem(pdev, SQ_SIZE(depth));
> > -             nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
> > -                                             nvmeq->sq_cmds);
> > -             if (nvmeq->sq_dma_addr) {
> > -                     set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
> > -                     return 0;
> > +             if (nvmeq->sq_cmds) {
> > +                     nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
> > +                                                     nvmeq->sq_cmds);
> > +                     if (nvmeq->sq_dma_addr) {
> > +                             set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
> > +                             return 0;
> > +                     }
> > +
> > +                     pci_free_p2pmem(pdev, nvmeq->sq_cmds, SQ_SIZE(depth));
>
> Should the pointer be set to NULL here, just in case?

Thanks Kenneth. The pointer gets immediately reassigned by the return
value of the
code that follows. There is no intervening reference to it between the calls to
pci_free_p2pmem() and dma_alloc_coherent(). It should be safe without
setting it to NULL.

        nvmeq->sq_cmds = dma_alloc_coherent(dev->dev, nvmeq->cq_size,
                                &nvmeq->sq_dma_addr, GFP_KERNEL);

>
> >               }
> >       }
> >
> >

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
