Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A767584D
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEr9KAO8I1kgKkKhCBj2o8QhFRSJ2gkNSFDyq+Kl6vA=; b=TD0u4hKdgLf2ZyKINTcdGXJq/
	lxWhCt6z3dxW69ST9t7IUYVZLDIi4WZ1BgL+QYU8M8wNKJ27011kPz9nWwL2XBXpObjL2yYO702i4
	CC1BDg8K+VA+VpC/1TZhyLLXptQ02gyH5WZ83EqRBL+naAchDNi82K+QEQrX0fyd2JUpEqKhFn097
	tSlt7CLihUpHUyBTuG+2FUY+ksHNYtDCVhLTB5of4kbFrJWh129EK/ZYmXriw21vnuFshI5aKSA63
	bctmedJvPOk/7acRSHr55A4ygEmQfR0CeRDk1b1cbZKrhusy/UOglhU/TRYKsrNanAXig7xfjOHNw
	P3sdTpc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjgU-0004lF-MP; Thu, 25 Jul 2019 19:45:50 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjfz-0004UG-7e
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:45:20 +0000
Received: by mail-ot1-f66.google.com with SMTP id z23so24548943ote.13
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YM6khcozeX5HCI3TLwGme6MoZN6oKGjknBQrsf5/NIs=;
 b=KceoYQTqGIUQiifsqo5kte3KSnOLnpzD4UssRE7Ax4ZFwd/KSPmveC9RfH2NmhNvkP
 st7GreghkZEk5500bABClOlAG3Li0OFakr22yns8zFzzHCq2OxO84gmcCOriukxTiv6l
 IG49X7tUfam7ODKqJa266Iq5anqFrwVAFzxHdV9U5rLKf4t/qBc6zfn/dhYmGia6LpQ1
 7luXOsaC5/dAHbRwWpyXheFZH70CFu0t/OvhCvszCgGHBgEHnSNTojHQyyxZwbYsSYBE
 0Vb7Za9ellg9nt0JgXH+zGsnvrh/wc8N9X59VLV4IjHWpT/QJDfyEOF2HadN9Qpw8FSn
 0H6A==
X-Gm-Message-State: APjAAAXyVQNzaUaAaMBcmApdh1NhhWZ6pvsa2T2j+NKeGAKSGdfkv9wG
 XodOkYwWT9P51qZNUj2sUkU=
X-Google-Smtp-Source: APXvYqztMRLMzXcB5HNvGbVqaTvfVch+4p86/tSF9VTNiZRY+RU1oA8E47opbCMO3jKmoCOODsTS7g==
X-Received: by 2002:a05:6830:2148:: with SMTP id
 r8mr60886138otd.179.1564083918204; 
 Thu, 25 Jul 2019 12:45:18 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id x5sm17395205otb.6.2019.07.25.12.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:45:17 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
 <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
 <20190725193415.GA12117@kroah.com>
 <966fa988-de56-effe-dd52-3515ee83629c@grimberg.me>
 <20190725194312.GA13090@kroah.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <89fb0e7e-eccd-5db5-00c1-d0b90c85270f@grimberg.me>
Date: Thu, 25 Jul 2019 12:45:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725194312.GA13090@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124519_331509_9416A3C2 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Keith Busch <kbusch@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> So, as was kind of alluded to in another part of the thread, what are
>>> you doing about permissions?  It seems that any user/group permissions
>>> are out the window when you have the kernel itself do the opening of the
>>> char device, right?  Why is that ok?  You can pass it _any_ character
>>> device node and away it goes?  What if you give it a "wrong" one?  Char
>>> devices are very different from block devices this way.
>>
>> We could condition any configfs operation on capable(CAP_NET_ADMIN) to
>> close that hole for now..
> 
> Why that specific permission?

Meant CAP_SYS_ADMIN

> And what about the "pass any random char device name" issue?  What
> happens if you pass /dev/random/ as the string?

What is the difference if the application is opening the device if
it has the wrong path?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
