Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D74DED50
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jRWfSSgy9ufmALZhMTPvHOCYfM+n2xaFc653c0Ldf90=; b=GerFUKMW4s9EWhoMTUGJYHADI
	XZYYolwjjq7SgXBTm8xmIRFzLrKTr7fQYpypRZ29bqnxSMBXDavyZAUOZPJVoqxBQ2n8Eldk9Llf0
	631y7aIf8b3finHfEmMoR3a6ge7ub4/Rz+aGMXfNYEKiFVjjrinX33QBP2thz8Mh0HyaTiPqYABQL
	gvZDDUgMLA80D9/yCQVVwKStDw2UEONWBAj4mK/y6KEE6I54vK9lqsuM4CbjmgeLfIKxFibh5G/ex
	XDDYgjjuAtdZUAkzlkS8sss0sQWhisPzUEJMvkX2zBCIzbOJTPGMPLTL3Loyya0SvLp8uyDEm4/EY
	VME0wQtZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFhv-0003HZ-2f; Mon, 29 Apr 2019 23:29:11 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFhn-0003Dd-LT
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:29:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so1285160otq.3
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cB+l6r70DCPyP9KFftiyt2xlSyfnGVJ2JifoayRza48=;
 b=VBlZJYjoNRGYEk+ZX67y6KwFhAZi+secggiqsBfdHc+3brkmAFayPv2d6hx7HEw02H
 R0csHyqQtsB4xf4r80wsJa7J/cfO73PUjLR0+odIRKWdjjOyK/TqW6h/GXlIU/LmJpvk
 OL16Oc9zmOcCDm6xfsbnjWe5QNTBFO811oAoQUnXj8PA22ca5t2Y6sPIqtnzedN42T0c
 I2Ywqk7TFtu4EYR+av13+SyUi6ai5zpAToxZh4kvj4n7dZLcY/wdB7+sbewkKdg89g3v
 LNZUuPsxXTd11QtZJtkkFq76Hs47PnxJEFOhu9gIYMWfBa1wOQF/17ZjEe3+SNdLmwgY
 YayQ==
X-Gm-Message-State: APjAAAWHVKcRpOucUlL3n0l7/jiP7lCU6FJVOIZd4ovLjEmkwVt/xt/T
 n+/gDfEw97gNvXBvjkqUWIY=
X-Google-Smtp-Source: APXvYqy/fWUDwRMU03LY8jTqnXuspvvkARneo27gEizZKgW2nsKJeYB3vx7cK2hib9t0uh2KkFo4oQ==
X-Received: by 2002:a9d:5e15:: with SMTP id d21mr1453322oti.138.1556580542930; 
 Mon, 29 Apr 2019 16:29:02 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t7sm855283otm.2.2019.04.29.16.29.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 16:29:02 -0700 (PDT)
Subject: Re: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
To: Bart Van Assche <bvanassche@acm.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
 <067b8ef5-abea-2bc8-9da5-a39ac3b54a1b@intel.com>
 <SN6PR04MB452783333EA5F5FE1190294886390@SN6PR04MB4527.namprd04.prod.outlook.com>
 <1556580424.161891.170.camel@acm.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <091fabba-234c-d3bb-a882-43b599fb0b21@grimberg.me>
Date: Mon, 29 Apr 2019 16:29:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556580424.161891.170.camel@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162903_705884_5EB2DB8B 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "hare@suse.com" <hare@suse.com>, "hch@lst.de" <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> I haven't been paying attention if this was bought up before but won't
>>> this create multiple copies of this data for every source file the
>>> includes the header file?
>>
>> Yes, we did discuss this.
> 
> Hi Chaitanya,
> 
> In an e-mail from Christoph I found the following recommendation with regard
> to the nvme_ctrl_state_name[] array: "Just keep it near the top of multipath.c."
> and you replied "Okay, that works too."
> 
> Did I perhaps miss something?

That was my recollection too...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
