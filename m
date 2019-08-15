Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AC8EC3A
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 15:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8xvVgORCmjOObWiZqPgx8xrQ0X6E/qLzV9YmPPv2lo=; b=MAKhN0RHD0vHip
	iRHkLrA8MWAfUL0rSRYvDrAC+ACnwjGuSUvjj9pFNuZ51TwC79DTUVw0IPd22zqhaZKnE5Jp0+Zj2
	n7OrQIFdUH1nbdJ4LZx5cZysQs8dgufHWtW0YQdXhNuHe5FNHUYVjztLOQN8+FHhJ4yvKqEiEMqrF
	yBOQhnWmhPNwlDFB8wtYy1qUPfoOCUjOO36At62It6vhy3Tcaop5yevszLFJPP+/ttU1fmWdMShZz
	hPwr03tTlwrhAlsBkto0UE1eXequTWxfi2eCXW6lo2QvOQ3RaGL4lBfMeLc5aK0hwTvoTk4jzLN8q
	2oelcCBQkorF6x8s1hqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFOE-0008JN-I0; Thu, 15 Aug 2019 13:02:02 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFO5-0008IT-Hs
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 13:01:57 +0000
Received: from mail-qt1-f198.google.com ([209.85.160.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hyFO3-0007X4-8r
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 13:01:51 +0000
Received: by mail-qt1-f198.google.com with SMTP id 91so1081876qtf.13
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 06:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WcgGhKrzEqQFcbftTHdoLG8OGi4gCwQvJKGdNd0Y8Mc=;
 b=ngn31wr1b5HNtCeyOdcwErG4v12tW2qAvSbAaRYfiXJz7CLBz/V8AMApd6gPIBeufc
 cu/M3cXqGaZp/7bz2gywoPuB5SOwA7/hnHB8Z+S5Y+DVGH+t81TqWK6BPTCHP5l5icrJ
 B4AqxR/kS2tTM2sq+9/tL7PL5cB6o0TDi9QQ46OMMyR2DQmk2gAdpGTCYq4PTBuLUYs9
 1ju5Jbzp1RESye68KpVtFVg2U1QbT32M7XgBw7ZYC8I7j4BoBmhqvgPZnmno31PoQ1Yg
 pEdBtg0ABE9dOtOE0qGs8lrW1CG1iD0MpQowQP3RpMMc8nwzbykqkivyyzexEKrg+r6Q
 txdw==
X-Gm-Message-State: APjAAAWL442OPNYmHUz2wtp1AmQ7KIm/8i5Nbm5O+O6e8hNitbNasjKr
 zeL8AIsiNaqgRLB2vjx2HJCMqhCCa0G3Kd5NIwfKd+tGNH46rMr8r48PRO+nJoi4dQkdGEz2td8
 8fW6TDXANKrPX1gK7VEYFOwVuuSFg8mLvtDnRkWU6kfZH
X-Received: by 2002:a37:9c88:: with SMTP id f130mr3837758qke.494.1565874110545; 
 Thu, 15 Aug 2019 06:01:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyn7TqrI2aPfIK5FkKXReFXUa6cToRv5dkS287uBNrZhKNDXoFPigPVQKtNordm0tBgQ55XYw==
X-Received: by 2002:a37:9c88:: with SMTP id f130mr3837738qke.494.1565874110392; 
 Thu, 15 Aug 2019 06:01:50 -0700 (PDT)
Received: from [192.168.1.75] ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id g207sm1345819qke.11.2019.08.15.06.01.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 06:01:48 -0700 (PDT)
Subject: Re: [PATCH] nvme: Use first ctrl->instance id as subsystem id
To: Keith Busch <kbusch@kernel.org>
References: <20190814142836.2322-1-gpiccoli@canonical.com>
 <20190814160640.GA3256@localhost.localdomain>
 <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
 <20190814162754.GB3256@localhost.localdomain>
 <b5b471cc-8935-cf96-d55a-a7dc731cb0d6@canonical.com>
 <20190814190814.GC3256@localhost.localdomain>
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
Message-ID: <9edcb6b3-806c-a422-8d44-c1ab49ce0b57@canonical.com>
Date: Thu, 15 Aug 2019 10:01:43 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814190814.GC3256@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_060153_726475_B17566E0 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 14/08/2019 16:08, Keith Busch wrote:
> On Wed, Aug 14, 2019 at 11:29:17AM -0700, Guilherme G. Piccoli wrote:
>> It is a suggestion from my colleague Dan (CCed here), something like:
>> for non-multipath nvme, keep nvmeC and nvmeCnN (C=controller ida,
>> N=namespace); for multipath nvme, use nvmeScCnN (S=subsystem ida).
> 
> This will inevitably lead to collisions. The existing naming scheme was
> selected specifically to avoid that problem.
> 

Thanks again for the discussion Keith! So, I guess the way to go is
really the kernel parameter in case users want to fallback to the old
numbering (and only if they're not using multipath).

Cheers,


Guilherme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
