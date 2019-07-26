Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E458774CF
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 01:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OQ1HNs8wQAsm1GeaMVTVSwTYgb7Ay2jfbbmWXmzM8C8=; b=mPpIlq8/J6my/yijIfzhTGtHG
	OTHeBKsbRDirdHGdrNRnDq5LqA002+JioetTyHpcY4aiL2P9IX7yQjHbMXz1W/E4YDS5gweaQ80xL
	GNGWtqylwalUpWXXOX1C5o3sg3AzMMLjBAYczSLqvk67nNRy8Krpb5qRf/5a8om7PS8q1DWB5R5Us
	L8sbhUa2KhTM0X2KNJD0JZ+EOf/i2SNA3hkG+aW8VIssxuk8oXD7r+boPkAkcyQZEdgvDNhDX7lig
	N9IFoXN6f4upvjpUeDdSkPulrmwrBViV2UokKxKHDtaXezd1I6auaJY7HHtY6WP5JGz28dBAD0l0F
	XfnHpxgrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr9PR-0008TX-9f; Fri, 26 Jul 2019 23:13:57 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr9PJ-0008Sf-Cy
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 23:13:51 +0000
Received: by mail-pl1-f196.google.com with SMTP id b3so25294180plr.4
 for <linux-nvme@lists.infradead.org>; Fri, 26 Jul 2019 16:13:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nOIJ+UNszzboHwkoBi08mG0qYHVPcqJMO4vZonVIFD4=;
 b=DOSx/CYAiKt9TVlmQ0V65TkD3X4oGV3fJHGFmuSY/ay7qaj4O/V18KRu/NsEA0wYtB
 JFEQK48gieYXHwyyojOLQQLoVfWrfeH2Uyt1e9Z+5BWDb62OYy16py8HpiNdncS2gK/x
 sgj/EBzdL9odaQluiQg9MTl5EvBZIZlNYj+18pb43CwCgn2fPKyrLXcbiTn7UcY9FuA8
 msdQSefmK1PIyEMVpSNLj5EIRBT4U+5wdKRmDZ91N0qWaajSF6UrRac2T4e3qXJp0a3L
 YmtIkiM3Q0ZQuBIF+jHsgQXhTIBI7idmpak0EjXOtsaIn9IOxjB0jDhnl6DtTq6mW4vD
 gFKQ==
X-Gm-Message-State: APjAAAWUZ+fJqTLmQ22GkoOwBHjBoLhUa4LcTLo/qnBiF7lBobpyyI+3
 beOd0P/mBXZtNFqZBuJV5NM=
X-Google-Smtp-Source: APXvYqz1ru6FF8t/nDaRN9S4VT6MtDjXT/j3xWKBywz4aPMGhk01+iNL2ydwnuIsT6ix3iTKeJMcMg==
X-Received: by 2002:a17:902:9a49:: with SMTP id
 x9mr99490023plv.282.1564182828344; 
 Fri, 26 Jul 2019 16:13:48 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:3044:7ea3:7e19:4d2c?
 ([2601:647:4800:973f:3044:7ea3:7e19:4d2c])
 by smtp.gmail.com with ESMTPSA id i9sm53611928pgo.46.2019.07.26.16.13.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 16:13:47 -0700 (PDT)
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
To: Logan Gunthorpe <logang@deltatee.com>, Hannes Reinecke <hare@suse.de>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190725172335.6825-1-logang@deltatee.com>
 <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
 <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
 <175fa142-4815-ee48-82a4-18eb411db1ae@grimberg.me>
 <76f617b9-1137-48b6-f10d-bfb1be2301df@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e166c392-1548-f0bb-02bc-ced3dd85f301@grimberg.me>
Date: Fri, 26 Jul 2019 16:13:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <76f617b9-1137-48b6-f10d-bfb1be2301df@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_161349_443833_99BAD129 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Why? if nvmet is capable, why shouldn't we support it?
> 
> I'm saying that passthru is exporting a specific controller and submits
> commands (both admin and IO) straight to the nvme_ctrl's queues. It's
> not exporting an nvme_subsys and I think it would be troublesome to do
> so; for example, if the target receives an admin command which ctrl of
> the subsystem should it send it to?

Its the same controller in the backend, what is the difference from
which fabrics controller the admin command came from?

> There's also no userspace handle for
> a given subsystem we'd maybe have to use the subsysnqn.

Umm, not sure I understand what you mean.

>>> The one case that I think makes sense to me, but I don't know how if we
>>> can handle, is if the user had a couple multipath enabled controllers
>>> with the same subsynqn
>>
>> That is usually the case, there is no multipathing defined across NVM
>> subsystems (at least for now).
>>
>>> and wanted to passthru all of them to another
>>> system and use multipath on the host with both controllers. This would
>>> require having multiple target subsystems with the same name which I
>>> don't think will work too well.
>>
>> Don't understand why this is the case?
>>
>> AFAICT, all nvmet needs to do is:
>> 1. override cimc
>> 2. allow allocating multiple controllers to the pt ctrl as long as the
>> hostnqn match.
>> 3. answer all the ana stuff.
> 
> But with this scheme the host will only see one controller and then the
> target would have to make decisions on which ctrl to send any commands
> to. Maybe it could be done for I/O but I don't see how it could be done
> correctly for admin commands.

I haven't thought this through so its very possible that I'm missing
something, but why can't the host see multiple controllers if it has
more than one path to the target?

What specific admin commands are you concerned about? What exactly
would clash?

> And from the hosts perspective, having cimc set doesn't help anything
> because we've limited the passthru code to only accept one connection
> from one host so the host can only actually have one route to this
> controller.

And I'm suggesting to allow more than a single controller given that all
controller allocations match a single hostnqn. It wouldn't make sense to
expose this controller to multiple hosts (although that might be doable
but but definitely requires non-trivial infrastructure around it).

Look, when it comes to fabrics, multipath is a fundamental piece of the
puzzle. Not supporting multipathing significantly diminishes the value
of this in my mind (assuming this answers a real-world use-case).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
