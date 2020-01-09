Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FEB136264
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 22:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpFCg7vl0s+mnFHK0Tqc0AUDSrrI7o2Idr71+BsXNkc=; b=nqyM3yhvbCyzpE
	qkA4Dmv1BbEPVcH1g1b9Pcx8SpmeY7HTHj1jMGvnAuWUdsrFO3FN15Sqnylgpnw9wZ58q1paYeEt4
	NPm9ylWl6KaXH8x6k1upql9+VWAKTIqDzq6T1PCWwmwrMBBE4XKfAAiss3N65nv9VqC+vjciH6MV2
	H2EBznPkCglEI/ui8LpFmcfcLfACN1sOqnT8+xGjV4NmaYPwN0v3HKkPwbu5s7eYDhv98JssuzFQn
	cHFLhH8oGwucPEJvAfgj1hhDZy3anklMQApZZJSBLQiVe/Xe5m55cUDkmajV1pGN122dfB3NVJcUY
	OWWTKmnKoK7uOAYLKs5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfGz-00052F-Jo; Thu, 09 Jan 2020 21:23:21 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfGu-00051v-LA
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 21:23:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id b22so3038440pls.12
 for <linux-nvme@lists.infradead.org>; Thu, 09 Jan 2020 13:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=T6jeThcxfdxIVepZQWMOntxPXmtAPAeMRXC77geE9LI=;
 b=07NUHlOgTcW4Dp1uZEtUpFi6Ghq7QUkV8HSR8vG1Vv5ASXMBbZPCTDNJZihZoVTBQ4
 TfCIdYMiOwo0sRyPdLM7HKT2WB/VVsq83gAPjdFlQvyCCnphK4o5qqxqVzOmLTQ+iXA7
 fREZYfb8SzV2rkYaqNTHThVgXIb/jsW/tIbK4qylM/1bHLhQ4JTCN5384XIOG1/TUXlX
 7Qvi+Y5C8DWkjEbOjNT52iBsptX25PckVNW7ikEndQfZWtTbNkaYjoGxYLQyZGDI1BIn
 bw6baycfU0r6EluAcvkcHnuoh74QR5iYOcHe5+ABxiX1TXOfkbD7fx9ZF8Snd5K8xfj1
 rvcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T6jeThcxfdxIVepZQWMOntxPXmtAPAeMRXC77geE9LI=;
 b=Dj3cgzQo0zQBvLzhAk97q2MB7Ny5q+fSQ7yWXSc0D6Na/JWNoVQQNmy8SvAT1f1rx2
 2/fRPPSXnlJTWvzvwNjPKKNInsWJWnfPtyoZvjwjxkqxTrNeTPSXPpOVYnQFi/51cpAd
 tVGn29BTcQp2LZZdkBfNeZ2sjLlILyI1664NbKnhOyU7HpNxv7vC0mkfE4ZcHwQegWiz
 nv1b32QTYA/axUUh0rDH7gTJjO25v0yWoOWQi30WiqcRgTlqpaKXmxmsuyRo1AKL+QZ+
 bXqDhsekmSb3GLCTfd4PSNV4FnRewnZpSmAyjauEiU5pXvVzVJe1wwdO07IB7jVEqL8S
 eL/w==
X-Gm-Message-State: APjAAAUrJTvyA8eXd8/cCNA+ZoAmahJI+5Y6XCmYvwRTLvT1D9jo3YFw
 j50DmBo4mu1z6c/7zNuTKNswHAJmMsk=
X-Google-Smtp-Source: APXvYqwemCw+95qlVkPjXv6eDE9pMxcNI+EczWI1ySSk00Ip8bjh4CyxY8pN4ylviHbp2UD9gAxzsA==
X-Received: by 2002:a17:902:264:: with SMTP id
 91mr13694318plc.271.1578604995262; 
 Thu, 09 Jan 2020 13:23:15 -0800 (PST)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id u127sm9455498pfc.95.2020.01.09.13.23.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 13:23:14 -0800 (PST)
Subject: Re: [GIT PULL] nvme fixes for 5.5-rc
To: Keith Busch <kbusch@kernel.org>
References: <20200109205007.GA17148@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <5a92249f-63b9-d1e2-0b05-4ae9fcebf4d3@kernel.dk>
Date: Thu, 9 Jan 2020 14:23:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109205007.GA17148@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_132316_832559_088EA764 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On 1/9/20 1:50 PM, Keith Busch wrote:
> Hi Jens,
> 
> We've recovered from the holidays and collecting fixes again. Here are
> two that have been pending for some time. Please pull.
> 
> The following changes since commit 802ca0381befe29ba0783e08e3369f9e87ef9d0d:
> 
>   fs: move guard_bio_eod() after bio_set_op_attrs (2020-01-05 17:45:33 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/nvme.git nvme-5.5-rc
> 
> for you to fetch changes up to c2740eb04cd0c713c71727245f52b5cc140a16fb:
> 
>   nvmet: fix per feat data len for get_feature (2020-01-09 07:54:50 -0800)
> 
> ----------------------------------------------------------------
> Amit Engel (1):
>       nvmet: fix per feat data len for get_feature
> 
> Keith Busch (1):
>       nvme: Translate more status codes to blk_status_t
> 
>  drivers/nvme/host/core.c        |  2 ++
>  drivers/nvme/target/admin-cmd.c | 12 +++++++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)

Thanks - applied manually, as I rebased the block-5.5 branch to fixup a
patch.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
