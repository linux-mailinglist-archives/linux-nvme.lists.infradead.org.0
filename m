Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F8F1C23D9
	for <lists+linux-nvme@lfdr.de>; Sat,  2 May 2020 09:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v8YsE+iP1HjIHrXYCUQ4NNtt3SaYvcKW0T2eQpNCZY=; b=HQoVhpnXx2NeMe
	571gArPosY6BJkSkETBm1FxpfJ6IzhuYlIF0PTzBv7d5/y9IBAPK5QDtb5qUz6SKeXTjirKycR3Ic
	4r0P5qTCfa+N17FVL0hFrp+ItzXMuU4VeO6QYPCZQPkjv27fE6SMMJxSqdfcEyBBk0TaEV07p27Iq
	V2Mx9xcxo/p1g2BAZFHdo2MzZxnYHFD4QGPS+8fKlYHjfU2b07lqIuqjj0chNlAGXUS0LJ+LSbt9q
	3nHy3RzSiA8Fx+j1hu/HVSLsWuIYiryesbl1x3pk9xJ1pgzKRt9WsG+JDUM3sN7JBNI1VKxzYCeHi
	BPgFjVlr5VRtryd2YY1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUmar-0005n0-9l; Sat, 02 May 2020 07:29:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUman-0005mD-4R
 for linux-nvme@lists.infradead.org; Sat, 02 May 2020 07:29:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id b188so11446370qkd.9
 for <linux-nvme@lists.infradead.org>; Sat, 02 May 2020 00:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R8cunzfqKMWTHGg+Epy2BVsDzuNrp4+pqn+M0AAw7kM=;
 b=GqWzX8oMMST4zzzPb5ApDu+tvCDG4suDd9pdJ1J75cNv27nVELEAV1ki1hJ/ZZ+A7j
 /C6g73Jg0x0fV9YFYzLza9pFt9n/PsUJE0DAEFqHsjS/sIElkFserJ98VhzMkQ5rwNkp
 GOGzP0B/TegqltDsfzgaSsy/kLyXRVeMc2u6GBO5WAsRwUirivQilUUhWzAJjr+Ld3eD
 dVfy9HYoWHnajAAvV+foocYJYvWTdQIIDNr3o7nRilhIL8tGVh4dz7VWhP2WEW/BiZTl
 AeOdDRcxHh224PcW9QuJlduSMFfIsvwghUG89kogv6P9pjrTCbNkYV3NPVQCCM9FD7cc
 nx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R8cunzfqKMWTHGg+Epy2BVsDzuNrp4+pqn+M0AAw7kM=;
 b=Efw4Dv4GUFXRPfQBoed5YH1y19VlEFCYQuDGiqgT9BqcqPvbfARzYfxF9RG2aM1BxK
 2aqGO576gu0s5zwhKPw8Uz4IfUoGVNDQH2+WWVbdqM2QnQkn2K0HyqpRUOvBtUY6FBeg
 94npCDh9VdaeAY3tIifNHtKf2yv5/C+LprhJR8lDaZBBTooZuBnD0FqBeVUEn4Ngt2cc
 xaXdvLEsj3wJ4hQbplBY/bZUt3DQXz97caHbt1HjD3qOTzm23xiuNvkWnp1czQ7Jm3Om
 HJJrXi3ds1kunymLCmB/XYsr+a8nWbh/hvt/waTETr4KUzsD3FGIuBc93932n9gYSkwt
 TNBQ==
X-Gm-Message-State: AGi0PubTnXeepfF29MIfD2bTpn2yyA/CkDjy7SKIfLtwXHEmpu88jrq4
 oYUZHrUSgjhHZ8kSukvp4TUYCIFlk4ubbcenf+M=
X-Google-Smtp-Source: APiQypK06Q2c8WHYI5Wc8KOOc+TdAOBd/epnvOdRMJCvAAJ9mtxbKX8DfaDGl2Okf+gEgHRi6Ms04ebsE4O1tbuxghA=
X-Received: by 2002:a37:7b01:: with SMTP id w1mr7382931qkc.167.1588404583002; 
 Sat, 02 May 2020 00:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200424043258.GA5512@192.168.3.9>
 <20200501130516.GA30943@infradead.org>
In-Reply-To: <20200501130516.GA30943@infradead.org>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Sat, 2 May 2020 15:29:31 +0800
Message-ID: <CAA70yB7Zcmmsj_Qs=uB4QpF6KwLGvebnCPh-gEM5v5Yi963fNQ@mail.gmail.com>
Subject: Re: [PATCH v3] nvme: align io queue count with allocted nvme_queue in
 nvme_probe
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_002945_199984_B374619D 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zwp10758[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zwp10758[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, sagi@grimberg.me,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 1, 2020 at 9:05 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> I don't really thing we need the new sysfs attribute.  Comments below:
>
> >  struct nvme_dev {
> >       struct nvme_queue *queues;
> > +     int nr_allocated_queue;
> > +     int nr_write_queues;
> > +     int nr_poll_queues;
>
> Can you keep these at the end of the structure given that they aren't
> needed in the fast path?  Also any reason these can't be unsigned?
>
OK, move them to the end of struct, and use unsigned int.

> > +     /* reload io queue count from module paramters write/poll_queues */
> > +     if (dev->ctrl.io_queues_reload) {
>
> So instead of the sysfs attribute, what about just executing this
> code unconditionally?
I think is's ok, these parameters are only used for pcie.
>
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
