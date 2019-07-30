Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E9679E77
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 04:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKVBpH99rBB3raQVDXGkvNLNIhzoBmprK+0sGfpdgEk=; b=Piifp/1ZzXOC0q
	m549Z2YH6vV+j6smwUYuJzZLRGRL4RddZ/Bb64+pJkL/v+vhGyYZBECSoomBJDVq3LQOFnqgQwDSA
	QmQoWrOymrsX7leOudt1J2qKzXKSbJQjjrgzqclk6QRJn51v7zdDkg3BBaJgzVFjkJwrPjWJeR/VP
	Mom4PHdT7ZlACsBl+YqGvrNpjK3/EkBMrwBbqDMPSsUBlXty0lYCb0r062ZgyIl/q7ex2MXmjF2T3
	374ys+T6BNfQNH2TbLZ2ZzPz1mJcL/tgTS0llkM5yxLtkPs47GQ5BHjXoWw1CUraeG6eLaO2G3wGU
	2s4hluh+3IWrKUp2Iy5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHaC-0004xo-4V; Tue, 30 Jul 2019 02:09:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHa5-0004xV-HH
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 02:09:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so55548558wmj.3
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 19:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=++9XNpksamqZlxSGD5fm13EIySmsy0jaolSa/bICWgQ=;
 b=RRtfV3EpOajuzax9XD5+Ru4913T2xCo7QsGfI9Xq5SvQylfB4OoAJaIq+tbJ0DfanE
 zUrta3VKeVlKsnUJH6b0lSpRfhlIESttYoI8Pkpb/qzSCfRZj8CI4JWYDcvlMcn6hJ3S
 i6JYjqO6wtmEJcKkY0oDIfrDXq1qqstVuHDzYZwD14WZF/nalKOoI/7l9EnkBNIQBGF7
 6o8HpTDDnbmuZ2pSZVkIqe75PyM5DC4XQ+jgYYv1x4qV5zO1gWy2KC82iwOR9CKwM+Xx
 wxORZYCZ5X2ag11IuvTZuBbbkDtvIrA+EoGSF0LzgaLExL34eYcPyDhkk2BD7zCxAYjl
 1njA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=++9XNpksamqZlxSGD5fm13EIySmsy0jaolSa/bICWgQ=;
 b=awG3AUbAEu9ifH+vN14ToV4aKYdyv6T2RPAtK7u28qV4r5yjHC/dfrc9AhpDZEA5L9
 vgAe9Eov/XpPKw4xOapExaE4g6kPojIfZyITqBwx0pg6Vp6El6eicei/cGIzE18TPLCO
 onpDXXdBMvS+8uzu5ST/gkco+5RLylYuLQRsaGD5S9/8vvjnOEv86vFLZUVUM/rV+Dy+
 p8RU+V37xw3p3WuOYv4jMHwwMgdJce5FazGX+mk1WJt1RdSNHr1MtqmQKsE/cxh3jqs/
 072w4VkJ44oWgNLtxx+8K6gkXtKmJf6EGW3Na1wBJLou4eeHU/x9CZaAooX2ihJVb/s5
 eRLQ==
X-Gm-Message-State: APjAAAXZErBgyW7aOMnzVZVn+kzU52tfB1j514Y8PlctK2sDWKjPSNEp
 PY+gohAd7RY7+479reSW9pKoTyqM/X/bqReIkPg=
X-Google-Smtp-Source: APXvYqzBayQhdQ7tRbjiRXoAEGY07lk64Y0nNKGJRtGX1Gsq8oykPqCmDl0dIIfKVwMchGX7/sPhEiPqP7StPOBat0s=
X-Received: by 2002:a1c:a7c6:: with SMTP id
 q189mr103264457wme.146.1564452575118; 
 Mon, 29 Jul 2019 19:09:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
In-Reply-To: <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 30 Jul 2019 10:09:23 +0800
Message-ID: <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_190937_602055_BFA2271F 
X-CRM114-Status: GOOD (  27.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 9:40 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
>
>
> On 7/29/19 6:30 PM, Ming Lei wrote:
> > On Tue, Jul 30, 2019 at 9:19 AM Sagi Grimberg <sagi@grimberg.me> wrote:
> >>
> >>
> >>>>>> If a controller reset is racing with a namespace revalidation, the
> >>>>>> revalidation I/O will surely fail, but we should not remove the
> >>>>>
> >>>>> No, there is sync IO request in revalidation, and the sync IO can't be completed
> >>>>> during resetting.
> >>>>
> >>>> Why? of course it can. The controller reset is responsible to
> >>>> quiesce + abort + unquiesce both I/O and admin commands.
> >>>
> >>> Abort simply cancels the in-flight requests, which will be retried &
> >>> re-queued into
> >>> blk-mq queues, and will be dispatched again after reset is done. That is why the
> >>> revalidation IO won't be failed.
> >>
> >> These I/Os are admin which will not be retried (because we mark it with
> >> REQ_FAILFAST_DRIVER).
> >
> > Yeah, this way is fine since data loss won't be caused.
> >
> >> As for normal I/O that meant to be retried, it
> >> still must either failfast or failover to another path.
> >
> > Why?  If the IO is failed, dirty pages may be lost, and it is one generic
> > issue in either multipath or not, and I don't think the normal IO should be
> > failed at least in case of non-multipath.
>
> This was meant only when the namespace is going away.
> Yea, if the namespace is not going away as described in this patch, then
> yes, it will block until reset is completed.
>
> >> (see the patch I sent Logan for an issue in this area:
> >> [PATCH v3] nvme: fix controller removal race with scan work)
> >
> > The above patch is only for multipath.
>
> Yes, and again, addresses the case that the namespace is going away.
>
> So I think we are in agreement? I only need to change the commit
> message from: "the revalidation I/O" to "the admin I/O" ?

That words of 'admin I/O' isn't related with the patch or issue.

> Yea, this should do the trick I guess:
> --
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index fa31da0762b9..d01976c93160 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl
> *ctrl, unsigned nsid)
>
>          ns = nvme_find_get_ns(ctrl, nsid);
>          if (ns) {
> -               if (ns->disk && revalidate_disk(ns->disk))
> +               if (ns->disk && ctrl->state == NVME_CTRL_LIVE &&
> +                   revalidate_disk(ns->disk)
>                          nvme_ns_remove(ns);
>                  nvme_put_ns(ns);
>          } else

If RESET is triggered just inside revalidate_disk(), and not done after
revalidate_disk() returns,  there is still race between reset and scan work.

For example, nvme_ns_remove() may hang for ever since the ns may be
quiesced in RESET, and can't be un-quiesced any more.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
