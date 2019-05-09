Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650A71858A
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CX8K8Z1PItpX8Y51xIT4DhNnSLt+raE//0fsZuMk5t8=; b=O+YxybzlXxnH1B47ks/6r/Bye
	oP8VvdOkq/5cP7CNTNmmDUbEpKyd05vPR9vn9e1wyJwXXnlAWN9bIzTHDTZn2HOfGY3mkjFDgAkGv
	gWm0UK4oIFMIfJdf1aLwqFeMn6JzZLNpli9CHJ/nSZlQee61pGYSEPFICj5MTli1jVFJ1sSAHWShR
	xFekeVo0dfCT/s5teNcMYGD9NacNoqMqr4+LTlinUr7ijsW/UX0AO+QbP4xSzNJDmvXaQmBn293sS
	BgzbEHnkgrbepIJlEgWnejveb6qa146MdEzvpFmNSjgP1RNzMPy7U5lc8cGTQ9Sf9d28JOm3iyJ+n
	rB8z3YXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcrl-00035h-00; Thu, 09 May 2019 06:49:17 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcrc-00035E-19
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:49:09 +0000
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hOcrZ-0003dr-4e
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:49:05 +0000
Received: by mail-pg1-f199.google.com with SMTP id e20so995146pgm.16
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 23:49:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=32kiJIP116e2mLUfbaNVIRXAUg5m0z/rzvErm/or1eE=;
 b=AvS7hzduxeBt9pkvR2dsToII/5/1sj7AzR4KI4oR5eglHElBaK2CUYnwY5fBtDwpvI
 7waRMvVeMeZFVWp8TNe0xAeQQjX+8Fu7cE+e3ArtYFONNUffq/XMnHz7axSri5ojnG/Z
 rzRsNSYtPhCYnY99BqA+JDM6fdmAJLOkG8M7jR23M/KYbUzy4UPgGojgEfFNyEzeJcw1
 AnGxGBrw1VEBcXAc4MbZVEzq3e77e/5gAUpUYtdNsLJcVdS0dAcO3dQ/8qLSYEc7c3Ey
 vWYDVAs8hLSpuJ0Pwm9CsVW/xxl5MleBM/vi+V2pc/lbBbV6aHQnk+5SYRmboBV/R23Q
 1CHQ==
X-Gm-Message-State: APjAAAVlYyb4q1ujSCUIfO629hc7ofZSS7Bd2aDLNn4kWbT/iPpAH+4b
 avT72YVz2oUhXJdhX7TWH10YTQ85l09oiim2GaV5uxTF0lFpj71tm42vjfDhrbcU4hCxfbjl3U0
 5T0n15//vJ7QJx/aPu5PUJ4vlDXirKrclIDhRQC2IQLuA
X-Received: by 2002:a17:902:2927:: with SMTP id
 g36mr2893651plb.6.1557384543701; 
 Wed, 08 May 2019 23:49:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJPM/iiIg9NOJAfxK2pfbyNTkSEm2UBAYNaAFq1fQROUzkh4woLlPJ4IuDqPN3TMlHwJyvEA==
X-Received: by 2002:a17:902:2927:: with SMTP id
 g36mr2893630plb.6.1557384543367; 
 Wed, 08 May 2019 23:49:03 -0700 (PDT)
Received: from 2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:f0ba:4a15:3e79:97f9])
 by smtp.gmail.com with ESMTPSA id i12sm1460088pgb.61.2019.05.08.23.49.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 23:49:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190509061237.GA15229@lst.de>
Date: Thu, 9 May 2019 14:48:59 +0800
Message-Id: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
To: Christoph Hellwig <hch@lst.de>,
 rafael.j.wysocki@intel.com
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_234908_214904_0972C865 
X-CRM114-Status: GOOD (  22.56  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario.Limonciello@dell.com, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Q2MgUmFmYWVsIGFuZCBsaW51eC1wbQoKYXQgMTQ6MTIsIENocmlzdG9waCBIZWxsd2lnIDxoY2hA
bHN0LmRlPiB3cm90ZToKCj4gT24gV2VkLCBNYXkgMDgsIDIwMTkgYXQgMDg6Mjg6MzBQTSArMDAw
MCwgTWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20gd3JvdGU6Cj4+IFlvdSBtaWdodCB0aGluayB0
aGlzIHdvdWxkIGJlIGFkZGluZyBydW50aW1lX3N1c3BlbmQvcnVudGltZV9yZXN1bWUKPj4gY2Fs
bGJhY2tzLCBidXQgdGhvc2UgYWxzbyBnZXQgY2FsbGVkIGFjdHVhbGx5IGF0IHJ1bnRpbWUgd2hp
Y2ggaXMgbm90Cj4+IHRoZSBnb2FsIGhlcmUuICBBdCBydW50aW1lLCB0aGVzZSB0eXBlcyBvZiBk
aXNrcyBzaG91bGQgcmVseSBvbiBBUFNUIHdoaWNoCj4+IHNob3VsZCBjYWxjdWxhdGUgdGhlIGFw
cHJvcHJpYXRlIGxhdGVuY2llcyBhcm91bmQgdGhlIGRpZmZlcmVudCBwb3dlciAgCj4+IHN0YXRl
cy4KPj4KPj4gVGhpcyBjb2RlIHBhdGggaXMgb25seSBhcHBsaWNhYmxlIGluIHRoZSBzdXNwZW5k
IHRvIGlkbGUgc3RhdGUsIHdoaWNoICAKPj4gL2RvZXMvCj4+IGNhbGwgc3VzcGVuZC9yZXN1bWUg
ZnVuY3Rpb25zIGFzc29jaWF0ZWQgd2l0aCBkZXZfcG1fb3BzLiAgVGhlcmUgaXNuJ3QKPj4gYSBk
ZWRpY2F0ZWQgZnVuY3Rpb24gaW4gdGhlcmUgZm9yIHVzZSBvbmx5IGluIHN1c3BlbmQgdG8gaWRs
ZSwgd2hpY2ggaXMKPj4gd2h5IHBtX3N1c3BlbmRfdmlhX3MyaWRsZSgpIG5lZWRzIHRvIGdldCBj
YWxsZWQuCj4KPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGl0IGFsc28gZ2V0cyBjYWxsZWQgZm9yIG90
aGVycyBwYXRoczoKPgo+ICNpZmRlZiBDT05GSUdfUE1fU0xFRVAKPiAjZGVmaW5lIFNFVF9TWVNU
RU1fU0xFRVBfUE1fT1BTKHN1c3BlbmRfZm4sIHJlc3VtZV9mbikgXAo+ICAgICAgICAgLnN1c3Bl
bmQgPSBzdXNwZW5kX2ZuLCBcCj4gCS5yZXN1bWUgPSByZXN1bWVfZm4sIFwKPiAJLmZyZWV6ZSA9
IHN1c3BlbmRfZm4sIFwKPiAJLnRoYXcgPSByZXN1bWVfZm4sIFwKPiAJLnBvd2Vyb2ZmID0gc3Vz
cGVuZF9mbiwgXAo+IAkucmVzdG9yZSA9IHJlc3VtZV9mbiwKPiAjZWxzZQo+IGVsc2UKPiAjZGVm
aW5lIFNFVF9TWVNURU1fU0xFRVBfUE1fT1BTKHN1c3BlbmRfZm4sIHJlc3VtZV9mbikKPiAjZW5k
aWYKPgo+ICNkZWZpbmUgU0lNUExFX0RFVl9QTV9PUFMobmFtZSwgc3VzcGVuZF9mbiwgcmVzdW1l
X2ZuKSBcCj4gY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgbmFtZSA9IHsgXAo+IAlTRVRfU1lTVEVN
X1NMRUVQX1BNX09QUyhzdXNwZW5kX2ZuLCByZXN1bWVfZm4pIFwKPiB9Cj4KPiBBbmQgYXQgbGVh
c3QgZm9yIHBvd2Vyb2ZmIHRoaXMgbmV3IGNvZGUgc2VlbXMgY29tcGxldGVseSB3cm9uZywgZXZl
bgo+IGZvciBmcmVlemUgaXQgbG9va3MgcmF0aGVyIGJvcmRlcmxpbmUuCgpOb3QgcmVhbGx5LCBm
b3IgaGliZXJuYXRpb24gcG1fc3VzcGVuZF92aWFfczJpZGxlKCkgZXZhbHVhdGVzIHRvIGZhbHNl
IHNvICAKdGhlIG9sZCBjb2RlIHBhdGggd2lsbCBiZSB0YWtlbi4KCj4KPiBBbmQgbW9yZSB0byB0
aGUgcG9pbnRzIC0gaWYgdGhlc2UgIm1vZGVybiBNUyBzdGFuZGJ5IiBzeXN0ZW1zIGFyZQo+IGJl
Y29taW5nIGNvbW1vbiwgd2hpY2ggaXQgbG9va3MgdGhleSBhcmUsIHdlIG5lZWQgc3VwcG9ydCBp
biB0aGUgUE0gY29yZQo+IGZvciB0aG9zZSBpbnN0ZWFkIG9mIHdvcmtpbmcgYXJvdW5kIHRoZSBk
ZWNpc2lvbnMgaW4gbG93LWxldmVsIGRyaXZlcnMuCgpSYWZhZWwsIHdoYXQgZG8geW91IHRoaW5r
IGFib3V0IHRoaXM/CkluY2x1ZGluZyB0aGlzIHBhdGNoLCB0aGVyZSBhcmUgZml2ZSBkcml2ZXJz
IHRoYXQgdXNlICAKcG1fc3VzcGVuZF92aWFfe2Zpcm13YXJlLHMyaWRsZX0oKSB0byBkaWZmZXJl
bnRpYXRlIGJldHdlZW4gUzJJIGFuZCBTMy4KU28gSSB0aGluayBtYXliZSBpdOKAmXMgdGltZSB0
byBpbnRyb2R1Y2UgYSBuZXcgc3VzcGVuZCBjYWxsYmFjayBmb3IgUzJJPwoKPgo+PiBTSU1QTEVf
REVWX1BNX09QUyBub3JtYWxseSBzZXRzIHRoZSBzYW1lIGZ1bmN0aW9uIGZvciBzdXNwZW5kIGFu
ZAo+PiBmcmVlemUgKGhpYmVybmF0ZSksIHNvIHRvIGF2b2lkIGFueSBjaGFuZ2VzIHRvIHRoZSBo
aWJlcm5hdGUgY2FzZSBpdCBzZWVtcwo+PiB0byBtZSB0aGF0IHRoZXJlIG5lZWRzIHRvIGJlIGEg
bmV3IG52bWVfZnJlZXplKCkgdGhhdCBjYWxscyBpbnRvIHRoZSAgCj4+IGV4aXN0aW5nCj4+IG52
bWVfZGV2X2Rpc2FibGUgZm9yIHRoZSBmcmVlemUgcG0gb3AgYW5kIG52bWVfdGhhdygpIHRoYXQg
Y2FsbHMgaW50byB0aGUKPj4gZXhpc3RpbmcgbnZtZV9yZXNldF9jdHJsIGZvciB0aGUgdGhhdyBw
bSBvcC4KPgo+IEF0IGxlYXN0LCB5ZXMuCgpIaWJlcm5hdGlvbiBzaG91bGQgcmVtYWluIHRoZSBz
YW1lIGFzIHN0YXRlZCBhYm92ZS4KCj4KPj4+IGVudGVycHJpc2UgY2xhc3MgTlZNZSBkZXZpY2Vz
Cj4+PiB0aGF0IGRvbid0IGRvIEFQU1QgYW5kIGRvbid0IHJlYWxseSBkbyBkaWZmZXJlbnQgcG93
ZXIgc3RhdGVzIGF0Cj4+PiBhbGwgaW4gbWFueSBjYXNlcy4KPj4KPj4gRW50ZXJwcmlzZSBjbGFz
cyBOVk1lIGRldmljZXMgdGhhdCBkb24ndCBkbyBBUFNUIC0gZG8gdGhleSB0eXBpY2FsbHkKPj4g
aGF2ZSBhIG5vbi16ZXJvIHZhbHVlIGZvciBuZGV2LT5jdHJsLm5wc3M/Cj4+Cj4+IElmIG5vdCwg
dGhleSB3b3VsZG4ndCBlbnRlciB0aGlzIG5ldyBjb2RlcGF0aCBldmVuIGlmIHRoZSBzZXJ2ZXIg
ZW50ZXJlZCAgCj4+IGludG8gUzJJLgo+Cj4gTm8sIGRldmljZXMgdGhhdCBkbyBzZXQgTlBTUyB3
aWxsIGhhdmUgYXQgbGVhc3Qgc29tZSBwb3dlciBzdGF0ZXMKPiBwZXIgZGVmaW5pdGlvbiwgYWx0
aG91Z2ggdGhleSBtaWdodCBub3QgYmUgdG9vIHVzZWZ1bC4gIEkgc3VzcGVjdCBjaGVja2luZwo+
IEFQU1RBIG1pZ2h0IGJlIHNhZmVyLCBidXQgaWYgd2UgZG9uJ3Qgd2FudCB0byByZWx5IG9uIEFQ
U1Qgd2Ugc2hvdWxkCj4gY2hlY2sgZm9yIGEgcG93ZXIgc3RhdGUgc3VwcG9ydGluZyB0aGUgY29u
ZGl0aW9uIHRoYXQgdGhlIE1TIGRvY3VtZW50Cj4gcXVvdGVkIGluIHRoZSBvcmlnaW5hbCBkb2N1
bWVudCBzdXBwb3J0cy4KCklmIE1vZGVybiBTdGFuZGJ5IG9yIENvbm5lY3RlZCBTdGFuZGJ5IGlz
IG5vdCBzdXBwb3J0ZWQgYnkgc2VydmVycywgSSBkb27igJl0ICAKdGhpbmsgdGhlIGRlc2lnbiBk
b2N1bWVudHMgbWVhbiBtdWNoIGhlcmUuCldlIHByb2JhYmx5IHNob3VsZCBjaGVjayBpZiB0aGUg
cGxhdGZvcm0gZmlybXdhcmUgcmVhbGx5IHN1cHBvcnRzIFMySSAgCmluc3RlYWQuCgpLYWktSGVu
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
