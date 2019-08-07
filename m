Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20123856A7
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 01:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Kx+i1iLBXdMjLuzcKCRbqDf/1oIFACy3xXm4sWb4Cg=; b=NfajzEdfdSskZT
	p+PxCo2IGqenf+glzb8Lh6a4vueFabFSwHITub2MPYGdyDZ//HcFgVU98Fd/VogdeRfP+V6RakJDn
	+IA1kLhgru/SlY1Hy/zVyW0003xmACwi2q/1LO2YJHQYoIiInRMyob52lph92lYxhfjzk/VMH4Civ
	baC7sdVQlzc+Dy3cRWG+bL7I4Oh8O42NZIFcYn7IfDJbJBZAWqsGMYJETawmI8FznxPF5vEk8pWRO
	NeuwJtyWLg9xBs7HUsd2vDcfjmw3jHqpfnt72kGNM4k4+G8PmgVzdvrOoYEgmlik/RMy/hgPL7AEj
	rpogKEegEhx7ye6DKeog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvViL-0004aq-NL; Wed, 07 Aug 2019 23:51:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVi6-0004aE-MT
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 23:51:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id k2so7182728wrq.2
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 16:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=81W60zVYjF0WkGNMIxtxV/QpHZxdSDjYkRGFZyoC9NQ=;
 b=hhTHm5Nw3iub40WKb4H1rqVluoBt3pHck0QiywNeJGfgGNfnNjbzVrBPozkC5g8j9g
 8aab+mE+4ulrI+yy3QFobs6H3wCMogQfTTEjQ5LK3wee/MLE5uYV9hg9P3EWlEO24S4A
 GGcRJ0l3FkefLaW5R2D6+IUs60CB3RRjd630LA8qt65E0pXuyLQuHc03dYbuendzW8it
 7nEsYz/9xvm9+lK46TAYUqXDRS06we3dkaQ4lBBiwYFZJ6UCQRLZ6KAyHmrnHas1Yv09
 Fsrqehj9A5Sp6lSVWLuV7I3FdqXigC8Jlton0NbJR+TCmrH+wznz/IqijdnDjUtkTRZ5
 s6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=81W60zVYjF0WkGNMIxtxV/QpHZxdSDjYkRGFZyoC9NQ=;
 b=ElFzRQcdug00aXzKh0t/o8ABUeYQ3w/H3k0BQb5jf5zQaHF9xOY0X5rCifEP5h2G34
 prSltTMaOOhFqfkOTScRp0OM4J6wPIE73eL1Bns4QJED46RWsGI4VEmKUwbGYZw9ExRm
 sk3FP8pzlx5zhyfKXbtRnfy5WoC99f9oTwAWEtvXWtXNOSI7R1gzQCUMm7TiqPeAmXor
 M37ChNO/L73iAs47BAvKEFLN90Om+QvjLa0pZ7oZyLcxSax68MwP4CVu5GST555bPj6B
 8p45MW5UZV6vrp3fAEts28z6CCKsAEFOgftVl1b0Lr4tsyBwDhx/0FO6UKan4DDXdzrk
 6AiQ==
X-Gm-Message-State: APjAAAVLFFYNi0krgood69+o54g0a/IW4sZV54QxRj2vW9fqUKgwl3WX
 pq56fR++CtneIoLKP5/AFtye0YsZcZDooWXAhRc=
X-Google-Smtp-Source: APXvYqwt7F5BkB58H5wD984WMZT43ugAcQRwg0VeBjol0Scsm8pOYOWjbYcauyyRwVif41pglTfX8hitoIVSFX1lIAs=
X-Received: by 2002:adf:f088:: with SMTP id n8mr13084998wro.58.1565221870134; 
 Wed, 07 Aug 2019 16:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190805011906.5020-1-ming.lei@redhat.com>
In-Reply-To: <20190805011906.5020-1-ming.lei@redhat.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Thu, 8 Aug 2019 07:50:59 +0800
Message-ID: <CACVXFVNn9wu2sU=47csi+stvzN0TnOV4E8xBHYknxo9uDksMuQ@mail.gmail.com>
Subject: Re: [PATCH] genirq/affinity: create affinity mask for single vector
To: Ming Lei <ming.lei@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_165114_763712_347D841E 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block <linux-block@vger.kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, Sumit Saxena <sumit.saxena@broadcom.com>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Keith Busch <keith.busch@intel.com>,
 Shivasharan Srikanteshwara <shivasharan.srikanteshwara@broadcom.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello Thomas and Guys,

On Mon, Aug 5, 2019 at 9:19 AM Ming Lei <ming.lei@redhat.com> wrote:
>
> Since commit c66d4bd110a1f8 ("genirq/affinity: Add new callback for
> (re)calculating interrupt sets"), irq_create_affinity_masks() returns
> NULL in case of single vector. This change has caused regression on some
> drivers, such as lpfc.
>
> The problem is that single vector may be triggered in some generic cases:
> 1) kdump kernel 2) irq vectors resource is close to exhaustion.
>
> If we don't create affinity mask for single vector, almost every caller
> has to handle the special case.
>
> So still create affinity mask for single vector, since irq_create_affinity_masks()
> is capable of handling that.
>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Bjorn Helgaas <helgaas@kernel.org>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: linux-block@vger.kernel.org
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: linux-nvme@lists.infradead.org
> Cc: linux-pci@vger.kernel.org
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Sumit Saxena <sumit.saxena@broadcom.com>
> Cc: Kashyap Desai <kashyap.desai@broadcom.com>
> Cc: Shivasharan Srikanteshwara <shivasharan.srikanteshwara@broadcom.com>
> Fixes: c66d4bd110a1f8 ("genirq/affinity: Add new callback for (re)calculating interrupt sets")
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  kernel/irq/affinity.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index 4352b08ae48d..6fef48033f96 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -251,11 +251,9 @@ irq_create_affinity_masks(unsigned int nvecs, struct irq_affinity *affd)
>          * Determine the number of vectors which need interrupt affinities
>          * assigned. If the pre/post request exhausts the available vectors
>          * then nothing to do here except for invoking the calc_sets()
> -        * callback so the device driver can adjust to the situation. If there
> -        * is only a single vector, then managing the queue is pointless as
> -        * well.
> +        * callback so the device driver can adjust to the situation.
>          */
> -       if (nvecs > 1 && nvecs > affd->pre_vectors + affd->post_vectors)
> +       if (nvecs > affd->pre_vectors + affd->post_vectors)
>                 affvecs = nvecs - affd->pre_vectors - affd->post_vectors;
>         else
>                 affvecs = 0;

Without this patch, kdump kernel may not work, so could you take a look
at this patch?

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
