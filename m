Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50BD7CBB9
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wVM993mpZ67EH5ML0TtT3OF1vMRtDuGALnobmjYutkE=; b=sqgXAqgPy18suz1+Im3iJnSIs
	eyRJLmhQB9w7x5v+1lVAuyV26oZJ8+sDEUP9F2/yb+Eb0+R65JTRfuGBinci1UsAPY7o22HGgmZcM
	r5DCN5bVI1C1DmlEPbnKws8nhpYNPRrUcqhaVnNKeT+XzlPmnduJgXeKkShL1xVTEa+px5SAGrvkg
	ULKZaRsft3gK/SIoaSdKdWIuAO6KS1JFqFWZkajZY79Td2t4fY9WfNqGQ+jATLD7sp3B2Ne9LkvVp
	1028kWvGgUvVvO9fTiQg2O+Hn0sRYrXqNUagABHObGEn5sBuLXyKAKZrkpqTRSFnJoU4W4jkp238O
	1dNHJx94A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstA1-0006KM-7o; Wed, 31 Jul 2019 18:17:13 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hst9w-0006Ji-Sy
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:17:10 +0000
Received: by mail-oi1-f193.google.com with SMTP id w79so51510885oif.10
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 11:17:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/UYffzYEAyligVoNbV7Z2uv0bTWRAVMwnG3l3MVxPRM=;
 b=lbCFqtzHhHtviVoWzGZ/7qEyPbu/g1bB6l/rU/v8EEqfX8yTU4EJtxPDKWikvRCuT8
 oQNafeDCWl+C+ObD81abH2fYQo5XOmY9fHnJU3AMUMU2izCUthapmv4Dn6McRz1QvSNl
 3QvbQ9NXNqUs4VqbdPL19/WDb44bODcTlaZxTbH7trWLpdu2fTQ1WRk8MzLHDK/YYVL5
 pCq/aUp5aZxrQ/PnUBxK6HsX6ikBn1jAXFi8u9wJJZU7v2B/rKgne3p9JK7LULUqhYA/
 6vkJoRiQOlhC5PglsCZQl6vfm2GzmOOtuGwXAIXhjRPm/T7r+o9+AeNVeOF0KPFzOKSB
 d5Nw==
X-Gm-Message-State: APjAAAVScaWQAzg6FRMIyevEn/LUVgkIVbOo5QDgGhmi8ivhOyIOQFgb
 TPC6LwIyTGztUjrFt25AHDU/LxkA
X-Google-Smtp-Source: APXvYqxm4+/kYZx+aDi39j8yUhPJ7+DHr5MD+7EPWyj4ETgiPKCTVeOyzvUm92a1Xp5zO7xMp8TFDQ==
X-Received: by 2002:aca:f582:: with SMTP id t124mr21649994oih.71.1564597024734; 
 Wed, 31 Jul 2019 11:17:04 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id n95sm25608759otn.65.2019.07.31.11.17.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:17:04 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <993aee4e-9f9e-4af1-07e6-69218a12bc1b@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <886831d7-7035-7c38-7b1f-9945c222564e@grimberg.me>
Date: Wed, 31 Jul 2019 11:16:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <993aee4e-9f9e-4af1-07e6-69218a12bc1b@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_111708_938540_85FDBC29 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index fa31da0762b9..5f6970e7ba73 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>>   
>>   	ns = nvme_find_get_ns(ctrl, nsid);
>>   	if (ns) {
>> -		if (ns->disk && revalidate_disk(ns->disk))
>> +		if (ns->disk && revalidate_disk(ns->disk) &&
>> +		    ctrl->state != NVME_CTRL_LIVE)
>>   			nvme_ns_remove(ns);
>>   		nvme_put_ns(ns);
>>   	} else
>>
> The thing I'm worried about here is concurrency (this was also what
> caused my earlier attempts to be rejected).
> Thing is, the controller state can be set asynchronously. Which in
> itself is protected by ctrl->lock, but here we're not taking the lock at
> all. Hence we might be seeing a stale value, causing us to makt the
> wrong decision.

This is why the state check is _after_ the failure, if we failed to do
I/O because of a reset, it will be reflected in the state.

> I have a patchset checking 'ctrl->state' under lock; will be posting it
> later.

Unless the wraps your actions according the state, the state still
advisory.

> And another thing: where's the point in 'revalidate_disk()' to be called
> if the controller is not live? At best it won't do anything; at worst
> we'll stall if we have to do more than one I/O (the reset cycle will
> abort _one_ I/O, but if we have to submit more than one we'll be stuck,
> too).

Exactly because of the race that you are indicating. We can't reliably
know if the controller is resetting (or will be starting a reset soon)
so we go ahead with the revalidate knowing that if the controller is
resetting it will fail. That is why the state check is after (this tells
us if the revalidation failed because of a reset or something else).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
