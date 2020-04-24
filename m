Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CA11B7E95
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 21:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RKazsEShhubJiR+4Xzz6oAmkjTwQ9FJ8tJHCeVPQ4ec=; b=HjNLMyt++sWzv7sEkwfhqgxYM
	J4WjhnmmGHTjTXYNONLHK2oc+RvbV6EV1oZeUGpVKOuv8PuFEAHqw1hY0HiegrP0YS2QqWjF4GCFE
	xnm1bL0ARWNNJRi/F1YSfnK3fPHYDdp3b1XTdiaGcn+8Ma6tm0g5pU0VqU92AVatHEvl/9iYgCvBY
	2oRS3S6vOL73BZf6TCw3M/nuTr4gfB3NHwQGZlzfIdaaTnzrw+gUZOBJPswD6KOGIki5TOlRnpkJx
	PiJPQYbEgj3W/6R2opznvs2fxglSTrvWhuD32olY28ju4mcJQChisnNpelmDphAPaBh+LpGHjWuA+
	rhXA5YJSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3gr-0007Bl-Nk; Fri, 24 Apr 2020 19:08:45 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3gn-0007AT-Ht
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 19:08:43 +0000
Received: by mail-wm1-f66.google.com with SMTP id k12so3241699wmj.3
 for <linux-nvme@lists.infradead.org>; Fri, 24 Apr 2020 12:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GYnrH1MNo3HsEEWxJg/Ah3ogWMtIzSMbK1gyMx1x6T8=;
 b=ZTEuE80bmbETqXEntKkb0jArcbq0EKhCdGqgVDaWAd+X8hxlcd+ruXsPzgtT7vo4A/
 t0GDvMb0tyXIOOMqUndUcRd4pcepcJDYZNU3junKA3gxr1Dtw6OujtzVLVlrcEzArxuW
 Ixm+FPYOCYGhhjowFr+G9EeB2Ysg+GzF7Eg8p/MEJ4s4iyWnxWXdcROe/DXnJ4l22qXO
 8THrj7GPR0ywwkfqXSFZmNxkpLlXNpW72KilFfFOwGD2JxTWIA7lP9mn8MaLqgMVLIiO
 2W1K5Z5q4BLHgM9NDBS+gA5RGFtCWrlxNEe4W0xaMzZ7nUNFf72lrJmkuxZhR6SG6D5c
 xplg==
X-Gm-Message-State: AGi0PubjlfGP/uwpK04+vdm8+VGgTid9aB4EVPzru3AVJnuj43E24wuB
 Im7/WFo6N3qnqFMghKvwaPcpNqFV
X-Google-Smtp-Source: APiQypKBFJgVcg0+YoKTgPwTXl7lv9IcjylAa1xf/oDzm9Z1WmJ0j8x6YxPjsXSy8ZIsE3eYBxvu7w==
X-Received: by 2002:a05:600c:2dcf:: with SMTP id
 e15mr12373779wmh.171.1587755318758; 
 Fri, 24 Apr 2020 12:08:38 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:1172:61e0:261c:f548?
 ([2601:647:4802:9070:1172:61e0:261c:f548])
 by smtp.gmail.com with ESMTPSA id z16sm10137883wrl.0.2020.04.24.12.08.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 12:08:38 -0700 (PDT)
Subject: Re: [PATCH V3 0/7] nvmet: add target ns revalidate support
To: Christoph Hellwig <hch@lst.de>
References: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
 <20200422081936.GA25035@lst.de>
 <BYAPR04MB4965850E7D094ED44D1C360786D30@BYAPR04MB4965.namprd04.prod.outlook.com>
 <3f112b29-91cc-620c-6262-de3e322a29fc@grimberg.me>
 <20200424070502.GA24059@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d0822f66-e579-c698-0cd8-5f7726259bb7@grimberg.me>
Date: Fri, 24 Apr 2020 12:08:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200424070502.GA24059@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_120841_591183_337C5DC7 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> This is cumbersome in my mind... and the polling part is
>> kinda bothering me...
>>
>> I still think that having this sit in userspace is so much more
>> elegant really.
>>
>> A simple service that watches with inotify on the device_paths (files or
>> bdevs - which are also files) and trigger revalidate via configfs when
>> it gets an attrib event.
> 
> Eactly - plus udev watch for the block device KOBJ_CHANGE notifications.

udev isn't needed actually, blockdevs work just fine with inotify.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
