Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C984C1DAB8C
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 09:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=scGJSrcuwF8ShZaZe95Ac+nU9LdhB73o9HxccuDuRMw=; b=f6PyAJH3cw/9tEdfXvKyGfs7k
	hcM80OZx999EHMan6AhukQpn4ipU/42Zrx7bjuuE3udMNhdqWR1HW7PI2Af/j9B9Nx04u0/HPtjSf
	Ga1/VXMHJK03/ekkuVQgJ5Apu69XKyRhxHctk9V8MlSIao8unQP/a+CMJhoSjpi6VoNbhZPql4JFp
	5zI15NBojEWcoJNS5P3POcmo3u9yHlIOUdS2+2wFDyioOEXgk6UT9UN85EScDCs0flPJpMpXZ4UZA
	HoUgzhzzm6UdWUvWRpZ1zYDGOuKux6+AyCtkY+QlLuQmrmojfPOo3V32mWrgEOSlUQwhCpspYu0az
	YS0Ph5Anw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIqo-00021v-O5; Wed, 20 May 2020 07:09:14 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIqc-0001xy-HG
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 07:09:03 +0000
Received: by mail-wr1-f66.google.com with SMTP id e16so1971839wra.7
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 00:09:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yy6GuJs19fQUYOYv1Uc2TbMZUqtnLmqhiRfjcdzTU00=;
 b=bRGAnQ7L3w6V2icUnRpHsh4zMM/aqHGyYKIFonharPu/Zom7R09QIcVLFbreqrtaqk
 hOtKl7g6uGjB/wjlocslH8fS1Qrm/RkEjt1W56w8hzZr3VFxjb3ODfkPpv8fPhKk6L+q
 cI/V3eWrqFXKajfEPOrPiWW4/5rC8BZETuF0dSEuLPKAj74lgmd66PWZfb12PmvKVgEE
 ASRr/UJxFV1aZ4g4ulCrl4zIqoaZrOS31m0HIyZAm1aWqN8UpwuRWthG5YTCq9A3sZy6
 XgWWn2Xds/tbS8FPxE1vTh6qeIAqU/mfJYISnyuSjAnBwxZaYUPteFHnq2ZfmWcCNVZ5
 ju1A==
X-Gm-Message-State: AOAM531ELipiqlf02UB74bo3vJ+m23xFaBdjOhkAaKM3ujHG/vxnznuB
 0twJEbjWcXSYoiNJpZEVC+g=
X-Google-Smtp-Source: ABdhPJyXiF+zq6wHRtx3t7O+cgclSuZhSYd9xe7/kTPltITBBMoj1r10NnowYxPb2D1ssRvr6/UB3Q==
X-Received: by 2002:adf:814a:: with SMTP id 68mr2759247wrm.177.1589958541252; 
 Wed, 20 May 2020 00:09:01 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:91e2:91f6:e321:5d4d?
 ([2601:647:4802:9070:91e2:91f6:e321:5d4d])
 by smtp.gmail.com with ESMTPSA id m1sm2032429wrx.44.2020.05.20.00.08.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 00:09:00 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining aens
 in nvmet_async_events_free
To: Christoph Hellwig <hch@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
Date: Wed, 20 May 2020 00:08:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520070330.GA26871@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_000902_596005_11627900 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: chaitanya.kulkarni@wdc.com, David Milburn <dmilburn@redhat.com>,
 dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> So when the host usually only has a single aen command outstanding (like
>>> the Linux host) we might start having a pretty long list on the target
>>> for a while until all the roundtrips to deliver them have been
>>> completed, and if the admin queue gets shut down during that time we'll
>>> need to free them.
>>
>> That's fine, but why should it do that in the process loop?
> 
> This patch doesn't touch the process loop, it is the free loop when
> destroying the admin queue.

:) I guess the pandemic got to me...

Things make a lot more sense now. But don't we need to move the aens
free to after we remove the controller from the subsys->ctrls?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
