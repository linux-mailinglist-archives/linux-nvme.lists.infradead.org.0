Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBBC7580E
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CH2dLWx2oGlMk7C6VK8QS5vOFhw6GR/mN4EQ9I0f2/U=; b=fizDKtWbUVJdLCFYBfpWzguRc
	iA3ysdZcwCABSjMrtw2H4hxZ1Uutfx/E5XOlD9SsAJY/MWg7sUKpzLGvGScj6qv9oB8J1HiG+nYl1
	gGNWHHt9IFAWIYeO8kOpMPPecZrVhp7jzLi8toK0SG5KkPVeKIKCTb5K3tBmziKZiMmn5pXASbFeH
	NVPL+FmIWuDLVdsicRWbmbSKDkDzTSl9usysAbWq//1CM6TCTSRKaunnbHoPMbUDhqO7CFIDn05yy
	VV0rgocK4wo8iyqRLrvF5LBSltzXnOzFABF9qf6ELWjH0SQnJP8Qz0iTbZ+VG6Kv8F6/Xa+qFz+1U
	LQnbOd6ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjYN-00083O-N2; Thu, 25 Jul 2019 19:37:27 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjYD-00082j-NX
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:37:18 +0000
Received: by mail-ot1-f68.google.com with SMTP id l15so52857874otn.9
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bRrEPEVgexSO2qJ+xF9O3stEIjJPqaaPVCD0SdqrQlc=;
 b=cqa6CoJT1//K4t5tQwGukWDHf27B3BsbvDFz07rCy85CUSral0N5l9ZGGl+LlaWeVz
 fAfOvsR3ccliu2YsbvqKXc0ytwXngQGj0NT22MIpF4yCUhcvi857K8DpL/Rgu+kyNV+9
 PNp3UP3eMQlVZLZbcdmDR7Byg+G4l3FyyHnpDf02nHnRtF7D1AnNDQ6WSJlz3q9sIId8
 iu3EZVEpnE+u6IQeNujJGr0stRssGhL0PZS4csms+MVzpwp77jOwuP21ZPNxvYMBuKNh
 sclnA0jbEpWE2oOz2ilLtPnYyjnXwHaqmaovDT79BpUJXDRS1nAjDHK7Eb3lkIeXE5CV
 DfSg==
X-Gm-Message-State: APjAAAXPzLqFoAiUpvrSQnGFHyOcFGvqshZyFSiEsKK/Cu1CySeKIJt4
 dar89h5bPGHYLFoRAMOvuu8=
X-Google-Smtp-Source: APXvYqz9bV6QeYb15MSNKNxP2VfnI+u9Ca2BFAT2KloajK/flSPNHX4CrsZFsKbSXnU3PDj2zYBIPQ==
X-Received: by 2002:a9d:7a4e:: with SMTP id z14mr40017650otm.258.1564083436737; 
 Thu, 25 Jul 2019 12:37:16 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id w22sm16304470otp.73.2019.07.25.12.37.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:37:16 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
 <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
 <20190725193415.GA12117@kroah.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <966fa988-de56-effe-dd52-3515ee83629c@grimberg.me>
Date: Thu, 25 Jul 2019 12:37:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725193415.GA12117@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123717_768756_5C7886C3 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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


>>>>>> Why do you have a "string" within the kernel and are not using the
>>>>>> normal open() call from userspace on the character device node on the
>>>>>> filesystem in your namespace/mount/whatever?
>>>>>
>>>>> NVMe-OF is configured using configfs. The target is specified by the
>>>>> user writing a path to a configfs attribute. This is the way it works
>>>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>>>
>>>> Why isn't a fd being passed in there instead of a random string?
>>>
>>> I wouldn't know the answer to this but I assume because once we decided
>>> to use configfs, there was no way for the user to pass the kernel an fd.
>>
>> That's definitely not changing. But this is not different than how we
>> use the block device or file configuration, this just happen to need the
>> nvme controller chardev now to issue I/O.
> 
> So, as was kind of alluded to in another part of the thread, what are
> you doing about permissions?  It seems that any user/group permissions
> are out the window when you have the kernel itself do the opening of the
> char device, right?  Why is that ok?  You can pass it _any_ character
> device node and away it goes?  What if you give it a "wrong" one?  Char
> devices are very different from block devices this way.

We could condition any configfs operation on capable(CAP_NET_ADMIN) to
close that hole for now..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
