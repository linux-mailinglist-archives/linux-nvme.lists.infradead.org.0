Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48A075DD3
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 06:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vb02PE8YcDyHKwl5K8b/mwkkpZQ/u/kEvfIeprvRUeQ=; b=nGf+BlNz/V+k9AJ8CxRevNE1G
	qhnoj9DHNdjsq28t4oyBEQVz8DonUW8/9C8UU+vTtppTMeJyy3wiF+7JNJTAS/M1bQPLKCXjq64ll
	drlJcFUa6v2MlPmFDymUA5Y0hE1rJvywsX6DXqrCr5Em94+8RKpf8hvOpTqR6Gsxz6rWtHIjPiCiN
	raZR4kIogrV4d+0U8o5bvywAUXmo7iaOkNiW0vclBjG/OD5SN6Rmizspv3WtT77DGDCzh7kkvFyEI
	RFE6O4cf59JiWuvv1wUQ4WEARtZK1nhcRi/Xjd325Xq5BXyIW/9co6Z5uLX7IkuoDwkAEgyqFmaJJ
	FPaU0z89A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqrrj-0005CH-BE; Fri, 26 Jul 2019 04:30:00 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqrrT-0005Bk-RC
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 04:29:45 +0000
Received: by mail-pl1-f194.google.com with SMTP id t14so24216874plr.11
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 21:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rIhtYBAd0ZZLe9n3b3Z0c0rQPCJrZwUCsuW99j3TPW0=;
 b=d+eazXaJ2IEcr1GyxddaMpNKqt/r21Q4aVYYKojKWE1XeZJt7XBpjEfFaQS43iDyZv
 qVL3Zeaoy7BeSPmTSAUlzw32sXtfgEtUN/nkmPj7S6i9536V5741Ub0WGy/KoZ9WsAxa
 kxt+nF6RcegfIAvVLnJ7K3m500+fOZ4fz6F90G+bHTmHeL07aB+Oyl9qk4JzL6WE1ltV
 VVZsYNGM/stOJY0j0hIPa0F9BiS+FS8+UQsQTert/hEPkVpLCaCeQYJ9hwBZVcOP+OF8
 loDciVLix3hLNatlkdHX7lwPAa89rLFdSUsK0yHEv3ZH6BgrMNM4rx349jGwnAgdOFFL
 3HUg==
X-Gm-Message-State: APjAAAWHrMenwXumCPlI6rugBKll2y7mlv1iYhc8DrsegIW5Rh4EMgA7
 uCj5aq23l2SBS/ce8ADFQLE=
X-Google-Smtp-Source: APXvYqy6Y8TmjZHX0TeLB6uThXges+cpfWm4YHO0/c1/D3r6g01LStF4IJjmP89egICijdne4RtXQg==
X-Received: by 2002:a17:902:3081:: with SMTP id
 v1mr96243822plb.169.1564115382626; 
 Thu, 25 Jul 2019 21:29:42 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:9c9c:d9b0:80ed:96d1?
 ([2601:647:4800:973f:9c9c:d9b0:80ed:96d1])
 by smtp.gmail.com with ESMTPSA id l44sm45186630pje.29.2019.07.25.21.29.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 21:29:41 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Al Viro <viro@zeniv.linux.org.uk>, Logan Gunthorpe <logang@deltatee.com>
References: <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
 <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
 <20190725235502.GJ1131@ZenIV.linux.org.uk>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7f48a40c-6e0f-2545-a939-45fc10862dfd@grimberg.me>
Date: Thu, 25 Jul 2019 21:29:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725235502.GJ1131@ZenIV.linux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_212943_878810_CF935AA5 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: linux-block@vger.kernel.org,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>>>> NVMe-OF is configured using configfs. The target is specified by the
>>>>>>> user writing a path to a configfs attribute. This is the way it works
>>>>>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>>>>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>>>>>
>>>>>> Why isn't a fd being passed in there instead of a random string?
>>>>>
>>>>> I suppose we could echo a string of the file descriptor number there,
>>>>> and look up the fd in the process' file descriptor table ...
>>>>
>>>> Assuming that there is a open handle somewhere out there...
>>
>> Yes, that would be a step backwards from an interface. The user would
>> then need a special process to open the fd and pass it through configfs.
>> They couldn't just do it with basic bash commands.
> 
> First of all, they can, but... WTF not have filp_open() done right there?
> Yes, by name.  With permission checks done.  And pick your object from the
> sodding struct file you'll get.
> 
> What's the problem?  Why do you need cdev lookups, etc., when you are
> dealing with files under your full control?  Just open them and use
> ->private_data or whatever you set in ->open() to access the damn thing.
> All there is to it...
Oh this is so much simpler. There is really no point in using anything
else. Just need to remember to compare f->f_op to what we expect to make
sure that it is indeed the same device class.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
