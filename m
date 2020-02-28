Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113A4173DD7
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 18:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV4qDYtow2ewd2y7NHfCv1crK3XYuMoPc6aLyX43oBo=; b=q/Uz8e/ipYZww1
	fsxoVk7O0VVTebZO//VAoO5MaWb/5cPSrLxD6CWD6+YdoIY1ah92IjOdzOMlhBiHAUoXdzYG6BGLE
	gMYsIEMBiqbou8olDNKGStihf13wZYphcyj6ztA/uErlqi9JeXNf5cZgAgPVbifShvLD8zl8mlNqs
	DlVh9WZLWB1E5VTOMoYkrQ288KtEtccX+8AJlOvC7u6jq0+5LwsjvRSGldAX+ugYqjBnSvmSaazxq
	Dw+2aCjUOuN6NUJrOV0pJNC1IpzGFM27m86ZRL8Kt/iM3jyrKXT5IdZgjtGiaYnmQrHreP/bu3lR2
	1q2qiRaP4TrveKIHbo4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7j2a-0007WQ-3g; Fri, 28 Feb 2020 17:03:08 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7j2U-0007Vy-V3
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 17:03:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id j9so2008737pfa.8
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 09:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XqJMW0uarmXjOrHbVaCNctKuR0JmMvgFV8iwsHWpKVs=;
 b=agTPnjlHc2P9jodD9XIr0XLqdiUgpGgBak+poHC9A9ZynQIVb9GOtGNd0y2kD1NRgZ
 tO/XKStWcIA8BIB0t0vxxBeN26fwNK0yYMeaGMFqxcau+4zwmq61k3SvJXwi/nB7MGym
 ZZ/j35HQ1mRlTXCI/Vs18jzbY/mqjvMVfeJpSexz1MoYK/IkdkMHkU7SAJ8hPR5lNteb
 REYSPsW4Y1NRSgFYMLUiLrMnJrnTNBl0ZaoBwbh7QOZ9Z8znPg2NzPTWjEVGq2WlOJfH
 v6VgTRlHY+uZkC3BrnH9dsNZzFvNx3Rvw3bNYBP1YtjWixku9RfJ2npBZcmCm7P7bgDY
 d38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XqJMW0uarmXjOrHbVaCNctKuR0JmMvgFV8iwsHWpKVs=;
 b=HVOgaESxkjtWfU5GbrSkagM8kfdPEkodVilFHz46kZsixF9ZE2lHT7H9ST7He/CM8G
 VClYArbLEXTcFnogmeUFU3KwWeuOUck15Mgu6GcpCz+r/fPzFkG/07ljsUN0E0Wp+U0j
 4l9JGph7v4q4wZGPC2VQ55KNl+QA6Hh2vjFcAxAggvCk9xuiXPwMEgw0mQ6m/SBDI821
 HFdAMyWksmBp7bE2CRIqIJr7u4/vStt/zizAJBbq9gr4yYuQVFOgROFFYVQ+tDE/WzQ5
 0iBR7s/JbnybDqphplUHhQc4kksQeND5QfITwnKIkIFz4TSMeSSCfhetCIZjUSFIPfUO
 Vmmg==
X-Gm-Message-State: APjAAAVjm8VIyQp99JKiH7SAnJZ0vX+cOqq+OOBveXLjjvIIVeDucnyX
 fkqejpQ+L19opjPv/KXLqzvPL9cNWGAx3Q==
X-Google-Smtp-Source: APXvYqzChmnP2s+Jpso2hg5QExYHP3Wcgo9HQ9eZh9bYLhgLEOgsq+yiXtRoMaJAGjnj1+I529TTDw==
X-Received: by 2002:a62:547:: with SMTP id 68mr5316558pff.217.1582909381776;
 Fri, 28 Feb 2020 09:03:01 -0800 (PST)
Received: from ?IPv6:2600:380:7462:705e:7897:92be:72b7:47d8?
 ([2600:380:7462:705e:7897:92be:72b7:47d8])
 by smtp.gmail.com with ESMTPSA id 26sm2949746pjk.3.2020.02.28.09.03.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 09:03:01 -0800 (PST)
Subject: Re: [GIT PULL] nvme polling fix
To: Keith Busch <kbusch@kernel.org>
References: <20200228170058.GA2044@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <a17e0cc8-76ba-b4a6-e8e1-9475a1c20024@kernel.dk>
Date: Fri, 28 Feb 2020 10:02:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200228170058.GA2044@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_090303_139117_186A0AFB 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/28/20 10:00 AM, Keith Busch wrote:
> The following changes since commit cae740a04b4d6d5166f19ee5faf04ea2a1f34b3d:
> 
>   blk-mq: Remove some unused function arguments (2020-02-26 10:34:41 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.6-rc4
> 
> for you to fetch changes up to 9515743bfb39c61aaf3d4f3219a645c8d1fe9a0e:
> 
>   nvme-pci: Hold cq_poll_lock while completing CQEs (2020-02-28 01:32:14 +0900)
> 
> ----------------------------------------------------------------
> Bijan Mottahedeh (1):
>       nvme-pci: Hold cq_poll_lock while completing CQEs
> 
>  drivers/nvme/host/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Pulled, thanks.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
