Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA0819FF8
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 17:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALIfzaBR0nRIMsgZSeqBK7ZRk2pt3bbi1tZlCmd8Sdg=; b=RWxtYbOEWBwK6O
	4npvZ1UW8PrH0ufFbU3aVR7ZrvFKDqwIEoZQS/5OW6b1jDxhgzIPt3bQGiByOLFmUEeE+IJhqLDvP
	AXASIYq9dplnlBgBS1DMyPwsdeGGghgEP1KHJQafD+P7XTTREr7t5XzZbzEZt5DQE+KZx/OYzfiH1
	ah/sJkY87XZquHk2LD50cwWZ8C1kE5+fkfCYsOKhJTQcxHCxoEOhE8ZdQ5o68qf9V+rehztInRTgS
	qYUJmPJN9xXcV3yDelm0MyhADyKGZf7ALFm5Por01B9WhgmzbslEu0N2gXbFw5/N/QV9VRsBvzWOr
	fGssgpMC9kHzvIhSgCpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7H5-0003ii-I9; Fri, 10 May 2019 15:17:27 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7H0-0003hz-Fd
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:17:23 +0000
Received: from mail-pl1-f200.google.com ([209.85.214.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hP7Gx-0006x7-VD
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:17:20 +0000
Received: by mail-pl1-f200.google.com with SMTP id g6so3842229plp.18
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 08:17:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=9ksYfkmpkpH6va/jl6WUWe9ADNC1rlHcm4W2AWAcxsI=;
 b=m5Qt2R55c9akycAM4bS7YQbWtDnU6zkwPUGUDkWP8chXPRbT3vQUb7gW7nvma38xZt
 FHfq/kCvbGmeCWM6lrRx6CQsIVv/BrGwCa28eofnkdPOHJLo4CSOntWAir/qtFTymniY
 BiPcUUzK1Bp5gQeFdVuCZ5+PaX3ruyxV6uCfdaBkWEa5a1w/7YtBq509AWFnhs9UXXGU
 AWWvM1+elhQ30VM7k+pxu0oXLp0CGVEd/dKmLHR+I2+JHoJW92o7bnp/BfbV8vrpD3Jb
 Ke3MmyT8Bd+ikILRvf3TLC5ZuoBniZo1De6Rx+08EBuL6o1Dv9o4X/dAbC8pbLula8l+
 EmOw==
X-Gm-Message-State: APjAAAWCXa7awnmCeS0knKsO5GkPuS9fXPEZvunVPFxrha7uY/VFRpbn
 /bGoRa42Ddxu/x9Vp/qt0CKqmnmNJesj6LPXPX5l2PJIU4ZA+LQDIUFT5gs2mTyPIkDkW0164vz
 6KZZnFINNv07JAZEdJ+/S65hS97pJwjQaDk2Kh+hNGymj
X-Received: by 2002:a63:d408:: with SMTP id a8mr14221499pgh.184.1557501438679; 
 Fri, 10 May 2019 08:17:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyh/Bshj4Iu4LZ0+PAJP0YH+FOpi9SNU4iCGkiuMtOOEWfwyyXrJlCA2wUcsW2TXEFDfy/FnA==
X-Received: by 2002:a63:d408:: with SMTP id a8mr14221469pgh.184.1557501438481; 
 Fri, 10 May 2019 08:17:18 -0700 (PDT)
Received: from [192.168.1.220] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id s79sm11301512pfa.31.2019.05.10.08.17.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 08:17:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190510140209.GG9675@localhost.localdomain>
Date: Fri, 10 May 2019 23:18:52 +0800
Message-Id: <D2D197AF-0072-42AC-A844-8D6BC9677949@canonical.com>
References: <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
 <20190510140209.GG9675@localhost.localdomain>
To: Keith Busch <kbusch@kernel.org>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_081722_658414_9DCAA51B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
 "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAxMCwgMjAxOSwgYXQgMTA6MDIgUE0sIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gCj4gT24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMTE6MDU6NDJQTSAt
MDcwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPj4gWWVzLCB0aGF04oCZIHdoYXQgSSB3YXMgdG9s
ZCBieSB0aGUgTlZNZSB2ZW5kb3IsIHNvIGFsbCBJIGtub3cgaXMgdG8gaW1wb3NlIGEgIAo+PiBt
ZW1vcnkgYmFycmllci4KPj4gSWYgbWIoKSBzaG91bGRu4oCZdCBiZSB1c2VkIGhlcmUsIHdoYXTi
gJlzIHRoZSBjb3JyZWN0IHZhcmlhbnQgdG8gdXNlIGluIHRoaXMgIAo+PiBjb250ZXh0Pwo+IAo+
IEknbSBhZnJhaWQgdGhlIHJlcXVpcmVtZW50IGlzIHN0aWxsIG5vdCBjbGVhciB0byBtZS4gQUZB
SUssIGFsbCBvdXIKPiBiYXJyaWVycyByb3V0aW5lcyBlbnN1cmUgZGF0YSBpcyB2aXNpYmxlIGVp
dGhlciBiZXR3ZWVuIENQVXMsIG9yIGJldHdlZW4KPiBDUFUgYW5kIGRldmljZXMuIFRoZSBDUFUg
bmV2ZXIgYWNjZXNzZXMgSE1CIG1lbW9yeSwgc28gdGhlcmUgbXVzdCBiZSBzb21lCj4gb3RoZXIg
cmVhc29uaW5nIGlmIHRoaXMgYmFycmllciBpcyBhIHJlYWwgcmVxdWlyZW1lbnQgZm9yIHRoaXMg
ZGV2aWNlLgoKU3VyZSwgSeKAmWxsIGFzayB2ZW5kb3Igd2hhdCB0aGF0IE1lbVJkIGlzIGZvci4K
CkthaS1IZW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
