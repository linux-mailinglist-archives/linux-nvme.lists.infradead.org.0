Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90051CE1C7
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 14:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNxd3cWypJECGucleQ9UzQJnrqAmceJqbMNmP9BJhE0=; b=VtcGaV3i7S2gUz
	CTzwEr+kW55lcXQvtWacTXfp9+ZsjkJoLt5992I5Nwo1InitjP+GHj9aOp/cTo6/jiDGwEYtsFdnv
	3WjTNE39qOdc0VIHq2MqqbPBWejA/NkZ40wpsImWPDDNJdP2sONgTn1Jb++wQl5WaAWuhQwpVHLwE
	7SzZU22gGVZj2PI8UFPWUqAlOtuxDBtTUtvc1WGXlYKOaiaE2l5DwUDOI8NiyF0Kbnh1A27Yzmf7H
	4SJuR8sDXnrN54oxYu4WnPlS5Rsr19Q3/lST86r5VKFBS8N/KOpN/1GjQo/r+FF2sEtEYNK84kbR/
	9kEfdmoRyU9cOuoBzVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSCV-0007v2-7e; Mon, 07 Oct 2019 12:33:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSCB-0007o8-N1
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 12:33:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so14721998wme.0
 for <linux-nvme@lists.infradead.org>; Mon, 07 Oct 2019 05:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zipW3UnjC5AE9XJSvLObhvEDZYVQjtHf2ER6IXX9ado=;
 b=zq/XQjTDbRzTc5PivyFZV0gPUZiHtfqpwFj+j22YUqSOjz6ix3goXfMy3vVdULEM8K
 N3W7t0pf5+uXrykxKyPN+B65jj6nz4HKrpMb7UK1K6VN8BPrTQeRa82zXg4KcQxeMxar
 XUGVhDuHn0Z9zJrgbMAOilLqHcs6e/Ys6CNe80qpsYz/MMK45b5yY1lnp8ypIg1ACygJ
 T94BZM5SuBZCLEQhuPFoOh9SUC8ul3Ha/M9r3G7lBNwrYhjdK2lTMPpXvWby4FppP19F
 GZbcMiBrv44dZlIHoxHssF0gX7QaGXuCxvZzxcfIPR5hmC9rVqn9wSKhz/Y2u98NYD6H
 ZZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zipW3UnjC5AE9XJSvLObhvEDZYVQjtHf2ER6IXX9ado=;
 b=QN6fG2sHUhmsQC5DljXHWKi6IiZ27Z8sjpS5srU+gMZkaP7Q0oqIbIF1CwiRYSsfD0
 STKvdFfyK/ET638tSV9YvSyDF1RoS42AQNdxMnygcl2siYV5b08kSFCT1h+NgaK8TJZH
 73t0p/TxjTyqB1PtNQG2T/q8gVJ+3C6Q8rRO6X2Ic4VqKv/LR1FYa4zToFG6NP1EmyYm
 nZ3yOS1Ds61GGfJgUd+c/Ju9PO7rJ72erVYTG4btmXyBiZHfAvgaNQxDRbKO2sjtjdSj
 NMnN2bVny8tNq8imfrh4E4I2Sxnq8x1rJ+h6BVH+xJtGJhcZuSGgptg3FgmblNQXpWJN
 Dv7A==
X-Gm-Message-State: APjAAAU6A251hjeSMdNgkgyDiMBdC6DYdvSHgde+smkEJqbgwEkUF/Z6
 f2AKbkaGAxDBgRiGn5Nad21NlxgXEh2QTECXEBxVqQ==
X-Google-Smtp-Source: APXvYqyA+WdylqCv0FLMuiJrtGOAXv06Rajn8wNqkAfylA9XZ7Sk4hhUyZc4njSwtimBmkTkjQ4JWcEteIM7MCdlWFI=
X-Received: by 2002:a1c:e906:: with SMTP id q6mr19158786wmc.136.1570451577765; 
 Mon, 07 Oct 2019 05:32:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
 <20191007120721.GA21060@lst.de>
 <CAKv+Gu_mYpopYMCiq=TqHBkzZoRLJD_0Xi8J0GB8+sCHJSmK9A@mail.gmail.com>
 <20191007122738.GA24804@lst.de>
In-Reply-To: <20191007122738.GA24804@lst.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 7 Oct 2019 14:32:43 +0200
Message-ID: <CAKv+Gu8cyR6Wcp4bSy4iDs0ALfzvOBwNmqx-_SbiPwwSGSFZVA@mail.gmail.com>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_053259_769133_F0365E02 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@fb.com, Keith Busch <kbusch@kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 at 14:27, Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Oct 07, 2019 at 02:24:58PM +0200, Ard Biesheuvel wrote:
> > > If you interconnect doesn't support 8-byte MMIO read/write TLPs you
> > > have a much deeper problem, as this will break all drivers using
> > > readq/writeq.  And we currently only have compile time detection for
> > > readq/writeq, not runtime so you'll have to invent a scheme if this
> > > works at all or not.
> >
> > Sure. But the practical reality is that the hardware in question
> > (including the Apple controller) worked perfectly fine until commit
> > 7fd8930f26be4 introduced a readq() call into a file that had
> > deliberately been switched to using lo_hi_readq() because readq()
> > doesn't work reliably for all hardware we would like it to support.
> > Theorizing about *why* readq() doesn't work reliably in which
> > particular case doesn't seem that useful to me, given how trivial the
> > fix is.
>
> My point here is that if it isn't the PCIe device that is broken like
> in the apple case, but your interconnect you have a problem that can't
> be fixed just in the nvme driver.  We have tons of other drivers relying
> in readq/writeq working if it is available.  You'll need to find a more
> general workaround, independent of the fact that we have a few NVMe
> controllers that always need this workaround.  And at least for NVMe
> the spec specically allows split 32-bit access at least.

OK, that is good to know. Mind you, I used 'interconnect' in the
abstract sense, meaning whatever sits between the CPU doing the read
and the 64-bit register in the BAR space.

But I fail to see your point. Why is it relevant for deciding whether
to apply a NVMe fix if the affected hardware can or cannot use other
types of PCIe devices? Note that I am not proposing some hacky
workaround to be applied, but just to stick with the workaround that
was already accepted (and I'm pretty sure that this Apple hardware got
broken too with commit 7fd8930f26be4)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
