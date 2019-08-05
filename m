Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27023825C4
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 21:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DqMDNEGvET+XDoXRkSzd6jS+/JnbvuggbkCRCGjbTqI=; b=Yvmlwfal3P3cUgayHPQRie4FC
	72ZzFlY9Bg2ub92G2kMA/IJ+Zyr/0jtHkgkcFkKTbvzfr5vsi48bVk9DFSFX7s6uAysbgm1hojJ3i
	nFCh5uCV7vjdo2pSa95XMI7frDHLG/xNlSWQ+4L/Qxsa6n2o6ysIhZwopeVoDzCzI7lmSIfJ5HQI1
	zuTeBf85HVk9/a1R/5N3gyYaJpCvzZngjacRR1aE4jIu9PkxVW9ExS29xBVCkumiahSnhOw1P8K0h
	OTMF3xmvDTZdZqBtZFO9UE5SELHlUkBaWeyi0oq0UY/qJY0gPrx6rXY/cvtUJ+odBHsfNOon3vs7r
	GuBMgK54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huj68-0006q4-VO; Mon, 05 Aug 2019 19:56:49 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huj62-0006pb-IJ
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:56:43 +0000
Received: by mail-oi1-f194.google.com with SMTP id e189so62942930oib.11
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 12:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Phj5qHRlX7O4d97X44pT5RUSua7c85Z/2K1/c6MyGLs=;
 b=iBHFwZgtfrMqTwIkGNpKOyOCzQcAIc9F/XOBWq4UfkkJbtbgoIeMOOioII6yAIJP92
 E1r+x0gxx/1Mks9B0t3/VAGRf3/D7nJv29krodlZoBAUICuAVCpZqJtlVmNQ+dIuDMGh
 wBQseBeRDYhOJaGDZ7ystGu727IVEoiwo05b5mXThuQNHB1Nqye0X11C7yniEDwnqOtP
 IJkhFl5O3rQru/ihiyrKND91g7XSXT6j53eB1lm+dCZ1BKl15BGdE+OgtpdZV1/hTAui
 33t3k29fSGzs/lfXd3Jk0wS7xEHTupNQyrZQkbBaWaYHR42Pt6lxjfDznK2CD77ff6gA
 LqAA==
X-Gm-Message-State: APjAAAUTjI6HLo05lWi0axK3FHEyCx74aQvWt1K170LSLIO2MNiwSZDQ
 sll7Or+VZ41enM/jpawkJEg=
X-Google-Smtp-Source: APXvYqzDp96cSr1/DDb8K9q4A5Lcr/JEeiAgxYZwnLD9r4Gt8BvO2/KuswrGm6z9BmDULQBxa13zdw==
X-Received: by 2002:aca:5744:: with SMTP id l65mr42751oib.159.1565035000407;
 Mon, 05 Aug 2019 12:56:40 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id b188sm29160832oia.57.2019.08.05.12.56.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:56:39 -0700 (PDT)
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
To: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
 <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
 <caa04d02-05a0-dd1f-2072-df41a21f2aa8@fb.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f34af208-2707-f326-0451-354a8b482586@grimberg.me>
Date: Mon, 5 Aug 2019 12:56:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <caa04d02-05a0-dd1f-2072-df41a21f2aa8@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_125642_606443_82D59A0D 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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


>>>> Ping ? I had another look today and I don't feel like mucking around
>>>> with all the AQ size logic, AEN magic tag etc... just for that sake of
>>>> that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
>>>> to make much of a difference in practice anyway.
>>>>
>>>> But if you feel strongly about it, then I'll implement the "proper" way
>>>> sometimes this week, adding a way to shrink the AQ down to something
>>>> like 3 (one admin request, one async event (AEN), and the empty slot)
>>>> by making a bunch of the constants involved variables instead.
>>>
>>> I don't feel too strongly about it. I think your patch is fine, so
>>>
>>> Acked-by: Keith Busch <keith.busch@intel.com>
>>
>> Should we pick this up for 5.3-rc?
> 
> No, it's not a regression fix. Queue it up for 5.4 instead.

OK, will queue it up for nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
