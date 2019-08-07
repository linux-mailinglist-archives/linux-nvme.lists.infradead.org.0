Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6E5854C8
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 22:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P/VSwMPZOQepAc/ZaeXgZvs/4wozeBtAKAodZuPPrxs=; b=lHG5u+Mg5I6uL5DXqULMWK82A
	f7r+H6Wj5aKmgnzzFta94+aBPSdn1q5UjGY6w3Clv3gHXPushytUqJO5hccvsH1tbW5/K9MDX0jK0
	Ar/P3VPAxNh2nFfjAjQ3btayV+l0cMqQYrvLzsbRvrI4UP4xoMPWDg6ChEhFJMaGkAOrNxthWV1Ar
	H0IF+NANbTL7gVYSTCByfnkpffXe3tg3W9NP1rzzM1ojdhpcaZ+Y57qJKS+FggBPVEv4+fAQetxGW
	hh0vLhmo93Sml898s+Gadpia+piezYKp+qaRvoxYGku4Uxt3sVzEDbPtqd6ljKb90Tt8Rh3wAHWeB
	7oLJz5dtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSwG-0007uo-Dx; Wed, 07 Aug 2019 20:53:40 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSw8-0007uV-ID
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 20:53:33 +0000
Received: by mail-pl1-f193.google.com with SMTP id m9so42395524pls.8
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 13:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JizA9vTz9sg6J0vdI4BEy8xhTZW9VgOreLiHgqjgmX4=;
 b=CJ8nuH/ZkGnhi5v/15O+2/avduod9+yL/krh3uw2tHDWMJBvgIwviIICtDKtivRK3c
 /KYzhGUG1NTlgQM30SKBx/2b20w1KB9ivoyv6XZZYDQGGGVgJhSZtk5jcaozkYrG/r7D
 eKIXrSLSzX5/wQbt9+H3DoRGeK7F63VzDpghoUZRj+uyOy8i6XPkta6WA6P/zDLR5jlj
 5CTwWA1R5a8J0+caL/kmbR9/yp1U1/AWbQME4DMCWsL/6UUYNO40SrzyG/7cekRS4RZ9
 ofj+aZN4DCyZffB4AIsoYhOqI1h0D59Ag98jeA6kNNYZUgXjQD9LcqeCv+sLB23Zzz1i
 VJqg==
X-Gm-Message-State: APjAAAWV87hN9nHOZM0OyQidgKLMigRFGsZtgr8F0v6FWrJNM0DdCU6i
 VwiOo3J5ySnph0E5tZ5CAkU=
X-Google-Smtp-Source: APXvYqzl7xKIEKmmPvj7z7vLFLddJbzYrwAmIClucUvrnZKv1LSb29e63PCjnViE0lvhcZWPW40y/Q==
X-Received: by 2002:a17:90a:3aed:: with SMTP id
 b100mr313438pjc.63.1565211211333; 
 Wed, 07 Aug 2019 13:53:31 -0700 (PDT)
Received: from [172.16.27.234] ([4.28.11.153])
 by smtp.gmail.com with ESMTPSA id p27sm137350038pfq.136.2019.08.07.13.53.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 13:53:30 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
 <806d9809-2c24-fcf9-e4c0-e07eaac88d13@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e2a4fa0c-cba1-c044-768f-b9c249e5a5e5@grimberg.me>
Date: Wed, 7 Aug 2019 13:53:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <806d9809-2c24-fcf9-e4c0-e07eaac88d13@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_135332_603902_7B93A924 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi Sagi,
> 
> I implemented your suggestion but it doesn't work for me.
> 
> The kernel_setsockopt() succeed and I see that
> queue->sock->sk->sk_priority was changed to the correct value,
> 
> but I don't see that the priority was changed on Wireshark.
> 
> Do I miss anything?

Should work, can you instrument to see that the skb->priority does
get assigned correctly?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
