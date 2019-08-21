Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD4F9726D
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 08:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZL8P6X/kodsD1lLXmsNvoBpcL4q0AX0l9RT5mcT6sfs=; b=NwGf1zNwoBcxup
	7g23uehsVXUI4jwS8n991wkgWIOdbdvNQ70xGv5OwZAN89e0+T7LCEGiJdnCDn5Sjg7/IjPkYCjBE
	pVX1Ffwhiam9vQXbVFJYSVlRIarcL4fdDpuTi8mZ7LFBIQ1DNo5kloUg2tiO6bvfTDnWJJnXKXBnL
	f5GWgwMhJr9PmG6gkHYUctwlQjxzZEgPMZliX85Z+pPGauxx5omFlJlgPKeZ88I3sGZ4dwXwzkkkJ
	y+F35oMT3OAqn5Boz1DJUjc1RWdVx2DGyEaG/qFpqC2AwW2NeO6JcKW0bgN5PYd6tbrsg961aTkYj
	QWHmdN0fwa6RPcXkdA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KJT-0006wd-DW; Wed, 21 Aug 2019 06:41:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KJK-0006wD-V8
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 06:41:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 31CE7ADBB;
 Wed, 21 Aug 2019 06:41:31 +0000 (UTC)
Subject: Re: [PATCH] nvme-multipath: fix ana log nsid lookup when nsid is not
 found
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190820230027.14025-1-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <58c8bf66-a208-d919-2afd-9d51fd265872@suse.de>
Date: Wed, 21 Aug 2019 08:41:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190820230027.14025-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_234135_297728_54706820 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>,
 Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8yMS8xOSAxOjAwIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IEZyb206IEFudG9uIEVp
ZGVsbWFuIDxhbnRvbkBsaWdodGJpdHNsYWJzLmNvbT4KPiAKPiBBTkEgbG9nIHBhcnNpbmcgaW52
b2tlcyBudm1lX3VwZGF0ZV9hbmFfc3RhdGUoKSBwZXIgQU5BIGdyb3VwIGRlc2MuCj4gVGhpcyB1
cGRhdGVzIHRoZSBzdGF0ZSBvZiBuYW1lc3BhY2VzIHdpdGggbnNpZHMgaW4gZGVzYy0+bnNpZHNb
XS4KPiAKPiBCb3RoIGN0cmwtPm5hbWVzcGFjZXMgbGlzdCBhbmQgZGVzYy0+bnNpZHNbXSBhcnJh
eSBhcmUgc29ydGVkIGJ5IG5zaWQuCj4gSGVuY2UgbnZtZV91cGRhdGVfYW5hX3N0YXRlKCkgcGVy
Zm9ybXMgYSBzaW5nbGUgd2FsayBvdmVyIGN0cmwtPm5hbWVzcGFjZXM6Cj4gLSBpZiBjdXJyZW50
IG5hbWVzcGFjZSBtYXRjaGVzIHRoZSBjdXJyZW50IGRlc2MtPm5zaWRzW25dLAo+ICAgdGhpcyBu
YW1lc3BhY2UgaXMgdXBkYXRlZCwgYW5kIG4gaXMgaW5jcmVtZW50ZWQuCj4gLSB0aGUgcHJvY2Vz
cyBzdG9wcyB3aGVuIGl0IGVuY291bnRlcnMgdGhlIGVuZCBvZiBlaXRoZXIKPiAgIGN0cmwtPm5h
bWVzcGFjZXMgZW5kIG9yIGRlc2MtPm5zaWRzW10KPiAKPiBJbiBjYXNlIGRlc2MtPm5zaWRzW25d
IGRvZXMgbm90IG1hdGNoIGFueSBvZiBjdHJsLT5uYW1lc3BhY2VzLAo+IHRoZSByZW1haW5pbmcg
bnNpZHMgZm9sbG93aW5nIGRlc2MtPm5zaWRzW25dIHdpbGwgbm90IGJlIHVwZGF0ZWQuCj4gU3Vj
aCBzaXR1YXRpb24gd2FzIGNvbnNpZGVyZWQgYWJub3JtYWwgYW5kIGdlbmVyYXRlZCBXQVJOX09O
X09OQ0UuCj4gCj4gSG93ZXZlciBBTkEgbG9nIE1BWSBjb250YWluIG5zaWRzIG5vdCAoeWV0KSBm
b3VuZCBpbiBjdHJsLT5uYW1lc3BhY2VzLgo+IEZvciBleGFtcGxlLCBsZXRzIGNvbnNpZGVyIHRo
ZSBmb2xsb3dpbmcgc2NlbmFyaW86Cj4gLSBudm1lMCBleHBvc2VzIG5hbWVzcGFjZXMgd2l0aCBu
c2lkcyA9IFsyLCAzXSB0byB0aGUgaG9zdAo+IC0gYSBuZXcgbmFtZXNwYWNlIG5zaWQgPSAxIGlz
IGFkZGVkIGR5bmFtaWNhbGx5Cj4gLSBhbHNvLCBhIEFOQSB0b3BvbG9neSBjaGFuZ2UgaXMgdHJp
Z2dlcmVkCj4gLSBOU19DSEFOR0VEIGFlbiBpcyBnZW5lcmF0ZWQgYW5kIHRyaWdnZXJzIHNjYW5f
d29yawo+IC0gYmVmb3JlIHNjYW5fd29yayBkaXNjb3ZlcnMgbnNpZD0xIGFuZCBjcmVhdGVzIGEg
bmFtZXNwYWNlLCBhIE5PVElDRV9BTkEKPiAgIGFlbiB3YXMgaXNzdWVzIGFuZCBhbmFfd29yayBy
ZWNlaXZlcyBBTkEgbG9nIHdpdGggbnNpZHM9WzEsIDIsIDNdCj4gCj4gUmVzdWx0OiBhbmFfd29y
ayBmYWlscyB0byB1cGRhdGUgQU5BIHN0YXRlIG9uIGV4aXN0aW5nIG5hbWVzcGFjZXMgWzIsIDNd
Cj4gCj4gU29sdXRpb246Cj4gQ2hhbmdlIHRoZSB3YXkgbnZtZV91cGRhdGVfYW5hX3N0YXRlKCkg
bmFtZXNwYWNlIGxpc3Qgd2Fsawo+IGNoZWNrcyB0aGUgY3VycmVudCBuYW1lc3BhY2UgYWdhaW5z
dCBkZXNjLT5uc2lkc1tuXSBhcyBmb2xsb3dzOgo+IGEpIG5zLT5oZWFkLT5uc19pZCA8IGRlc2Mt
Pm5zaWRzW25dOiBrZWVwIHdhbGtpbmcgY3RybC0+bmFtZXNwYWNlcy4KPiBiKSBucy0+aGVhZC0+
bnNfaWQgPT0gZGVzYy0+bnNpZHNbbl06IG1hdGNoLCB1cGRhdGUgdGhlIG5hbWVzcGFjZQo+IGMp
IG5zLT5oZWFkLT5uc19pZCA+PSBkZXNjLT5uc2lkc1tuXTogc2tpcCB0byBkZXNjLT5uc2lkc1tu
KzFdCj4gCj4gVGhpcyBlbmFibGVzIGNvcnJlY3Qgb3BlcmF0aW9uIGluIHRoZSBzY2VuYXJpbyBk
ZXNjcmliZWQgYWJvdmUuCj4gVGhpcyBhbHNvIGFsbG93cyBBTkEgbG9nIHRvIGNvbnRhaW4gbnNp
ZHMgY3VycmVudGx5IGludmlzaWJsZQo+IHRvIHRoZSBob3N0LCBpLmUuIGluYWN0aXZlIG5zaWRz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEVpZGVsbWFuIDxhbnRvbkBsaWdodGJpdHNsYWJz
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+
IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYyB8IDggKysrKystLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlwYXRoLmMgYi9kcml2ZXJzL252bWUvaG9zdC9t
dWx0aXBhdGguYwo+IGluZGV4IGFmODMxZDNkMTVkMC4uMzBkZTdlZmVmMDAzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hv
c3QvbXVsdGlwYXRoLmMKPiBAQCAtNTA5LDE0ICs1MDksMTYgQEAgc3RhdGljIGludCBudm1lX3Vw
ZGF0ZV9hbmFfc3RhdGUoc3RydWN0IG52bWVfY3RybCAqY3RybCwKPiAgCj4gIAlkb3duX3dyaXRl
KCZjdHJsLT5uYW1lc3BhY2VzX3J3c2VtKTsKPiAgCWxpc3RfZm9yX2VhY2hfZW50cnkobnMsICZj
dHJsLT5uYW1lc3BhY2VzLCBsaXN0KSB7Cj4gLQkJaWYgKG5zLT5oZWFkLT5uc19pZCAhPSBsZTMy
X3RvX2NwdShkZXNjLT5uc2lkc1tuXSkpCj4gKwkJdW5zaWduZWQgbnNpZCA9IGxlMzJfdG9fY3B1
KGRlc2MtPm5zaWRzW25dKTsKPiArCj4gKwkJaWYgKG5zLT5oZWFkLT5uc19pZCA8IG5zaWQpCj4g
IAkJCWNvbnRpbnVlOwo+IC0JCW52bWVfdXBkYXRlX25zX2FuYV9zdGF0ZShkZXNjLCBucyk7Cj4g
KwkJaWYgKG5zLT5oZWFkLT5uc19pZCA9PSBuc2lkKQo+ICsJCQludm1lX3VwZGF0ZV9uc19hbmFf
c3RhdGUoZGVzYywgbnMpOwo+ICAJCWlmICgrK24gPT0gbnJfbnNpZHMpCj4gIAkJCWJyZWFrOwo+
ICAJfQo+ICAJdXBfd3JpdGUoJmN0cmwtPm5hbWVzcGFjZXNfcndzZW0pOwo+IC0JV0FSTl9PTl9P
TkNFKG4gPCBucl9uc2lkcyk7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiAKUmV2aWV3ZWQtYnk6
IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIu
IEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBz
dXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJI
LCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwg
TWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
