Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE001FA4FC
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 02:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=grXbIvuLGWH7YDDBe4bALcfNC7Rch9uzdHGk35IM3Bg=; b=tK2I0Lc8cKWZ3g3iDp3VpOYsR3
	3Dd4V3pZajCHY7G7avylbXKoVWwzQQm+rTQDZSmKN6RKZIJzBf2jRxV9e91f80LtGGy4CL7lm6E/d
	bZM7a482FjkmoeXVm330M7uFshk2APS5G6RkPzxgAlvaJa0eJhsorE1pm1YrXyeGcRsz44e+4/gfP
	EXkZaJk++U4AzU4wJ4prMeifeHFYlOlJesCwJ5VDkXYtonOMYhLrnyQh5B2T1qhXpng3xZ6FnQLP7
	JRYHD/hB9jZb67uQN4kNh6mPKIKdxsuiPCMruW1fXIQzqRqKJ30qYqN3+4mPQd/B9cTfonqRYHdIc
	nf/6HGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzK2-00075v-Ui; Tue, 16 Jun 2020 00:19:26 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzJz-00075J-F4
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 00:19:24 +0000
Received: by mail-ej1-x642.google.com with SMTP id gl26so19458662ejb.11
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jun 2020 17:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=uVTAr6pRTP7HiO+MV3uWDv2g+3pBKJ3gLSNzs6hz0fA=;
 b=bT4kjtorsrxGal62UiQnNc5/6i9XsVUsaHT0JqxGeamBeV8L7JgzH5KlH3E28BAXs4
 f1aT+bnLoV+z9S/nfvaBlrNi9R+lb9VrRdYc5EtRIgz8wZLzWZuRn8JOoD1QGjKFOoL4
 iacsZfa1m6t8HM2lNb9QLcEskBBtqVeEpJlMl+NRfAGSb1taMQnPCjcfIiqZUTewDKWO
 BzPDLiaCgwVxh0iSWl7/s2w7ZBiMfdsc4FJ0Rf1+523mYbWDeBO4pUKMh8mTEaHWobDr
 XC8tOcaa/xreIC7l7BqSuhU2N/iOdQ+gH/JiOddkuVyNguWOvDdYI8CSsZ8ErIAmnFma
 zjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=uVTAr6pRTP7HiO+MV3uWDv2g+3pBKJ3gLSNzs6hz0fA=;
 b=OjQEqt1GIlFrK9G9WYt0jR/QbhLugmNj+Rw6uAacHSSijoMYVVXlOMNBhbRQy2sfj3
 T8gz0wWenM3l26pWFh52CwCmllF1mou5vyIRpSRzeQjCPOazyC3aQ2+h/n6JX42E+8no
 Njh1R7w6DdxXAdDD2OgbSxs+ZlvzwTzL8FxLyAMTWGCB3Y3LeiXWeisA6p0+Sd1Z0o6Z
 CQRc+VOMjFDJiEUjDVPbk2PYvXSyT1rlbWVIccKigYDOhbiYWtwGiX4WFaaIKmz/WiWR
 yiHQaceUKAsMVXL9HbWzbDV9KHx/oKoGFLNt/a4FvHNrxmusiBcIOarnOByTd5BQmcue
 MoYA==
X-Gm-Message-State: AOAM530OMqrt8a/W/k0QngZfyKJ33mj9txmNWVTk/b+ZHLf5gsfNtoh2
 cEZqiD0JlTOdMXZRL8a+yaFHo2GNgSw6piSmegAT6leGDp8=
X-Google-Smtp-Source: ABdhPJw0qvIQ4gcHoMX8pjGiBfMm5fGTgAo4kz+fD5MbTWZbNlKsh/FUMpEolvT0om4fA83BRuIxv1HDnqXpcYYAJiE=
X-Received: by 2002:a17:906:1841:: with SMTP id w1mr320858eje.21.1592266758226; 
 Mon, 15 Jun 2020 17:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <1592262742-103431-1-git-send-email-christopher.walker@gmail.com>
 <20200615234208.GA520528@dhcp-10-100-145-180.wdl.wdc.com>
In-Reply-To: <20200615234208.GA520528@dhcp-10-100-145-180.wdl.wdc.com>
From: Chris Walker <christopher.walker@gmail.com>
Date: Mon, 15 Jun 2020 20:19:07 -0400
Message-ID: <CAFD1iUq0fFPFD=QTJbdNn-XU_LsrAEbHe_=CyWS92=Atex49bg@mail.gmail.com>
Subject: Re: [PATCH] nvme: Quirk for Samsung PM1733 controllers
Cc: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_171923_521601_78C5CDAC 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christopher.walker[at]gmail.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 7:42 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Mon, Jun 15, 2020 at 05:12:22PM -0600, christopher.walker@gmail.com wrote:
> > From: Christopher Walker <christopher.walker@gmail.com>
> >
> > Accommodate the drive-ready times of Samsung 1733 controllers, which
> > range from 2s for the 2TB model up to 4s for the 16TB model.
>
> Wait, why is this necessary? We poll on the drive to tell us it's ready.
> What is the hard-coded delay table doing here?
>
> The original "delay" quirk was introduced to work-around a dodgy
> controller that would break if MMIO happened too soon after toggling
> CC.EN. This patch doesn't sound like that, so what exactly is it working
> around?

I was extrapolating from the quirk added for the 1725 series since the
symptom here is the same  ... without this delay, on hot plug we
consistently see:
...
Jun 13 17:51:42 s-lmo-gaz25a kernel: blk_update_request: critical
target error, dev nvme2n1, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1
prio class 0
Jun 13 17:51:42 s-lmo-gaz25a kernel: Buffer I/O error on dev nvme2n1,
logical block 0, async page read
Jun 13 17:51:42 s-lmo-gaz25a kernel: blk_update_request: critical
target error, dev nvme2n1, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1
prio class 0
Jun 13 17:51:42 s-lmo-gaz25a kernel: Buffer I/O error on dev nvme2n1,
logical block 0, async page read
Jun 13 17:51:42 s-lmo-gaz25a kernel: nvme2n1: unable to read partition table

and no partition /dev devices are present.

Thanks,
Chris

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
