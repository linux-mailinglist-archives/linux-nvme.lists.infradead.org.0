Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BD389695
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 07:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Y/8ADfITi96BMOBF5eLQjt+Cpv6mZ2VMO7a7iZiRds=; b=QXTKAiZ/LvHETZ
	yyQWix5oaYhws5+f6OiBszhBadJ/rIiivbZUh43zKSpoY1avb+lcdVqJwPEV5KYDQfFcynwKZYKl8
	q7AEiTDZeRpYHyW1Q0xIHt6c2PDR9DTHGLBv4Bd4XD3EWE9isKXfaE8F5chwdSNwCafa3Wu9xu6IC
	gzZR/zZfAhHP04mbyE/qqcGD/ycL7WQVWf/XSkSUxKzZTftoa2faL0sxAncilKQsRGJ/sq7KhYMqJ
	N7WQYPw2xx0D62aod7WExr8qFLtiiOhuHVnB32nZQ4jS+2GNiF4m4RhhbJGobpJ59Qg0bdF/Zr0cX
	d1NVeZFzJ/5VTzWUeBhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx2YD-0001x1-4Q; Mon, 12 Aug 2019 05:07:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx2Xy-0001wM-Ne
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 05:07:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so103541712wru.0
 for <linux-nvme@lists.infradead.org>; Sun, 11 Aug 2019 22:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aP8VNbJwdQYaSZJ1imIyz0RI5Crt+YbRZvNDlL4/jpQ=;
 b=AMZ7Kqc93TaUacKOBAYc7uklS99HA0k/mkqvk9yP3Zts5PfjWZ32QGlh0AcAmkyyR3
 pz+JT/K2vJJBXZjFY3KylPNT3bcJLuJyh0axFIbghBqA58nXLl8QZFm+FPJ8QHYCkJnx
 Dn8BEplVzVSnW/V084uYmssUioe6RJzX+TCmAb2HaLU5Pij9Aqd3Ls0EY3GUmPexHhCn
 MqCLe+HGHbcmliU6OYooDNMqFTa63lckjB2lqoG6KTEVVceEJq9mcQybrnJOHI08YFTC
 YNIPE2xj0YShqL9hsI/1eNwILNat72Pa4MmFK5UUQjrD6hdBjnsettYCLkHv2GUrM7Ei
 cdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aP8VNbJwdQYaSZJ1imIyz0RI5Crt+YbRZvNDlL4/jpQ=;
 b=gENyjKy2HR+UIHEg25h3Bru+uYIv5x9hvfa77Y/V9QUjbs1FF9dHr9fU9gxClF/vFC
 vjqY2YBIfrIVk4EX1+2FGxD4///At34Yz50/CN3CdFzbfxAA/Ieiy01r8meAl/9OSJaU
 cdiMnqCkv67q13K0srbmbfGB878m7ilYkW+uSeDTs5rpiY7sh215El719BFPMK/LFZwN
 gqvNkdAFb2bAf4v0WXbKwTWadI9mCyhlSs6suOlEllEjLmNQq4yN5RfW8fOebZLZJ16z
 L7gPHov5+Abzuaoff2Hy5lk8ci+qpd8EzKTDtesEaSkyuq2feTBm/XGIpXKiX/UZ1wv8
 xGbQ==
X-Gm-Message-State: APjAAAUFXpt840B2CR+eoZ++BgX9iQdX8Taf/aF4EO3dZ78fRewfMC0R
 Ev4Cu11IPT5InLf2aWasFHNXpTmVDD3gLM95+jc=
X-Google-Smtp-Source: APXvYqxQT0vmwxz66zVU1Q++t5xosJoGJRxTW6fYwUtcWL0gm4jiEWPQjRbPqkBh2NsDqmRohe3dSXtbHwQRiQ3/8us=
X-Received: by 2002:adf:91c2:: with SMTP id 60mr40582385wri.334.1565586423303; 
 Sun, 11 Aug 2019 22:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190809102310.27246-1-ming.lei@redhat.com>
 <20190809102310.27246-2-ming.lei@redhat.com>
 <20190809144204.GA28515@localhost.localdomain>
 <CACVXFVMT=rkZC7LwK5quXgudS7fb7bQ_LunA1tEE-Z-9s1uvaA@mail.gmail.com>
In-Reply-To: <CACVXFVMT=rkZC7LwK5quXgudS7fb7bQ_LunA1tEE-Z-9s1uvaA@mail.gmail.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Mon, 12 Aug 2019 13:06:49 +0800
Message-ID: <CACVXFVNMu3tnEgi0+jcdgv5CD-ZAy7xnff4GxpPrVaKDh_fULA@mail.gmail.com>
Subject: Re: [PATCH 1/2] genirq/affinity: improve __irq_build_affinity_masks()
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_220706_797350_291F83CE 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Aug 10, 2019 at 7:05 AM Ming Lei <tom.leiming@gmail.com> wrote:
>
> On Fri, Aug 9, 2019 at 10:44 PM Keith Busch <kbusch@kernel.org> wrote:
> >
> > On Fri, Aug 09, 2019 at 06:23:09PM +0800, Ming Lei wrote:
> > > One invariant of __irq_build_affinity_masks() is that all CPUs in the
> > > specified masks( cpu_mask AND node_to_cpumask for each node) should be
> > > covered during the spread. Even though all requested vectors have been
> > > reached, we still need to spread vectors among left CPUs. The similar
> > > policy has been taken in case of 'numvecs <= nodes'.
> > >
> > > So remove the following check inside the loop:
> > >
> > >       if (done >= numvecs)
> > >               break;
> > >
> > > Meantime assign at least 1 vector for left nodes if 'numvecs' vectors
> > > have been spread.
> > >
> > > Also, if the specified cpumask for one numa node is empty, simply not
> > > spread vectors on this node.
> > >
> > > Cc: Christoph Hellwig <hch@lst.de>
> > > Cc: Keith Busch <kbusch@kernel.org>
> > > Cc: linux-nvme@lists.infradead.org,
> > > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > > ---
> > >  kernel/irq/affinity.c | 33 +++++++++++++++++++++------------
> > >  1 file changed, 21 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > > index 6fef48033f96..bc3652a2c61b 100644
> > > --- a/kernel/irq/affinity.c
> > > +++ b/kernel/irq/affinity.c
> > > @@ -129,21 +129,32 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> > >       for_each_node_mask(n, nodemsk) {
> > >               unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> > >
> > > -             /* Spread the vectors per node */
> > > -             vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
> > > -
> > >               /* Get the cpus on this node which are in the mask */
> > >               cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> > > -
> > > -             /* Calculate the number of cpus per vector */
> > >               ncpus = cpumask_weight(nmsk);
> > > +             if (!ncpus)
> > > +                     continue;
> >
> > This shouldn't be possible, right? The nodemsk we're looping  wouldn't
> > have had that node set if no CPUs intersect the node_to_cpu_mask for
> > that node, so the resulting cpumask should always have a non-zero weight.
>
>      cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
>
> It is often true, see the following cases:
>
> 1) all CPUs in one node are not present
>
> OR
>
> 2) all CPUs in one node are present
>
> >
> > > @@ -153,16 +164,14 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> > >                       }
> > >                       irq_spread_init_one(&masks[curvec].mask, nmsk,
> > >                                               cpus_per_vec);
> > > +                     if (++curvec >= last_affv)
> > > +                             curvec = firstvec;
> >
> > I'm not so sure about wrapping the vector to share it across nodes. We
>
> The wrapping is always there, not added by this patch.

We could avoid the wrapping completely given 'numvecs' > 'nodes', and
it can be done by sorting each node's nr_cpus, will do it in V2.


Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
