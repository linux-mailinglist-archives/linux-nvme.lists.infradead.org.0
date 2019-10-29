Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3EE8B45
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 15:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8VD1bTsOIHmx45Jr+r0Nq5/GQtZ/CfMm6kQgM8Kd1s=; b=TIJeZVVJbfcKsz
	LOFG7ETf00Bq46AO2WSAhlVpLNHwiZtiGSfmlCZrPHowjg5+iETfuSRqUJ+07+YOylRnebbFvB7O2
	iQqq1c6WkUztVlgquyKHvxEYRJbamR3RPyg45cvARIj+GdhXEQK+dkiy36CaQdD6YA9i/VpYxbWq+
	N9XtgubFRbr/cMoLgG5gq1tZZtULacONgUhhj3brhdftvx4EEw4I4SY7NUjxkL7TpXiMtN4QjfFHe
	4XgVkdw8BFmsBixKdX+aljhN+6Ys5ORihE24wjbaZyKNgUXW1vNvhiF0elX8zHUbsBDF3NwRSfxtc
	WK/iDjLayJ2MrxLZVr1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSuQ-0005ms-95; Tue, 29 Oct 2019 14:55:46 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSuK-0005la-RW
 for linux-nvme@lists.infradead.org; Tue, 29 Oct 2019 14:55:42 +0000
Received: by mail-il1-x134.google.com with SMTP id y5so11597780ilb.5
 for <linux-nvme@lists.infradead.org>; Tue, 29 Oct 2019 07:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UqTOHDvluFtSQ7qLf1WbjyRExsggcr25Pr00KxxV/xg=;
 b=j0uNX0Qw6phbSggwv0UpWpDTjpks0FC7VQmsBgXKwTIRn+Znbb9E5esKnZMenp33uK
 gWKTB46roCC2IAW3EV+7yLKv18dOtGq4MOq4+KKD53jK/yq8kEp7WgRHEJT7E2NwyFr7
 Qu7E0a7TiLZXc4fuduM50L3gAR419lmF2M5ZubATt6Y9ATO4zP/ddrxiZu3H8NIO7heE
 njkEFaqcHE+v/s+ELqmqMGiYQcsYTkkDuXbw3tjEAf9X+ZZSSP8++jyRAQml1zRgpEhY
 ZxGXROziojXcCYSfeggGLKW/hr89aCj2Dy9c3gjtbFo+I4phqu5LZ7WVRnN/ccZyiiGm
 B6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UqTOHDvluFtSQ7qLf1WbjyRExsggcr25Pr00KxxV/xg=;
 b=SqNXu6tgolykPKgQINaNybsWjFrnUk7kzUl+Jsj2pjGJfgRyy4N/jr8yQU+lQReb7o
 U8gV+zraPg/b8ylJeJufwJQ5WKk1GQPpD6TBxupREI2wLeEB76PNtFqpYz2c/uAFGq6Q
 B7C0V2DnPEsZl7vmphz1yhgHtqJXNjOsFhTU+zFLdrxkRtNsjLLU/HZJa6y0HFLMYJTh
 WDil6rUS0D7x79jF7knS6mu7kwB05wsiFBMmFwKu3GRn7K1sLOSjArEc9Gs/UDpNHhw2
 pUdArjLzdWqaqKn9P534lG0abYWaynhsRvReHY8oKU0W1NwyoiPj8ZN+U13lidyAqm/5
 lvKA==
X-Gm-Message-State: APjAAAVkRgAcn4ve9R358U9fIW5wv494xE1sA5OElQEpcVooQ5rN7JLg
 OevVKgjJXkAgdsI1hFEeR8Z7Dg==
X-Google-Smtp-Source: APXvYqxeGuwmiS5gRIOF2zfwnZW40vYiLBw5xBMYhOQ9MXuoxab5yL06c/G3pOmJ6WYFFVhtPSsdWw==
X-Received: by 2002:a92:de48:: with SMTP id e8mr26121004ilr.219.1572360939697; 
 Tue, 29 Oct 2019 07:55:39 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id m124sm1321342iof.60.2019.10.29.07.55.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 07:55:38 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.4
To: Keith Busch <kbusch@kernel.org>
References: <20191029143553.GA14564@redsun51.ssa.fujisawa.hgst.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <1854ed36-6044-9caf-e337-e4163bea8215@kernel.dk>
Date: Tue, 29 Oct 2019 08:55:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029143553.GA14564@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_075541_034146_8B34D554 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 10/29/19 8:35 AM, Keith Busch wrote:
> Just one fabrics connection fix, and a cleanup made possible with
> that fix.
> 
> The following changes since commit 88a2d41b5fc35fe330a50267be5499c9ba88644c:
> 
>    io_uring: revert "io_uring: optimize submit_and_wait API" (2019-10-22 13:14:37 -0600)

Thanks Keith - I applied both of these by hand, because the branch it's based
on got tossed. JFYI.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
