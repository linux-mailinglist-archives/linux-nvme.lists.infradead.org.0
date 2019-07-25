Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61859757E6
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZP/2Xaxh+9WmcdfG3Yb8a9UjxeRmsG/Xg/mADeKOq5o=; b=qrjOOQOlPzFnExytkHsYWNqwI
	elj6RenXnJfzYs0Yn10bRKH/O3btgOVO+4D7dm08cz7FEyNoWkIk8ajAT3vhOZcvG7YdAwLO4Y/I8
	2QUH/rHZao8jatOX+jwG3V1tt8LA68RbnaeKP9mTvkbEqkeWiKQ1Nwj/kqosP9wNQ1y2SuiqVgWpK
	PzFwzDxBTedrcjmO26Elr7t+IsfjeymaJZperxvCq3u+uJP5DKG73HUWVoLQtRCHAFZ30GmT4Ai+4
	MzUSYYgPrnJsLFxHmW/AIhXeJ8U8t5TpUMcfC+/z/HZUu8vSZ9pPkV1SCj2fbAzORMckozE+Wa5o0
	p7EXcNzWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjSd-0004ml-TW; Thu, 25 Jul 2019 19:31:32 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjSU-0004m7-DS
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:31:23 +0000
Received: by mail-oi1-f195.google.com with SMTP id 65so38493597oid.13
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:31:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z5QXyRkHTDjoQ131uZRhhER75vIP6/0mu4Z4dfUeq3Q=;
 b=R5ZhGtqi9IJhPZANB6nktBZCZxnaKTljWtugkcRr0JnYDAflMn1VIlLronH6qlvmmM
 RUzBgZQDFOGBJs9DdjKv2bGNxYVNLzddCaT+HrwCqGhvrwSn+kBwTpCTOPjSYbRzY6s0
 /CZ/Awwbjc7VczNleC+/bupUSZukf1XGjq/+vWhN5vAs4O8KmLDtbpobcHsyPKZiJvIx
 7WOT2ZXjZj7MYgyFddefIMzCODrUK9VF31uIZ4aRwXIN9zq3wt8nRRXH/e1f6oOEBmCA
 Vt99YAXisceTkfDgcKseLPHumAy5OpWjzjJ/UEiXqw6ikL0LuKUrw6GaFRLehnJyvCn5
 uGcA==
X-Gm-Message-State: APjAAAUVWhYeYSfKV+85QITvlbwEqffhaYhPIdzSihGLPT2C1Lq27UrI
 U+tO+j+Dlcr+j9bXW4gUEgI=
X-Google-Smtp-Source: APXvYqy9/zPA47wMvG6CBiuBVcbb9OiBE6ydCS+VVRQ7d2TMrQCD2fTGnTbr6XYi7DvfplS2ffrhHg==
X-Received: by 2002:aca:cf51:: with SMTP id f78mr7856900oig.10.1564083080517; 
 Thu, 25 Jul 2019 12:31:20 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id c29sm18852509otd.66.2019.07.25.12.31.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:31:19 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Matthew Wilcox <willy@infradead.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e91094eb-3ce8-b42b-663a-b62d4617fc96@grimberg.me>
Date: Thu, 25 Jul 2019 12:31:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725191124.GE30641@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123122_449791_23066F0D 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> NVMe-OF is configured using configfs. The target is specified by the
>>>>> user writing a path to a configfs attribute. This is the way it works
>>>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>>>
>>>> Why isn't a fd being passed in there instead of a random string?
>>>
>>> I suppose we could echo a string of the file descriptor number there,
>>> and look up the fd in the process' file descriptor table ...
>>
>> Assuming that there is a open handle somewhere out there...
> 
> Well, that's how we'd know that the application echoing /dev/nvme3 into
> configfs actually has permission to access /dev/nvme3.

Actually, the application is exposing a target device to someone else,
its actually preferable that it doesn't have access to it as its
possibly can create a consistency hole, but that is usually a root
application anyways... We could verify at least that though..

>  Think about
> containers, for example.  It's not exactly safe to mount configfs in a
> non-root container since it can access any NVMe device in the system,
> not just ones which it's been given permission to access.  Right?

I'm seeing this as an equivalent to an application that is binding a
socket to an ip address, and the kernel looks-up according to the net
namespace that the socket has.

I do agree this is an area that was never really thought of. But what
you are describing requires infrastructure around it instead of forcing
the user to pass an fd to validate around it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
