Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71301E35C0
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 04:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryN0tQjNwGODIBqDJojah6XNqseIWeSO4hmV9Muh3bU=; b=hnoyPr6wDQmjxO
	igI4ffZCMHlErtAG4l5fvjNG9MiGCbQEBeRzwpvhOYGQ72+tIDmG+0o7dvM3r7q4Q/e44K0ZwFTvN
	6hmWwcvQEK+jtMTyft6gvUvTzwM3dIWhoGo4WeCVdE77246MPznBu0yNkZIOKgmxr0cz6iA0y5PMX
	bO0CNEngfSzZaR6YMU2ez4HsvffEJfuyQeA014RnSsJgrVy380E88QzOrkVrvl50ARoMkV1RL3RkX
	FPooWAqe8tJeYSuu/8X8u8FSXpCzUY+Qk4sDcXbAJSbkcDvAB+qzYeKAwxe2GgQ3grGgXT7x8W2gR
	l56shlCKY+2MF2sbwIHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlwa-0008AD-4P; Wed, 27 May 2020 02:37:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlwV-000897-6O
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 02:37:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so1579189wmd.5
 for <linux-nvme@lists.infradead.org>; Tue, 26 May 2020 19:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fo26F0NoW7UXAZI20P+HiT0dZgkQVqLV8VIU39gdYLc=;
 b=RIu5+DdQ1VaplU0z7eJUcwrnEvkUPhv62+7muM9zNQ0E015+xMKbUgeS5ko57IQucf
 FITrEU2ZXrPskZADXu/RIjwEUK6gSMkm+SSt/pCSVymTBZgzxlQuUBcEm8EkXU788H5C
 MvSelDzU3ynksHlGQr25M+Px2uhaBkBfy93bR5mPlZteeXCrbZJhKjBVPOUQD2QPBUpk
 ZmvPUDQdD9kjHT3FPrCkd6Gl/XIN+ucasRiVdW0181Zs2kD1or00i92mghg5vGLu2TBr
 KPYM7bbLfbfx98KAPLVoxGLGJmNPJqhqAcuhi2/s66stfFP1bcvALS3r3ztmP/KwZspb
 xNfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fo26F0NoW7UXAZI20P+HiT0dZgkQVqLV8VIU39gdYLc=;
 b=LrWvBDp5NnfB7baVlc0SwnsxSiy2Dwn6Ua4Z3oG9Rkt744ypHOqzTGQlWD3BnDqGY4
 xvYtP0ZmjdfI2NzvVrKDPGsjz2JTZRnYe9nqfgXwmioKdclQlp3TLjMZfBZN98X4AJBs
 xvHvudZ3z0fKQgmEF7dwuFHOkeNNX30R4rgX/9l3eaE2QT6FoLDF3RDQS3PNCDm8uE0T
 1HMrMbNZGpMmdfRjXEfrGWNNTXdwRoY0+azBZjou8/qg6Ur1cM0z+IcVZnh3ZpwOTe0u
 TuXimy8vovK6HXWHmr4lzPWV2TZKAwccwhncXOxelwYwgsd4wOYaNODtK8JDCfoHfHlM
 3anQ==
X-Gm-Message-State: AOAM532Nm1enG3RyEnyYNxBXh4nBjQl+5qaG4gWJSEjmtPxEoQ2PgCJa
 YqyskyteyXZHOiPAvmvDrkPfsJHUQNT8kSMDUkw=
X-Google-Smtp-Source: ABdhPJxiWYpNJ1X2X+ovzubaN1Go7qWUFw+e2JFGNhptHPYwQune5xOXrRVPc3f0RMGFE7d445SPUhdRgsE5HvwDzcg=
X-Received: by 2002:a05:600c:22c9:: with SMTP id
 9mr1902422wmg.162.1590547036270; 
 Tue, 26 May 2020 19:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200527004955.19463-1-dongli.zhang@oracle.com>
In-Reply-To: <20200527004955.19463-1-dongli.zhang@oracle.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Wed, 27 May 2020 10:37:05 +0800
Message-ID: <CACVXFVOoJfyZ=H0A4kjUwCxbF24YWEMenNuny3MtXr=-aLbXDA@mail.gmail.com>
Subject: Re: [PATCH 1/1] nvme-pci: avoid race between nvme_reap_pending_cqes()
 and nvme_poll()
To: Dongli Zhang <dongli.zhang@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_193719_234782_69566A67 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tom.leiming[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:57 AM Dongli Zhang <dongli.zhang@oracle.com> wrote:
>
> There may be a race between nvme_reap_pending_cqes() and nvme_poll(), e.g.,
> when doing live reset while polling the nvme device.
>
>       CPU X                        CPU Y
>                                nvme_poll()
> nvme_dev_disable()
> -> nvme_stop_queues()
> -> nvme_suspend_io_queues()
> -> nvme_suspend_queue()
>                                -> spin_lock(&nvmeq->cq_poll_lock);
> -> nvme_reap_pending_cqes()
>    -> nvme_process_cq()        -> nvme_process_cq()
>
> In the above scenario, the nvme_process_cq() for the same queue may be
> running on both CPU X and CPU Y concurrently.
>
> It is much more easier to reproduce the issue when CONFIG_PREEMPT is
> enabled in kernel. When CONFIG_PREEMPT is disabled, it would take longer
> time for nvme_stop_queues()-->blk_mq_quiesce_queue() to wait for grace
> period.
>
> This patch protects nvme_process_cq() with nvmeq->cq_poll_lock in
> nvme_reap_pending_cqes().
>
> Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
> ---
>  drivers/nvme/host/pci.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 3726dc780d15..cc46e250fcac 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1382,16 +1382,19 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
>
>  /*
>   * Called only on a device that has been disabled and after all other threads
> - * that can check this device's completion queues have synced. This is the
> - * last chance for the driver to see a natural completion before
> - * nvme_cancel_request() terminates all incomplete requests.
> + * that can check this device's completion queues have synced, except
> + * nvme_poll(). This is the last chance for the driver to see a natural
> + * completion before nvme_cancel_request() terminates all incomplete requests.
>   */
>  static void nvme_reap_pending_cqes(struct nvme_dev *dev)
>  {
>         int i;
>
> -       for (i = dev->ctrl.queue_count - 1; i > 0; i--)
> +       for (i = dev->ctrl.queue_count - 1; i > 0; i--) {
> +               spin_lock(&dev->queues[i].cq_poll_lock);
>                 nvme_process_cq(&dev->queues[i]);
> +               spin_unlock(&dev->queues[i].cq_poll_lock);
> +       }
>  }

Looks a real race, and the fix is fine:

Reviewed-by: Ming Lei <ming.lei@redhat.com>


thanks,
Ming Lei

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
