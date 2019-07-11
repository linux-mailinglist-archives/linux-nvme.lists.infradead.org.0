Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C3565E35
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 19:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nf2AOuvwDbJQSWavVdpWaLFfTlXUv9JNOG+LuErlKH8=; b=pseyIxaoOCbI0W
	dfN8SFylAkEus3c1j4vipXOrnZPjhIpu/dou+k1dopjobHqXCkYx1mMHiKG6DeKDliSn4v61fEqjf
	pGrnT4U/rEAgOSGoV7Y+zkEs/9ADVsZW6RJ67lWHiTS3DK4f4tmuRRJQJuw1xvhd2rbnVBTo2DFQ9
	NfIbZtQYMfm2pt/FV77gmEnOm2cN9P2gOEYaWjYNd38tL5bTkNtuEpTieV6LWlz1mPhmyOoYJVFij
	ZqAE0Ma/BnfWdzCui4TtY+KqKZM6+zrUkxa8YNyzMkwRnzJ3ZUFZ2cUgGF/4bbuxFb0ieljL4aDZz
	Wx9+SJLFZ93zlLGHPivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcZ6-0007V9-SY; Thu, 11 Jul 2019 17:09:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcYx-0007UV-Hw
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 17:08:56 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so3044369pfg.10
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 10:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MkCGXz+ORuF6OW7gQyDWTr8Og6/hQ6xbud/QWJpEXbg=;
 b=cOjlJlH0vCobJX8F0hsI0yjTm24Ow0vvdcw34/3RXLeIpQY+lnY+Ckyc2j4BcY3tX5
 S4n87giw3fCZRQut33dpEEmPVnmObhpolXZxIXc4RuBKNvFOBKIOb7wgfBiDfDELRpE9
 QA6CENHtMXzry7TFFRz9/9ouT2whIUQ8h7Sf4l9Zgg5DcK4R2zPRFMCJEKCVr1+9f7EU
 m500meobuha8UtleH4cY/ATR2UUZuJ9YVyOu0soLCTf4AZyoBg9EXdkTp8G6DQQVjYCV
 v59smb7N/x96XSNt15GxJERPC94/TYjtXd+bNDE97TZioTsLwgWPJwY6nDgUKEV6oweD
 bx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MkCGXz+ORuF6OW7gQyDWTr8Og6/hQ6xbud/QWJpEXbg=;
 b=QWG4YGKrI5pqjWkQQjbwfbRmXAHI9JP6sfktETX5mHsWzsdZgMljKBuQ9l8vhI0CZf
 0TVcYtzUzWAHDTIMpUWf1t1ZR8rM6VdB3UOVjHsVKNR7/ZOhJDXwPFN4FgsfxfGnYix+
 Qu6HImqLtSahEejMG84ocY97BP3jlSMvnctci63EqNAjKTxK9+ojOFKsgx43v+cKWKvA
 oNYNe9uRF58eQtvT9EmYz5ND/oza4rAXoXdekQcVdCwp4Y668N2VWTmV3jf/C6ViQq50
 AnTB+gpTf+Jryib3bbWqhxAZAADTG9LkimESSnOoSddH7fmucqxv83w9TTqnTEMgSAw1
 suwQ==
X-Gm-Message-State: APjAAAW2DT0mSd2kAYGfqruSuZVv+mfInc13hhvSWSuLVb4PI/dG9bTz
 iUkEie8PwREb/zFwbYiSnJY=
X-Google-Smtp-Source: APXvYqzKPKLv7u0OfK7QxUSBeuOq7HLx2VMVov3ODl2bbm+XiOcEXIUdn0MYjEpcD0bH1G6jBUcDKA==
X-Received: by 2002:a17:90a:3ae8:: with SMTP id
 b95mr5911498pjc.68.1562864934559; 
 Thu, 11 Jul 2019 10:08:54 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o24sm12804027pfp.135.2019.07.11.10.08.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 10:08:53 -0700 (PDT)
Date: Fri, 12 Jul 2019 02:08:51 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: tcp: depends on CRYPTO_HASH2 for nvme-tcp
Message-ID: <20190711170851.GA17328@minwoo-desktop>
References: <20190711151338.16810-1-minwoo.im.dev@gmail.com>
 <d67b7a73-0061-202c-457d-93bc4cd06122@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d67b7a73-0061-202c-457d-93bc4cd06122@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_100855_616690_B5A406F0 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi,

Thanks for your review on this.

On 19-07-11 09:05:28, Sagi Grimberg wrote:
> Hi Minwoo,
> 
> > The tcp host module is now taking those APIs from crypto ahash:
> > 	(1) crypto_ahash_final()
> > 	(2) crypto_ahash_digest()
> > 	(3) crypto_alloc_ahash()
> > 
> > nvme-tcp should depends on CRYPTO_HASH2.
> 
> It actually should depend on CRYPTO_CRC32C because
> it needs CRC32C.

Okay.  That looks right for this commit's goal..

> > 
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Keith Busch <kbusch@kernel.org>
> > Cc: Sagi Grimberg <sagi@grimberg.me>
> > Cc: Jens Axboe <axboe@fb.com>
> > Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> > ---
> >   drivers/nvme/host/Kconfig | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
> > index ec43ac9199e2..711d3ea5143f 100644
> > --- a/drivers/nvme/host/Kconfig
> > +++ b/drivers/nvme/host/Kconfig
> > @@ -63,6 +63,7 @@ config NVME_TCP
> >   	tristate "NVM Express over Fabrics TCP host driver"
> >   	depends on INET
> >   	depends on BLK_DEV_NVME
> > +	depends on CRYPTO_HASH2
> 
> Lets make it select instead.

Oh, That would be much easier to use them.  Will prepare updated patch
soon.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
