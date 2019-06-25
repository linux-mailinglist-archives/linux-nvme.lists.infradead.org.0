Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2612555DB
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 19:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKyg3VgCoZpZrxEOOdjicwh7iGqSDTLrmx4bk6YXyqY=; b=riNkkMgYf70tzs
	/I2LwAx02udL59768xBY6IijNNg3J7cpGezAGqbCrv2kpGcDnASn1qZuC72+VfExB951/DmHAI+gL
	dwdBQIMzy8PfCn1scE83q/BAuPKy9M1FyC4Lr5h9+I3WaDAdozp9wy9Z1DlxBre2679iSNZC51yum
	6Fj+y0zd2tBvq6+iSE18m8kcsiJoOh4wYRbayMf5G+ilDbxwds9NZyGHL2+VjrhRJUKaRoJHMuTzN
	n3cb9HFALZmILa1FetaagQ3om2dBe/Yuf7JN3fpSvNhZ0SI74n2zy38RvjELXYB/pma6h6Rrd1YbP
	EC8NDSif/mj6wp4V/bPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpE7-0007LW-RO; Tue, 25 Jun 2019 17:27:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpE0-0007BW-SY
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 17:27:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id y198so13247523lfa.1
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 10:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EzzLn0GswMFcyMLNaQ7ggxi30GgEafznXlfGyBwbniM=;
 b=GXRap7s5jEiN/yj8znTw5VoaIeXeTRZCA56SzbEgqrRSfr1R32FibRI3wBA7cG9NLs
 q1G4QUquAYQe0O39WbBEa8WsKHH7bGeEZl6cjOxEc2L1ZIWrJOURVZ8TJu0dDJ//w7ck
 bNCIgX2ypyFZT5lsTK/jWhcdiSTTu28EMnpJMrm6anadT+0OVbTZ7SBYAoSxCqtk71h+
 8jOvlf4DiKJZCGH6tASAOzF9RxNndGi2c1qhz88dnEFInYMU9hP6or0aCD24oremwdGY
 0PV/CrEP60RgzkVRW//JzKvIUs+kvFj/5hjqT/ST60egaNav6AKYXwUK0IaPvUBkfLFm
 MKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EzzLn0GswMFcyMLNaQ7ggxi30GgEafznXlfGyBwbniM=;
 b=UltYjpHCKBldbZG3prrvVShU11uGVADzl+jWNQmxaNd+38qnn3iaL2pdWcYg9/oe6v
 BNHsL/+vloeVGDRYTD0r9Ec5wCgS3uBAJh6lz9EvXkoGUIjTzfIrgQ7XUEDa56jSdwn9
 lW4qsuNIfUyc0JRbXIRnqGuPRmy5an/ZHgj+APstnw0s7DY9OS9vEoTbhYmWDjQp+4Zp
 wFl9anDH8bNec5bZw0DUbwtC7jPSeuECmt0HSk+XlpmHxstSHkteKaXWHlLZ7Njch6U5
 oKpOMqs/9I8AGBFslIZBJgMIaOZYvRtCNNzBNRZcT1EpiAdeWyKL8GMz8MghK2/mD9BX
 qLLA==
X-Gm-Message-State: APjAAAWbmsiHHE+1z1j06pO0Yr4j31XkFi23sR/WI8YmedValJF7ygXL
 Jo3vcICPGZnabnk0jfVS4cA15zZYIddM3hsZF6/cog==
X-Google-Smtp-Source: APXvYqy+QhX5osc0RLcDyxsQWP6kDZm1kRoyl/PY8XBTQo2HfuAmAJJdplI2GZmDxo7qZE1w8c0pIqXD800Dt7VAH+o=
X-Received: by 2002:a19:f00a:: with SMTP id p10mr43511314lfc.68.1561483639083; 
 Tue, 25 Jun 2019 10:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <1561420642-21186-1-git-send-email-alan.mikhak@sifive.com>
 <20190625070835.GC30123@lst.de>
In-Reply-To: <20190625070835.GC30123@lst.de>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Tue, 25 Jun 2019 10:27:08 -0700
Message-ID: <CABEDWGymQopo4nPZnnTGXNH5GajUsccCCtQS6cmmhVa+HbFc2w@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Avoid leak if pci_p2pmem_virt_to_bus() returns
 null
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_102720_934557_AE7C5B1A 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 keith.busch@intel.com, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:09 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Jun 24, 2019 at 04:57:22PM -0700, Alan Mikhak wrote:
> > Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem()
> > to free the memory it allocated using pci_alloc_p2pmem()
> > in case pci_p2pmem_virt_to_bus() returns null.
> >
> > Make sure not to call pci_free_p2pmem() if pci_alloc_p2pmem()
> > returned null which can happen if CONFIG_PCI_P2PDMA is not
> > configured.
>
> Can you
>

I mean this patch makes sure not to call pci_free_p2pmem() if nothing
was allocated by pci_alloc_p2pmem().

> >
> > Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> > ---
> >  drivers/nvme/host/pci.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
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
> pci_p2pmem_virt_to_bus should only fail when
> pci_p2pmem_virt_to_bus failed.  That being said I think doing the
> error check on pci_alloc_p2pmem instead of relying on
> pci_p2pmem_virt_to_bus "passing through" the error seems odd, I'd
> rather check the pci_alloc_p2pmem return value directly.

Thanks Christoph. I could see the existing code should not leak but only after
inspecting pci_p2pmem_virt_to_bus() and gen_pool_virt_to_phys(). I wondered
what if these functions changed and broke the relation but that seems unlikely.
Checking the return value directly may require less from the reader,
if that's a good
outcome.

Alan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
