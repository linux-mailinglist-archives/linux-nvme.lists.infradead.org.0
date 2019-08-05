Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2CA824D7
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8TDkUbo4bqm2ZlIBuqKoUacMO21PYmo3aLa0PFwWoyg=; b=e9li5oIEeF1ScYZdmEiR7wReS
	xqM40uWRXC6sSSx4bgL7UFnJPoxZbv+niKpXvrjNP/1W6S5e59TMHQ4Txvq5gTU9h9HlLoEuwwEHj
	YMFiqd/oYYUl8zSjfwXXZ+7cNyRL5kltZVLz4EBa/WomAj9r83pXQicU/MLbvdADHb14evC825twz
	SRDuOwxmihC06CWI8NuhO554FbdDTdLuIQFgGvEV2pebaOhamcsVdS8VsuWb/NsC2eiqLFzp2xCGX
	FKB/yWm3/qTCJ5U+dJeerHpBdynOcoqz/Sr5X1sPUpcKP9KbTqzevxS7M/lbdLnX666HwPNCWblGU
	qse5nLLMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhiJ-0006c0-JQ; Mon, 05 Aug 2019 18:28:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhiC-0006b4-7L
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:28:01 +0000
Received: by mail-oi1-f193.google.com with SMTP id w79so62810646oif.10
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t+Q6uig8GQl75GX9gOvHtdvhxcvWmzLY8qotUHhpLFw=;
 b=Z9YqoIGd7s7UG0IEZzKO7Plbk4e2xbUgKiSRq88ewJ1ahBhqHBeRe9Jo9r2F+/7m8l
 fNlhWmJzIonb8Kogn81+mbs63ru7LZ173sWsfWPS91vEgXebmN0jt9O6q6Y11DFUvlsK
 XMcNOnOnwa6T9iDyJQzIgqM0dPgK2kE7WuiLjcfjet51hi7m2SPpWrVF5T1yBQDvF/pj
 TMvHsII/U7tpJOad/E4/A38wAvYp30ej++sG6NNLqN3FL5naHwlsluoA13Ecy7nMTQpc
 BQtYrdU1iSKdjuQMuQwLYXnzUTOViglwxdgY0eD+9OcIIcQ7RWanAgOSENQmheo2pt+7
 PUKQ==
X-Gm-Message-State: APjAAAXMI7uiQq85VybGogSHBM+5IiJ3NQFJUeiGBAKK0Kyx5yGIL5KV
 t+EBo/supQYzyEbzIH5DLpI=
X-Google-Smtp-Source: APXvYqy0AdIg1TbX+5qncwETkk+MlyCN79PvaUMyylIycvK6nvJq5NrNBH/UB19pIZTaGbP5Nhxgag==
X-Received: by 2002:aca:abd8:: with SMTP id
 u207mr11765780oie.136.1565029679508; 
 Mon, 05 Aug 2019 11:27:59 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 17sm14133875oip.26.2019.08.05.11.27.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:27:58 -0700 (PDT)
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
To: Keith Busch <keith.busch@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
Date: Mon, 5 Aug 2019 11:27:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805134907.GC18647@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_112800_265264_EFEB8387 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Paul Pawlowski <paul@mrarm.io>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Ping ? I had another look today and I don't feel like mucking around
>> with all the AQ size logic, AEN magic tag etc... just for that sake of
>> that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
>> to make much of a difference in practice anyway.
>>
>> But if you feel strongly about it, then I'll implement the "proper" way
>> sometimes this week, adding a way to shrink the AQ down to something
>> like 3 (one admin request, one async event (AEN), and the empty slot)
>> by making a bunch of the constants involved variables instead.
> 
> I don't feel too strongly about it. I think your patch is fine, so
> 
> Acked-by: Keith Busch <keith.busch@intel.com>

Should we pick this up for 5.3-rc?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
