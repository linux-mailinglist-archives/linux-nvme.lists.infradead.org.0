Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588A91A16E1
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Apr 2020 22:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qT2fhANa9D8n4aW1eDuiH0pU3xML4R/+Q04tH48BHvw=; b=QAmG65mx2dGyt9uNnmwPRgRmo
	rhyiQiSeTQyU4V9rYtVWNCWsxnTr22JtcCVZfI0nv6gtJ9h38n2c8J/zRQNZTw0higlYc12JbUjjY
	kvESorbpuVaCCs/9oEzW9fr88ENIUUsVDCdfUKC8hFP04OTGYWaABhvGhFW4xEl1YdW8NUt53QuVC
	tpLWBV8ppaHvYzKpaWPJCidABISSbBho3pMe1sK6oQIjozezF+T1kWxB9/BAzhNqrV8j/MZCiLg6j
	+URMk8IhpMGjiBTmjSolZX5GGlovI+NPKqCVHhYp7tdayJT9+nwpbzmgsqI5DLlacLGkOw7Bzo5tx
	e5xEKTr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuyb-0003x4-11; Tue, 07 Apr 2020 20:37:41 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuyW-0003w7-Tv
 for linux-nvme@lists.infradead.org; Tue, 07 Apr 2020 20:37:38 +0000
Received: by mail-wr1-f44.google.com with SMTP id c15so5353495wro.11
 for <linux-nvme@lists.infradead.org>; Tue, 07 Apr 2020 13:37:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ONeyxRlprvxUT74lOePPfOeEtQcvdPUyPGRH0vuvtLY=;
 b=Zje3iMh9f+fNo9rkFz7ho4Gnip0tWVtXaPxqlpEaO3dC6Qs5ZYMz0Z2DblvrFgmShC
 RHu5hpVHYZl9asdG31LZyNbuk7oJR+VNJGPtY1u4eGRyXcVvawJaimOp6/Q3yd208zap
 PnFJlsjvhcxsZaVJPTRiBiBY8PUFpFFcItgxRpAe0BKyGAyQpaFKgF/wR94GVIPBCW1K
 rI0dULIeFNm09DT3tYVklqglNZB+mF2lXDRFHecjYL4ssO9E/a+/F0u5xV9sNj30EHU0
 QmZemfzYuxm+9VLEBvmb1Oys4Z1w6BThG+toHWrh+l4/to7c1xPA3LvFQBt88PYFf9XE
 rv2A==
X-Gm-Message-State: AGi0Pubm6nybKYyzOqJz9xfGQYXV0ZLQEIJJvpcmZmO3NHwXWY5uXeCV
 /9DMprynUXXFPaECy9smu6cZTs4g
X-Google-Smtp-Source: APiQypJPYEErceQ+aFZ6nm3IcqUaYd6j3lmtjv7SFJAxoWzQaMdfeVMFc0kPxPlxKAvOmMHNqPeNzw==
X-Received: by 2002:a5d:4305:: with SMTP id h5mr4387705wrq.69.1586291855169;
 Tue, 07 Apr 2020 13:37:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8f:36a3:3e4a:9e?
 ([2601:647:4802:9070:8f:36a3:3e4a:9e])
 by smtp.gmail.com with ESMTPSA id y7sm1723037wmb.43.2020.04.07.13.37.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 13:37:34 -0700 (PDT)
Subject: Re: [PATCHv2] nvme: define constants for identification values
To: Keith Busch <kbusch@kernel.org>
References: <20200403175346.1571822-1-kbusch@kernel.org>
 <20200404070437.GA14423@lst.de> <20200404170742.GA53042@C02WT3WMHTD6>
 <20200407172559.GA6876@lst.de>
 <bb8608c9-c523-c9d4-83fa-9c3fac627604@grimberg.me>
 <20200407181623.GA3843@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1df1433c-fb24-5719-f426-89b321e50b78@grimberg.me>
Date: Tue, 7 Apr 2020 13:37:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407181623.GA3843@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_133736_958965_73BAA9A2 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.44 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>>> Improve code readability by defining the specification's constants that
>>>>>> the driver is using when decoding identification payloads.
>>>>>>
>>>>>> Signed-off-by: Keith Busch <kbusch@kernel.org>
>>>>>
>>>>> I can't say I find this an improvement - the bit values allow you
>>>>> to jump straight to the spec, while the names need a translation
>>>>> (either to the actual bit or the spec name without underscores and co
>>>>> first).
>>>>
>>>> Named constants tell us what they are inline with the code that's
>>>> using it. You can make sense of the code just by reading the code,
>>>> no additional docs or code comments required.
>>>
>>> Sometimes they do, but especially for nvme they often don't.  Anyway,
>>> I'd like to hear from Sagi and/or Jens to see if we have more people
>>> who like this or don't instead of just us two having different
>>> preferences.
>>
>> Personally, I'm in Christoph's camp, especially when the names include
>> words like CMIC or NMIC etc... These are cryptic unless you are familiar
>> with the spec and the NVMe language. I often find it easier to have
>> the bits.
>>
>> But, I'm also often asked about constants and their meaning, so I'd be
>> in favor of adding some descriptive names. But if the point here is to
>> save the code reader a trip to the spec, then we should probably add
>> some documentation explaining some of the somewhat cryptic acronyms we
>> have in NVMe.
> 
> It's not just saving a trip to the spec. There's a benefit to naming
> things when browsing the code: you can cscope named constants easier
> grepping patterns to find all occurances.
> 
> The driver isn't so big that locating something is too difficult right
> now, so I'm not really concerned either way.

I'm fine with this change if it makes it more convenient for people.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
