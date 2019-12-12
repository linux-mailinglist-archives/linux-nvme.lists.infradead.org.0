Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD6511C194
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 01:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gGXq4N3AqnAdxoXZ9peCG8bgmWN29yGw1Ag63jrcukU=; b=CgQrn9XKY4XBRVNsoxRhBp83F
	mByYgizGKSGkkyirHymm2wbhi6TdvXt9UWu/SWeA3FT9p6+sZAi3n9vuTQeQe/9yF0rv7dHR+fCkZ
	x4J8ujik5yJ46CEJyKNJ/5NOy7Si8jpxYNuBrRUQUDNqXo36Zwc09Z3GL1QlPazMQHQYDbxup7OZs
	m01oJnG/xsUOMACi2GPD9f8B3mdDxu98JsGI9UlQVb/MZyKExyjvkOULygBAEKGT2yLPeUpXhZNnV
	oKko36xZ9suG5LRXBWTdLlxw7wlpyd4oYqJmFgeM1dTEdne/03QOpZ1NipPthqdkFJcTZoKNTvgza
	aIZeJSbzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCXI-0003GU-21; Thu, 12 Dec 2019 00:40:56 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCXD-0003Ft-J2
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 00:40:53 +0000
Received: by mail-ot1-f42.google.com with SMTP id h20so622776otn.5
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 16:40:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IvIp8KPcKjmD2RTVhtH/qV7INQ6sQfMJU0EUhBElf5s=;
 b=oBZBVGTRnLTLV8ZQDYTJN8nTD18SYdEgeIMyA+bSrYDrNX84uNqBICd0r+HZ+zSzMJ
 eKTZvUDhQKHjzAKEFIZWFkDbKV7j1TBDDCxpZA0PWBk90AVS1yTLplRJxO94MXGvSYnn
 Cu1fwINsggcbXQ4XFJi8+vETl3uK97uYJEr9hJmYbwIGcj6zxsFz9AijjYvviDhQL1bq
 2tANbtFaWm4ChrO6DpFYYq/YWksys1w21p0u7WLNB57jEeoUupY+10QMtfeh57rcmzjP
 YTkhN/r+SAIK8mjRNInFtwnFRerDXbDvKaXHWyzx3saH52o2usSzE7EYv6+zBPb9+bz1
 ZDvg==
X-Gm-Message-State: APjAAAVmesE1rptvJsCz8wf9aIYUCLnUf+htQw9IlK/AFD2nqqcja6EM
 ezn3zky54NWcP12kH+RttVIqqhD0
X-Google-Smtp-Source: APXvYqyK8KKpyNL6B9vQpfrOJGRf6yAfkAE/UvPQaBbxPPyz2cXu/MNSC08818hVl8draLvNJ2JIXQ==
X-Received: by 2002:a05:6830:1e75:: with SMTP id
 m21mr4819124otr.36.1576111249997; 
 Wed, 11 Dec 2019 16:40:49 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r24sm1513685ota.61.2019.12.11.16.40.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 16:40:49 -0800 (PST)
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
To: Keith Busch <kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
 <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
 <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
 <c58e2cb5-e03c-c56f-8c67-a791ac1eb2c6@grimberg.me>
 <20191211173532.GB493@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <79442e8d-719a-7510-deea-cc23694fdec0@grimberg.me>
Date: Wed, 11 Dec 2019 16:40:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211173532.GB493@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_164051_623901_0AB52174 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bigeasy@linutronix.de, ming.lei@redhat.com, tglx@linutronix.de,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> If I have say 24 (or more) devices with a queue mapped to a cpu, and we
>>>> happen to just reap in the primary handler for all devices, all the time,
>>>> are we safe from cpu lockup?
>>>
>>> I can't readily test that scenario, but I'm skeptical a workload
>>> can keep the primary handler running without ever seeing it return
>>> IRQ_WAKE_THREAD. If that is really a problem, we can mitigate it by
>>> limiting the number of CQEs the primary handler may process.
>>
>> Theoretically speaking, even if you limit to 1 cqe, the universe can
>> align such that you will always reap in the primary handler right?
> 
> Perhaps theoretically, though testing the limits of reason.

I know, maybe we should handle it when/if this really becomes a
problem...

>> So if we have this optimization, perhaps something else in the irq
>> infrastructure should take care of cpu lockup prevention?
> 
> Perhaps we can cycle the effective_affinity through the smp_affinity?

Not sure I follow your thoughts.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
