Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB51176AEB
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 16:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oKYNG5nRL9wtjOACATRqr6EkLoCwglV90NyXpRzkEpM=; b=AWNm7UAw0TEdTGV7cvMPWbH2K
	ydGbyvOJ8xaQCgzYjT7JdXh4VxFlyVD0khnUoGbRKnD4gABExhawuCx1u8CN32f6PQUYOJXJg4r4E
	KPIF9yuK3W1TcKtGRMN0brAGZTS7NDtpGEUyhTb9tS3/732jHGvGl4dORg68Qz6yQBV+VX++pkqvW
	7vNFUIfFogQcdKowN3h1UNDs0fchyOwKkkaPw1jlrnbKiTpXXjbnhlhyvQigjBXiOehDGDwSAyhMX
	fzba2l3S358mS/pIyY+RgBGSX6qZoMPSZHKYoywPV3AEAnzKMzDsqxWQCAo5M9YTLQ0jvbnx0reCH
	2YGqvb9JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0oU-0007YQ-EU; Fri, 26 Jul 2019 14:03:14 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0oM-0007XL-V9
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 14:03:08 +0000
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hr0oJ-0006AT-Ah
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 14:03:03 +0000
Received: by mail-pg1-f199.google.com with SMTP id n3so23201871pgh.12
 for <linux-nvme@lists.infradead.org>; Fri, 26 Jul 2019 07:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=zgKsD0vS61TwqaiMc5Bxbo+tuGL4q/knIykLeSFgHUE=;
 b=fn8fTBKndJGzJz5UMFUbfxfSfGyjwyAI+wtNSCt4Dq0CARKU/tmcGn//R72MbN6Vma
 Q6h8qBqN9XxaWMzjZTsS9caIqo7UTkfoW/Pywj2ofzbVllrqQWUEmJ/yLs8gt/v04IZE
 YX/aOBNmFPyiwUxOoJxGkVVLctaeMGdkTruCIT74jmNths8e/Bxa6ffTkz19VBDkIEcA
 x3iJwFtv2vYjaHdabbla8o96NWvjsiyon36bzMyM0lQeWa7bLfaNy2cyWokOxSFTxGu3
 PNaUsgWXERRqqQANR61k+afFIprpoNA7iIkDYw6+iKhbl+v0WDGN9NBHC7nmgSGnqalY
 PZ3Q==
X-Gm-Message-State: APjAAAWi6xB1wXfY+gNKe/2wqKFXsAOOzJJnIHjq2G4R+duycxg8IzWc
 ZPGRw2p6ARPiAI3zs+g8i/Qmt3owfPThXDJjUcEzoYmwKFamwE6uoBR8b3sX/ZY0xcpcNYhd8vO
 Pn1plBgmUtvbyygXZ96gCLZfsbuTiiar2crpJwLo4VsgF
X-Received: by 2002:a17:90b:d82:: with SMTP id
 bg2mr55822729pjb.87.1564149781622; 
 Fri, 26 Jul 2019 07:03:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGjVFm3iMZdHa8/bpEy8jQL6sS/HSuRjQlLlbJZHDjj7/gKO7kf1TjhItkgv13p7LIplasGw==
X-Received: by 2002:a17:90b:d82:: with SMTP id
 bg2mr55822693pjb.87.1564149781331; 
 Fri, 26 Jul 2019 07:03:01 -0700 (PDT)
Received: from 2001-b011-380f-37d3-3494-cf95-ca69-bfbd.dynamic-ip6.hinet.net
 (2001-b011-380f-37d3-3494-cf95-ca69-bfbd.dynamic-ip6.hinet.net.
 [2001:b011:380f:37d3:3494:cf95:ca69:bfbd])
 by smtp.gmail.com with ESMTPSA id n26sm56226280pfa.83.2019.07.26.07.02.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 07:03:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <15043168.halW6uqc8m@kreacher>
Date: Fri, 26 Jul 2019 22:02:57 +0800
Message-Id: <D33632F4-E119-4833-816C-79084DA03DE4@canonical.com>
References: <2332799.izEFUvJP67@kreacher> <2428826.VBuqOhikiK@kreacher>
 <20190725195258.GA7307@localhost.localdomain> <15043168.halW6uqc8m@kreacher>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_070307_132275_D9B3D345 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

at 04:02, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:

> On Thursday, July 25, 2019 9:52:59 PM CEST Keith Busch wrote:
>> On Thu, Jul 25, 2019 at 09:48:57PM +0200, Rafael J. Wysocki wrote:
>>> NVME Identify Controller:
>>> vid     : 0x1c5c
>>> ssvid   : 0x1c5c
>>> sn      : MS92N171312902J0N
>>> mn      : PC401 NVMe SK hynix 256GB
>>> fr      : 80007E00
>>> rab     : 2
>>> ieee    : ace42e
>>> cmic    : 0
>>> mdts    : 5
>>> cntlid  : 1
>>> ver     : 10200
>>> rtd3r   : 7a120
>>> rtd3e   : 1e8480
>>> oaes    : 0x200
>>> ctratt  : 0
>>> oacs    : 0x17
>>> acl     : 7
>>> aerl    : 3
>>> frmw    : 0x14
>>> lpa     : 0x2
>>> elpe    : 255
>>> npss    : 4
>>> avscc   : 0x1
>>> apsta   : 0x1
>>> wctemp  : 352
>>> cctemp  : 354
>>> mtfa    : 0
>>> hmpre   : 0
>>> hmmin   : 0
>>> tnvmcap : 0
>>> unvmcap : 0
>>> rpmbs   : 0
>>> edstt   : 10
>>> dsto    : 0
>>> fwug    : 0
>>> kas     : 0
>>> hctma   : 0
>>> mntmt   : 0
>>> mxtmt   : 0
>>> sanicap : 0
>>> hmminds : 0
>>> hmmaxd  : 0
>>> nsetidmax : 0
>>> anatt   : 0
>>> anacap  : 0
>>> anagrpmax : 0
>>> nanagrpid : 0
>>> sqes    : 0x66
>>> cqes    : 0x44
>>> maxcmd  : 0
>>> nn      : 1
>>> oncs    : 0x1f
>>> fuses   : 0x1
>>> fna     : 0
>>> vwc     : 0x1
>>> awun    : 7
>>> awupf   : 7
>>> nvscc   : 1
>>> acwu    : 7
>>> sgls    : 0
>>> mnan    : 0
>>> subnqn  :
>>> ioccsz  : 0
>>> iorcsz  : 0
>>> icdoff  : 0
>>> ctrattr : 0
>>> msdbd   : 0
>>> ps    0 : mp:6.00W operational enlat:5 exlat:5 rrt:0 rrl:0
>>>           rwt:0 rwl:0 idle_power:- active_power:-
>>> ps    1 : mp:3.80W operational enlat:30 exlat:30 rrt:1 rrl:1
>>>           rwt:1 rwl:1 idle_power:- active_power:-
>>> ps    2 : mp:2.40W operational enlat:100 exlat:100 rrt:2 rrl:2
>>>           rwt:2 rwl:2 idle_power:- active_power:-
>>> ps    3 : mp:0.0700W non-operational enlat:1000 exlat:1000 rrt:3 rrl:3
>>>           rwt:3 rwl:3 idle_power:- active_power:-
>>> ps    4 : mp:0.0070W non-operational enlat:1000 exlat:5000 rrt:3 rrl:3
>>>           rwt:3 rwl:3 idle_power:- active_power:-
>>
>> Hm, nothing stands out as something we can use to determine if we should
>> skip the nvme specific settings or allow D3. I've no other ideas at the
>> moment for what we may check.
>
> Well, do ASPM settings matter here?

Seems like it's a regression in the firmware.

The issue happens in version 80007E00 but not version 80006E00.
I am not sure how to downgrade it under Linux though.
The firmware changelog [1] is very interesting:
- Improves the performance of the solid-state drive (SSD) by distributing  
power into the SSD efficiently according to the power state of the system.

[1]  
https://www.dell.com/support/home/us/en/04/drivers/driversdetails?driverid=mcxm8

Kai-Heng


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
