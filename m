Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D861B818B
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Apr 2020 23:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pKqHQzzxYkaaLIXeoNaWf5MdjMa9cc4hA5N1xrpS5A4=; b=hpOqfO/UvuinZ6QNj45we11oE
	zPaUql+y45RvcsejWj/H1JvcgvQoBMjU371qCVxkZz6A3jTtHM4KzvUoqauVc3ly74B6/5rNa87DG
	Q43p3HmOiJM7ChMv3HCKvfjLx0L6a07qdvMj3IY7xQnim7PJDHg5krOSEZuOvItVdVSNUBLwycYRS
	IWVmEtai3YtZsgh4+4k5P6NUdB3pdZvcCJbt2iMcvhn/lHdl0hwo4rHUe0TmEUXIswRHEL/LY4W0c
	/WA07M8RCATQNf4Kit/1/ZwcKKrY5dQWIsNCrQREAIv8oCrD2TFcsOYPr+XsNBKYFFJ0lB5rEXW3U
	xsbvQnnFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Z0-0001zl-5A; Fri, 24 Apr 2020 21:08:46 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5So-0003Aw-3b
 for linux-nvme@lists.infradead.org; Fri, 24 Apr 2020 21:02:24 +0000
Received: by mail-wr1-f66.google.com with SMTP id s10so12757032wrr.0
 for <linux-nvme@lists.infradead.org>; Fri, 24 Apr 2020 14:02:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gMkmWE2kNa/b63gPoD9PNpAjDM30JRiOLZ96AaEWzzU=;
 b=bTyM5OwIhshkv+H1sh+4ZQHkQtqRYyYLZeDubQUNi56xDfCnvraGwz4kZlSbZzLrIa
 nM7WS5x3ydiP+2j1inltlshdfJpRQKhIhlyOeBXpyruZK+cHtyZR+6Gt7zrHabsLmDb/
 oCeRwDL+HQCZk8DyUtSxFdPH/PR+gZXXeBV7kIn1JrKq63YARznqFc2zjOH8cDjfNoWo
 4wOariSUSc2oJKsDLDMXbGCUVri6rZ8Vnl/UK0AVL/pIFaP0WAz+2kFRQdesPZJ5rWg/
 HQIWClTLkrEfZesaQjQgyBe9D8t3M28b7cH3bYWwNnVyv4x9DBZilubKirrLMvbnv1Ib
 +GvA==
X-Gm-Message-State: AGi0PuZRtIoiwr4XzsnunSzm7BTznx/V8kywdkI1oGTF0TgFl9TLVeCe
 jQlo8hCUqtz2BGWftCvwNg0zCyRY
X-Google-Smtp-Source: APiQypLV6rD4R2EbTb7dKxjTd5DTOeaIHlX481C0C3FWbqn70HQMxusy+0G/Wy9K52sGvZTSP1yyRw==
X-Received: by 2002:adf:fe44:: with SMTP id m4mr14059825wrs.188.1587762139635; 
 Fri, 24 Apr 2020 14:02:19 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:1172:61e0:261c:f548?
 ([2601:647:4802:9070:1172:61e0:261c:f548])
 by smtp.gmail.com with ESMTPSA id h6sm4367599wmf.31.2020.04.24.14.02.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 14:02:18 -0700 (PDT)
Subject: Re: [PATCH V3 0/7] nvmet: add target ns revalidate support
From: Sagi Grimberg <sagi@grimberg.me>
To: Christoph Hellwig <hch@lst.de>
References: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
 <20200422081936.GA25035@lst.de>
 <BYAPR04MB4965850E7D094ED44D1C360786D30@BYAPR04MB4965.namprd04.prod.outlook.com>
 <3f112b29-91cc-620c-6262-de3e322a29fc@grimberg.me>
 <20200424070502.GA24059@lst.de>
 <d0822f66-e579-c698-0cd8-5f7726259bb7@grimberg.me>
Message-ID: <c8378ae9-a14f-42bd-ae51-b532dd72cc29@grimberg.me>
Date: Fri, 24 Apr 2020 14:02:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d0822f66-e579-c698-0cd8-5f7726259bb7@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_140222_158828_80997A2F 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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


>>> This is cumbersome in my mind... and the polling part is
>>> kinda bothering me...
>>>
>>> I still think that having this sit in userspace is so much more
>>> elegant really.
>>>
>>> A simple service that watches with inotify on the device_paths (files or
>>> bdevs - which are also files) and trigger revalidate via configfs when
>>> it gets an attrib event.
>>
>> Eactly - plus udev watch for the block device KOBJ_CHANGE notifications.
> 
> udev isn't needed actually, blockdevs work just fine with inotify.

Actually you're right, we'll probably need uev watch as fsnotify won't
catch it...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
