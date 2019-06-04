Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D7F3447B
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 12:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpWuxhLu6gGHuVDFZOGPtZrbLsNE7ppgxo4ScUvjoTQ=; b=sIA6kBd/psRnxF
	Nd0nwqeWEE20qvQYK78PdjnzXpEklyie8ypy1sv3ed6TymTG1mWn2Kg32W/+Ccewbh4xzbKYNxUsC
	v4kWKFQiFZYBkQkajKhHck3HF1TBLC20z3QEAdvh+ovc82Vjf6cbKdNgtOL9YkcPpGwsDkKKBxCAt
	DUFZEE3Nt4AVDh921ytheT8fqStvKODfXKexqlfuBkIG6IEErkZ7bWWZAd26DiOZbU2JClTde4cp5
	/GrIGhYhHTiL957ps77JS8pP50Le5pzUlQwbyXFQmhlJfBoce+Noqo4Vjk50j3YOZmMHQ78eqcD5V
	Pa+u9Je6v1zhcrS+1A8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6r5-00067V-KI; Tue, 04 Jun 2019 10:39:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6qy-00066n-AV
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 10:39:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so10111878pgv.10
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 03:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w6A2+ryyWCZFrCqa4GopiwG4RqclAeyYqueF4AFmfpE=;
 b=l7xyShPfsvvMdv2sdvw76OEuO0eu0loBza3a00RtG+xVzfE+W8O0kRs5NVDd3Ewf3r
 4FvtQeIey0YKKHipwzbfEd4loxVb9NM0oAjWxZLTSt4ORLUTAiy6XdcXHX95f6l1wSCA
 NQn1ofd0O0mFsXoRAWyoEXO8PmK0M532QdLxANeiX1aXPqv23WEPhAnMElySUOQGucBe
 TpEdtkEJlRo7+V3Jgdy7UH/gGEh6hnZow5x3MRsaKq2asFqsNKXTHSlBBqSYQbyDWbUo
 OLJaiFDIby2lTLpb5Z8FHyrP1kR+7rk4+rH2YANq9/sUWR17lMr0WUQ7HodjnRUOMAN0
 Tlbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w6A2+ryyWCZFrCqa4GopiwG4RqclAeyYqueF4AFmfpE=;
 b=PPAsA6kW7fAxnCfCbBWr1yz8/Pd7Gm+ZloZzeuaDtK+zerOTit0XE8J6FNC/IevBEk
 bqs98kmEJkF8/GwXip5SX9OmT89IHOhpcbAthLZy0OWNA2DGZc/qXsgTB2vvS7nUN75H
 9EgarHIlWRMyumjgOLKFqZR+MW1bmerGlPfxbp7iunbF7eRZWN89OJ/Ad78uWSW6Q3MU
 mDADabNCfcKJqrCwelHcpt56s0my0vqBSxKavItPqZZqoLWjCfjdqiaSSBXwvHfTi1ci
 L3WfHbCqqv+db2S074QDsFDMgiZcnn3CKhq0f5mePSfqPegcTi4JSRTj8/KDuk/z7jQV
 I57g==
X-Gm-Message-State: APjAAAUyHTCX9Wzm+2K6XAmJJrL3O9+z82AWldSs1SO83uND/y/g0hTc
 vW8juzZlYsLcdTYQGUlbes4=
X-Google-Smtp-Source: APXvYqzmd6xzFoAPy4zRnAZInIg+o/8jsdzY4I15Xnij++HRvQ88gHaqDQrL6Cs6BSf3n/kB+d0E0w==
X-Received: by 2002:a17:90a:ca09:: with SMTP id
 x9mr35429752pjt.105.1559644776374; 
 Tue, 04 Jun 2019 03:39:36 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e26sm12987224pfn.94.2019.06.04.03.39.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 03:39:35 -0700 (PDT)
Date: Tue, 4 Jun 2019 19:39:32 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V5 1/5] nvme: Make trace common for host and target both
Message-ID: <20190604103931.GA14832@minwooim-desktop>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
 <20190601072143.21233-2-minwoo.im.dev@gmail.com>
 <20190601085016.GA6375@lst.de>
 <20190602014737.GA28933@minwooim-desktop>
 <20190604072853.GG15680@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604072853.GG15680@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_033940_367012_5BBBB244 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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

On 19-06-04 09:28:53, Christoph Hellwig wrote:
> On Sun, Jun 02, 2019 at 10:47:38AM +0900, Minwoo Im wrote:
> > > I'd much prefer to have different implementations for host vs target for
> > > now instead of introducing a common library.  Maybe we could revisit
> > > that later if we end up having a lot of shared code.
> > 
> > As you know, nvmet handles not only nvme fabrics commands, but normal
> > commands in nvmet_req_init() and nvmet_req_complete().  Which means that
> > we already have a lot of shared codes in parsing point of view.
> > 
> > The host/trace.c provides parsing admin commands which can be used by
> > nvmet also.  I guess it's enough to be shared for host and target both.
> > 
> > I hope you can correct me if I missed someting here.
> 
> I'm not against sharing per se, but I'm really worried about either
> building that code in the core kernel, or even just a new module, as
> that'll waste at least 8k and will cause more cache misses when
> tracing.  So for now my preference would be to just duplicate the code
> at least at the binary level.

If that factor that you mentioned is much more important than the code
duplications, I can make them duplicated.

I'll prepare the next version based on your suggestion.  Once it gets
done, Please give some comments on that.

Thanks, again for letting me think of this point of view.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
