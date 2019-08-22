Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA8899D48
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 19:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xd7ZUYJV7fQiDGNn1HcADM3n2J/RP0ev0dGKnYgh6OE=; b=iuPwzTLjihk8bNZMO8e5fOmAd
	ap5maaa5YXf9XlG/Mjj5uNkud5CFW3mPYLbMAmAImhWQVRcLtAxzjsdoq2tXxbGiFgnEXdzhwtvqz
	v6rWY6P6B0j5n0kyymq5A+yHNYIsvpYM+Zn+nSvgmKWzR0DmRKBk+h0i682oKzsMLdnZgFyuLNTWn
	GuWJmrMgIhtgKZs2aFUq4D7Kwv8w7L1kvDHPNWmzijkqCQQCpHoAxIOnbs0dIHurZ0WKjmo6GER/l
	JYVoT3HUmOqdRX8DGSAVBCxNzd5CbU4ZbLBdKXV79H2fBC9Bkkav73vwtc6SC93fbNJz5sBRKEh1A
	qHRzp12yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0r5O-00060t-Go; Thu, 22 Aug 2019 17:41:22 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0r5E-0005zv-RK
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 17:41:14 +0000
Received: by mail-oi1-f195.google.com with SMTP id t24so4959071oij.13
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 10:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S3Wtmx63qYO2RYwlc+u7gYjYEryNsm6UT+kYuRsp+wI=;
 b=ovALmcPzxr1FCMM+n70dbPGEf1TEybcKci/athuDB2zBBQlhHTBmhmCEPf7clNvPQd
 Cf6wuL2Yr+KJhaaA+qmi4XBP9lf2/HrmN0yDu9v/35+eEMD6oebezBm6Yc+pcsaL8y5W
 M/WrD4JbJpUaNpm2/a1AegYWeKELdRceh8X0mST8w+2YDTjVa8xi/zZNAW68/oDHd8xB
 TqBgTkXeZjSNrZGKBKv3f0DhONv10Vz13HmPLGB/DuHFeWTnOrdwuPgXW4EnGYlqWbdO
 c4uW08vQOVoYox8ANg41G83NrQBDiDa+OcGmRAQLfd63nQOEhAl6npdHoqZ2rs9OUeqF
 Kpog==
X-Gm-Message-State: APjAAAWjizn2e46QrhzkC0tAs8cwu0TOYGV1dY9Cq0K4zza0pT+D5KPV
 UBUwQYvGI5RKOWp2m153X6U=
X-Google-Smtp-Source: APXvYqxXzyiGzvP9QOEziqdHlRZkxskbjNq0zGJS3yjldmavVtqqk7S7wFueDS6GCxtSQweXW/XKyg==
X-Received: by 2002:aca:3887:: with SMTP id f129mr224476oia.108.1566495671970; 
 Thu, 22 Aug 2019 10:41:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o26sm71264otl.34.2019.08.22.10.41.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 10:41:11 -0700 (PDT)
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
To: Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
 <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
 <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
 <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
 <b0921c72-93f1-f67a-c4b3-31baeb1c39cb@grimberg.me>
 <b352c7f1-2629-e72f-9c85-785e0cf7c2c1@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <24e2ddd0-4b2a-8092-cf91-df8c0fb482e5@grimberg.me>
Date: Thu, 22 Aug 2019 10:41:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b352c7f1-2629-e72f-9c85-785e0cf7c2c1@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104112_882220_41102430 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> I don't understand why we don't limit a regular ctrl to single access 
>>> and we do it for the PT ctrl.
>>>
>>> I guess the block layer helps to sync between multiple access in 
>>> parallel but we can do it as well.
>>>
>>> Also, let's say you limit the access to this subsystem to 1 user, the 
>>> bdev is still accessibly for local user and also you can create a 
>>> different subsystem that will use this device (PT and non-PT ctrl).
>>>
>>> Sagi,
>>>
>>> can you explain the trouble you meant and how this limitation solve it ?
>>
>> Its different to emulate the controller with all its admin
>> commands vs. passing it through to the nvme device.. (think of format 
>> nvm)
>>
>>
>>
> we don't need to support format command for PT ctrl as we don't support 
> other commands such create_sq/cq.

That is just an example, basically every command that we are not aware
of we simply passthru to the drive without knowing the implications
on a multi-host environment..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
