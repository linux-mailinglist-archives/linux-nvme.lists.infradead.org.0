Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1884075785
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wMWoXjB4xduKGFmdGt+gz7px00ebZUX8g++Yv3plDZs=; b=I1SiGDgsrCalDxneXZ83QgjSt
	yboV8KEV0HGo2b4nUPbLwt79IJmAaywy8PGff/lOeZYFQ5aPupSpFa4Sdrht53Xb5o1IpbGCd4KFc
	OoIYTukJWZ8/qQNV3H9mRK0zAub/Hdj7JUrYkyN2706JcZid3fMOsOR4k0ENtbOq7Vh4BDssO9Gip
	R2Evrbo592QHh9wQb8oIHSrou+mA07A8J1WxQ1qzmbRzcZ9oNFk4u8UN4B/pt0LB2om/ZKNBzEjyQ
	dA1ztRV9ANc7Sg8R6p1uORQJ37JxivDguzqUR9+3gGWRPBrE3sauEGyD7ufWfQMZPyEsG4UFD1/X1
	OocPG+PoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqj10-0001af-4Y; Thu, 25 Jul 2019 19:02:58 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqj0s-0001Zx-0u
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:02:51 +0000
Received: by mail-oi1-f193.google.com with SMTP id q4so9277600oij.3
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y/lTIw6bVEla4w+tYy+il+kwWC5SN/IC6++JTH0QKCo=;
 b=qMN8lz3zOIag1SjSmEjWHSSCdYsJ+PPl13EbDLkoW24+7vA9WUm3tfaX/0Fuo/6Vcs
 +AGwnVsWgcKHkokq9EmRGHkjGYypiqrUiDhUwDERwqlCfjm/YY6qN5d59/nmSo6nPyRB
 R4EYKrSD5LMtERbOG7290B7JZkOhE7oTHZG6veiJtzNyjVYK82hEvw58e2zmURWx/jTX
 WJlI86+zUcB1bHJwh5RyavkD9vaotkrgQHp2f7LvEm4oEwIW9/YzWEXdk/8vTmYDq14y
 WNU0z4I45XiLlqv2B0oofpcbfUAkZ2WWlN6OTRIzwXesmJ4ZDCPARW2rvtZrwVzxAU3F
 8zJw==
X-Gm-Message-State: APjAAAXYlOrZQL6bD0fvBaCDvVdyqzUau/hDRBreaRqwsehfLUm7qitf
 MkKhoepf0xnwfmra+RwrZjAZ8/ZW
X-Google-Smtp-Source: APXvYqzIpG+WlfbxIbSb9LlcTd3JD9DVuRkzugImR9DbDnonCa38Ce1KoYRVxInrHY006f71VNok+g==
X-Received: by 2002:aca:90d:: with SMTP id 13mr46807463oij.126.1564081368153; 
 Thu, 25 Jul 2019 12:02:48 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id p2sm16744895otl.59.2019.07.25.12.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 12:02:47 -0700 (PDT)
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
To: Logan Gunthorpe <logang@deltatee.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
Date: Thu, 25 Jul 2019 12:02:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_120250_068111_436A8AE1 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> Why do you have a "string" within the kernel and are not using the
>>>> normal open() call from userspace on the character device node on the
>>>> filesystem in your namespace/mount/whatever?
>>>
>>> NVMe-OF is configured using configfs. The target is specified by the
>>> user writing a path to a configfs attribute. This is the way it works
>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>
>> Why isn't a fd being passed in there instead of a random string?
> 
> I wouldn't know the answer to this but I assume because once we decided
> to use configfs, there was no way for the user to pass the kernel an fd.

That's definitely not changing. But this is not different than how we
use the block device or file configuration, this just happen to need the
nvme controller chardev now to issue I/O.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
