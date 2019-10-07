Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB64CE18E
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 14:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdU6Lp7M/vGcwIVPHyBWRffs3ZHVEF1maIknuAbFlhs=; b=fApvJjGhM8nGc7
	x0jjoifmQ7r6LYkwR9ls3z3+CVFSZ6R+VL0PiADkoBUDi8xayw8EuMSpyYF7la/DsKzmmxvn5cWgM
	nfAOFvhRH7dxJwX8/Kzfi96V70g5VYYQutHsEgRIPVNnPU8/jhXnqIeOu1NbhFBPVspZV98LSds9z
	+AFpRsrc5O5ZyxxcKG3b+8/CmTPuHjy44hT1GhKCD91xEalYWZ5UwCWaJHlpKWrMt75ivn7pWlq2y
	G3wIAPAttRwg5sKFHFY+tq12EdeLk/mNB164wW6TiMn8whTbunspDCfQk7/HgLSJKYpkm9Y3/Ut2L
	G6ml0gd631f1vRX/AkKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHS4r-0004Wk-Mj; Mon, 07 Oct 2019 12:25:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS4e-0003gu-UJ
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 12:25:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so12120887wmi.3
 for <linux-nvme@lists.infradead.org>; Mon, 07 Oct 2019 05:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XP6WGGUPvA8A76MfbAB/qPOSTM0BF0R6/ItbLE49U0U=;
 b=TwwTNd/KF4Qp403lRZfxcPYxPSIvgRtihlD4JHzLuTMp+kVN6+kaGsN+EVWOvhY8Iz
 JD7bgK9PjKNCmscxhBXra4Vph9mgirfU6LU5W2sEebHLwcPIk4E9uwZ3M0cVeDxkXqwb
 YctgUwCHV4hnRSalKtf3Y8xDhjXoHLRhREVhyluijnOtXy9yMQ4WFcj/NemK5gIGD2ky
 DvhbvfAOF30HEnG95miVJcUOGWAn79Q4qP1FbTapITqdOrC/FjvGxM2lMTni2ps15Hmj
 4WA/z5ml0Z1BmHR9KFpLq6rIhx4o+7G/vi9AptZdTTkg16V9Se3+1zFdW087V+y2p7uN
 PWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XP6WGGUPvA8A76MfbAB/qPOSTM0BF0R6/ItbLE49U0U=;
 b=OpB+KZi8dcagQIfliwCg1UvyM+bNtPEdyaxtL2ZP74kE7jN5SMfAQLq6V6NzdEG8s4
 tCQ4ckrv+WrCRYuBG5TXIH/eIdU0vxSDlmshDZ99Oym+1OTHRN0xiPJ7oNBWuKg+3qky
 614mBdIl39BsmZu92Hcr3A8S2GUT257FNJrHjMSvHpU/ntguzDrxeewBL5aoKAFATP1x
 8+5Jj2A0lrfzx66YJd+0Shuco19uJw2rrpywyAFR/g2Ud4NTP6RumvYUPWRd7k6LM70u
 MryWiD1Hcarz/uzmkeNeWNYBPc9fvGannrwJfdz6nW22X2FDUdl+a740QL6sa7VlJLwa
 3g4g==
X-Gm-Message-State: APjAAAXejOImrRZMwGmXEG3t25PWZleWdAnxmdSReM5ZnW475kJeDuBj
 qYuDMjrt6/OZjetQm3hUJQb12A4KySBz8OQh7bY8HqyYDk6K5g==
X-Google-Smtp-Source: APXvYqxJn0JQwvhOjP60PlicLdJeZ0KhdxQkYOyrNhtSvWWENKy6WACzBsEGBPlBI4XhtT7BArBoP/K4txZjtEAcUjo=
X-Received: by 2002:a1c:e906:: with SMTP id q6mr19134087wmc.136.1570451110627; 
 Mon, 07 Oct 2019 05:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
 <20191007120721.GA21060@lst.de>
In-Reply-To: <20191007120721.GA21060@lst.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 7 Oct 2019 14:24:58 +0200
Message-ID: <CAKv+Gu_mYpopYMCiq=TqHBkzZoRLJD_0Xi8J0GB8+sCHJSmK9A@mail.gmail.com>
Subject: Re: [PATCH v3] nvme: retain split access workaround for capability
 reads
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052513_001883_3AC0DB73 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Mon, 7 Oct 2019 at 14:07, Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Oct 07, 2019 at 01:42:53PM +0200, Ard Biesheuvel wrote:
> > This fixes a boot issue on some ARM boxes with NVMe behind a Synopsys
> > DesignWare PCIe host controller.
>
> >  static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
> >  {
> > -     *val = readq(to_nvme_dev(ctrl)->bar + off);
> > +     /* use a split read to work around buggy interconnects */
> > +     *val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);
>
> I though this was to fix back up the broken Apple controllers?
>

Yes, and other hardware suffering from the same issue.

> If you interconnect doesn't support 8-byte MMIO read/write TLPs you
> have a much deeper problem, as this will break all drivers using
> readq/writeq.  And we currently only have compile time detection for
> readq/writeq, not runtime so you'll have to invent a scheme if this
> works at all or not.

Sure. But the practical reality is that the hardware in question
(including the Apple controller) worked perfectly fine until commit
7fd8930f26be4 introduced a readq() call into a file that had
deliberately been switched to using lo_hi_readq() because readq()
doesn't work reliably for all hardware we would like it to support.
Theorizing about *why* readq() doesn't work reliably in which
particular case doesn't seem that useful to me, given how trivial the
fix is.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
