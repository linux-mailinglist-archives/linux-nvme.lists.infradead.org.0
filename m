Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE87F95BC
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 17:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUjJ6Tq1+KfBRE2Y+hhxrE9TPtiotVwspCZEvwVJkgU=; b=tMnxG7iFxoH1Nw
	TrklC+bbSRGEmeRFwdyrTg7J3bXPC2bX27ffuYleBH7xf29AqF1t7xA7jDSqH9se8HYExIHXFhdBw
	vqv9y18WCMi3TVNIsgTnwUygYki/NQ0LwWyl8S1ho3yHHXgZ89FW20GGLrUOETtJnUoBj2GDa5NMu
	x91Fz9oKfxxl0ob8zZ4hccinKAKONrxyb1tP72BYDHD4udpt1QviSXQHRLyb+OWsIxaabgluoxmYZ
	pQtjbQXQr4axtdo+VOlx8fuz/lJMbJFH+r8lyKOjXBfuXD9UHY2oRkpVFS7gG16DIW2zrlaZCyBhr
	It+GI6nEAZabXkxd62uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZ8d-0006tZ-Uq; Tue, 12 Nov 2019 16:35:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZ8Z-0006t1-27
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 16:35:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id q22so12225952pgk.2
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 08:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EaPXOh6xM3m0jUHzGL0Mf6qRxhaBbvP46g40Pz2Afjw=;
 b=ezHsXq648C4og9q+X76LLX659EAlWoyf2d4/8Mb4lHoJKaTPJEUA0EuSExYd5caP8J
 cJr+UMLQgUIBxmvPIL1qpFunU8/TSaLL7l3SucDdPk/fvXKroacJ577GlkweiNW+k3Ek
 p2P/PNsWh9ncbzRTfDFG6VheJGhl6XLUpTItXIAV4XSrsDRlisYU76ubnLYTadzDTOm7
 9DjvqYriqrqrv9400/o0DX7gxa3Grv8WKJzsDjHOwnacJUyR1TMmxkg6oFVhtNFpxEu/
 2Fm4xiA5Q6DArosCSNDBXEhPXHRB1+op8bKrq4i9jklxn12+6BD208ArjMVM7jqu8O/m
 R5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=EaPXOh6xM3m0jUHzGL0Mf6qRxhaBbvP46g40Pz2Afjw=;
 b=dk2sE4m2Se9Ol6TizpthCZGbAP8SmRfEJlr3JcS5bHOQP30JSQSP6d+tPxfwbi8f3a
 rKvdJE0IMzk2vwcdTIvsEOfAuy2OIzYdqj8jVHBO96xclhKHhnqkkGlu8waoiFy/jzpI
 nvoKCrBGTeOpswsM/MvPJJUIsHL9X36KUPXxjaGsmQ8FYBae2zut5w7UGn/gd222kyA3
 Q/W8WQOkyzceyXqmAm3vhjGSlEPBwSIwWBrY17xV1etiMYR2Z1zTmDYqeswntiKSn8o0
 Mt7Oj5jidDU42ynZ+cHvREYFEBWqohMKmN8aGXMCTxUGMGSzbVSDzMEyGBOWzNv4CS82
 Of/g==
X-Gm-Message-State: APjAAAUxKwCPc6YrxpyR4ImNujd2Nx4iVJuVsLq6kAP+cTGbiDU8pv4t
 xoiC1mfZfVLU1KtWpu09SZOywWUT
X-Google-Smtp-Source: APXvYqwwb1tr95cSpt3fTYC17da1UbfBzFXxAniNMO3nHvjy4LJwdwC5wavglB+Zl/8u4ZpWDR0Wpw==
X-Received: by 2002:a17:90a:ec07:: with SMTP id
 l7mr7588481pjy.68.1573576526503; 
 Tue, 12 Nov 2019 08:35:26 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id y1sm20185576pfq.138.2019.11.12.08.35.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 08:35:25 -0800 (PST)
Date: Tue, 12 Nov 2019 08:35:24 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: hwmon: provide temperature min and max values for
 each sensor
Message-ID: <20191112163524.GA26911@roeck-us.net>
References: <1573395466-19526-1-git-send-email-akinobu.mita@gmail.com>
 <d3c0c9a7-00b9-0465-16e1-6fd7ba97dfd0@roeck-us.net>
 <CAC5umyiju2Q2fdfVaFyX+Q=sMKr5Gsc_GDVYmSa0vB+w8acvAw@mail.gmail.com>
 <20191111173505.GB5826@roeck-us.net>
 <CAC5umyjviR1J5HojE6WBhYQCzu=CFPPoNxXY=T9KRw2yTpO=VQ@mail.gmail.com>
 <e2699eee-8ca2-fcf4-d6b2-624cbddd4c6d@roeck-us.net>
 <20191112150659.GA12493@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112150659.GA12493@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_083527_103774_681AA1DF 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Akinobu Mita <akinobu.mita@gmail.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:06:59PM +0100, Christoph Hellwig wrote:
> On Tue, Nov 12, 2019 at 07:04:38AM -0800, Guenter Roeck wrote:
> > The Intel NVMe has the latest firmware version installed, so this isn't
> > a problem that was ever fixed.
> 
> What Intel device is that?  If it is one of the XXXp models, those just
> seem some of the most buggy NVMe SSDs around unfortuntely (excluding
> the Apple ones that don't actually claim to be NVMe at least).

SSDPEKKW512G7; this is a 600p model.

Guenter

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
