Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD70D3218E
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 03:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8sWNvLT5M7OFK4IV5WgDhbvSZjIMhjyDDjiluOIpcY=; b=no8xA3gymiO4Kt
	/Wf7JY9HrkwxWwy2R2HPDMpgI6bWUYvmfAYO5YJpOglp6hjf72CHBxHRn5AWcbgxH8lxWs3m+cAYK
	467d5SXHATnRL45/7IcqIq2M59mAgjYAvng8pdzZdNlUV+qJUd781VCEpjZtdaL40pf7ekCWYROa7
	/Bsru5ZzJ76SocH7AdfCuFOHr/DxyMNWgS2NnBDuwsoJJhKPz4jzhWUn+hsQSkuz7cAsS+wTpKOAo
	HFZrd5oRWHVpizYPw2NDvtmeLlQySq14XCC1ehbeR5krUwCnJrZTuqyh8nBxZVg40TTEhi+4g5y5R
	keZT4Vn0jo51FiIZchpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXFbG-0005zy-Mo; Sun, 02 Jun 2019 01:47:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXFb9-0005ze-NP
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 01:47:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so8492589pfn.7
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 18:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EEEJuTkc7aX5QV4dX7n2N7Df0fgVgxYqjxKhQa17VfM=;
 b=BK8BogcDpfy1wJNFaq5Uo1RSvrAkNEiQnsjCGDtLVVrlZaXhPxt7JpANZjlg3PnDrb
 xjmwmhHQTn2H8ERygRef/8a7sul4vCYsQVbiBHneAQ3WHQqWfLYTPbQ3WVYUr4RwjW6q
 4qmIQY96vHz53yo1v4nGqJKnRQFXOmqxHCqElTtJzFswdfTG2OB7BQNiHFEBeqiWsXp2
 oGRF6lu6yMxmrJU313cqXp6vP66KckFlKL/43nvNZy60wCc/PfMee3IcUjQPa7E/91mM
 A0n4CqBoD9oDDcLCCJyHKnrBX+2WIKaUstr2oTiZPaVFUZTgD0JBwkrblbFECzPk2dN3
 i5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EEEJuTkc7aX5QV4dX7n2N7Df0fgVgxYqjxKhQa17VfM=;
 b=oOIVqErqKCizU/ElE1RkS14hTZykDmslttUsVtXxRCXIPJyNSj0Y6Ic6g3Pgko2Bnd
 eX/yAQeQ2hx0mdMSGmkFrfN12iJcY4+FTTdsGFTekDtUVpi8SlFumzsTaG7smdTeUrgu
 6JgXy4rTqsuOSCTaP9xUs9DrIomU39sb5s+C25Jc8iLteobzJStN2DFo1k1dlO4gg75S
 G0ROETL+NKyi/CvrKbFxiDhZg0i0SmZBfBpeV58evktBtrzSOpx40lytybLm3bI4jzFD
 hOnbeicm0GJfY78e5ZthBp/cJUiqzQXQHoq1vLfxo2h+bUdh+5e7Pjd25KxjwTf/EOnH
 8Q7w==
X-Gm-Message-State: APjAAAXQLNWn1LUJDVusjWSJU0dZHNqQRGtbgm2lKhBtc5rc9bh9qvfM
 KNfITxudPCIH0OwnO2TGDbY=
X-Google-Smtp-Source: APXvYqz1Vvs1CXFIicLU5szf+uhZWs8ZsIXivNKbq6KltRi9TSJwQ4jQ3duwriilBwkMm9ymvt7vKw==
X-Received: by 2002:a63:af44:: with SMTP id s4mr19371214pgo.411.1559440061739; 
 Sat, 01 Jun 2019 18:47:41 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c85sm5348266pfc.149.2019.06.01.18.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 01 Jun 2019 18:47:41 -0700 (PDT)
Date: Sun, 2 Jun 2019 10:47:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V5 1/5] nvme: Make trace common for host and target both
Message-ID: <20190602014737.GA28933@minwooim-desktop>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
 <20190601072143.21233-2-minwoo.im.dev@gmail.com>
 <20190601085016.GA6375@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601085016.GA6375@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_184747_789982_E8C489BA 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-01 10:50:16, Christoph Hellwig wrote:
> > diff --git a/drivers/nvme/Makefile b/drivers/nvme/Makefile
> > index 0096a7fd1431..12f193502d46 100644
> > --- a/drivers/nvme/Makefile
> > +++ b/drivers/nvme/Makefile
> > @@ -1,3 +1,6 @@
> >  
> > +ccflags-y		+= -I$(src)
> > +obj-$(CONFIG_TRACING)	+= trace.o
> 
> this will always build the file into the kernel if CONFIG_TRACING,
> even if no nvme code is enabled.

Oh, thanks to point it out.

> And looking at the later patches I don't even think this sharing is
> worth it, as the actual trace points are pretty different.

That's why this patch series introduces DECLARE_EVENT_CLASS as a
template, and gives different events for it by DEFINE_EVENT.

> 
> I'd much prefer to have different implementations for host vs target for
> now instead of introducing a common library.  Maybe we could revisit
> that later if we end up having a lot of shared code.

As you know, nvmet handles not only nvme fabrics commands, but normal
commands in nvmet_req_init() and nvmet_req_complete().  Which means that
we already have a lot of shared codes in parsing point of view.

The host/trace.c provides parsing admin commands which can be used by
nvmet also.  I guess it's enough to be shared for host and target both.

I hope you can correct me if I missed someting here.

Thanks, Christoph.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
