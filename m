Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471D94734B
	for <lists+linux-nvme@lfdr.de>; Sun, 16 Jun 2019 06:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPJoWc8UWGl4lKfCWKN+c3ELDrOei78fT0Grxz0N8uA=; b=FUWj4YrHyKWQkJ
	+JqFNOrMkAV8HN1T6aJunEaeWm3oQ5xnhSXi0+ERpEBNyA92zBi9SjoXm6Bik9UNwktgFfpWNNFn0
	qVAIchVl5e2sits4mTFM+VESoPlNqTP5XW7lz17imf0MHzyKEzY0WFMuzvU7VSRCsdSAilFgyQ5Zv
	Y5X8EsYgCiDL3DZI93rbvTO28Xuk3BBvHfU8MeSG8b+qfM8SuRfqYHYnvpsPYFtV0z9wq42Hi7a3W
	GrHSG48PcTyQhy9mu3dWp1o/9nJefDylM1xgxjzufJa1ibSB2pJZr2zC5PvmBMPvj9+nLMyF6NGlw
	6w1ZCQDQ+HVyiTdzIvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcN92-0003mp-Uf; Sun, 16 Jun 2019 04:51:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcN8u-0003mL-Dr
 for linux-nvme@lists.infradead.org; Sun, 16 Jun 2019 04:51:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so3814895pfe.6
 for <linux-nvme@lists.infradead.org>; Sat, 15 Jun 2019 21:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X6ROHo3h9g7XGumItoi19NxTYj7cdC6pYP/73YJRI2E=;
 b=anxJlrhDhCjYHGFLe5nBQXqFRQBlai749j7Mqhxgech+FzUmke0Ocx2AGHXeLwuoGg
 7FLBrDCW1Nq/5uz7QdTS7GuJx+UepnOHR2P3//cpXo4QzKPwe4sgXNqn9QLG82Oc0swI
 4aBGXRZ/MqfQK8NzBDc48OhWAy8HIcCZMg5g9ZDpWrYaY1VV56EspsNzF+vbkL+RB2P8
 rkZtDM2/3tzwR05WViXIYlYrM2TkCotEc09nDTitzv9coPe+bOJLhwue7FStFI6TSL1t
 RvhF12zeCz9n0NRnT289AWdZ+ZHm5p0M4XFZjfIPNisSrJifnCqucNBOToOThLK2E8T3
 dHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X6ROHo3h9g7XGumItoi19NxTYj7cdC6pYP/73YJRI2E=;
 b=kGCMMAK6tEO3UBPaSfwQXkUVOWfp1YoBbVLEo8Ieneyqg6UdbqFYij+OAcdWQPy4vq
 aXr3jxH69Wzr0+9CXl1K2/DQehO5Nb7SF8PmuIMOQO5UX4bRCHHYGzx2aG2N9kayPiDu
 614NOC7kAJtFw7giD1cP2hDqwxc269ZMjNXxPketfYiZQy1Zl5B+/Aaiz+J/cwEjyW7T
 10dj0n6bN/8e32kLfISVv9UKcTFpLJIjDQzy9YvXnDnBdKcQw6Djd3iT4qwE3Jb9LgFI
 Mr0MSOSvr6yKThgfC6hl3HrcorwLxVxE401xWwq0gJkypNUGzOYcnSQNkfzORqDkauob
 gbnw==
X-Gm-Message-State: APjAAAWiVroJZIumzqGZ8WrILxCgf/8QEgvLDkSBDIeX05X2PPAiEWwh
 XmwcPdL+ux6KoVM95fAR5GI=
X-Google-Smtp-Source: APXvYqwc/kPNkcHuQrWzlz7FRwc3TdlkL8/mkR9o3oJK/HTzCVH9zhNPHdQwZXqsNMfuXjWhKTJ9lg==
X-Received: by 2002:a62:2a0a:: with SMTP id q10mr16341187pfq.237.1560660706754; 
 Sat, 15 Jun 2019 21:51:46 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm8685513pje.3.2019.06.15.21.51.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 15 Jun 2019 21:51:45 -0700 (PDT)
Date: Sun, 16 Jun 2019 13:51:37 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
Message-ID: <20190616045137.GA5373@minwooim-desktop>
References: <CACVXFVPm4v1-9Sta3C0oN3YdTQhGQL1EVDwPBmA4i28SMHJAaQ@mail.gmail.com>
 <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
 <20190610024127.GE26551@ming.t460p>
 <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p1>
 <20190610035219epcms2p152ffea1ffdda63bba9a901dd42979a11@epcms2p1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610035219epcms2p152ffea1ffdda63bba9a901dd42979a11@epcms2p1>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_215148_516261_11D363D6 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <tom.leiming@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-10 12:52:19, Minwoo Im wrote:
> 
> > > > > > However, the check is valid, which shouldn't be nop, so could you fix
> > > > > > the check instead of removing it?
> > > > >
> > > > > Hi, Ming.
> > > > >
> > > > > I don't get what you really mean here.   What do you mean "the check is
> > > > > valid"? I don't see any valid checks in queue_count_set(), not just for
> > > > > check for the failure by kstrtoint().  I think current code is just checks
> > > > > the nr_cpus and do nothing after.
> > > > >
> > > > > Instead fixing this check inside of this function, I have posted the next
> > > > > patch in this series to make sure the number of irqs requested not
> > > > > exceed the num_possible_num().
> > > >
> > > > I suggest to cap 'write_queues' or 'poll_writes' to num_possible_num()
> > > > from the beginning, instead of starting with invalid number.
> > >
> > > Ming,
> > >
> > > Thanks for your review :)
> > >
> > > I have already tried to limit the number of queues inside of
> > queue_count_set()
> > > in [1].  But Christoph had suggested to limit the number in
> > nvme_calc_irq_sets()
> > > instead.  It might be my code was not really good at that time, but could
> > you
> > > please have a look at the mail thread below and give some advices for me?
> > >
> > > [1]  http://lists.infradead.org/pipermail/linux-nvme/2019-May/023868.html
> > 
> > Sorry for missing the previous discussion.
> > 
> > IMO, I prefer to the fix in above link. Cause it is the value of
> > kernel_param_ops
> > to make 'write_queue/poll_queue'  correct from the beginning. That is just
> > like OOP's concept in which each method just does one thing. Then we don't
> > need to bother nvme_calc_irq_sets() for verifying/fixing them.
> 
> Christoph,
> 
> What do you think about what Ming's suggested?  I am actually okay with the
> concept that the function just does its own things.
> 
> It would be great if you can give some advices here :)
> 
> Thanks,

(Gentle ping)

Hi Christoph,

Could you please take a look at this patch ?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
