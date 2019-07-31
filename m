Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0110D7CB73
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 20:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D2JfalX8cTAR9LqTOlsfl9yP3GcMkT5+LtqfILX+WNQ=; b=CAvN2X/xMUixqV5VAxGNif9xY
	FkcFCypYWvxCPeZwzcHhElTvbErmyRWmb7LiubGNHPl3wIdrSiEPKyCFOLzyBeEtxreSFoVQSSbHb
	e4LrkmoM/70p6h4lXU/3NJZmNE64UkxV2MsowEgPBe3vL/WUBKYlb7PXNhbGnEP+FkcFBA7foOvQs
	yr8mO8gifFpm0wYHUmYM4fdCubYSYBeq5mYX2V8m2Ms7uFzWcEcBEPMDc0SRBjL+NShfuMD/u/HwF
	InJ7g/cGh3X/1WxYHCrMJ8/PBfUJ4eeyvzB59tjUkarrVmuhY1SOv8nxi1v5YDjPLJz0C2kF1/kC7
	JRwQ3+gng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssxB-0000yH-If; Wed, 31 Jul 2019 18:03:57 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssx6-0000xr-4l
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 18:03:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id m206so51456624oib.12
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 11:03:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GpO2E7Xl3zcXFIvrBVcr9brQmmHv6E3IoS/wgNMk7jI=;
 b=V4BuClpFx2naFhoXMV9ToEZHk9EcmFduE9LgqLn+XFO2oZJeMpHJY/qUzymIcZs9Mt
 dJmso+pQaZlFhomX5PyIDdGmEjSOpOG/s05EG2a2uzjYtFHamWLdkVnYS48Z/4wYtBdh
 fnas39PzvNaBX8lRTimi7lW0TwXIP/6fFgdGm8T7JdAgTyWzakcojMArf4yEpbZwsM3Y
 E6qsx4v9zvJih07UE4RbzE4dhctJ9DXVZ6mCiwwnZoeRteMWgdNs3lk4H15dgc/3qaQx
 HdtPojtAd3l/BnaSOgFVd0b2PCCR2R6A/5dVs6SWWL811D/prNAGhJYQKaN0n5WOOQZv
 fORQ==
X-Gm-Message-State: APjAAAUJEhEOROjcObGOZVwmAkFPccp4g8h9q2LRabXGn9C9Kw6F7rnW
 WvQO1wMQFYkEiM/TR2NiIok=
X-Google-Smtp-Source: APXvYqwercwFHNjaDMKBzu2SJwsM3ekzc/Ar8hthxrfsAPSlcDrAgrRsgd4/q1Ise/3z4EoWljN2IA==
X-Received: by 2002:a05:6808:656:: with SMTP id
 z22mr59152169oih.79.1564596226982; 
 Wed, 31 Jul 2019 11:03:46 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l13sm24785045ota.17.2019.07.31.11.03.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:03:46 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
Date: Wed, 31 Jul 2019 11:03:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_110352_184041_CE7EB0A6 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I was considering if a reset happens to trigger when nvme's
>> revalidate_disk tries to read identify namespace. It's possible that
>> command gets aborted, and we don't retry admin commands, so we'd return
>> -ENODEV and nvme_validate_ns() removes an otherwise healthy namespace.
>>
>> I'm not too concerned about this corner case actually occuring in
>> practice, though.
>>
> ... discarding those poor folks having to hunt down this very same issue
> for several months now ...
> 
> Yes, it _does_ occur.
> Not on PCI, mind, but definitely for FC. RDMA might have a slightly
> better chance of not hitting it, but even there we have seen it.

And this patch prevents from the namespaces being removed, which _is_
the wrong behavior we need to prevent. As I said, we should not
remove that namespace instead of trying to synchronize the remove
with everything else...

I think I asked this but was not answered, why are we removing
the namespace at all? do others do the same thing (remove the
disk if revalidation fails)?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
