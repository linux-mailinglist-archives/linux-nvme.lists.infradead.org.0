Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AE71983A
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 08:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPvrhcqyVocd8mVPtXu2DcVKXzkw+LXx9HCebiw30MQ=; b=VeB8I8j4GHb1eQJt23S8YiEui
	Qs2HoN/Q9HusSrrQwv5rC1/9TQY4p89V6nxRn6HCgSOWWpbUp+nuCrkU9BwRCaEGDfnmfJz5bXmo5
	B8hwUSm5d1DQBbbEsjPjBqaDl2RtCz8ZVftS4McmE6c4Yejee4nMjEtkCELYyxZ0kEmEjk5ANvZX1
	4SryHczAN1y8CUJ0jRqUZ3STd3FfLFr1JFTCN21kPtRvSCIK4NDyHFeknefX312gDZQ+HfN2YrIKg
	gxgwtq6WE/KPHf1Vr5NUHmKvnMamXKtp7p9y0reo/rBZ5GmZ7YsjEnly9tjZHJGTqWXwtidcAjxPF
	odgdnm09A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOyi1-0003Dx-BA; Fri, 10 May 2019 06:08:41 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyhv-0003DW-Ue
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 06:08:37 +0000
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hOyfG-0008Ly-Fj
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 06:05:50 +0000
Received: by mail-pl1-f197.google.com with SMTP id x5so3064615pll.2
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 23:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=h4iloC0KtdgJLw+SNGEEUmnBN4eoRDfhXPOMnZhH8Go=;
 b=j21fSNAafGkWL8BF2f66L5GnoCWZmraLq1WkqqbcOQULTwWjhkg/iBy2tA7nQBdq4C
 D7O8SiSS64iy+uMBFB/N+zBjPJP471EfBGfG80rOwa1+wQnbVshDHko+z4v43mp02AxV
 tJuskaNSAJ78yJnUKOUY53PIvmb4jG2oJItCKCA2Tn09yy4epy4cF8+tzk53xQw21DDM
 JDWESRF1XkuZP85fHzu3qiPMfOGeAZc942MldoQu3cKeQblepJmb0sFa5yB60RvyTeex
 cVOBEffhrnKVnzgXLEv1fGJP/LnnxIE+bZGgm8lWysxtq6vSmqqief/WVKh95Foves1s
 4tpw==
X-Gm-Message-State: APjAAAUM7GMsKFpWYKTEktUKoFaCcRjKSlQbJP6t/StE8OjN+YcJLfXv
 DYvdyZSyCw8bk8y0gMp+Bm2+iQYdULMcELDmmddeHDmW+N7lXhCgmKu7YqhtjVy6Aercsjtad82
 QSgwvpTTvk6N9h5NUbt83809xoTP9uQOlCbWohAxR/0ok
X-Received: by 2002:a17:902:84:: with SMTP id
 a4mr10873396pla.210.1557468348973; 
 Thu, 09 May 2019 23:05:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXPyaUtQNX07mwCNZ8kOnyUyv6UZtI2eN6ht8y+GbBqPCDNxHpJxPrJO5YXlmuD/in1wCC7Q==
X-Received: by 2002:a17:902:84:: with SMTP id
 a4mr10873365pla.210.1557468348655; 
 Thu, 09 May 2019 23:05:48 -0700 (PDT)
Received: from 2001-b011-380f-14b9-e18f-0df6-9a4b-4e37.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-e18f-0df6-9a4b-4e37.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:e18f:df6:9a4b:4e37])
 by smtp.gmail.com with ESMTPSA id u123sm8618461pfu.67.2019.05.09.23.05.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 23:05:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
Date: Fri, 10 May 2019 14:05:42 +0800
Message-Id: <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
To: Mario.Limonciello@dell.com
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_230836_179939_9F6EA928 
X-CRM114-Status: GOOD (  15.41  )
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 linux-pm@vger.kernel.org, rafael@kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, Keith Busch <kbusch@kernel.org>,
 hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMDY6MTksIDxNYXJpby5MaW1vbmNpZWxsb0BkZWxsLmNvbT4gPE1hcmlvLkxpbW9uY2llbGxv
QGRlbGwuY29tPiB3cm90ZToKCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206
IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPj4gU2VudDogVGh1cnNkYXksIE1heSA5
LCAyMDE5IDQ6NTQgUE0KPj4gVG86IExpbW9uY2llbGxvLCBNYXJpbwo+PiBDYzoga2FpLmhlbmcu
ZmVuZ0BjYW5vbmljYWwuY29tOyBoY2hAbHN0LmRlOyBheGJvZUBmYi5jb207Cj4+IHNhZ2lAZ3Jp
bWJlcmcubWU7IHJhZmFlbEBrZXJuZWwub3JnOyBsaW51eC1wbUB2Z2VyLmtlcm5lbC5vcmc7Cj4+
IHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBsaW51eC0KPj4gbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnOyBrZWl0aC5idXNjaEBpbnRlbC5j
b20KPj4gU3ViamVjdDogUmU6IFtQQVRDSF0gbnZtZS1wY2k6IFVzZSBub24tb3BlcmF0aW9uYWwg
cG93ZXIgc3RhdGUgaW5zdGVhZCAgCj4+IG9mIEQzIG9uCj4+IFN1c3BlbmQtdG8tSWRsZQo+Pgo+
Pgo+PiBbRVhURVJOQUwgRU1BSUxdCj4+Cj4+IE9uIFRodSwgTWF5IDA5LCAyMDE5IGF0IDA5OjM3
OjU4UE0gKzAwMDAsIE1hcmlvLkxpbW9uY2llbGxvQGRlbGwuY29tICAKPj4gd3JvdGU6Cj4+Pj4g
K2ludCBudm1lX3NldF9wb3dlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBucHNz
KQo+Pj4+ICt7Cj4+Pj4gKwlpbnQgcmV0Owo+Pj4+ICsKPj4+PiArCW11dGV4X2xvY2soJmN0cmwt
PnNjYW5fbG9jayk7Cj4+Pj4gKwludm1lX3N0YXJ0X2ZyZWV6ZShjdHJsKTsKPj4+PiArCW52bWVf
d2FpdF9mcmVlemUoY3RybCk7Cj4+Pj4gKwlyZXQgPSBudm1lX3NldF9mZWF0dXJlcyhjdHJsLCBO
Vk1FX0ZFQVRfUE9XRVJfTUdNVCwgbnBzcywgTlVMTCwgMCwKPj4+PiArCQkJCU5VTEwpOwo+Pj4+
ICsJbnZtZV91bmZyZWV6ZShjdHJsKTsKPj4+PiArCW11dGV4X3VubG9jaygmY3RybC0+c2Nhbl9s
b2NrKTsKPj4+PiArCj4+Pj4gKwlyZXR1cm4gcmV0Owo+Pj4+ICt9Cj4+Pj4gK0VYUE9SVF9TWU1C
T0xfR1BMKG52bWVfc2V0X3Bvd2VyKTsKPj4+Cj4+PiBJIGJlbGlldmUgd2l0aG91dCBtZW1vcnkg
YmFycmllcnMgYXQgdGhlIGVuZCBkaXNrcyB3aXRoIEhNQiB0aGlzIHdpbGwKPj4+IHN0aWxsIGtl
cm5lbCBwYW5pYyAoU3VjaCBhcyBUb3NoaWJhIEJHMykuCj4+Cj4+IFdlbGwsIHRoZSBtdXRleCBo
YXMgYW4gaW1wbGllZCBtZW1vcnkgYmFycmllciwgYnV0IHlvdXIgSE1CIGV4cGxhbmF0aW9uCj4+
IGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlIHRvIG1lIGFueXdheS4gVGhlICJtYigpIiBpbiB0aGlz
IHRocmVhZCdzIG9yaWdpbmFsCj4+IHBhdGNoIGlzIGEgQ1BVIG1lbW9yeSBiYXJyaWVyLCBhbmQg
dGhlIENQVSBoYWQgYmV0dGVyIG5vdCBiZSBhY2Nlc3NpbmcKPj4gSE1CIG1lbW9yeS4gSXMgdGhl
cmUgc29tZXRoaW5nIGVsc2UgZ29pbmcgb24gaGVyZT8KPgo+IEthaSBIZW5nIHdpbGwgbmVlZCB0
byBzcGVhayB1cCBhIGJpdCBpbiBoaXMgdGltZSB6b25lIGFzIGhlIGhhcyB0aGlzIGRpc2sgIAo+
IG9uIGhhbmQsCj4gYnV0IHdoYXQgSSByZWNhbGwgZnJvbSBvdXIgZGlzY3Vzc2lvbiB3YXMgdGhh
dCBETUEgb3BlcmF0aW9uIE1lbVJkIGFmdGVyCj4gcmVzdW1lIHdhcyB0aGUgc291cmNlIG9mIHRo
ZSBoYW5nLgoKWWVzLCB0aGF04oCZIHdoYXQgSSB3YXMgdG9sZCBieSB0aGUgTlZNZSB2ZW5kb3Is
IHNvIGFsbCBJIGtub3cgaXMgdG8gaW1wb3NlIGEgIAptZW1vcnkgYmFycmllci4KSWYgbWIoKSBz
aG91bGRu4oCZdCBiZSB1c2VkIGhlcmUsIHdoYXTigJlzIHRoZSBjb3JyZWN0IHZhcmlhbnQgdG8g
dXNlIGluIHRoaXMgIApjb250ZXh0PwoKPgo+Pj4gVGhpcyBzdGlsbCBhbGxvd3MgRDMgd2hpY2gg
d2UgZm91bmQgYXQgbGVhc3QgZmFpbGVkIHRvIGdvIGludG8gZGVlcGVzdCAgCj4+PiBzdGF0ZSBh
bmQKPj4gYmxvY2tlZAo+Pj4gcGxhdGZvcm0gczBpeCBmb3IgdGhlIGZvbGxvd2luZyBTU0RzICht
YXliZSBvdGhlcnMpOgo+Pj4gSHluaXggUEM2MDEKPj4+IExpdGVPbiBDTDEKPj4KPj4gV2UgdXN1
YWxseSB3cml0ZSBmZWF0dXJlcyB0byBzcGVjIGZpcnN0LCB0aGVuIHF1aXJrIG5vbi1jb21wbGlh
bnQKPj4gZGV2aWNlcyBhZnRlci4KPgo+IE5WTUUgc3BlYyBkb2Vzbid0IHRhbGsgYWJvdXQgYSBy
ZWxhdGlvbnNoaXAgYmV0d2VlbiBTZXRGZWF0dXJlcyB3Lwo+IE5WTUVfRkVBVF9QT1dFUl9NR01H
VCBhbmQgRDMgc3VwcG9ydCwgbm9yIG9yZGVyIG9mIGV2ZW50cy4KPgo+IFRoaXMgaXMgd2h5IHdl
IG9wZW5lZCBhIGRpYWxvZyB3aXRoIHN0b3JhZ2UgdmVuZG9ycywgaW5jbHVkaW5nICAKPiBjb250
cmFzdGluZyB0aGUgYmVoYXZpb3IKPiBvZiBNaWNyb3NvZnQgV2luZG93cyBpbmJveCBOVk1FIGRy
aXZlciBhbmQgSW50ZWwncyBXaW5kb3dzIFJTVCBkcml2ZXIuCj4KPiBUaG9zZSB0d28gSSBtZW50
aW9uIHRoYXQgY29tZSB0byBtaW5kIGltbWVkaWF0ZWx5IGJlY2F1c2UgdGhleSB3ZXJlIG1vc3Qg
IAo+IHJlY2VudGx5Cj4gdGVzdGVkIHRvIGZhaWwuICBPdXIgZGlzY3Vzc2lvbiB3aXRoIHN0b3Jh
Z2UgdmVuZG9ycyBvdmVyd2hlbG1pbmdseSAgCj4gcmVxdWVzdGVkCj4gdGhhdCB3ZSBkb24ndCB1
c2UgRDMgdW5kZXIgUzJJIGJlY2F1c2UgdGhlaXIgY3VycmVudCBmaXJtd2FyZSAgCj4gYXJjaGl0
ZWN0dXJlIHdvbid0Cj4gc3VwcG9ydCBpdC4KPgo+IEZvciBleGFtcGxlIG9uZSB2ZW5kb3IgdG9s
ZCB1cyB3aXRoIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gdGhhdCByZWNlaXZpbmcgIAo+IEQzaG90
Cj4gYWZ0ZXIgTlZNRSBzaHV0ZG93biB3aWxsIHByZXZlbnQgYmVpbmcgYWJsZSB0byBlbnRlciBM
MS4yLiAgRDNob3QgZW50cnkgIAo+IHdhcyBzdXBwb3J0ZWQKPiBieSBhbiBJUlEgaGFuZGxlciB0
aGF0IGlzbid0IHNlcnZpY2VkIGluIE5WTUUgc2h1dGRvd24gc3RhdGUuCj4KPiBBbm90aGVyIHZl
bmRvciB0b2xkIHVzIHRoYXQgd2l0aCBjdXJyZW50IGltcGxlbWVudGF0aW9uIGl0J3MgaW1wb3Nz
aWJsZSAgCj4gdG8gdHJhbnNpdGlvbgo+IHRvIFBTNCAoYXQgbGVhc3QgdmlhIEFQU1QpIHdoaWxl
IEwxLjIgRDNob3QgaXMgYWN0aXZlLgoKSSB0ZXN0ZWQgdGhlIHBhdGNoIGZyb20gS2VpdGggYW5k
IGl0IGhhcyB0d28gaXNzdWVzIGp1c3QgYXMgc2ltcGx5IHNraXBwaW5nICAKbnZtZV9kZXZfZGlz
YWJsZSgpOgoxKSBJdCBjb25zdW1lcyBtb3JlIHBvd2VyIGluIFMySQoyKSBTeXN0ZW0gZnJlZXpl
IGFmdGVyIHJlc3VtZQoKQWxzbyBJIGRvbuKAmXQgdGhpbmsgaXTigJlzIGEgc3BlYy4gSXTigJlz
IGEgZ3VpZGUgdG8gbGV0IE9FTS9PRE0gcGljayBhbmQgIAphc3NlbWJsZSBNb2Rlcm4gU3RhbmRi
eSBjb21wbGlhbnQgbWFjaGluZXMsIHNvIHdoYXQgV2luZG93cyBOVk1lIGRyaXZlciAgCnJlYWxs
eSBkb2VzIGlzIHN0aWxsIG9wYXF1ZSB0byB1cy4KCkthaS1IZW5nCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
