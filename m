Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC99F8D7DD
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 18:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85gEXd5JFHvhsGfvtojXXkuDyb27WUdbRMfdaGvMvJo=; b=idzbxuiwXWPjdN
	ZsgHtztQh0ApD95yPNL9ma9J5euuI5/+W3bDIgtXUJcUlCATYGLeXFr8hyvM07zC7gBySgFGpkIZV
	SSvAZHR62jvCh5L104KABwbVsejHusBGrQo3dalA9rzcs1CNBZywvpeTxnD4+yQrURj3pxPCzkMtl
	5xdN0WY1pHHqT8/llIEs7pzCbvOQAnGO1ntl6TEw10lx2cvycmdv07TOl6FwkgFkozBEVpQJdpnWT
	ZiYiqT/Xy5oM3Ed02pFXOILtqhoOpmhUJ5tcxtRClXJ7wdN0io6Pbb/Oz2RFcHcNo3y/8P8jwMLvh
	DMqb+BmIQ4m+hy0iO14A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvz1-0006Ae-LU; Wed, 14 Aug 2019 16:18:43 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvyv-0006A6-Ag
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 16:18:38 +0000
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hxvyt-0007gU-D5
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 16:18:35 +0000
Received: by mail-pg1-f200.google.com with SMTP id a9so7874895pga.16
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 09:18:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=E+Pb90HpR+04FXOEpn0mIzhlML/pWoL5asLbYKZAoO0=;
 b=ncL8TqVj26j53oue/d4GGSQZH743mbXmljpKEObeh4qnUGit897GxHkNI/R6SkYkJi
 1mJt+j2cQ5aYItNBC0RO/3nQ7XaCQowBcGFlf+Gkl6JIm34XlspBl+daQOHaV1aJGFMa
 /9M2/HjrQSlUD8Bs0fwKZbJMh0luNZ/Nv2ozPXZtdzETpPcpaUdeY+XOzu+iVi9tlJdb
 Mq8QzMPtNLGOI0tf4Rx+RXWh6vI+kTZfxzRI8gObFsIoqH+A1HB4O6VCupG8EqSS0v66
 IpcKNjhiZCW12uAb/uj3yKUXxqcBnzxhyXpHURQEUxDFLgswkRDkT/YnKHSRbdX23q7R
 ZuvQ==
X-Gm-Message-State: APjAAAUOknyYAY6yU3y1vUmN/1IbGz1B/GryNr4RVq+Tx6CAmzQSpHNt
 pjuwP376eLvNHRhCHhyxsXUf/JqIBaz1QiSG6OWG6MtOIcbACeANqzRR8JzntasRGEDXjLglems
 /aHZF/alJ0Dt4p3Excx666/Ge7nKWwIL7fnzUR5coEpwl
X-Received: by 2002:a62:5487:: with SMTP id i129mr761238pfb.69.1565799514180; 
 Wed, 14 Aug 2019 09:18:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/T9k3EqiQrbnOxy3ybKa+BYrNtctlQTXHMDp+MTfg7rHremw8llryLenot/c59IZl1wqyjA==
X-Received: by 2002:a62:5487:: with SMTP id i129mr761221pfb.69.1565799513984; 
 Wed, 14 Aug 2019 09:18:33 -0700 (PDT)
Received: from [192.168.1.75] ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id x128sm263924pfd.52.2019.08.14.09.18.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 09:18:33 -0700 (PDT)
Subject: Re: [PATCH] nvme: Use first ctrl->instance id as subsystem id
To: Keith Busch <kbusch@kernel.org>
References: <20190814142836.2322-1-gpiccoli@canonical.com>
 <20190814160640.GA3256@localhost.localdomain>
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
Message-ID: <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
Date: Wed, 14 Aug 2019 13:18:22 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814160640.GA3256@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_091837_496997_BFB4CEAD 
X-CRM114-Status: GOOD (  14.39  )
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
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 14/08/2019 13:06, Keith Busch wrote:
> On Wed, Aug 14, 2019 at 07:28:36AM -0700, Guilherme G. Piccoli wrote:
>>[...]
> 
> The subsystem lifetime is not tied to a single controller's. Disconnect
> the "first" controller in a multipathed subsystem with this patch, then
> connect another controller from a different subsystem, and now you will
> create naming collisions.
> 

Hi Keith, thanks for your clarification. Isn't the controller id unique?
Could the new connected controller from a different subsystem have the
same id? If you can give a rough example I appreciate.

But given the above statement is a fact, what do you think of trying the
ctrl->instance first and in case we have duplicity, fallback to
subsystem ID allocator?

Since the creation of subsystems is not a critical path, adding this
small burden shouldn't be a huge penalty, and it'll help a lot with the
huge amount of reports of "confusion" after the introduction of nvme
multipathing, also it helps for the case I mentioned in the description,
some multipath'ed controllers, some single ones.

Cheers,


Guilherme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
