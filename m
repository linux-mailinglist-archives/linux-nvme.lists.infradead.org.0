Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B91A6145
	for <lists+linux-nvme@lfdr.de>; Mon, 13 Apr 2020 03:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IzajULDZuz7RYRMG4O6i9mkurPaphIksrB8/PbJ7nQ=; b=R4wDqiSP/Av2QI
	sVx/X0sLoUJBBCCdkQLAqrkEabnVE8zMqgalBm/UhniaSvJSInnx1NhgRyQBb9bMot8XsvekKE4mD
	FyaDv2R3Pjuf+8jzkJPfdzBJvVnyj24tq1iZNb54JMYO4Srn0C/nINN730If1fNj3t9ngpX0WmXrA
	7WtNB+LCcFkGi3ephkIdHwGkAQG+TYJVtTXcHyv+rYyzWoDFE/zz45VTeKHxk0aFwPEBuhnPuoW+j
	vlFJOQuz+Y5wHKXqNrDggf7DBAsXghkw5zm3zOXZnwg/O+dzV4aN3ut4i8cfyI94RkzIn3eiPdThE
	6VTwzUhEpYkEb9d2E8Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNnUC-0001BQ-RN; Mon, 13 Apr 2020 01:02:04 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNnU8-0001Au-Ox
 for linux-nvme@lists.infradead.org; Mon, 13 Apr 2020 01:02:02 +0000
Received: by mail-qk1-x741.google.com with SMTP id l25so8089804qkk.3
 for <linux-nvme@lists.infradead.org>; Sun, 12 Apr 2020 18:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0EIElHZo9/YBqgYEI8t/ATelyjokRdxM2844iKkVQG4=;
 b=jU0SQIGHO2QGKEVwNyqlsrKRnLMVWtiqa8ECvzfZgyzQGtE0QAIWeojoY8Vov78+vx
 cK0tv07R0g7ZqCuyi3TJRvLxr8uxSLrdLhw1IIHXz2iJh7xiSsjaCjwSN+8cItJyPqDZ
 mGHBEl9XDxrgUuFDJPUKLhVyEhW7ajThJrYgxyyLmVGUJsoPB3Fcih0m9LlBRI5fOeZm
 w0OZ2VmnyPjctJwBaqdfvdql7G4x03irMzZ7M55H644owDaQteGPGDH8OLJpECC6ILQS
 GAGtSa+yHgl4zF/Ezg7kX7E4dsEZUi+iFUi+OUNjng0o2EBjFvxQ22736Ufrvyd7wRcY
 y42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0EIElHZo9/YBqgYEI8t/ATelyjokRdxM2844iKkVQG4=;
 b=C0WQ18mW2ZzjRayxL43BKjU0yd7cYl5Y4lH+ezLiOvzUua/7KzcUYYFMgFL+wuBh7E
 gzrdUL6ZZif26mYK3yGPS+a/f8SCl+JiyqiGHKp3NquCyRw2tsyhEpnaPlVwL42qsc9Y
 FEDUjWY880lM8z4VqlS4EaOdifpmwhtdCGSoyrN/bZgk/5TAdEJjwz74r6K+RQ5qIVrZ
 N6x9APTJ9hqqP+mH6Sxszo1zrAv4M+DPprt2b2+xbu4QLuiLMBJTLOYMc0y/i1C4nFkL
 pYNQ4hUHYhvN5MGGeSVujGXU5NSPaNqhmDiwpFt4vCqTlSgbdgu1pWp6hUb2az4EzMl/
 sH2A==
X-Gm-Message-State: AGi0PuaTbtzn3JYVa87zTj/DtaRsIEvHjnlfzzVBMK7/3NXkRaT+mbCv
 56Ey5pTafHay78hQs4veJJnxmzfXbbwgizQ8cMU=
X-Google-Smtp-Source: APiQypLl9IscPIdF/KUIkuYkEwJgSBDiMoEPNigzM2j0XUz0KTNO9JEg74pL4JeDMhE8RZ3/aOqbEkdVHB/bhFBV4qA=
X-Received: by 2002:a37:bf06:: with SMTP id p6mr14337250qkf.477.1586739716241; 
 Sun, 12 Apr 2020 18:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200410095719.GA4393@192.168.3.9>
 <188ad279-9211-9dca-3e6c-b5718ae6fc80@mellanox.com>
In-Reply-To: <188ad279-9211-9dca-3e6c-b5718ae6fc80@mellanox.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Mon, 13 Apr 2020 09:01:44 +0800
Message-ID: <CAA70yB63bHGcFOzKPrLz+-bjHoEMQWiZEpFyoZ72rzDy9ZaO3Q@mail.gmail.com>
Subject: Re: [PATCH] nvme: align io queue count with allocted nvme_queue in
 nvme_probe
To: Max Gurtovoy <maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_180200_836589_68B03D5D 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zwp10758[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zwp10758[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, sagi@grimberg.me,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 8:38 PM Max Gurtovoy <maxg@mellanox.com> wrote:
>
Hi Max,

> hi,
>
> how about the following minor update:
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 4e79e41..46ab28b 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -89,6 +89,7 @@
>    */
>   struct nvme_dev {
>          struct nvme_queue *queues;
> +       int nr_allocated_queue;
>          struct blk_mq_tag_set tagset;
>          struct blk_mq_tag_set admin_tagset;
>          u32 __iomem *dbs;
> @@ -209,15 +210,15 @@ struct nvme_iod {
>          struct scatterlist *sg;
>   };
>
> -static unsigned int max_io_queues(void)
> +static unsigned int nr_dev_io_queues(struct nvme_dev *dev)
>   {
> -       return num_possible_cpus() + write_queues + poll_queues;
> +       return dev->nr_allocated_queue - 1;
>   }
>
>   static unsigned int max_queue_count(void)
>   {
>          /* IO queues + admin queue */
> -       return 1 + max_io_queues();
> +       return 1 + num_possible_cpus() + write_queues + poll_queues;
>   }
>
>   static inline unsigned int nvme_dbbuf_size(u32 stride)
> @@ -2073,7 +2074,7 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
>          int result, nr_io_queues;
>          unsigned long size;
>
> -       nr_io_queues = max_io_queues();
> +       nr_io_queues = nr_dev_io_queues(dev);
>
It may have some problem when user decrease queue count for multiple tagset map.
For example, there are total 128 IO and 96 cpus(system),
insmod nvme write_queues=32
nvme_probe will allocate 129(128io + 1 admin), nr_allocated_queue=129;
and then user decrease queue count
echo 2 > /sys/module/nvme/parameters/write_queues
echo 1 > /sys/block/nvme0n1/device/reset_controller.
nvme_setup_io_queues should use
96(num_possible_cpus) + 2(write_queues) instead of 129(nr_allocated_queue).

>          /*
>           * If tags are shared with admin queue (Apple bug), then
> @@ -2742,7 +2743,7 @@ static void nvme_async_probe(void *data,
> async_cookie_t cookie)
>
>   static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id
> *id)
>   {
> -       int node, result = -ENOMEM;
> +       int node, nr_queues, result = -ENOMEM;
>          struct nvme_dev *dev;
>          unsigned long quirks = id->driver_data;
>          size_t alloc_size;
> @@ -2755,11 +2756,14 @@ static int nvme_probe(struct pci_dev *pdev,
> const struct pci_device_id *id)
>          if (!dev)
>                  return -ENOMEM;
>
> -       dev->queues = kcalloc_node(max_queue_count(), sizeof(struct
> nvme_queue),
> -                                       GFP_KERNEL, node);
> +       nr_queues =  max_queue_count();
> +       dev->queues = kcalloc_node(nr_queues, sizeof(struct nvme_queue),
> +                                  GFP_KERNEL, node);
>          if (!dev->queues)
>                  goto free;
>
> +       dev->nr_allocated_queue = nr_queues;
> +
>          dev->dev = get_device(&pdev->dev);
>          pci_set_drvdata(pdev, dev);
>
>
> -Max
>
> On 4/10/2020 12:57 PM, Weiping Zhang wrote:
> > Since the commit 147b27e4bd0 "nvme-pci: allocate device queues storage space at probe"
> > nvme_alloc_queue will not alloc struct nvme_queue any more.
> > If user change write/poll_queues to larger than the number of
> > allocated queue in nvme_probe, nvme_alloc_queue will touch
> > the memory out of boundary.
> >
> > Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
> > ---
> >   drivers/nvme/host/pci.c | 10 ++++++++--
> >   1 file changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 4e79e412b276..cc10258e578e 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -89,6 +89,7 @@ static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
> >    */
> >   struct nvme_dev {
> >       struct nvme_queue *queues;
> > +     int nr_allocated_queue;
> >       struct blk_mq_tag_set tagset;
> >       struct blk_mq_tag_set admin_tagset;
> >       u32 __iomem *dbs;
> > @@ -2074,6 +2075,8 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
> >       unsigned long size;
> >
> >       nr_io_queues = max_io_queues();
> > +     if (nr_io_queues > dev->nr_allocated_queue - 1)
> > +             nr_io_queues = dev->nr_allocated_queue - 1;
> >
> >       /*
> >        * If tags are shared with admin queue (Apple bug), then
> > @@ -2742,7 +2745,7 @@ static void nvme_async_probe(void *data, async_cookie_t cookie)
> >
> >   static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >   {
> > -     int node, result = -ENOMEM;
> > +     int node, nr_queue, result = -ENOMEM;
> >       struct nvme_dev *dev;
> >       unsigned long quirks = id->driver_data;
> >       size_t alloc_size;
> > @@ -2755,11 +2758,14 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >       if (!dev)
> >               return -ENOMEM;
> >
> > -     dev->queues = kcalloc_node(max_queue_count(), sizeof(struct nvme_queue),
> > +     nr_queue = max_queue_count();
> > +     dev->queues = kcalloc_node(nr_queue, sizeof(struct nvme_queue),
> >                                       GFP_KERNEL, node);
> >       if (!dev->queues)
> >               goto free;
> >
> > +     dev->nr_allocated_queue = nr_queue;
> > +
> >       dev->dev = get_device(&pdev->dev);
> >       pci_set_drvdata(pdev, dev);
> >
>
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

Thanks

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
