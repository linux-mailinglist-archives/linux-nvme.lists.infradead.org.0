Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372937CDDB
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EQeQLOrd+YJYMXO/CI4hGzSiz5iZkpWNDhYa1q1WISs=; b=Zi1Xx8xllmUK0a4/Y8NwMBd34
	ZBnEvlBXqC3xytMmg9uK9XvDeh0mbWRtKFL7Ht+8IaffIKlcfn/SJYTH6YfyOi8Zc13IaJHO9R5tR
	jXXtt4+HlxMLKjDC69WEqH8rAdOI3OlzPNdcIaZP4QIPv+9WQtzxLx7DRQ4AiA0KEUiG9Qy3HRsGE
	evxW4FDbeykfx2b4+mObZCH2CUtkkHawejpeIP88yvZFaZ0cHl/T2AewDZqDg4Sgkzc2cpCJCCzFU
	sf0g0XxZ5my+G25oyAEAE5ZDQ+tMhx0jELKRl0f8mSluTTzUvfAlCuVEAMyGJyBodAiF5hvZ+hf7Z
	zMTut1ozA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsutU-0007eB-QB; Wed, 31 Jul 2019 20:08:16 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsutP-0007df-CU
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:08:12 +0000
Received: by mail-ot1-f66.google.com with SMTP id j19so33054706otq.2
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 13:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i/H12EKSrKBNKPhjTsjeiHs1LxasTyJjfeDLYCt6vEA=;
 b=mmVKpIQbvNKCKkivBoXgpSvYfqFEzANUSB1eg4B7dP1GM43hxoWjdpdR8xx66znywU
 NhwxiygbzcLOxtiXjQnLzAND3k/3DlasHpKlGweiI2cukUrtvRy8msbZgVLoH2B5ZDOn
 /mMR+Fn98GRVPphzqlGlLhIGIIcNhc57fnmbyX49GsF6dQapmyybiKGjcUer7ScRA3v5
 a93zH3iWDOPKDyZ2k/20waGHc9tx9BJjA/nVaLuSHe9qNM3iq6KlPBS4RC88FkGOOPIe
 pXpgE1Q6X/0SLzq4b1FY2b5sVkduxB7I8PXR4SGz1E6afP3xhozHRqg148Zb7mBHXX4m
 tbdQ==
X-Gm-Message-State: APjAAAVvjjroxRcrwddghxMZJNGBjP5axWlooVoG3oRkwUexVrD8MOyw
 K8iUv+Lol8Vrt4x8lEj+Uco=
X-Google-Smtp-Source: APXvYqxtQVv3yr1e0khKUv9wYsndviyH/zqlYUvd2YHpCXwZz7fr7m5qh0TLwCE9GRqYw81MGbLFwg==
X-Received: by 2002:a9d:6a5a:: with SMTP id h26mr19444149otn.319.1564603690234; 
 Wed, 31 Jul 2019 13:08:10 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id e78sm24578484oib.50.2019.07.31.13.08.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:08:09 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
Date: Wed, 31 Jul 2019 13:08:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731193257.GB15643@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130811_425152_F819AF49 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> I think I asked this but was not answered, why are we removing
>> the namespace at all? do others do the same thing (remove the
>> disk if revalidation fails)?
> 
> If a namespace no longer exists,

Why is it no longer exists? it failed revalidate..

> what do you want to do with it instead of removing it?

Well, I don't see anyone else even checking the return
status of revalidate_disk.. Perhaps Hannes can share more
on how scsi handles this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
