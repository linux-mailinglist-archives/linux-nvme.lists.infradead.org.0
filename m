Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C1870EBA
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 03:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of4ZM8ijWcrJQkiIpOAO1n/A+LE0B3nwgFCu17bdXMQ=; b=PbJy/KzP4Yu+fT
	RzarJhS0MqGby35pPX26HwSZVbrpudsDWBE4cC/kKbvLoQrFsgwEcQGN3uU8HGZSMGvUdaqjiShpY
	BuGqTR9R2XYi4/Ck3K+WMSIFTsxgYJb+LHgX4WFin8Nz8vAXciG7tYGn0PM1IZFwRQrz9TbdEp4l+
	ifCyrPDYyLM1bhvQpVmW+hzeClViR2C5KPPFPXVl+TH/Myw+Y8nMtlFanBL1M/gzZZLRV0Ufy5yRi
	WhSUKJIIq1s0bC6W3h/8NkaQl4u2t0vh0KFBylAvrekGAOGENFEbg5TwrUoxV/jsrgIAd35+iZeao
	grTg8bLlmobW+rY1yqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjjs-0001eL-JR; Tue, 23 Jul 2019 01:37:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjjb-0001dv-1w
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 01:36:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id p13so41256819wru.10
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 18:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MqJBKEyiTQLza/dKE/jBWzlzCo+YWJoWOovBmgVapuA=;
 b=dKvHGdEr/VfICzXaqDVkUjCyPqL42LEd2tw44nKHE5oZIX4bG1VTRfscVEjEfCfeX1
 2oaWNpEi9hT6DEUtk9ziN3TUTtO+70wGG6ZNrdnBG6YVMk+NowMsBMct7W41G1klIUCx
 0rkdiMIf+/pEbnUFYjgOOS9DJ8V30/6BPwjWCANgs6yQGLvPRiCqusIxW6yiHZFqLp8L
 u+A0NjAfdI9Lhal9nQlnNY7ouf7PGfVmRy//nk6i9QL3sJ3HH9bfQq4TBCuGU8ODe6RP
 cg0ZR5LUbN4fChPkxs8VdzF9B1Gci/v7ifunvAJAEnjKOhJu7t84cNnhL1ljBfVwAQfl
 WFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MqJBKEyiTQLza/dKE/jBWzlzCo+YWJoWOovBmgVapuA=;
 b=OHSUbmEBVEnhS5p/gLdNHGsTJCPupNOLTlEph4iVOimQSXxN0270wPH0Z75kg6kxBH
 UJ2FmvF+t5RjTx+Vd3DQmdJql6KLLpfOzG6daLHFpeIPedqkTKe7wbCNYlnlBzZ3okjo
 6dH1qTGTTEM0iSgiZK1xd7hhp8PZJlE3+CG+6lhG/bm1BX65yyPr93pHA6otC31SP9HR
 olRA74lac/ro38LiqNANo/HVoEAyE5MUZAGimeLAGHdhQtJzlcEaPR98GpYv7+bCb1a+
 bXS5lCtnSBn9H0IUhxEs1M28ebgUrwsnxDdbOaz9hJ25+STE6XANAYFY36klRLzJV/Fv
 ONGw==
X-Gm-Message-State: APjAAAXugY7MAvY2wt98CDLhxWuNP+S44sg7LqzTM8UF/mO5QAZYiLoE
 4u/Vn67TZEpQvTFa4C8D4+qZlgYmj5PtCJklBFM=
X-Google-Smtp-Source: APXvYqwDKsuNKOsJeto6cfq6QAtW2vLxbHNgQxCwn3shaAfCYUMZkgnlnRzOcqynsuiPPyN2uiKKAjw7xBYS6HbOyvs=
X-Received: by 2002:adf:f088:: with SMTP id n8mr33442310wro.58.1563845812804; 
 Mon, 22 Jul 2019 18:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
In-Reply-To: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 23 Jul 2019 09:36:40 +0800
Message-ID: <CACVXFVPbrXaAQe2C+13dNQSSL7f7gZ4QZ=W9vMpmmhJnxQMjew@mail.gmail.com>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_183655_103043_2CCCD8AC 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 1:31 PM Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> From 8dcba2ef5b1466b023b88b4eca463b30de78d9eb Mon Sep 17 00:00:00 2001
> From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Date: Fri, 19 Jul 2019 15:03:06 +1000
> Subject:
>
> Another issue with the Apple T2 based 2018 controllers seem to be
> that they blow up (and shut the machine down) if there's a tag
> collision between the IO queue and the Admin queue.
>
> My suspicion is that they use our tags for their internal tracking
> and don't mix them with the queue id. They also seem to not like
> when tags go beyond the IO queue depth, ie 128 tags.
>
> This adds a quirk that marks tags 0..31 of the IO queue reserved
>
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
>
> Thanks Damien, reserved tags work and make this a lot simpler !
>
>  drivers/nvme/host/nvme.h |  5 +++++
>  drivers/nvme/host/pci.c  | 19 ++++++++++++++++++-
>  2 files changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index ced0e0a7e039..8732da6df555 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -102,6 +102,11 @@ enum nvme_quirks {
>          * Use non-standard 128 bytes SQEs.
>          */
>         NVME_QUIRK_128_BYTES_SQES               = (1 << 11),
> +
> +       /*
> +        * Prevent tag overlap between queues
> +        */
> +       NVME_QUIRK_SHARED_TAGS                  = (1 << 12),
>  };
>
>  /*
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 7088971d4c42..fc74395a028b 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2106,6 +2106,14 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
>         unsigned long size;
>
>         nr_io_queues = max_io_queues();
> +
> +       /*
> +        * If tags are shared with admin queue (Apple bug), then
> +        * make sure we only use one IO queue.
> +        */
> +       if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
> +               nr_io_queues = 1;
> +
>         result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
>         if (result < 0)
>                 return result;
> @@ -2278,6 +2286,14 @@ static int nvme_dev_add(struct nvme_dev *dev)
>                 dev->tagset.flags = BLK_MQ_F_SHOULD_MERGE;
>                 dev->tagset.driver_data = dev;
>
> +               /*
> +                * Some Apple controllers requires tags to be unique
> +                * across admin and IO queue, so reserve the first 32
> +                * tags of the IO queue.
> +                */
> +               if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
> +                       dev->tagset.reserved_tags = NVME_AQ_DEPTH;
> +
>                 ret = blk_mq_alloc_tag_set(&dev->tagset);
>                 if (ret) {
>                         dev_warn(dev->ctrl.device,
> @@ -3057,7 +3073,8 @@ static const struct pci_device_id nvme_id_table[] = {
>         { PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
>         { PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
>                 .driver_data = NVME_QUIRK_SINGLE_VECTOR |
> -                               NVME_QUIRK_128_BYTES_SQES },
> +                               NVME_QUIRK_128_BYTES_SQES |
> +                               NVME_QUIRK_SHARED_TAGS },
>         { 0, }
>  };
>  MODULE_DEVICE_TABLE(pci, nvme_id_table);

Looks fine for me:

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
