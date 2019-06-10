Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870583ADBD
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 05:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0svjHUz7SlRdx3XrgriDXbFpQtUtGJymB0f7zE3Fow=; b=l5ka+AkyRIWoYZ
	1Aqvlzj/f2gfOroy9OJNYE7bGGTP4m0VBfiJUgbz3I1IG/uQX68GLH6H7Vxfj99p3rHgqEVdSyBvq
	DOaUrBrr7vzP9KQNG9xvEztnB2A4Y+nTHNfFp7Gsk0iNpqnH3XK5bJnk7FphcBWj4RjDbL4E0kZKS
	tVfP53r0pOn2jlkJb3OErj7PQsmJuJCx/7edDqo6hqOWqFbg79RH8psMcVATsHv4yeY6WOv8kzxWc
	HZciYrw/5nbQmn7OdhhxKagL4UW0XIw3YTn/PytPaN9YTyx/37OLlSEIWVJGJD+1N9yqiaZOaqKAS
	T0ozeryVeld81S6qR8Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBJL-0007MB-At; Mon, 10 Jun 2019 03:49:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBJC-0007Lp-8p
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 03:49:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so7651101wru.0
 for <linux-nvme@lists.infradead.org>; Sun, 09 Jun 2019 20:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mvMQ0/95bWccp9QlBqkH1tdNSnq7MK5w+vNQYfkxwvI=;
 b=I/C2qOfTHDAy48fmyICUreU8xoD58WDsQvmeik+nmR2V09LkjOAPcsUCBlsh+FeroB
 ifdpsn86qJN3b9w0xzKpmwQFPPJPjoPZxaV6MEfDVtsjfSHJ4bwjsqzK5CON7b1wemVl
 /BqzFTunXqOJehBhR5FpuDb+tzLBeUaeOL+jnRvX6xJXmiHBE8JzK1dN5I8st4QfyOL1
 Z/n0q2n9iYO+ZtUcHGjwlux3CiTs0xJeAMjA5N9ACKM4GnpDSSJtHtaLoVNPVgsIu85v
 sAieLjydHzhbsrQxATUNAQmAnTe7ul2Hhj2WxZYl396l8N7Y7/pF33xCbu1xlRZGUAI9
 am9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvMQ0/95bWccp9QlBqkH1tdNSnq7MK5w+vNQYfkxwvI=;
 b=qsfKwjcSOfRpWzBp1/wEwP83EgBZ+hglYkEEVmTq+XUGIoA9CE3omB69pjI1l2xCZ4
 a5b2gWV96j5EmIU7eN+baHSOYxoh5CUoCXH8RRahk5Jw19tiiL6aB085rSdU7B1NQO7C
 RdLROgf7o+6V9o1avbXb2hAzisTZkgb4Rr6DGwm6H87mlbiyyqdROAILA3rIGxTPpw04
 olWh35jwoePeQlnX/9hB0nQl90TsIUVQZ1bsBE/XxPcx9yGJb6VvhQH2ksJP1qLO8ZPz
 +GLy2wCBKqu1xpvLfL4YBNLfqah3A1GEcKJU6uUXBtZzfS/XOgD98YYFTkvLa2UKa6ZN
 TBRw==
X-Gm-Message-State: APjAAAUNJKl1Amq0kJVWS+p1SRUMOWnnnJOpA1WgA0qm2h4GLiMPZ8PQ
 xE9BPVu9Itqy2FmAvDMq53UMMxgmUHTdw+cKvIg=
X-Google-Smtp-Source: APXvYqxkTKbY/8byqeHQn1RU0ysFId0mh6HmZGyWpcpTaRcpy+04MUZgI+wCAL+GNsHjOEZrtwYobrZHb2xzp6NziCE=
X-Received: by 2002:adf:ce11:: with SMTP id p17mr13053800wrn.58.1560138560441; 
 Sun, 09 Jun 2019 20:49:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p1>
 <20190610024127.GE26551@ming.t460p>
 <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
In-Reply-To: <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
From: Ming Lei <tom.leiming@gmail.com>
Date: Mon, 10 Jun 2019 11:49:09 +0800
Message-ID: <CACVXFVPm4v1-9Sta3C0oN3YdTQhGQL1EVDwPBmA4i28SMHJAaQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,
 poll_queues
To: minwoo.im@samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_204922_317015_7B1F4A9A 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:41 AM Minwoo Im <minwoo.im@samsung.com> wrote:
>
> > > > However, the check is valid, which shouldn't be nop, so could you fix
> > > > the check instead of removing it?
> > >
> > > Hi, Ming.
> > >
> > > I don't get what you really mean here.   What do you mean "the check is
> > > valid"? I don't see any valid checks in queue_count_set(), not just for
> > > check for the failure by kstrtoint().  I think current code is just checks
> > > the nr_cpus and do nothing after.
> > >
> > > Instead fixing this check inside of this function, I have posted the next
> > > patch in this series to make sure the number of irqs requested not
> > > exceed the num_possible_num().
> >
> > I suggest to cap 'write_queues' or 'poll_writes' to num_possible_num()
> > from the beginning, instead of starting with invalid number.
>
> Ming,
>
> Thanks for your review :)
>
> I have already tried to limit the number of queues inside of queue_count_set()
> in [1].  But Christoph had suggested to limit the number in nvme_calc_irq_sets()
> instead.  It might be my code was not really good at that time, but could you
> please have a look at the mail thread below and give some advices for me?
>
> [1]  http://lists.infradead.org/pipermail/linux-nvme/2019-May/023868.html

Sorry for missing the previous discussion.

IMO, I prefer to the fix in above link. Cause it is the value of
kernel_param_ops
to make 'write_queue/poll_queue'  correct from the beginning. That is just
like OOP's concept in which each method just does one thing. Then we don't
need to bother nvme_calc_irq_sets() for verifying/fixing them.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
