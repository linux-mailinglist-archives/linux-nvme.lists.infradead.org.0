Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE0C67567
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 21:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BgmrkKaXWeLms70eBo09Dlj7uR/7lcvkI21gpE6YGNs=; b=MiSVWaH4E56PKNUrupbhJ+xiR
	XejUCck2n8ZeooiSspIMs5apWfSy5n7cMikKcZ9XUetS2vN/ZVByYwCZZizYm4uXpp7JVdGL5t2h1
	WZwB3JmzZ1ZWtL0A8eGQopoQtt5I4y+tDyYDSDk/GOZHT6QwJYrxMrTzbi18lyUb3qGwhSaN46LdF
	ck8vhCv8NM8BlTru8aj82E4LCTGAPncLjUlAIzomEquS12gqJFotg1IQTwMiXexBZUp9VL4x1sK8S
	GlKwv8R5zz4sHl6YaLDVxxOwMcBbbEu/Um2rZCAE5gGOlPKbXJuPNYgf/jNdp1MC2AyLRT5bDVsh/
	U36Re+fBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1No-0001g2-HU; Fri, 12 Jul 2019 19:39:04 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1Ng-0001fU-53
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 19:38:57 +0000
Received: by mail-ot1-f54.google.com with SMTP id x21so10550999otq.12
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 12:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gqi7kNatypdwB0urhm8h5j47PlGpsdBaIaObGOks7nw=;
 b=UK9098BRegl+l1T45/nDDTCTHwpG4II3zXpKdWYBh9auBPomY65nnIB5f/apOSuG2K
 Ahubb7mXsq05wtwNC3JjtyoL9w/ob5otjYoKtqzVGgAywD1x1D1ZL1pR90CSPrzIX5tl
 zEHBwS2zm5MRrOmD0rVIlQ/lpF1CVsL7mLUJwufDYliQk8p3nTdteshrsFDkJKc7GaIe
 qsaQdZCxHlNHotr6RPuX2QVJMKA4CEhNdW5nxxFj63NGHN2rW+4iaVwfQA53KuXxdejG
 sj2Xuot+CuA2mjRKdU2g4FUjHRxadKzJaNV1jSSQ2iJksYFK7sFg65uDf9nE/+j7ZYHg
 8Ekw==
X-Gm-Message-State: APjAAAWikjMvuu1zPQ+PdVwSh6x2pYjIl6gsyXPZVKhjuOZuPheV9UVp
 /5nch7rkGjvSIpJg/DeiUvc=
X-Google-Smtp-Source: APXvYqyB+3yj+UYDFqTCLiso5q19IVyMv0WD8LlMH+NCJFZXNiBvZR0pknc9Igt/ZM4xlRSoCJpPbw==
X-Received: by 2002:a05:6830:93:: with SMTP id
 a19mr10389299oto.127.1562960331737; 
 Fri, 12 Jul 2019 12:38:51 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a94sm3506324otb.15.2019.07.12.12.38.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 12:38:50 -0700 (PDT)
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
From: Sagi Grimberg <sagi@grimberg.me>
To: Max Gurtovoy <maxg@mellanox.com>, Alex Lyakas <alex@zadara.com>,
 linux-nvme@lists.infradead.org, Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, tomwu@mellanox.com
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
 <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
 <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
Message-ID: <28046c97-c271-dff4-5252-4b5668c7bfb7@grimberg.me>
Date: Fri, 12 Jul 2019 12:38:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_123856_196282_5157EEB8 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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


>> Hi Alex,
>>
>> Not yet. Our fix is in the Initiator/Host side and it was merged.
>>
>> This is on our plate.
>>
>> In case you would like to send a patch to solve this, we'll review it 
>> of-course.
> 
> Does the attached untested patch help?

Alex? Max?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
