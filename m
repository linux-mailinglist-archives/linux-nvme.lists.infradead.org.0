Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677781B56D0
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 09:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6Iqe7xmEr3jGB3H4AeH3UuvrffG3uNsA9+ktD2W39Y=; b=LiKnGjTdmLxtP8
	MaO3qnVJhlXRT68dmJouhJB0bayYWDmRSWWCFkXFS5T9i1ctKaY1N59er9KRDci3f3JpWyvbmYsZY
	R2nLgKeUVmG2NkVsO5I0aRaK/jjhcTwubU48mTn49QqX3lzvAqO70T2VKEeFTrSgfWCFfEsqXKBrI
	NC2jcssTwE/0mc7DMiKX1sY/cqnIbKpP8h/cUnvgAUZG97VmZZZ+i6uil2Za/xX09BJsawRgcHvKw
	GOppTig4OTx6IRMvxMC8fpLokJqIQeEtGYbwIpx6yhqxnXcqjmu9uzhIxtrZEJIgLAUyG5os5dLaZ
	pQ6gIH4cCUhsfyhzfy4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWlr-0004OW-Te; Thu, 23 Apr 2020 07:59:43 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWlm-0004NE-QR
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 07:59:40 +0000
Received: by mail-qk1-x741.google.com with SMTP id s63so5469684qke.4
 for <linux-nvme@lists.infradead.org>; Thu, 23 Apr 2020 00:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cwUNfeMmUxpAaMmVE/CujjiGXeaJJub7xH3lwHU7HXE=;
 b=XFb2Y62Lio/gVNSb9EWsg4CyNuudZFr4sEs9lE1TqDVJSccY3QiYxmRlF2QlMLX8lp
 Y9g+KC1B6/T9+j/d0WD92Jy/yDeqg8Z3//mP1WlXKP87xcDFnmJC54QSfcPu9A8QDFbw
 C/C+c5mO4m0xTJEgCoxFNbwmkMbvlr4xHGjSXqL8OuYo5Ck52pkCBY66a+ufEmAg3NWD
 r5zmKydRiiIiYNdyUF8j0MnQiWSXVIJj4/oubXeKCPb0GD9OpInWX2ecFcSpHro8VXFH
 z/h2gP0NWXWwLoRmS+QIqwApqoXnvRsbsXCRaeOvNgKLDYa4ED0VXKLJGPsaGes3xrqu
 FsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cwUNfeMmUxpAaMmVE/CujjiGXeaJJub7xH3lwHU7HXE=;
 b=MVRIWyFN7vMMEYIFdrJ/lnYevh724nMKUfbhMqtj7SDuBYiFQWYRubU8lzsKeITTz8
 MFpBLho6WYLSjD4lhkPT4WxfiLb5qQMPB/Wap4taq5LkJZ2+ilGGZRMCKX8MFhN+ON4e
 sS9WrkS+PzofYnLjrMbK5RFG7MzlF31WPi85yeWdouZPIFFTbgH0SuZnu+6MBoEDDxoD
 TfULq1YTb4CigjnYrjjUHcHkAgY2ssRdbt65dTDFtLgGLqpQBJDpH1jdKI2kfd4MHf8H
 e0skk1zsmfbplNrdnOazHnsSlS5YRMvU9GcnHQe73oXNmgaLMp5TIC6/RDFtpMb3Z+fa
 fEKg==
X-Gm-Message-State: AGi0PuY5T2YHbhKmSDgpFhtwQojE9LKht8JAG68XnhxRE8rWoIg8d3DC
 D9BUQ8sAE4EXJydxPu1y7C7adDxfX7C2gGsXd7g=
X-Google-Smtp-Source: APiQypIygP3TohWDQYjuEFWZt5a8Eo+EbIxxh+8v8lo0dyFeqD8dvW/4mkrDm/n2ebQqGceHo4UU48U/49WjY0EPD0k=
X-Received: by 2002:a05:620a:22b1:: with SMTP id
 p17mr2264310qkh.249.1587628776460; 
 Thu, 23 Apr 2020 00:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200410095719.GA4393@192.168.3.9>
 <188ad279-9211-9dca-3e6c-b5718ae6fc80@mellanox.com>
 <CAA70yB63bHGcFOzKPrLz+-bjHoEMQWiZEpFyoZ72rzDy9ZaO3Q@mail.gmail.com>
 <66add5c2-62b9-5c2d-977b-0499834b2b7a@mellanox.com>
 <CAA70yB7bkeSwQVjJ5rjGS3HxZtkraUY1FX9ZMHXH8FO6a-8omw@mail.gmail.com>
 <df0fa3a0-7764-bc1f-711d-d264fc4f444f@mellanox.com>
 <20200422083747.GA26915@infradead.org>
 <20200422092416.GA12930@192.168.3.9> <20200422165731.GA8218@infradead.org>
In-Reply-To: <20200422165731.GA8218@infradead.org>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Thu, 23 Apr 2020 15:59:24 +0800
Message-ID: <CAA70yB4onUh4iOGd_rfK8J918Rdn+zkko-LHjiFBVTaSnmPPNg@mail.gmail.com>
Subject: Re: [PATCH] nvme: align io queue count with allocted nvme_queue in
 nvme_probe
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_005938_866733_89A28C07 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zwp10758[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zwp10758[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 weiping zhang <zhangweiping@didichuxing.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 12:57 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Apr 22, 2020 at 05:24:27PM +0800, weiping zhang wrote:
> > > The problem with PCIe is that we only have a per-controller interface
> > > once the controller is probed.  So a global paramter that can be
> > > changed, but only is sampled once at probe time seems the easiest to
> > > me.  We could also allow a per-controller sysfs file that only takes
> > > effect after a reset, which seems a little nicer, but adds a lot of
> > > boilerplate for just being a little nicer, so I'm not entirely sure
> > > if it is worth the effort.
> > Hi Christoph,
> >
> > Because in the real user case, the number of each type queue may
> > not very suitable, it needs a ability to adjust them without hotplug.
> >
> > If so, the nvme_dev needs record how many write/poll
> > queues saved in nvme_probe, and then use them in reset flow.
>
> When I wrote probe above I meant to include reset, sorry.

Hi Christoph,

I send V2 base on nvme-5.8 0e6e74230.

Thanks

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
