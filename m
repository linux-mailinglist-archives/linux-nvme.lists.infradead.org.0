Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515B633C0D
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+zuPoEjDmdBOG3aAFY8Uqf5E1IU8EFpJs7mTg3+oPA=; b=Q506zgSvvPpDaA
	c55lBpj2iHKaa8eg7qBxAGfnuGpi5JPE2zxkGEdLn9pKB40mqsabPXqqn8xF62r0lDbWhKJ8przOk
	m9aSMHu4LLFw6/lqOzDEbwKLGbX19PzHy5y1o9Mz7h/tjZvSq5eFeo+FMOoeZJDorVGFqmBhsShtF
	yxja5mVvbMEMccnuJjli0ouSQwCgcgDBUrmRRoZ/+Y6su1ZMkd8Ew22a2NpJFl9CtzwQqpOWRXHJr
	PAOUPF5MgqU4jedc08L/NXFKpk7mrhNoyYStAGTSOWa2bLACjKhHRQD3WA55l1wSJhpFLOUg05V+G
	gmBtKXA0d2f+DZA9qdUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwdm-0000H4-VP; Mon, 03 Jun 2019 23:45:22 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwdi-0000Gn-8F
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 23:45:19 +0000
Received: by mail-qk1-x735.google.com with SMTP id w187so1646749qkb.11
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 16:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NpyGOtWQqbD6EUdMJR8MTULwmZeDZEyMSce+SxX4DpM=;
 b=TKF3sDGdSIIztJKjDFhtHQzicjUEUiuFHpPA8zn+rRpnw8pS6Cc8XHTiLwA7BGiMLf
 rnwC0AoeX3FvW6jfIRvn/Ru1RNIse7XLo6yrcmdF/QpNeAB3LNYMLuzRP++BwWpHGD0T
 wIRFI46n/R0LxK2iv7+K8qG6Cy8N+oZejJJEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NpyGOtWQqbD6EUdMJR8MTULwmZeDZEyMSce+SxX4DpM=;
 b=DusWSz0EjdWx+UsZnggoKBMh/74THsAXMUFa2kLGh9VVxkWG0LuvXRbGYoL+n9Ovpp
 HxlKyZSy+A0QdjjaX7yUxrbOhMKB4zb1IFw3Z4nA3LLicDfG7co4nQ9n857cYrnwPopi
 dpYrgv6arc5nVoT5YPte4X2KEihmCvmKaAXNO1b2kYk5v6giPWr5+4AfbYpQLDMPwowf
 n13hhroAHcFNVLduN/j0L7TtbGbLGMBo+5OggrkrwZatigrEr2OMQfm8OfTkPKqd0O6U
 zfoqw3BtkmpRnKo74XldVhY8ofzC4h4O7Pd3CD1ujXhSj8diqayCbCq6utjcMpHkr1s+
 iMCg==
X-Gm-Message-State: APjAAAWtlQ7bqiJhLl6Wjh2IAqTCindttKdif1FyMD32xIOS0IXlzvjW
 04qRV/j+R36yKI2wHBoj/8QK9FY7nauxI2d2oWRvUw==
X-Google-Smtp-Source: APXvYqyVXubHJfxcnAFySZ7Z3eYIZMM8ulk7C045Z+n3VgZzBSVIcDgED+qw5d9UB3y+Bj9X6bR+Yf2aGp2KHKfvVeE=
X-Received: by 2002:a05:620a:15d3:: with SMTP id
 o19mr5439960qkm.213.1559605517048; 
 Mon, 03 Jun 2019 16:45:17 -0700 (PDT)
MIME-Version: 1.0
References: <1559601877-13614-1-git-send-email-jalee@purestorage.com>
 <CAJX3CthjFcMHK--n4TPjjJ6LCTx-FbnS2tBLx0kmuBMtW04xow@mail.gmail.com>
 <CAL1RGDUUMRWeLA6OtfAvUYuHVRO5Lc0A9xiWs6fc4iFfiGiHDw@mail.gmail.com>
 <1619965f-3d7b-0a17-08ef-807d17ff1f6d@grimberg.me>
In-Reply-To: <1619965f-3d7b-0a17-08ef-807d17ff1f6d@grimberg.me>
From: Jaesoo Lee <jalee@purestorage.com>
Date: Mon, 3 Jun 2019 16:45:06 -0700
Message-ID: <CAJX3CtgAhoJWWL5tYWG7oAaKaPizd0vhRuhf1BnRJyUgY3OOeA@mail.gmail.com>
Subject: Re: [PATCH] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_164518_295380_A94E6811 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:735 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Roland Dreier <roland@purestorage.com>, Keith Busch <keith.busch@intel.com>,
 Jens Axboe <axboe@fb.com>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for pointing that out; I was totally unaware of that.

I just pushed a revision, but using DIV_ROUND_UP_ULL() instead of
DIV64_U64_ROUND_UP(), because I found DIV_ROUND_UP_ULL() is more
popular.

Please let me know we prefer DIV64_U64_ROUND_UP().

On Mon, Jun 3, 2019 at 4:14 PM Sagi Grimberg <sagi@grimberg.me> wrote:
>
>
> >> -       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
> >> +       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP((u64)nn, 1024);
> >
> > This needs to be DIV64_U64_ROUND_UP(nn, 1024) to avoid issues on 32-bit kernels.
>
> Agreed.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
