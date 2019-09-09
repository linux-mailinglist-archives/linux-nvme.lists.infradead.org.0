Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA46ADF74
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Sep 2019 21:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ajIvUoqSR/A4vfeBNwnCkgB7TrfoAPieQXyVrh/uMk=; b=ZrkCJxJCDv6UKD+0B9UsdAbmz
	gfhsEQZducTbFVgP2fo7nf5TEtyPqhvqSbWDRHRqXKDiPU3BUxkUWtJ2ftmetMA49YRxJjn1LH0FF
	/LlCqQiYr6cFXYHlA+7fkSRx80e9wj2hkfGAQlBySlYb/vm0BmbWaV3Jwmpw2K3CZ2xZnM1/uL9MJ
	BXIhTiLoDwykCXg9XeVWKp8pjq75oik88uOmd0jl7vo7u9pXmRF7ac7ptAqNtatRfqmxgulb1LxXn
	p2ywxk+5un5BwWspGO/8+Pc27VbIMsXyJYb4r8dDpL1Ohlww/OqrykEZER3ggXPC2ieGqyS/2s/4V
	R1/GAZZFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7POD-0007qx-L4; Mon, 09 Sep 2019 19:31:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PO7-0007qb-5W
 for linux-nvme@lists.infradead.org; Mon, 09 Sep 2019 19:31:48 +0000
Received: by mail-ot1-f68.google.com with SMTP id y39so14126787ota.7
 for <linux-nvme@lists.infradead.org>; Mon, 09 Sep 2019 12:31:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZpInMTwXyfWIpqMmgFBC1Sz0u5uuqezxxk99crBjy08=;
 b=W9Pyhd7qy46ozdusWQDHOR4pVJRrdebnZ2g3GDyDu1MI7lg3PszqAwc6CzBf3W49Zz
 gGojN0fCF2/SFEi9MhHiwp05gs7tyxcEYz/4heAxKXJXKxNPvUXo2IVD7sxW1jZiYW5c
 jcqflc/GTW9EDr4Kt7TYrEkC0wo3SssCcHerPGgwH0yi8NjJ2/hT6GGVBD659zD3UluP
 2T+RdnMhlqCOxCltY6KYkOfzWo+OEH2Qcf0HqTqO3Oe6xugRsoK1kTY72W5Dh/B8i5dC
 xQUWBYAoeByPtR5XV3+xHVDgNFoheIxTYHMsT2L8oyeFoQ2p6ozQhc/eEvm35r4U8UNO
 0e8A==
X-Gm-Message-State: APjAAAWVKUPmjCGiX5R/yrEf/hTE4cV8zZbnhRwvg/++4n3yiwCIA/mq
 rsNoYXgnOaXsj945oAw9IPnbDb3l
X-Google-Smtp-Source: APXvYqxVknpVuCXsf0e3wmxb2MyjYnoHfvGjZS0u8qZVQkDC2O4d8bZLu8NVOo5hFr/3mZpMCfZ17g==
X-Received: by 2002:a9d:a0d:: with SMTP id 13mr18833798otg.282.1568057505706; 
 Mon, 09 Sep 2019 12:31:45 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o4sm5723689otp.43.2019.09.09.12.31.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 12:31:45 -0700 (PDT)
Subject: Re: "nvme disconnect" for mounted volumes - stuck thread
To: Szymon Scharmach <szymon.scharmach@gmail.com>,
 linux-nvme@lists.infradead.org
References: <CAKFbMv8u9w7jKB9tux1+4+8xQWdRpA4Y1kArrt6rCX1L0H76sA@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a85e2dc8-f76d-15ab-f86b-7d79af5bd99f@grimberg.me>
Date: Mon, 9 Sep 2019 12:31:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKFbMv8u9w7jKB9tux1+4+8xQWdRpA4Y1kArrt6rCX1L0H76sA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_123147_212144_7D72C1FE 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi,
> 
> In the deployment scenario i am using we use around 200 NvmeOF volumes
> that are being connected to different initiators and after data have
> been saved - reconnected to different ones.
> nvme cli allows to disconnect volumes that are either mounted or
> umount is in progress which leads threads to end up in uninterruptible
> sleep. (D state)
> 
> root      69368  0.0  0.0   6704   640 ?        D    09:29   0:00 nvme
> disconnect --nqn=pvc-4f6b7502-cb08-11e9-a2bf-3cfdfeb878d0
> root      69375  0.0  0.0   5920   900 ?        D    09:29   0:00
> umount /var/lib/origin/openshift.local.volumes/pods/4f6caee2-cb08-11e9-a2bf-3cfdfe-b878d0/
> volumes/kubernetes.io~csi/pvc-4f6b7502-cb08-11e9-a2bf-3c

Do you have the watchdog hand detector trace to share?

> 
> Those threads are stuck in D forever and whole block stack on the node
> becomes unusable.
> Is it the responsibility of nvme-cli or kernel module (nvme_fabrics
> AFAIK) to block 'disconnect' in that case - or is it expected behavior
> (nvme disconnect with force flag maybe) ?

None, I guess it should be something like _netdev fstab entry...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
