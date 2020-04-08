Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20D41A1BA3
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Apr 2020 07:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v85zN6xrLLK53NW9d/FYP2KlxNKoRZY3D2v5vBG/byU=; b=sthTSq7027iQXNurtj7kQMp9y
	NY5l4/jAAiH6ixHnXywyLMzzFf7HTaaDljcf4pdtD11uN6OkaoWuZa9HJHlgLgRejxrDI017pjMGz
	YghkKI+Xeuc8LDNKJ+YrZvl6U+SxxrOYh/HpkTUc36EMfcQmCIQo7k+oqwzlntJelWKnDRJs9PD8j
	ctlynmyf6U3vu9ffpSkxSTTzCbVINPcSTGYzXGxSiQP0w99c9zCCYfFz0isUYN9NcnlrNLbVU35eE
	eCAC4Gepz8Go6jjqDx7uvnkVDS0naKR6PsWBZwekiXdIjNVCoEB3rIW/4TZxmMNQAQsPtEDGYZ7Un
	h882mIdBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM3gO-0008Fw-0x; Wed, 08 Apr 2020 05:55:28 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM3gJ-0008FT-EN
 for linux-nvme@lists.infradead.org; Wed, 08 Apr 2020 05:55:24 +0000
Received: by mail-pf1-f193.google.com with SMTP id r14so1910991pfl.12
 for <linux-nvme@lists.infradead.org>; Tue, 07 Apr 2020 22:55:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bz0IuQ1nWg5HCB8OzRfyXvo5j9OsCDWBkIoYVvvmz4o=;
 b=S1aStS9KTh96o3REtjmA7SgdYb+IPEoFVPQfacB9ijRC+9Tx1TnohoYANEvi54Nqna
 rlP+mneqnI3goaoMpxjvyl+oVwWNLYmjONxfujb5NFn9z4gJEEwMu2iqfHdo6Rpb2ITU
 bEQwH3tkMpg7Fr2P0+CKRBfxlK548PDkxbXmNxLc9+GKhpDPU1WLJlIE6wawLezlWKk0
 Gg0ZoUNv9F/nfvMc+h90Lj8yYpIgfKOpZudhgQB5v/pqo6YBEQf87GfS76DHNWnmr/PL
 gGIFb5hTgctnNb8TXDugkp2V15ql7RUWdknAOccIKGhkT/4gtO9KmqpquJa+E4R++rls
 FS2w==
X-Gm-Message-State: AGi0PualLy3n6vhhVsDBqSGwlCDhRWtA/wnZPTvaYEJmAeCqrc9sYdjI
 oTV1QQDK/kxmB3YmfEAhj1EQYE73
X-Google-Smtp-Source: APiQypLIIBdRoL6YD7r8CBtvfRiSaP2HFt2E7k/PSAIupgNKxmqiVwXvCE7Zw9a2Imk4afSve1SKxQ==
X-Received: by 2002:a62:a10f:: with SMTP id b15mr323920pff.192.1586325322649; 
 Tue, 07 Apr 2020 22:55:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:8f:36a3:3e4a:9e?
 ([2601:647:4802:9070:8f:36a3:3e4a:9e])
 by smtp.gmail.com with ESMTPSA id l9sm3285640pjl.20.2020.04.07.22.55.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 22:55:21 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] nvmet: add per ns thread to generate AEN
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
References: <20200408041633.20632-1-chaitanya.kulkarni@wdc.com>
 <20200408041633.20632-3-chaitanya.kulkarni@wdc.com>
 <5e54afaa-7de5-a89e-5740-88df15c52bba@grimberg.me>
 <SN6PR04MB4973BC935AE3BFD4CE874D9B86C00@SN6PR04MB4973.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f3f226be-0bda-5d5d-69b3-a0f3478ce51e@grimberg.me>
Date: Tue, 7 Apr 2020 22:55:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB4973BC935AE3BFD4CE874D9B86C00@SN6PR04MB4973.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_225523_482660_751AC28E 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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
Cc: "ailiop@suse.com" <ailiop@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> On 4/7/20 9:16 PM, Chaitanya Kulkarni wrote:
>>> The change of size detection on the target should generate the AEN to
>>> the host. Right now there is no mechanism that allows us to add
>>> callbacks for the block and file backend so that we will get the
>>> notification for change of the size for block device and file backend.
>>> This patch adds a simple per namespace thread that checks for the size
>>> change and generates AEN when needed.
>> kthread? per ns?! I really don't think this is the way to go Chaitanya..
> 
> I hacked it up quickly, may be we can use a global kthread which does period
> 
> susbsys and ns scan, but AEN needs to be issued to the host either way.

Seems like such an overkill to dedicate a full kthread for this...

But maybe it won't be such a strange thing to dedicate a maintenance
thread that would do stuff like this. My main issue with his is that it
is polling which to me seems like a band-aid really...

>> I'd suggest to expose a revalidate configfs attribute and have nvmetcli
>> install a udev rule that triggers a write to this attribute. Balbir
>> already got the udev notification for disk resize (see
>> set_capacity_revalidate_and_notify).
> 
> Okay we can do that. So you are saying generate the AEN from configs
> attribute.

Yes.. that won't work for file backed namespaces though...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
