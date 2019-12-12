Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B106A11C1A6
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 01:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DDGu+/kkb1cbNjzboaSnP/WRq/z3K2haoOLUuvlQyRY=; b=UN8yVF55VfOpcVN3p5dcyINXh
	cj+NPHj4NTd7fyGDegkEbWoU7tY93hihWITI4SwXv5KGLu5ncGnw6TJ6yl6IV9lTI/+6h3pUlbpjP
	T6mitIeZzrQTE+Tx54yY1zDjUBIZuASNFJPgyoI1WavpWOUlYCmcQuv/8lgIbPZ8Ux90BSNO97hg2
	ty7hRIoK9k+NcaYcbbcMHgyKbxyQMW69VLlUQCL24HsO4kfnX8N44CQLKSpJyccFH/qfnBaMFwQ4Y
	ww8UVILQpUyhuWtJ8e6Zf2Z0NZ5piciCsM2GepFNqmfDB3CXc5QhMgXe4HdMAU6CoSRt56Ccar0kg
	4QFIF0COg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCgb-0007Dj-QP; Thu, 12 Dec 2019 00:50:33 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCgU-0007Cw-HV
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 00:50:27 +0000
Received: by mail-ot1-f68.google.com with SMTP id g18so592271otj.13
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 16:50:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M58jhzz7JZJ05K7SXUTF1bqrvNdphjuNv7SGl++vzc0=;
 b=XS+tIzCb0RUR4/MGl62PxDW1UyBtBKFDkJJcZZZaJc/dY24J+CVHzEfDocSKJcKMs3
 ffyMKUclT/FdGwm0U3IsdR88F9XPhewUYB8eb6xwT9zEWc+UolNu3SqIQE5i+X4HMoKn
 nY6XyF5CBDtFmbTrNgbVcBBg/2SkXpxu4LbBgj3mNZCzlNZ5C90qxKvf2OorF1KO5Rit
 KVDeiKjdCSmo22L4UdoOgdMHPVM82aAoMt60pIj0YITPM+23UY4XtOM9kOhnKgpTTSSL
 Kqgi6BZ82dfgO4bdKohpgAwsaWKagkDCRMvkV9nU6ILjoCxXPhWt7+6yyzmYEvWrIHCA
 l0og==
X-Gm-Message-State: APjAAAUacq5reVRimM1MqkMDQVQmyfcgE/bMTsrz6wyDste3jPvr6OFY
 TNxPbxWDsoheCtEgxSln0b0=
X-Google-Smtp-Source: APXvYqyo3vzsBZC/KH9k9yv62o00//jeyVX4MEezoupoiJ/v2z1ks0qORY3nl/PPSGsMdg0tVO1Ahg==
X-Received: by 2002:a05:6830:10c9:: with SMTP id
 z9mr4938238oto.200.1576111825486; 
 Wed, 11 Dec 2019 16:50:25 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w201sm1446102oif.29.2019.12.11.16.50.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 16:50:24 -0800 (PST)
Subject: Re: [RFC PATCH 0/5] to add more nvme reset functions
To: Keith Busch <kbusch@kernel.org>, tsutomu.owa@kioxia.com
References: <346d379a5f9940dcba60242d2d9e119a@tgxml778.toshiba.local>
 <20191211161823.GA493@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d4583505-d3f2-238b-c323-94216c910e29@grimberg.me>
Date: Wed, 11 Dec 2019 16:50:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211161823.GA493@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_165026_580067_63DDF327 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@infradead.org, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Any comments would be highly appreciated.
> 
> The majority of this series is at the pci protocol level, and the pci
> driver already provides the requested capabilities (but with a more
> safe implementation). Let's not reinvent it just because one nvme
> transport happens to use the pci bus.

This is messy. Everything here needs to live in nvme-pci.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
