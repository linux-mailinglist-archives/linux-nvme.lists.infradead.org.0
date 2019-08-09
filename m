Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6668F886CC
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 01:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItLSMdkiOiRzLE4PEvd+ZYxqFWcyfZjNhI7/zLpzmWA=; b=Ybt1c9K+XY8hht
	qykKR/aHCaImcXV/kNlEKGTeYTBvbveikaVojRZ6EapwMtY60pq0MTLTI6p7K4dNMumtDVzITyOeT
	Gqb4usFJLVPvwMsA/9dPDFV3wD0LqP6XGLsAFD4tesablw/w2eomQa03zdl83wuO6/AcjBoqBG3kL
	iIruor2yPGwgM0LP+YjiRAevZshcKABjD06UGBuNKj9uXg7RIbk4oNICKgyYbcN2G/gQY2ASWDgOi
	fXJFtAxsbjQae1jE3b7ZRIErSwwXxBHOkWNioB0IYBmClsSxGyx0o2Cgqe2VLhCX8gOloUypSlWCY
	b7jZh7iomAT3cz5tyBLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwDxM-0005Sh-Er; Fri, 09 Aug 2019 23:05:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwDxI-0005Rt-GJ
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 23:05:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id 10so7115617wmp.3
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 16:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1VwyOAXo7eohMBN8xZNUOLTE4Y6Up/vz30c30b2901o=;
 b=mWeeK/dI7isF36qGFvVF6s8fzsuKm/X9kRrS0TRtB+fNCmtNJGRZMcHSGY/ib1FnIA
 UY1m7UVvnn1hGBSuYxwSRwze4J00e/39Z8hoJzIXsTzT6nTO0DATxXN2xNqmKBAo1fMp
 Y//GS5xG2Jd4Yb7nw3MbzZrnEzCoDulkPLQwZSHxbAGYYoK+qV/Uf6CQGwU+bVlDZfie
 2mJ84c3HB0fu7y0LUMvtLJJrMnjcQ76pkDy3oi45FO2917t7CXEKcdYTCE2lYtMkf652
 iVQiV15A17GXvulm4iHxskvIlR94Vl+KH3iB2ABI8G2yzjcRTDmJAju6RNUQFnF+b0Ir
 atbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1VwyOAXo7eohMBN8xZNUOLTE4Y6Up/vz30c30b2901o=;
 b=ttHpJFvqROCWsBOPyMblSfQ9A7Se5Caxa4LdwlKI4+TtYtWnSmwETEnOHLoeElw4sE
 j7OyeQlG8w5xEdfcRsjrfQr+Nd7t63wWhp6qGbk50EAPiMXww94zT4SdaKCTznu3GYG9
 9jfS3e7nAroo3TQEMTJhK/BjE6bM/yfGlRiG8GoG5iC+esPWBbjZZMbMnXMI/s3zqgCT
 aoksXrwp7zAy6FJMNCWaswmKBLZmPzyzQZzLaMknDdad3CyfcRJBhLufYNx/krCWoe6S
 4K8DFOEyqdNZ0CsH/FrICS8lJbqcSi6NccHCfH02H/1t1ffADByMjxqPwSZDd8Unb8hp
 PuJA==
X-Gm-Message-State: APjAAAU52wzi6dkBpK3YT79fwO+9r0k2W3lcCOOOtEGRCkPZcnriNdA6
 zRj3yTMh+V1IWkBpvXQq2ut1C0eFHvl6tkKr0sw=
X-Google-Smtp-Source: APXvYqzJJVoSGjVK7OxaCu55+M8GCaH+jjgQucuB9ktT0bhYJCwiP9IIjubxaz2oeJmm2ZlPndOBlRIAwp1nUkW4edM=
X-Received: by 2002:a05:600c:2144:: with SMTP id
 v4mr11735016wml.146.1565391948663; 
 Fri, 09 Aug 2019 16:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190809102310.27246-1-ming.lei@redhat.com>
 <20190809102310.27246-2-ming.lei@redhat.com>
 <20190809144204.GA28515@localhost.localdomain>
In-Reply-To: <20190809144204.GA28515@localhost.localdomain>
From: Ming Lei <tom.leiming@gmail.com>
Date: Sat, 10 Aug 2019 07:05:32 +0800
Message-ID: <CACVXFVMT=rkZC7LwK5quXgudS7fb7bQ_LunA1tEE-Z-9s1uvaA@mail.gmail.com>
Subject: Re: [PATCH 1/2] genirq/affinity: improve __irq_build_affinity_masks()
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_160552_571109_A8F19750 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 10:44 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Fri, Aug 09, 2019 at 06:23:09PM +0800, Ming Lei wrote:
> > One invariant of __irq_build_affinity_masks() is that all CPUs in the
> > specified masks( cpu_mask AND node_to_cpumask for each node) should be
> > covered during the spread. Even though all requested vectors have been
> > reached, we still need to spread vectors among left CPUs. The similar
> > policy has been taken in case of 'numvecs <= nodes'.
> >
> > So remove the following check inside the loop:
> >
> >       if (done >= numvecs)
> >               break;
> >
> > Meantime assign at least 1 vector for left nodes if 'numvecs' vectors
> > have been spread.
> >
> > Also, if the specified cpumask for one numa node is empty, simply not
> > spread vectors on this node.
> >
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Keith Busch <kbusch@kernel.org>
> > Cc: linux-nvme@lists.infradead.org,
> > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  kernel/irq/affinity.c | 33 +++++++++++++++++++++------------
> >  1 file changed, 21 insertions(+), 12 deletions(-)
> >
> > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > index 6fef48033f96..bc3652a2c61b 100644
> > --- a/kernel/irq/affinity.c
> > +++ b/kernel/irq/affinity.c
> > @@ -129,21 +129,32 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >       for_each_node_mask(n, nodemsk) {
> >               unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> >
> > -             /* Spread the vectors per node */
> > -             vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
> > -
> >               /* Get the cpus on this node which are in the mask */
> >               cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> > -
> > -             /* Calculate the number of cpus per vector */
> >               ncpus = cpumask_weight(nmsk);
> > +             if (!ncpus)
> > +                     continue;
>
> This shouldn't be possible, right? The nodemsk we're looping  wouldn't
> have had that node set if no CPUs intersect the node_to_cpu_mask for
> that node, so the resulting cpumask should always have a non-zero weight.

     cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);

It is often true, see the following cases:

1) all CPUs in one node are not present

OR

2) all CPUs in one node are present

>
> > @@ -153,16 +164,14 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >                       }
> >                       irq_spread_init_one(&masks[curvec].mask, nmsk,
> >                                               cpus_per_vec);
> > +                     if (++curvec >= last_affv)
> > +                             curvec = firstvec;
>
> I'm not so sure about wrapping the vector to share it across nodes. We

The wrapping is always there, not added by this patch.

Most time it won't happen since we spread vectors on remaining
(un-assigned)nodes.  And it only happens when there is remaining
nodes not spread. We have to make sure all nodes are spread.

And the similar policy is applied on the branch of 'numvecs <= nodes' too.

> have enough vectors in this path to ensure each compute node can have
> a unique one, and it's much cheaper to share these within nodes than
> across them.

The patch just moves the wrapping from loop outside into the loop, then
all 'extra_vecs' can be covered because it is always < 'vecs_to_assign'.

What matters is that the following check is removed:

   if (done >= numvecs)
                break;

then all nodes can be covered.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
