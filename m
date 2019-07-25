Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E117578D
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOerPCaQQFLcnPwawMYURS18B3pFxUd26lrkBzF5ZWo=; b=K49hW3Qg8a+bGwrs067uY61kd
	KDiWd2UGtWVHGvODvvNFtUUMnCi6IH4XK8G3T4caenHjbKhYkbm7dKOEztPTEUnH7zOHIx4e4tJMp
	uSWXlFf7HeZC9QqlsfLTIqn+ks5sVFCcxEeQxTHXyscIPOKqn0ac+nNezhtWIIrJr2opx4XEYdlrA
	Ywtq0RCPO3emt69p0aAOJolydekD7Of+Nb5i7ylsidTqrCj7ecOxZkfuV5o49ffe4fA7jaJfbH+/P
	8C9sP5kODTz9FYWavlonV+UMJhvybVUAHn1v/ugZPpbo3Mmg5L1r2w8Xv3CdEk9EKzkWDTp5FpGXo
	aSWIVmoWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqj3x-0003J5-QN; Thu, 25 Jul 2019 19:06:01 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqj3p-0003I5-3p
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:05:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id d17so52815241oth.5
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Vw35ctnHAyiweCYFIr8Q5tQ1sCTMUrzhYWyZVMQ2srE=;
 b=PIiWxUmXIe2TkgWWyw8ySOPFN+e19uOsmKs5Ylp5lnkE6+9jCFUjCbPLw5lTDYWa49
 X6lz3O4xVsa2/a+Avsvlj0n11Gz6ev1ExqpHNeaivXX24JdLNp7ZCwMYZQvBn1+PqwTJ
 L6+I+ZPY4iRusbdulJn8J2HUdwjX7gK9okjk/uvQaM4mLnQEN3ZGjK8OTom580J76a/5
 cqWp8GlAVxk0bX03AD/BYZfypsOc+clAOaKrYZ1p1/VgOoSgyzQhPwmYEAmDrzeOmPHc
 gd0Qqc1XDYcw5xEUnCYlXbFI6GWCgM870UB1Q+EGLPsw41mK/kYuwsrKgfYvmwTfEuVP
 zkmg==
X-Gm-Message-State: APjAAAU00XWpot+ncXZaJ+NDjw/J4rysV2cow/jd3W8WIoOFlAEo5WP9
 zsPatHl82AU8smWGhMIGMoY=
X-Google-Smtp-Source: APXvYqxh1xWV9l7hAx0RUdcnZmU1/Ak8tJk9mtOSSnUmKXjlKYymH3LgZ+g4WSGFfklKTPeVE93P7A==
X-Received: by 2002:a9d:7:: with SMTP id 7mr68886666ota.248.1564081550962;
 Thu, 25 Jul 2019 12:05:50 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id u16sm16785232otk.46.2019.07.25.12.05.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:05:50 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
Date: Thu, 25 Jul 2019 12:05:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725190024.GD30641@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_120553_160190_B94761A6 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
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
Cc: linux-block@vger.kernel.org,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> NVMe-OF is configured using configfs. The target is specified by the
>>> user writing a path to a configfs attribute. This is the way it works
>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>
>> Why isn't a fd being passed in there instead of a random string?
> 
> I suppose we could echo a string of the file descriptor number there,
> and look up the fd in the process' file descriptor table ...

Assuming that there is a open handle somewhere out there...

> I'll get my coat.

Grab mine too..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
