Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187E7EE2E0
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 15:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLV/+XViubCqIkXD3axAySNMLT4bjaz2da9H5ZwdAIY=; b=So18DPqWMkU2aE
	jHz8V1MyRhrBpji9lqjx+TqmN8dIRtutJ1eqJeuD+g+T4e+RZrjJFzJ82NL53a7zHkq94dxqAscaR
	I7S7edpA1fhRRj1JgtVODYHdASN2+Lt9QHDBoP0FjkmLBwwigfZVh908KQyi0BUGuPIT9/JuWytth
	YYY7/N3zinSP2l9MsVUdVe5YOACzjAB9tLtscv3kYaUQYuGdJGt8lMB8yaaI0QvGij8eEOpXXwMTt
	rGnmBoHT5bNYUrw4qyG7LuXj3pjXy5L8i4tax2biCSRRNzFQZsB/rTCNVNJxFlu0feIRhXT0FHG9y
	9i/EjiHsjViE1S2gFBzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdhW-0001Vg-Ob; Mon, 04 Nov 2019 14:51:26 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdhR-0001Ut-Af
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 14:51:22 +0000
Received: by mail-yw1-xc43.google.com with SMTP id y18so347043ywk.1
 for <linux-nvme@lists.infradead.org>; Mon, 04 Nov 2019 06:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7r5lBU/w2GioMOAscwus/pOsp6TqJGFS95RYlRLl5V8=;
 b=Venzl/R840Ayp+mx/PlwfO6Axz6jr9KMlduM9SwZzTH0OB0LSCWPAHDamRh2JWa5QE
 KBdL9KUnnhCmFx3Z+TMApBLGk+BsaJ7GZL1VMYvp9FVAQU59YxpLe1lXdW7R5ovZtzJN
 j6O8k9OeYyLaBJt7BaZkKKxB6pjnHzCWDX5ogyBKR4zzZv67cxH3Vm2I1M7ksbeqlJwF
 WZRhhTlbAekMTvxxxWtMSo7De6Vfr+ryAN7WbJdudze+VhZO0rpbCQcEO6mg1kEHH5aS
 9u2zWioBMTpNVBtx2dMRoEXEzGin1meDBK13RPw9YPxXYKsjo5EJdDgF+sDiPqFHdbRa
 Yl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7r5lBU/w2GioMOAscwus/pOsp6TqJGFS95RYlRLl5V8=;
 b=ehVYOy1SNcJzHgOB8gx/o0PC1C5CT6RIRP/Cj8O+nMyuwuKpKCr8yt64ubCwzZjCJD
 yZ06weryEW2zyebutPSdXb144ptTKol4wnoD3lJcvVuJH1Tr1VKk2rMN34X39ZPHfN4z
 wGK45pQmy0YWfoeYrs8h5T6S4Wi1UUxnrZ3ykYwO08eH11KjWGFgJX53YsRNhqaLhvEc
 bnzwArwOLzKZiRBMCSPTHvBcFfn72CBCiz/qQh/DvEZ5qMjSvPzCZwLor6NCuXJuDgP0
 Va7lLsSdhRrUnBY646Xk45tpuZh1fVWvotbL3282KWnNffiB3kMrWfmw3RfqsdTZCVQu
 PYPw==
X-Gm-Message-State: APjAAAWphrCOuwOLyjDQsjugAV9JSZho1MTdWzQosWDqnu4Kii98/h2v
 M0a59jLsLj6VgXgvyfKiACvBBW/2bG30eS+zyeZ7VVZM
X-Google-Smtp-Source: APXvYqxUd0xWCqIUtntR2MSva2pBZIV+Ro4QgagTcr5dCjl2LTVg3D7IcZWj5sEmy7mgGKbUBZPxM7ZolD8xbtB0rbs=
X-Received: by 2002:a81:3644:: with SMTP id d65mr4848747ywa.10.1572879079753; 
 Mon, 04 Nov 2019 06:51:19 -0800 (PST)
MIME-Version: 1.0
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
In-Reply-To: <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
From: Charles Machalow <csm10495@gmail.com>
Date: Mon, 4 Nov 2019 06:51:08 -0800
Message-ID: <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
To: Marta Rybczynska <mrybczyn@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_065121_370455_9C5A1C66 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (csm10495[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (csm10495[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For this one yes, UAPI size changes. Though I believe this IOCTL
hasn't been in a released Kernel yet (just RC). Technically it may be
changeable as a fix until the next Kernel is released. I do think its
a useful enough
change to warrant a late fix.

- Charlie Scott Machalow

On Mon, Nov 4, 2019 at 6:34 AM Marta Rybczynska <mrybczyn@kalray.eu> wrote:
>
>
>
> ----- On 31 Oct, 2019, at 14:39, Christoph Hellwig hch@lst.de wrote:
>
> > On Wed, Oct 30, 2019 at 10:03:38PM -0700, Charles Machalow wrote:
> >> Changing nvme_passthru_cmd64's result field to be backwards compatible
> >> with the nvme_passthru_cmd/nvme_admin_cmd struct in terms of the result
> >> field. With this change the first 32 bits of result in either case
> >> point to CQE DW0. This allows userspace tools to use the new structure
> >> when using the old ADMIN/IO_CMD ioctls or new ADMIN/IO_CMD64 ioctls.
> >
> > All that casting is a pretty bad idea.  please just add an explicit
> > reserved field before the result, and check that it always is zero
> > in the ioctl handler.
>
> That would change the size of a structure in UAPI, won't it?
> I wanted to avoid it when adding the *64 ioctls and that's why
> I added separate ones instead of extending the ones that exist.
>
> Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
