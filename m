Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB5A29BDF
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 18:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T429gK7hFXL08NWweEgZ3EhFsonVbZ5KxmIcWG+c/Ts=; b=qYPb3vgEJnhjDx5itLLB6I5OV
	OuIQBHk4aF+6t8qCbujyXHaiczVehasFUqBOR06tfKXgS2PinoueMWpcIbzK5CLMwq2rkh4i7NTiE
	r+8c0eEvTNtTif0MgwHh9+9pfoHT2BMeTlxRXYB5pLCR8DyMX0ptPrRwCTJXOTRI7iL3A2NrxdXsI
	9RhMe6w4GHS4bX9O150sC0+/4jtoxdZEcmJPpokHK1AKYUAEMS5vHSW+X3PgoVyyBmRHmnyWdBj5v
	IEX2qfd3CmdY7KvBOh7RJNb59oSz+t7MDvSMmCyKZgtN3u8B3t/DlNLroYkdWPdFZtBpOx9mhN6Fp
	MpU1nUNiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCn5-0002xi-Lq; Fri, 24 May 2019 16:11:31 +0000
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCn1-0002xN-8U
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 16:11:28 +0000
Received: by mail-pg1-f178.google.com with SMTP id 33so2342830pgv.9
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 09:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mC4ocw/N1PB+nKF/W6TotM1lNm1cz6EnKWKDwOeXncQ=;
 b=QjBUT+0nYjamAzLQ+dK8DbJeK3+pel3FAmA4cw0OY2dWCVO62FKEGINqvr69Ak5wXH
 N8M64fsvsERO/4+PB6gVpRKcyyst1CKh7l5rMB+wZT8isL3i0J5yRTnW2ELAnfRmFvKa
 f2Sz0CniiD0VO0pLMahz5yp+juLnV/E/60LHlrxmHhZ9mkgPgjgJvsW45jE2p9rTltV5
 VponWA3/gk5za0D4L7m/XPI+Ot2Tk4LlUQ6cgvVsOEqZwaQCHWo/Vc2L53oCG1qfAs+g
 bgH+1TGRfOThxjfLPZwYnk8Iw79Qq8RFBGVRmFlgPw7eTO+kitX40ONYaALyqy+HTVW3
 MZPA==
X-Gm-Message-State: APjAAAWAu/f6klG7vagVcIfQc65a21gVYoUWIXpmvudTgMK8lwSGGRZ5
 0CReJItPluOw2LX0CRM0ln9FAiu5
X-Google-Smtp-Source: APXvYqzYkKhW4aIuxF8WKK7PSv/glRhYQ1Nj/nlphHWGQP6A9auUGlQpj7prciXehfvUjScEL8qJmA==
X-Received: by 2002:a63:1866:: with SMTP id 38mr107229906pgy.123.1558714285425; 
 Fri, 24 May 2019 09:11:25 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id e16sm3510233pfj.77.2019.05.24.09.11.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:11:24 -0700 (PDT)
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Max Gurtovoy <maxg@mellanox.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
 <20190523075524.GA15479@chelsio.com>
 <06d347cc-7df6-c2b3-2edf-88a53db3c12d@mellanox.com>
 <20190523114157.GA9479@chelsio.com>
 <033ac067-29b1-30ff-6ad0-5e13510649bd@mellanox.com>
 <20190524044341.GA5129@chelsio.com>
 <955d9336-50d7-248c-eed8-3b038f6a5a11@grimberg.me>
 <0c738420-1c60-e656-d550-f209c40bf422@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0c1b317c-eaf7-a032-6003-caf32f953bdf@grimberg.me>
Date: Fri, 24 May 2019 09:11:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0c738420-1c60-e656-d550-f209c40bf422@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_091127_302361_F4CBF2BD 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.178 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: bharat@chelsio.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hi,
>>
>> Just got to this one (after ramping up on activity post vacation..)
>>
>> Max, I think that your patch is missing the case where default+read+poll
>> queues are higher than controller queue limit but we can still fit
>> a queue separation.
> 
> My patch was just a draft to see if it fixes the NULL deref.

Yea, I know..

>> For example:
>> - requested 10/10/10 (default/read/poll)
>> - supported 28
>>
>> If I read your patch correctly, this will fall-back to shared read/write
>> queue maps with no poll queues (10/0/0), while we'd want in this case
>> to still have the separation but simply have less poll queues (10/10/8).
>>
> it will fallback to shared read/write with 28 queues. same as it was 
> without this feature

Oh.. this can leave unused queues (if say we have 10 cpu cores) right?

  (actually I think I need to zero
> "ctrl->io_queues[HCTX_TYPE_READ]" for that to get (28/0/0) instead of 
> (28/28/0).
> 
> so the default queues can be read/write queues and also write queues 
> only (in case we have read_queues != 0) ?
> 
> I will review this feature again next week...
> 
> 
>> I posted an alternative patch for review.
> 
> I'll review it early next week. I have few comments to add there.

Cool, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
