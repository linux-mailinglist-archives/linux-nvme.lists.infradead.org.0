Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AAF8DCFE
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 20:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMDZtvgehNqjjZJkGc7KUSHq1wPwHhNaqzTeQfy2vd0=; b=MoDTYUKToJL3b2
	ZW/OWComNUaVqAzNxkxzREIzVcf7hbTeopSGN0MS4F0fffaaFvyxqLlLIbth3751ckFuvFZuodiTR
	Z56B0SFB0JZx+yTB6AO6SEJb40693Rdnt9p8eKrqThQMtdEe1Rm+Fs4Mh+mIZF38T2S+h8/eZmM9P
	FD5uaQrtpgVBMreC6wrBuHwejOtuw38hcOOmpCebfVR/A8ijs3U1oqmfaApc/IAG820s8LOWGs9IE
	83Wa/rGI0/cKxBW7OdFd4SFkFzBt4TP5f0+h1/2IRlRtZ+M3O9GVvyxWmXEtIVpLC/PWpeAQwb1UZ
	1f9kHzJqKE/0sh1GBM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxy1r-0002PL-Pi; Wed, 14 Aug 2019 18:29:47 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxy1e-0002Eh-Rw
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 18:29:36 +0000
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hxy1b-0006ib-HA
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 18:29:31 +0000
Received: by mail-pf1-f198.google.com with SMTP id i2so71117299pfe.1
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 11:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=46iubCDOXlxt4E39L63blEhtpBpLW6BHD3hd+Wl/cwo=;
 b=nd0rS/FTtV/a16J+KU2uHksiAB8/dFbU7MDPmM/oiZId7SzZzwf5zwdg8u961TTngm
 +XD23b7ZBQH+8WerDEwQxkwJBiR5KZaV/klFhh4MPenF77d6cMqMudFKSiOaAzyLY7Xk
 fOzPamPStIGPf5XZaYShZuxYllGt5xdQIqbYtQuZQfKhahjczDoLLGwnDfjr1vQGd4AZ
 HvUOmn9+4+xgKAOxx9Bx24gv8UAomLaZ/WvT2iakW4RVcVw9Rx7MHxdjUZv437Dph9VJ
 xIj/9f5ihs0CWGL4uqknccsnwVmk1Of0Oom5chBB64yEogCTxChE4CUUT3oKOJvLJ6oh
 eqtA==
X-Gm-Message-State: APjAAAUlBBN8v3+4jwfz/2ojkf5JjdXPSzf7zc/9mIE3utpgvzp+jo3N
 yQCvnt7t5hIU6aDvwu56Qvabk4addSePbSeGne1nJyyGp6KJGNrxn0BmGlMeM+zJ5wViFe+dUE2
 JbQQxv0EZYfxhAS9aioELBHQRD1TXxJWzhvc3chsM8QtH
X-Received: by 2002:a63:d741:: with SMTP id w1mr414192pgi.155.1565807370225;
 Wed, 14 Aug 2019 11:29:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNO3VOHh6JV+kyspaLlY7t4Pj6c4hpAZt0TjmteD2P2Ib1uvHB/cx6eK6wj7oJF8GZyOPyGg==
X-Received: by 2002:a63:d741:: with SMTP id w1mr414167pgi.155.1565807369923;
 Wed, 14 Aug 2019 11:29:29 -0700 (PDT)
Received: from [192.168.1.75] ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id f6sm296974pga.50.2019.08.14.11.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 11:29:29 -0700 (PDT)
Subject: Re: [PATCH] nvme: Use first ctrl->instance id as subsystem id
To: Keith Busch <kbusch@kernel.org>
References: <20190814142836.2322-1-gpiccoli@canonical.com>
 <20190814160640.GA3256@localhost.localdomain>
 <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
 <20190814162754.GB3256@localhost.localdomain>
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gpiccoli@canonical.com; prefer-encrypt=mutual; keydata=
 mQENBFpVBxcBCADPNKmu2iNKLepiv8+Ssx7+fVR8lrL7cvakMNFPXsXk+f0Bgq9NazNKWJIn
 Qxpa1iEWTZcLS8ikjatHMECJJqWlt2YcjU5MGbH1mZh+bT3RxrJRhxONz5e5YILyNp7jX+Vh
 30rhj3J0vdrlIhPS8/bAt5tvTb3ceWEic9mWZMsosPavsKVcLIO6iZFlzXVu2WJ9cov8eQM/
 irIgzvmFEcRyiQ4K+XUhuA0ccGwgvoJv4/GWVPJFHfMX9+dat0Ev8HQEbN/mko/bUS4Wprdv
 7HR5tP9efSLucnsVzay0O6niZ61e5c97oUa9bdqHyApkCnGgKCpg7OZqLMM9Y3EcdMIJABEB
 AAG0LUd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGljY29saUBjYW5vbmljYWwuY29tPokBNwQT
 AQgAIQUCWmClvQIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRDOR5EF9K/7Gza3B/9d
 5yczvEwvlh6ksYq+juyuElLvNwMFuyMPsvMfP38UslU8S3lf+ETukN1S8XVdeq9yscwtsRW/
 4YoUwHinJGRovqy8gFlm3SAtjfdqysgJqUJwBmOtcsHkmvFXJmPPGVoH9rMCUr9s6VDPox8f
 q2W5M7XE9YpsfchS/0fMn+DenhQpV3W6pbLtuDvH/81GKrhxO8whSEkByZbbc+mqRhUSTdN3
 iMpRL0sULKPVYbVMbQEAnfJJ1LDkPqlTikAgt3peP7AaSpGs1e3pFzSEEW1VD2jIUmmDku0D
 LmTHRl4t9KpbU/H2/OPZkrm7809QovJGRAxjLLPcYOAP7DUeltveuQENBFpVBxcBCADbxD6J
 aNw/KgiSsbx5Sv8nNqO1ObTjhDR1wJw+02Bar9DGuFvx5/qs3ArSZkl8qX0X9Vhptk8rYnkn
 pfcrtPBYLoux8zmrGPA5vRgK2ItvSc0WN31YR/6nqnMfeC4CumFa/yLl26uzHJa5RYYQ47jg
 kZPehpc7IqEQ5IKy6cCKjgAkuvM1rDP1kWQ9noVhTUFr2SYVTT/WBHqUWorjhu57/OREo+Tl
 nxI1KrnmW0DbF52tYoHLt85dK10HQrV35OEFXuz0QPSNrYJT0CZHpUprkUxrupDgkM+2F5LI
 bIcaIQ4uDMWRyHpDbczQtmTke0x41AeIND3GUc+PQ4hWGp9XABEBAAGJAR8EGAEIAAkFAlpV
 BxcCGwwACgkQzkeRBfSv+xv1wwgAj39/45O3eHN5pK0XMyiRF4ihH9p1+8JVfBoSQw7AJ6oU
 1Hoa+sZnlag/l2GTjC8dfEGNoZd3aRxqfkTrpu2TcfT6jIAsxGjnu+fUCoRNZzmjvRziw3T8
 egSPz+GbNXrTXB8g/nc9mqHPPprOiVHDSK8aGoBqkQAPZDjUtRwVx112wtaQwArT2+bDbb/Y
 Yh6gTrYoRYHo6FuQl5YsHop/fmTahpTx11IMjuh6IJQ+lvdpdfYJ6hmAZ9kiVszDF6pGFVkY
 kHWtnE2Aa5qkxnA2HoFpqFifNWn5TyvJFpyqwVhVI8XYtXyVHub/WbXLWQwSJA4OHmqU8gDl
 X18zwLgdiQ==
Message-ID: <b5b471cc-8935-cf96-d55a-a7dc731cb0d6@canonical.com>
Date: Wed, 14 Aug 2019 15:29:17 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814162754.GB3256@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_112935_042952_8758BD4B 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "jay.vosburgh@canonical.com" <jay.vosburgh@canonical.com>,
 Dan Streetman <dan.streetman@canonical.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 14/08/2019 13:27, Keith Busch wrote:
> On Wed, Aug 14, 2019 at 09:18:22AM -0700, Guilherme G. Piccoli wrote:
>> [...]If you can give a rough example I appreciate.
> 
> Sure, start with nvme subsystem A, with host connected to to
> controllers, X and Y.
> 
>  ctrl X gets instance 0, which you assign to the newly discovered
>  subsytem
> 
>  ctrl Y gets instance 1
> 
>  disconnect ctrl X, which releases instance 0 back to the allocator
> 

Thanks a lot for the example Keith! This is the point I missed,
returning the id back to allocator. If we happen to have some IDA in
kernel without this property, my idea could work!

>  connect to a new ctrl Z in new subsystem B: ctrl Z gets the first
>  available instance, which is now 0, and you assign that name to the new
>  susbystem, colliding with the sysfs nvme-subsys entries we've created
>  for subsys A, as well as any namespaces.
>  
>> But given the above statement is a fact, what do you think of trying the
>> ctrl->instance first and in case we have duplicity, fallback to
>> subsystem ID allocator?
> 
> At the point we assign the subsystem identifier, we're locked into using
> that for the namespace names, which may be discovered long before we're
> aware the host has multiple connections to the same subsystem.
> 
> I think it'd be better to just completely disassociate any notion of
> relationships based on names. The following patch enforces that way of
> thinking:
> 
>   http://lists.infradead.org/pipermail/linux-nvme/2019-May/024142.html
> 

Interesting thread, thanks for the pointer. I think no matter what we do
in this front (to disassociate the relation of nvme numbering), it'll
always be confusion, specially since we broke valid assumptions since
nvme day-0. Would it be possible of instead reusing the numbering
positions in the naming, add more fields?
It is a suggestion from my colleague Dan (CCed here), something like:
for non-multipath nvme, keep nvmeC and nvmeCnN (C=controller ida,
N=namespace); for multipath nvme, use nvmeScCnN (S=subsystem ida).

Let me know your thoughts, and thanks again for the prompt response!
Cheers,


Guilherme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
