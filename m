Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDADC21652
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMHfaIWw6MeTTc1diW58CMheA/lPaJO/FsdvULm2HDo=; b=DrFtiKU2PRw7Wc
	kLjCgI3lk3dsH7XXrKGIdp1iGUQ/MIIz1jxca96iWp8rceXzhf046Q5V0Q2w8pLyOqybehgZJ2ilk
	MJWzGKEezBnXP3uTuak8bVLx+HxoQuSIzys8k0bUYzSYPGs0TgFjPC/n2Oe3suoVeSHohuXZtpRD1
	5bZ2m3klXCXeoolWykBeBFpt0Ua0v7F+yo+YNeU2WT2RRYXlrTtIKQ+gnHVg9jZSQ4M9ujzQoUZ78
	Y23Nw2VHLKHiFLUufJFplGGiOl6LRYsBgmEejRzOEoRrWHjTzO9s4KJxdaI39bMHPPUK4JV+zgNPX
	/pj06azde7Gm+oycQsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZEO-0002xm-Lg; Fri, 17 May 2019 09:32:48 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZEJ-0002xI-Dx
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:32:44 +0000
Received: by mail-ot1-f50.google.com with SMTP id 66so6178639otq.0
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 02:32:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KBMsOHZfdaL3iXOgi9lnBMHD4shv64h26vamJoa6Qqk=;
 b=DCW879m6H1KclZoKMbIFKxl5p/tx8l2rR4KO+gAMzkEipWJgcXmANhqsCh8VgFRWYJ
 +LGIFbtc6LgKkJ8uv0VQDi2SECVC1tIOXdNmkf3LvgwURmQvj98X2qFWnvJaYmAYuPRr
 Vq7J7UMXZ+XZhK3sFi+MtnNTqwLNvEHEjHM1UXxvQPnnoKFKEDSPtQUlIC4q7cdXgRlR
 Nyt4dl5NjVvnEtM4HN4LTWCFvbMjGDdqkI4xJV2jPXof0KOOphDAm2jLRmm/lCMBAFXh
 3JJGt3XhkdXc/ECcU2w3DVw0ZvNktsRpVJiYLIqNx+Kyv/kH/x3hNk5zebBWSlJ5N4y8
 3gFw==
X-Gm-Message-State: APjAAAVPMSLx2SK/LQpBODTv3Eiu1pK73sjmhCx/gpGgoFycQeYD/8Sj
 mP0dq9iR3tRJSDHIlGwGU+8gXOnBo89PcwMFAZ4=
X-Google-Smtp-Source: APXvYqxcTd9lIILm/gyY1vRU2uJgpTquzlhO2SzkrbiyUeKB3SutnIv11rfog79nz72r+x98eaj9CUJtMDenMZJDdAk=
X-Received: by 2002:a9d:6b98:: with SMTP id b24mr3712505otq.189.1558085562077; 
 Fri, 17 May 2019 02:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <E72968DB-907D-41F9-BD51-5D7672659802@canonical.com>
In-Reply-To: <E72968DB-907D-41F9-BD51-5D7672659802@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 17 May 2019 11:32:31 +0200
Message-ID: <CAJZ5v0gRKEiR2_1egcZwr9sAATG=nUh8igf-TasvWqe4syTu_A@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_023243_473059_D4F92987 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTE6MjMgQU0gS2FpLUhlbmcgRmVuZwo8a2FpLmhlbmcu
ZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPgo+IGF0IDE2OjM5LCBSYWZhZWwgSi4gV3lzb2Nr
aSA8cmFmYWVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gPiBPbiBUaHUsIE1heSAxNiwgMjAxOSBh
dCAxMDo1NiBQTSBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+Cj4gPiB3cm90
ZToKPiA+PiBPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCAxMDo0NSBQTSBLZWl0aCBCdXNjaCA8a2J1
c2NoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+PiBPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCAxMDoy
NTo0N1BNICswMjAwLCBSYWZhZWwgSi4gV3lzb2NraSB3cm90ZToKPiA+Pj4+IE9uIFRodSwgTWF5
IDE2LCAyMDE5IGF0IDk6NDMgUE0gS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPiB3cm90
ZToKPiA+Pj4+PiBJZiB3ZSdyZSBnb2luZyB0byByZXBsYWNlIG91ciBTSU1QTEVfREVWX1BNX09Q
UyBhcyBSYWZhZWwgc3VnZ2VzdHMsCj4gPj4+Pj4gbWlnaHQgYXMgd2VsbCBhZGQgYSAuc3VzcGVu
ZF9ub2lycSBjYWxsYmFjay4gV2UgY2FuIGp1c3Qgc2F2ZSB0aGUKPiA+Pj4+PiBzdGF0ZSBhZ2Fp
biB0byB3b3JrIGFyb3VuZCB0aGlzIHRvby4KPiA+Pj4+Cj4gPj4+PiBSZWxheCwgcHJldHR5IHBs
ZWFzZS4gIFNhdmluZyB0aGUgc3RhdGUgYWdhaW4gc2hvdWxkbid0IGJlIG5lY2Vzc2FyeS4KPiA+
Pj4+Cj4gPj4+PiBMZXQncyBmaXJzdCB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyBvbi4KPiA+Pj4K
PiA+Pj4gSGFoLCBva2F5IGZhaXIgZW5vdWdoLgo+ID4+Pgo+ID4+PiBGV0lXLCBJJ3ZlIHRyaWVk
IGN1cnJlbnQgbWFpbmxpbmUgb24gdHdvIGRpZmZlcmVudCBwbGF0Zm9ybXMgYW5kIEkgc2VlCj4g
Pj4+IG9ubHkgdGhlIGV4cGVjdGVkIG51bWJlciBvZiBjYWxscyB0byBwY2lfcG1fc3VzcGVuZF9u
b2lycSwgc28gZXZlcnl0aGluZwo+ID4+PiB3b3JrcyBmb3IgbWUuCj4gPj4KPiA+PiBBbmQgSSBk
b24ndCBzZWUgd2h5IGl0IG1pZ2h0IG5vdCB3b3JrIGFueXdoZXJlIGVsc2Ugb3RoZXIgdGhhbiBh
Cj4gPj4ga2VybmVsIHNvdXJjZSBoYWNrZWQgaW50byBwaWVjZXMgb3IgYSBwbGF0Zm9ybSB3aXRo
IGZ1bmRhbWVudGFsCj4gPj4gcHJvYmxlbXMuIDotKQo+ID4KPiA+IEkgZm9yZ290IGFib3V0IG9u
ZSB0aGluZyB3aGljaCBpcyByZWxldmFudCBoZXJlLCBzb3JyeSBhYm91dCB0aGF0Lgo+ID4KPiA+
IElmIHRoZXJlIGlzIGEgc3B1cmlvdXMgRUMgd2FrZXVwIGR1cmluZyBzMmlkbGUsIHBjaV9wbV9z
dXNwZW5kX25vaXJxKCkKPiA+ICp3aWxsKiBiZSBydW4gYWdhaW4gYWZ0ZXIgcGNpX3BtX3Jlc3Vt
ZV9ub2lycSgpIHdpdGhvdXQgZ29pbmcgdGhyb3VnaAo+ID4gdGhlIGVudGlyZSBzeXN0ZW0gcmVz
dW1lIGFuZCBuZXh0IHN1c3BlbmQuICBJbiB0aGF0IGNhc2UgdGhlIHNlY29uZAo+ID4gaXRlcmF0
aW9uIG9mIHBjaV9wbV9zdXNwZW5kX25vaXJxKCkgd2lsbCBwdXQgdGhlIGRldmljZSBpbnRvIEQz
LCBpZgo+ID4gdGhhdCdzIHRoZSB0YXJnZXQgcG93ZXIgc3RhdGUgb2YgdGhlIGRldmljZSBhcyBk
ZXRlcm1pbmVkIGJ5Cj4gPiBwY2lfcHJlcGFyZV90b19zbGVlcCgpLCBiZWNhdXNlIHBjaV9wbV9y
ZXN1bWVfbm9pcnEoKSBjYWxscwo+ID4gcGNpX3Jlc3RvcmVfc3RhdGUoKSB3aGljaCBjbGVhcnMg
c3RhdGVfc2F2ZWQuCj4gPgo+ID4gVGhhdCdzIG5vdCB3aGF0IGFwcGVhcnMgdG8gaGFwcGVuIG9u
IHRoZSB0ZXN0IHBsYXRmb3JtIGFzIHBlciB0aGUKPiA+IHBvc3RlZCBsb2csIGJ1dCBuZXZlcnRo
ZWxlc3MgaXQgY2FuIGhhcHBlbi4KPgo+IFRoZSBwYXRjaCBNYXJpbyBwb2ludGVkIHNvbHZlcyB0
aGUgaXNzdWUgZm9yIHRoZSB0ZXN0IHBsYXRmb3JtIEkgdXNlZC4KPgo+IEnigJl2ZSB0ZXN0ZWQg
YSBkb3plbiBOVk1lcywgYWxsIG9mIHRoZW0gd29yayBwcm9wZXJseSB3aXRoIEtlaXRo4oCZcyBw
YXRjaAo+IHNlcmllcywgb25jZSB0aGUgTFBJVCBmaXggaXMgYXBwbGllZC4KPgo+ID4KPiA+IEFy
Z3VhYmx5LCB0aGUgZHJpdmVyIHNob3VsZCBub3QgbmVlZCB0byB3b3JyeSBhYm91dCB0aGF0LCBz
byB0aGF0Cj4gPiBuZWVkcyB0byBiZSBhZGRyZXNzZWQgaW4gdGhlIFBDSSBjb3JlIElNTy4KPiA+
Cj4gPiBUaGUgYXR0YWNoZWQgcGF0Y2ggc2hvdWxkIGhlbHAgKG5vdCBpbmxpbmUgdG8gYXZvaWQg
Z21haWwtaW5kdWNlZAo+ID4gd2hpdGUgc3BhY2UgZGFtYWdlKS4KPiA+Cj4gPiBJIHdpbGwgcG9z
dCBpdCBwcm9wZXJseSB3aXRoIGEgY2hhbmdlbG9nIHNob3J0bHkuCj4gPiA8cGNpLXBtLXNraXAt
bm9pcnEucGF0Y2g+Cj4KPiBTaW5jZSB0aGUgcGF0Y2ggTWFyaW8gc3VnZ2VzdGVkIHNvbHZlcyB0
aGUgaXNzdWUsIGRvIHlvdSBzdGlsbCB3YW50IG1lIHRvCj4gdGVzdCB0aGlzIHBhdGNoPwoKSSBk
b24ndCB0aGluayBpdCB3aWxsIG1hdHRlciBpbiB0aGF0IGNhc2UuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
