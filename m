Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9FA99FAF
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 21:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3+D9zp30brjLrfDlq3pX54l8UZ6b3LnOKWGjyHdcd1c=; b=t2UKAz4glLZZYIhxQbAK9M7nl
	Ej4VvPlyHkMPkIIAbw8f7pAQ/8Ecm6+CVNiQLbQIlL3+RhF+x5lBkQBlG4ZBqXLqh7KZML/P3o4bY
	wUrQ2WmgbmibaIFA6zg6BzBSEH7CiZqU0h3d4qf+u9wYqUmTP2nOk+/k3Lz4wx8ese1vvXQWhoRZ3
	Zl+lC5uXRgNn4MbrKEzEq2XrB7fpUqXb0IlYu7htlOvI6KAJIv4MajPqR+dICaiYspytuxyNX9fa3
	DMGzQHo2LaDRoltUPeFVA0cmGJi7LtfUfAPCYyztZ1bFN6WerwZxJZht9NPUAy9UfOaEj6AEsKR4+
	UYlYCZUkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0san-0002x8-0s; Thu, 22 Aug 2019 19:17:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sad-0002wS-5m
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 19:17:44 +0000
Received: by mail-ot1-f68.google.com with SMTP id e12so6497058otp.10
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 12:17:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=24eP7T52+CYL2dNJV8R097RDf634lSS5yuSIePFHGwk=;
 b=YLG1HOjNT3XgHGo+tiVXo4YYssZwQtb0oF/MwX2ilwd/tprhRA1tDYY/ZZvAzmvrXU
 f+3czzaQi+6sAfviJ4nuALgR8qKERmqc2yxpZJuWOgi7F16k9OTj2nW5P9PvuqmzhBQA
 a5bnSz213jkI19wafV5YkUA43xDmwOJ0YwEXVU/wAdzqEsLFu+Hz3dwL0ey2Sz2r0vXq
 7+FcPvbWbApbJauYV1qP3/o+pta7G+x/gPH1GDBlwDyIhQmMSqNJYZ5bg5uJ8enp0oEB
 NYyn4rmXKF2Rz11z8Gi5dvKSL2uZ/sOaABMzJCQtgVrZ+Gz9o+yP8zQMwpBSNTRl3VIx
 lM+Q==
X-Gm-Message-State: APjAAAX5XuLUcwxE6K2jN/QFbukTFD7dJLQNwxTzR/dO2x7X3fEWLo8r
 iQHwqGVchQWjrpG9OSTutEw=
X-Google-Smtp-Source: APXvYqxop+1c9JiQDuqjxLlVpuweprhgD1ihezKlsMDwXHi6Dx3GUbjgB7f6MqabctH5Zf2GXdALrg==
X-Received: by 2002:a05:6830:1db2:: with SMTP id
 z18mr1087490oti.110.1566501462198; 
 Thu, 22 Aug 2019 12:17:42 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j6sm157680otq.16.2019.08.22.12.17.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 12:17:41 -0700 (PDT)
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
From: Sagi Grimberg <sagi@grimberg.me>
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
 <24e2ddd0-4b2a-8092-cf91-df8c0fb482e5@grimberg.me>
Message-ID: <e4430207-7def-8776-0289-0d58689dc0cd@grimberg.me>
Date: Thu, 22 Aug 2019 12:17:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <24e2ddd0-4b2a-8092-cf91-df8c0fb482e5@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_121743_221097_1E392E0A 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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


>>>> I don't understand why we don't limit a regular ctrl to single 
>>>> access and we do it for the PT ctrl.
>>>>
>>>> I guess the block layer helps to sync between multiple access in 
>>>> parallel but we can do it as well.
>>>>
>>>> Also, let's say you limit the access to this subsystem to 1 user, 
>>>> the bdev is still accessibly for local user and also you can create 
>>>> a different subsystem that will use this device (PT and non-PT ctrl).
>>>>
>>>> Sagi,
>>>>
>>>> can you explain the trouble you meant and how this limitation solve 
>>>> it ?
>>>
>>> Its different to emulate the controller with all its admin
>>> commands vs. passing it through to the nvme device.. (think of format 
>>> nvm)
>>>
>>>
>>>
>> we don't need to support format command for PT ctrl as we don't 
>> support other commands such create_sq/cq.
> 
> That is just an example, basically every command that we are not aware
> of we simply passthru to the drive without knowing the implications
> on a multi-host environment..

If we were to change the logic of nvmet_parse_passthru_admin_cmd to
have the default case do nvmet_parse_admin_cmd, and only have
the vendor-specific space opcodes do nvmet_passthru_execute_cmd
then I could not see at the moment how we can break a multi-host
export...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
