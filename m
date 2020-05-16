Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6D11D6200
	for <lists+linux-nvme@lfdr.de>; Sat, 16 May 2020 17:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrQhTd9Kcx6/yoXumyRqECMeuPHvdp0oNWIM4m8WrHA=; b=jI0Nb2s+9dYe4q
	ir4CppakiYuPC99p4Geh1z6b2pAK4nICVJ33mqeGphkTINLWKfvcpKL95aXbdgmbGbKI2DVdI1YFC
	RC0u/W2xeK9qKxeYcxfsUppqHcs+dGZznhkjynIcZuJFRqL7166cgGhryo4tPvkf6bVe+bctOrQru
	nbayWSniBYETUzCyd3Y9RVlAW7wWhjodn9q+6m+HJfYkRZD0oraNMQSqxZbWpshVt0/6mymbSLyaa
	ukbkzLZMYNQpF7tIce3wuku85aad6FHWx64icqHiY+GK8jlDpeWRN3Kh2o4VNz1etf/BHQZNgLfG6
	l5TUmxHiL0UpINaoRPBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZyhZ-0001lF-9N; Sat, 16 May 2020 15:26:13 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZyhU-0001kd-8o
 for linux-nvme@lists.infradead.org; Sat, 16 May 2020 15:26:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id mq3so2361221pjb.1
 for <linux-nvme@lists.infradead.org>; Sat, 16 May 2020 08:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GqzWFnVTxjwBGNcbYipaqJo53cuwjB0S+zYqBcFej6w=;
 b=BhLxWNEcJbG6K7j/aq4QnOk+4VaOIYk2HI+nR0FaRPpnYqGyF9Gg+GSZrih9asvk8O
 bmWm/IZKpaKE1HCTlo8pn/os03TgUIMTLVNq8Ga9UxwzKqKnThAC92XbK+lAzCUBPTbq
 M2geh1SL495P7k/9qHAA1rQK10AODN7MHDlLURzy7lZlp5LrRl6p9ktc8vuL5gR61VFP
 WCR6gK9IBBpQKFR9Yc6LPhuqGJFzdmK3lfoSGI7yiyfhzuyXnjYY8oOxQ2xJb3jxHFx4
 7p8jCxhinQrPfPowhTMwaV0r0YKcoUqFcMw6+QBDbsobyEtR2GcxqKnvx9trtlNLXUrB
 9NVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GqzWFnVTxjwBGNcbYipaqJo53cuwjB0S+zYqBcFej6w=;
 b=SttdwSwlPH1IMPxbQR4chGI2928dxCBBYQRVaVJJAQHaKsQx7WEHVEJ/wZHA1tx0M9
 tEDePaMLh66BMlAKcSRDZd8A1SJF35ePAoX0RcYCnQZNgUTwIaO6X+UR0IAOGIFrcTiT
 5j803mmuwUxl7gcIzcggaeuEsa0v5/dpyKiZ5lnn3KpapaFYVZUoZ9uUJkuOhMvxkCj5
 OwxNpW1j4LZ6K+g/8oM58O4yzvKfL+jnawLy9VIXo5YIoY+XJmIk/+BrJN4ps/WyjwMw
 +5WWvdkUeY+kFYPMhzroNVdW+kAiu5f1E0DU/sNRkVl7kX0jDwmS1T+ezKf4PXNmDV78
 VKsw==
X-Gm-Message-State: AOAM531ZBzzytgcuCC/1OI5ljoO3bAzpD/XdXnc/U3n1S1baPcGiIfuB
 cGXtuCreZ45KGi5UukerNULgn9vTwUg=
X-Google-Smtp-Source: ABdhPJz52J+Ih8aTAkNl1FeoEfxtnrZEKpLUTWWqYrN8eXiwQh+SiV9dmUxW6YuBW1NbSBFvBvZAtw==
X-Received: by 2002:a17:90a:24c5:: with SMTP id
 i63mr9444265pje.98.1589642766791; 
 Sat, 16 May 2020 08:26:06 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:d12:e022:17e3:128?
 ([2605:e000:100e:8c61:d12:e022:17e3:128])
 by smtp.gmail.com with ESMTPSA id y14sm3981799pjl.1.2020.05.16.08.26.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 08:26:06 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fix for 5.7
To: Christoph Hellwig <hch@infradead.org>
References: <20200516132532.GA244143@infradead.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <b693162e-0a1b-10be-6d49-fb278d27dc8a@kernel.dk>
Date: Sat, 16 May 2020 09:26:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516132532.GA244143@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_082608_368252_5A685E2E 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/16/20 7:25 AM, Christoph Hellwig wrote:
> The following changes since commit 59c7c3caaaf8750df4ec3255082f15eb4e371514:
> 
>   nvme: fix possible hang when ns scanning fails during error recovery (2020-05-09 16:07:58 -0600)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.7
> 
> for you to fetch changes up to b69e2ef24b7b4867f80f47e2781e95d0bacd15cb:
> 
>   nvme-pci: dma read memory barrier for completions (2020-05-12 18:02:24 +0200)
> 
> ----------------------------------------------------------------
> Keith Busch (1):
>       nvme-pci: dma read memory barrier for completions
> 
>  drivers/nvme/host/pci.c | 5 +++++
>  1 file changed, 5 insertions(+)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
