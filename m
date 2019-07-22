Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BB670D4B
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kR9f2x8lvyRhqTjgeNLhZNE3jAjKYcOq6FMSNAcFjMI=; b=Wk9Ie+5p/oB2eR
	esPyS0rTDukebkgPzznNH11os4AiwrdELwk8yTyg6AO/4iiz6JPiqW/c9ZwUk7OCOtcVjZK97vMas
	nUiB1IBqXvJe+WzhBDgl+Nh+l0ZHU4w+ovPqTERR7Fx7Ue0Rop0KLIwK0hfj0nKU0wI/g5Ke6TP9i
	XEOxe6/A3otvKnUWytQnEQ2ARqaxkIPS/BrPPyFnrZCaTC/JAWAfd0zybjPAgTgQs6JSPosaFEob4
	ie7xyV8FzKXNMQPJAIZqw7xceNVy2WGUazhHWpk2gXz/ln4z13AsmkPkicBZJTvcI1jqMTcm4azN+
	VbFNqB7k5bs6nMXW0rlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphdz-0000Dc-Rf; Mon, 22 Jul 2019 23:23:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphdn-0000CO-1D
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:22:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so16026301wrr.4
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 16:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w8RmrKCLNV6A0HgHZ+FerLtUh99eSc8LM/7Qtq8LAJo=;
 b=u0kI8lG+YC0TmWykIx8xQEGsoI+nGMJ/i3uHiGKfD5w7rR1bJKBeN9YhhoU5JtdZ8c
 WaHQbZckfqd6y+R4tWVCnlj/Xzo42nMktJqCLnAfOp6gz/mL9IAFsyTBfl4XQE3OOvA1
 Hg+MEa4vo4YJibO6ezdJY4091FMcOmHRd23IAGnx+annB2AZb87UQjZzdDmuATaZccym
 59AecHUOdFhbZi7G77EKZyM0Fw+EI+R9mVz4v7cUz5QE8DVkNSoWkZ+r43uV/5W6menk
 Y/gJwPsn5tN9Tg3DpmV9EuIxgDl3z7c1m4fjpmUak7RpVx5ZdVg68HPo9dPbKB3ky3tr
 JWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w8RmrKCLNV6A0HgHZ+FerLtUh99eSc8LM/7Qtq8LAJo=;
 b=WRb6lTnw2YNaksUF75HOB1GKI37cjNwvFDefhJddPm5AtLR7knF8JvBKZ3eK9CKqPz
 AowN09tvg1/z8HK37K3hAijo78yytCHdNffbqtok9lt+anGb+L7qWhX7p7vnzCjVJ+cD
 JtCQ05hPkWeCeut4jDscIQ8BXgX/6qr5/pJrecilAa+t/uxGrsvAdkf7vJZXlD3C3pav
 UpVtSL8Rp12R4s+oWMpbM5FeZmxamSq5GD0L/qZNWO+2FX0aVVdA+MdadIn3kLIg4+9I
 bXvXSCTqRom8CDajqPiFxqp9Xrj2VCPFQMtdKNaFY4IX8qIke6yLfuJdGqLishidiAjP
 eMMQ==
X-Gm-Message-State: APjAAAX6NPgiKAhbren+SMYRYvFdGZ+wmjmX4fai2Yk33BZH66+UfXmG
 YBAxGEL6gOTfasVE+Jxfqw5Y7vNuZfzws/jSLws=
X-Google-Smtp-Source: APXvYqzhZz7CnaC0oTLchBJevUk/xHJs7yT2V0xsuTZrWkdrGh4pYTmo6wXaIICBDEdvD1m0kMEXHiC9ZzOuoQal53Q=
X-Received: by 2002:a5d:630c:: with SMTP id i12mr71823262wru.312.1563837764191; 
 Mon, 22 Jul 2019 16:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
 <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
In-Reply-To: <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
From: Keith Busch <keith.busch@gmail.com>
Date: Mon, 22 Jul 2019 17:22:33 -0600
Message-ID: <CAOSXXT5TkrfH0AFZCV0c+YtbFCQ4MnShKM-gkZrj8Qex+Z7Png@mail.gmail.com>
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
To: Bart Van Assche <bvanassche@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_162247_102999_FB22A344 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 9:27 AM Bart Van Assche <bvanassche@acm.org> wrote:
> On 7/21/19 10:39 PM, Ming Lei wrote:
> > Before aborting in-flight requests, all IO queues have been shutdown.
> > However, request's completion fn may not be done yet because it may
> > be scheduled to run via IPI.
> >
> > So don't abort one request if it is marked as completed, otherwise
> > we may abort one normal completed request.
> >
> > Cc: Max Gurtovoy <maxg@mellanox.com>
> > Cc: Sagi Grimberg <sagi@grimberg.me>
> > Cc: Keith Busch <keith.busch@intel.com>
> > Cc: Christoph Hellwig <hch@lst.de>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >   drivers/nvme/host/core.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index cc09b81fc7f4..cb8007cce4d1 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -285,6 +285,10 @@ EXPORT_SYMBOL_GPL(nvme_complete_rq);
> >
> >   bool nvme_cancel_request(struct request *req, void *data, bool reserved)
> >   {
> > +     /* don't abort one completed request */
> > +     if (blk_mq_request_completed(req))
> > +             return;
> > +
> >       dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
> >                               "Cancelling I/O %d", req->tag);
>
> Something I probably already asked before: what prevents that
> nvme_cancel_request() is executed concurrently with the completion
> handler of the same request?

At least for pci, we've shutdown the queues and their interrupts prior
to tagset iteration, so we can't concurrently execute a natural
completion for in-flight requests while cancelling them.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
