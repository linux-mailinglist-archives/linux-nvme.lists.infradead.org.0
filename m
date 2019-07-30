Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CBB79DF5
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 03:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfuCDLOQ6uR8AAO8Vd+9qOcHkREpwxW1fxlIglrK73k=; b=tvzagsksYx0BAq
	7fFSzY4shhdjOyJzsOJWFOhlFwB0mvNrsJXGyO6+whqKgv2h29jnZhB+JW8XeQOhpC18uHBAqhDfP
	wbaEyCTJMZ5vjQ8UuzZ4BjipYTgq80dZWNr4gvRGfPj6bXy50Rwg6nw1IOkGdBEkXQpxu3LNwipEC
	L7mjDz+asRSlWLuRagEB9KlsrjDB3mOCjZ2x0qQ8XArFQC0sq/0XniIHjGp7Rc8WAcrdMtPOjnp8k
	k4I46UJ/bqCSGDy3KCVdcAnouPsNFRMN5WWDILlENQZ6U3zAkULxA4GOjoJNHWjLv3vQnTBm3f+BF
	0hFHgRzVhbQd5EswyHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGyn-0001J7-51; Tue, 30 Jul 2019 01:31:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGyg-0001Ii-Lq
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 01:30:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so13943633wrr.9
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 18:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s7dch9uO/XIeiWKNvshy9WPck/Qo/lvrq/GlrItzEHc=;
 b=mNVrHyOE/7UlPlpYn7fdOmFPxfV9COPaIGYCiihBolPVFVhmh9vWISUkKLTDMdr8rY
 Ogf/kRQo55TpSVpQ1PPqCL/Sp6Z0AII6SnR9z14KVFQYTWfwjv5t9ipUfpCnJqaaLnow
 3a4CJbwHKxhQiJ08xVGOy8+38CFkbNEBdurhGNqTbrgWpYpbY6winkkBU9S7yvi0iff0
 DnVq28pqv+1wDKI6o+BIq26Vm/7T0ikElyj4fc+LamoPtC5qpmANRkATaAq+1ha3WvOQ
 Ix9ajDB3I+Xt+AsXDZY8uqA4yzXUAo03s8x9qMcqFGKNhSjiCzxk6yRI8bOCbHNbU1zk
 lQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s7dch9uO/XIeiWKNvshy9WPck/Qo/lvrq/GlrItzEHc=;
 b=lRv1pLTwiSFHc6N8gOdywOVSB2ZiUm7w524lBB7nRuegfZc7Fb1wGyQOyvlocIoEh/
 pTIkuIWLwXVp8zmc1q2Zfr3B+p1823ctd15Fx5x5Ur5wvxwg7MJkZNb0HOiGviR00KEv
 1/kwr8W+ph3ICryyIztHdGF4bbHhF8VUZLzUUb77UhamLaWgecOHliDFeb4H/EGoz8PT
 RSpcEK6th1gXI30St1UZ3runLhILcVIkejxGrKgI2N+qfohtguf/a61NaJhbZ/g4kHpB
 gZRG+eRiB8mV3DBylibvd9BbdXnghFTqmrOVfQBGU4YxIdH1nzuuClm7V9Q5hkoLbcQu
 +RoQ==
X-Gm-Message-State: APjAAAXJD/bLKFqepGGyr+j0kWjwqmmuAUs48FMzoSUgcVXLcvNeO/r/
 1tc1LelTz+iyZmAx19z8Ai6vtQXzRlL8a1puS1w=
X-Google-Smtp-Source: APXvYqyAXBN/qPG6DP2Mg4RGCmwX8y3mUGNbmVw4GpmKsUBCL9ajJzYtP3M43kmFKt0MW/S0KTGje3VLei8hhNhJFeU=
X-Received: by 2002:adf:f883:: with SMTP id u3mr122215598wrp.0.1564450257161; 
 Mon, 29 Jul 2019 18:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
In-Reply-To: <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 30 Jul 2019 09:30:45 +0800
Message-ID: <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_183058_717709_EA6251BD 
X-CRM114-Status: GOOD (  17.16  )
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

On Tue, Jul 30, 2019 at 9:19 AM Sagi Grimberg <sagi@grimberg.me> wrote:
>
>
> >>>> If a controller reset is racing with a namespace revalidation, the
> >>>> revalidation I/O will surely fail, but we should not remove the
> >>>
> >>> No, there is sync IO request in revalidation, and the sync IO can't be completed
> >>> during resetting.
> >>
> >> Why? of course it can. The controller reset is responsible to
> >> quiesce + abort + unquiesce both I/O and admin commands.
> >
> > Abort simply cancels the in-flight requests, which will be retried &
> > re-queued into
> > blk-mq queues, and will be dispatched again after reset is done. That is why the
> > revalidation IO won't be failed.
>
> These I/Os are admin which will not be retried (because we mark it with
> REQ_FAILFAST_DRIVER).

Yeah, this way is fine since data loss won't be caused.

> As for normal I/O that meant to be retried, it
> still must either failfast or failover to another path.

Why?  If the IO is failed, dirty pages may be lost, and it is one generic
issue in either multipath or not, and I don't think the normal IO should be
failed at least in case of non-multipath.

>
> (see the patch I sent Logan for an issue in this area:
> [PATCH v3] nvme: fix controller removal race with scan work)

The above patch is only for multipath.


thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
