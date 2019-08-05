Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3228825DF
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 22:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rKCzPXaV7fRbTP9PR874iec3BTn+opg+fYce+IiYiZ0=; b=GlqPYoJw04RmETX5WWIsIToR6
	HMA65x1e6xpSCTTT66CsPRfSifaAfGcLZ73cBr4QEh61/yqi93zvCQ8QUynkNTjJVsrnFS9qhEkRA
	S50tjVTIQvEAedlf1kmFxgSrbJrgfJ0pon7tCBCOxWoGF8xzosOAPz2XcbVWbe71IXA7RXztbbbsy
	IzAxAg7wd8MrEc0RwGNq9WiuEYYahVZvNKKrZllOv8bejKkzDk70Uz5wWAwedm8Z0vMxiFPAkaz1+
	655N7iXqkLaBV8MzGav/DeKgkN+vivEtTO3BLJ/L9ciB8vKV5EqgmV1syz2opStIaVtV1FrwM6uRJ
	01PbQHyfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hujGT-0004vu-Ft; Mon, 05 Aug 2019 20:07:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hujGN-0004vS-0Q
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 20:07:24 +0000
Received: by mail-ot1-f66.google.com with SMTP id x21so21367032otq.12
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 13:07:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I+/FLS8eqxb1UNBY39cu1xBfCi8bcMalBd0zD3RfHPI=;
 b=MN+d5/OdYrcSh3V19ixUCB6q+UezdfQAYJWJerJVbsgCW4rwakoE3kDJ6B7o3Rayvf
 SyU2KQX27hPUY/ixUIB37/Y8vSmx9M6Rnk7M3/iLSaGvo1ybfYnHtt1VhgylErqCgbuO
 3cDFvea2M+OlPzIhPuM3b5h62DX+RLzYWHd1SukBN/fA21SaGysW+WmF6qzhP4DPF5VQ
 opYb8DmewnuQbnmE4YoCt80MgFk0XSZRCIoAtLmmyGEuQkJqigWGuOS/YwRLWNjVO6rS
 nDDqAdWrJOvHY04d2VvwGICEJ6kQ4wcCZUDTisrPGQJlQNg1WUYnuOmt8gzXPolAjzpn
 rFZQ==
X-Gm-Message-State: APjAAAXK33d6hoaMGSbGaPmydgM/ihuOGfLTDhyNAAwlxvJoe0f6afnH
 kgHbXdcgWlwr48amLgzdsX4=
X-Google-Smtp-Source: APXvYqwsmaCa+TUefSLRaH3hqrkW4xgRLkwTOxsVlDP7lmha0tM7uItflkWu4DF0H3l34X//9d2PtQ==
X-Received: by 2002:a9d:5a82:: with SMTP id w2mr110989797oth.240.1565035641798; 
 Mon, 05 Aug 2019 13:07:21 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id k10sm28318977otn.58.2019.08.05.13.07.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 13:07:21 -0700 (PDT)
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
From: Sagi Grimberg <sagi@grimberg.me>
To: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
 <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
 <caa04d02-05a0-dd1f-2072-df41a21f2aa8@fb.com>
 <f34af208-2707-f326-0451-354a8b482586@grimberg.me>
Message-ID: <de65f6f8-afb5-ce54-eb8a-b04b2e59628b@grimberg.me>
Date: Mon, 5 Aug 2019 13:07:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f34af208-2707-f326-0451-354a8b482586@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_130723_052486_F47CB2CA 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Paul Pawlowski <paul@mrarm.io>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> Ping ? I had another look today and I don't feel like mucking around
>>>>> with all the AQ size logic, AEN magic tag etc... just for that sake of
>>>>> that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
>>>>> to make much of a difference in practice anyway.
>>>>>
>>>>> But if you feel strongly about it, then I'll implement the "proper" 
>>>>> way
>>>>> sometimes this week, adding a way to shrink the AQ down to something
>>>>> like 3 (one admin request, one async event (AEN), and the empty slot)
>>>>> by making a bunch of the constants involved variables instead.
>>>>
>>>> I don't feel too strongly about it. I think your patch is fine, so
>>>>
>>>> Acked-by: Keith Busch <keith.busch@intel.com>
>>>
>>> Should we pick this up for 5.3-rc?
>>
>> No, it's not a regression fix. Queue it up for 5.4 instead.
> 
> OK, will queue it up for nvme-5.4

Doesn't apply..

Ben, can you please respin a patch that applies on nvme-5.4?

http://git.infradead.org/nvme.git/shortlog/refs/heads/nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
