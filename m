Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C388F2E7
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 20:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60iSugcVcSxL5RzGmj2il4Lyyr8XsqwuXT/ibFtmNIA=; b=a3DCgOfWm8uM/N
	ZIuRUBKY4POmF0QUM4OG6z0rmUX243IEskVurMTGPr1GcBmzpENB/nGBKzj8LYrTADArpMw5xGhsO
	P6HDNOMNufdwDCVRqTkhCCQN5IA32jdJJN/6spk4AzzAqvYCJvVLjNJl8d8cyA/7CBmnxEJR0Wys9
	6SpCazNHnTkOzZ6RprPcahlZR7YloZuj8kmrkDSeZZj5HDgqAhl1HzNoFgj1o7oLPk8mTDLdx9DCS
	1E5WPE/U9JP4GuEuFAM5RN2aCNyH4XmXVrZC9YU3RrSaVS49edACmS+3vKTzN95NdXyqrxhoAtNkv
	cWoPclu0B94Ct6wYXASQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKD1-0001fZ-3G; Thu, 15 Aug 2019 18:10:47 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKCk-0001W6-SR
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 18:10:32 +0000
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hyKCg-00020B-N6
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 18:10:26 +0000
Received: by mail-pg1-f197.google.com with SMTP id u1so1558570pgr.13
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 11:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=PnvrmeAZ9oHyNmvucbcER5TUGsNmyn0iWffIXKncnv8=;
 b=quxoLdKKIQmjdw9UqlzjplffVB69HyVtj9bke8ryEE2H1wC4E56ZxvVJhFYGNPppHD
 V8jMLTs4TGNsTbsJ7o6gWRomm0vpeLdUjYC2w87yyNtgSLWihP0/gcZtGU98oxTyYSG+
 C0oUvfWQUJUgTZ7xBzvxRZuykcr7lX1oJNQgKOxoHjJY0HA5b5i7O7RWp2ZmvJTa6pxe
 kiZbz5Yuo1VS+NT8nAwgTmge0MXXx81EiZQEbmWcj99Ehr8JgYJBLC4o5cd19dvkl8ho
 V88mPiTmmzjJ/o7x8YAG62EvuoAITnlR2cJfBemyc5XEEU263wDOHQ4Znr4qzv3Frg/U
 LT5Q==
X-Gm-Message-State: APjAAAWlub6gCzWAqvQGi8HuPEj86eRBxVj2MEdCS9PrvTo3bh1oEOER
 aWByq57wxJ4H0BWkIat+716dG48GYkEWx+kx2NPr/L0cOz1EiXZ+obsu9M+jMu/+JlHR3lmYs1i
 TDUk1fy1WH1m75a4tH+XeGidsXdrhE8002kC2w0dSS3wO
X-Received: by 2002:a63:6206:: with SMTP id w6mr4447012pgb.428.1565892624895; 
 Thu, 15 Aug 2019 11:10:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDsVl4zN6X05BqsxQxxhBPRZap+7yqE9jeKk/q2VEYJVFDdVr5Hb8yJ1ebZL4UMjNpDOkF7w==
X-Received: by 2002:a63:6206:: with SMTP id w6mr4446995pgb.428.1565892624669; 
 Thu, 15 Aug 2019 11:10:24 -0700 (PDT)
Received: from [192.168.1.75] ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id s3sm2803248pgq.17.2019.08.15.11.10.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 11:10:23 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix cntlid validation when not using NVMEoF
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190814142610.2164-1-gpiccoli@canonical.com>
 <18251667-7b5e-789e-a1f0-78f3cbfe1b85@grimberg.me>
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
Message-ID: <ded4ec38-57ef-25c8-68d0-ef6fe25485d9@canonical.com>
Date: Thu, 15 Aug 2019 15:10:13 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <18251667-7b5e-789e-a1f0-78f3cbfe1b85@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111031_210443_F6BBEE4A 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: linux-block@vger.kernel.org, kbusch@kernel.org, axboe@fb.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 15/08/2019 14:24, Sagi Grimberg wrote:
> Pulling this to nvme-5.3-rc

Thanks Sagi!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
