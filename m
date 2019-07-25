Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5CF758B4
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 22:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9PmQs7x3SpctbbQRe6t8wNbvl4NxLsAKmpLGRKkQQDw=; b=KXbRVN5qtWWD15XiwFO4fn+2f
	4XIRwZUGCc9i+TrEWYvHBvU2lzi9isAHeoXu87Qw8t35s5mmNEqAkrkjb49/77FV0WVT9lwFgCjlr
	mlKOLQ92ofMpPKZKBSweQEwRlx+/rwSFOPj1KG1fJ5fXzUm6wpCsxBpigtEeeJ3mCYivXfA+N8pY0
	IlDx5uEkQLB2esKZhmGRM7qIriWgoTxQdC2uUR663zyXWC88oNrr86n4Y7nbxKcDFFg71PNnLQ6wf
	ojsu7q7qVr+U4Z636aE8gxh3N1rF9u7Kwo2QsGU2xyl9X+juUr9VlrKSsGK8sPZrxiIi3mvMgzwz1
	HHhXFRb8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqk6Z-0005Tm-Gi; Thu, 25 Jul 2019 20:12:47 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqk6S-0005TM-C0
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 20:12:41 +0000
Received: by mail-ot1-f67.google.com with SMTP id j19so14514470otq.2
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 13:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=upMmfHcaeRgVvK81CCV//tdiGx+ZtNGeUUY24jsfROs=;
 b=PACN87ScM+Rl/NO2xGvCP8g6fiNo2dzkdzJk98WgNDAedUrT48MUQ9a3ae49beYtKo
 1EVX7mF+AL0MMKutHFNL86FDT94+UYDzogj2AF9LU5aX10mitomxK4y/T9cikdflqBgX
 ik33ggGt6Dtmm8nmSEbmOOSekEO1Efa+/IGeKqBSSebfMf5CCJGSDmylO+ZlewhSJb0j
 oRtKthJj+DbAkOzIbgtYk/8hzoJbW320x0KpURnGj7Q7ydGKGn6Y8rhQN4gmpV8GZrqm
 XbQ1Xee+grHNp9N6J9S0SpP0c8XHRPu0L05PaBKtxUSu54N9hBhC/4XaX4KP1fhgRk8H
 +u6A==
X-Gm-Message-State: APjAAAXq3oJu3A2hUhrtVR3uTlruZI4SGg07Ow1VjYH78QE/MjEDk4dg
 Av9p9hU65AKVtR67I45PJHQ=
X-Google-Smtp-Source: APXvYqwoBViFnDcf+6pZDHGyFoMwEdvzaHQEty7ZB96NCnpf03fgmpW+suC4/aEJXauiaGWPDAcRcQ==
X-Received: by 2002:a05:6830:6:: with SMTP id c6mr3006263otp.14.1564085559039; 
 Thu, 25 Jul 2019 13:12:39 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 20sm8615958oth.43.2019.07.25.13.12.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 13:12:38 -0700 (PDT)
Subject: Re: [PATCH v6 04/16] nvme-core: introduce nvme_get_by_path()
To: Keith Busch <kbusch@kernel.org>, Logan Gunthorpe <logang@deltatee.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-5-logang@deltatee.com>
 <20190725175023.GA30641@bombadil.infradead.org>
 <da58f91e-6cfa-02e0-dd89-3cfa23764a0e@deltatee.com>
 <20190725195835.GA7317@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0b7e5d9f-207c-ee4e-a992-024c178cdd49@grimberg.me>
Date: Thu, 25 Jul 2019 13:12:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725195835.GA7317@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_131240_413005_456D8939 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Jens Axboe <axboe@fb.com>, Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> nvme_get_by_path() is analagous to blkdev_get_by_path() except it
>>>> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
>>>>
>>>> The purpose of this function is to support NVMe-OF target passthru.
>>>
>>> I can't find anywhere that you use this in this patchset.
>>>
>>
>> Oh sorry, the commit message is out of date the function was actually
>> called nvme_ctrl_get_by_path() and it's used in Patch 10.
> 
> Instead of by path, could we have configfs take something else, like
> the unique controller instance or serial number? I know that's different
> than how we handle blocks and files, but that way nvme core can lookup
> the cooresponding controller without adding new cdev dependencies.

We could... but did we find sufficient justification to have the user
handle passthru devices differently than any other backend?
once we commit to an interface its very hard to change.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
