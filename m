Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DF918DFD
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 18:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23JW6oMpEFXqtPDBjWDyA3ZuYNhZ5hseH0KsFtsfP4c=; b=CooXKsFv60q0BB
	qvaFQz3U9uWTTWuYdJl5Bd4/kp7sUqDOm16Z5bsHvZUI6dPh36vtwa6d5vK37JjBIJjmI3OwdbwSv
	7wiyK7hTy5bxe8vnMSHXf4pAZw1pdVHyC3QAsJdhhp7eqyWhBS1xK1MZnrWxvwZWnorbw69OlpWcB
	KjpnmgfKQNC/QrB24Oii4fAqGXI5wN2vtbAmteRxLETq1ZqqfbvbbCsg2leESA4laqTP/jHfkcHPo
	27IElsEWcgiqXtoyhYe8uDKlJ3ThgFpXvso3Hbphq/juZjIgiO57pkOneMSuNr189Fl5I8qVnPbcN
	BH2xgMrXekRLm8hmHBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOls8-0002wG-8U; Thu, 09 May 2019 16:26:16 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOls3-0002vT-1b
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 16:26:12 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 09:26:09 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 09 May 2019 09:26:09 -0700
Date: Thu, 9 May 2019 10:20:38 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190509162038.GC9548@localhost.localdomain>
References: <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_092611_138424_80EC0E6C 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDM6Mjg6MzJBTSAtMDcwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBhdCAxNzo1NiwgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3RlOgo+
ID4gVGhlIHdlIGhhdmUgdGhlIHNlcXVlbmNlIGluIHlvdXIgcGF0Y2guICBUaGlzIHNlZW1zIHRv
IGJlIHJlbGF0ZWQgdG8KPiA+IHNvbWUgb2YgdGhlIE1TIHdvcmRpbmcsIGJ1dCBJJ20gbm90IHN1
cmUgd2hhdCBmb3IgZXhhbXBsZSB0ZWFyaW5nIGRvd24KPiA+IHRoZSBxdWV1ZXMgYnV5cyB1cy4g
IENhbiB5b3UgZXhwbGFpbiBhIGJpdCBtb3JlIHdoZXJlIHRob3NlIGJpdHMKPiA+IG1ha2UgYSBk
aWZmZXJlbmNlPwo+IAo+IEJhc2VkIG9uIG15IHRlc3RpbmcgaWYgcXVldWVzIChJUlEpIGFyZSBu
b3QgZGlzYWJsZWQsIE5WTWUgY29udHJvbGxlciB3b27igJl0ICAKPiBiZSBxdWllc2NlZC4KPiBT
eW1wdG9tcyBjYW4gYmUgaGlnaCBwb3dlciBkcmFpbiBvciBzeXN0ZW0gZnJlZXplLgo+IAo+IEkg
Y2FuIGNoZWNrIHdpdGggdmVuZG9ycyB3aGV0aGVyIHRoaXMgYWxzbyBuZWNlc3NhcnkgdW5kZXIg
V2luZG93cy4KCkhtLCB0aGF0IGRvZXNuJ3Qgc291bmQgcmlnaHQgYmFzZWQgb24gdGhlIHNwZWMn
cyBkZXNjcmlwdGlvbiBvZiBob3cgdGhpcwpmZWF0dXJlIHdvcmtzLiBXZSBzaG91bGQgbm90IG5l
ZWQgdG8gdGVhciBkb3duIElPIHF1ZXVlcyBmb3IgZW50ZXJpbmcKbG93IHBvd2VyLCBub3IgcmVz
ZXQgdGhlIGNvbnRyb2xsZXIgdG8gZXhpdCBpdC4KClRoZSBzZXF1ZW5jZSBmb3IgZW50ZXJpbmcg
bm9uLW9wZXJhdGlvbmFsIGxvdyBwb3dlciBzaG91bGQganVzdCBiZSBmcmVlemUKcmVxdWVzdCBx
dWV1ZXMsIHNldCB0aGUgcG93ZXIgZmVhdHVyZSwgdGhlbiB1bmZyZWV6ZSByZXF1ZXN0IHF1ZXVl
cy4KCldlIHNob3VsZG4ndCBoYXZlIHRvIGRvIGFueXRoaW5nIHRvIGV4aXQgdGhlIHN0YXRlIGFz
IHRoZSBzcGVjIHJlcXVpcmVzCmRldmljZXMgYXV0b25vbW91c2x5IHJldHVybiB0byBvcGVyYXRp
b25hbCB3aGVuIGFuIElPIGRvb3JiZWxsIGlzIHdyaXR0ZW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
