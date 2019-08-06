Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1888340B
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 16:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mOF9/N55z2uHH9OJzZ5wlVFVR5ffskTPUuYvjUBoI+c=; b=MUbBli4D6QKkM2YVLx3p7mB7U
	m9BCeW6mf9IWCBIbeGqhGhYRlJ+Ij5JXro/eZA1YRqyjyJjZUwqwrR5IcfIYCAmiGIeKLLU+VIyiH
	Mv10UfNnnOiNcbQ4erYZW4bbFWGQEfFccbzti0wJFnzpat7pP2f6hO9qPrDZhuz6mynf5HMvMDZ8J
	2b6pa7RwZ0Ho9Iamw8vBt3yO41aBEAtciT7bEfSUrjp6jE9FEAhXil/aPV4n8R3pmGPZM2K3hoO9L
	aWRWK8xTTQT8qaxSc4AtLdvBBg6bjI9uDVVpAltG7UVTf/51xrQJLUQKQ0L9yBDnbkT8apqrO3xw9
	hzcgAQRXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Yf-0007Yp-In; Tue, 06 Aug 2019 14:35:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0YO-0007Q6-Ik
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 14:35:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1B8B3ABF1;
 Tue,  6 Aug 2019 14:35:07 +0000 (UTC)
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Keith Busch <kbusch@kernel.org>
References: <20190806111036.113233-1-hare@suse.de>
 <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
 <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
 <20190806140716.GA24030@localhost.localdomain>
 <31e6f42e-2157-077c-64d4-a5a31caf0aa4@suse.de>
 <20190806142917.GB24030@localhost.localdomain>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <4ccafc9b-da17-566e-fd82-c7a3fa76d396@suse.de>
Date: Tue, 6 Aug 2019 16:35:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190806142917.GB24030@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073508_766580_BD5DE10C 
X-CRM114-Status: GOOD (  20.31  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC82LzE5IDQ6MjkgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDA2LCAy
MDE5IGF0IDA0OjEzOjQwUE0gKzAyMDAsIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gT24gOC82
LzE5IDQ6MDcgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+Pj4gT24gVHVlLCBBdWcgMDYsIDIwMTkg
YXQgMDM6NTM6MjlQTSArMDIwMCwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+Pj4+IE9uIDgvNi8x
OSAzOjUwIFBNLCBOYWRvbHNraSwgRWRtdW5kIHdyb3RlOgo+Pj4+PiBPbiA4LzYvMjAxOSA1OjEw
IEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+Pj4+PiBJZiB0aGUgRE5SIGJpdCBpcyBzZXQg
d2Ugc2hvdWxkIG5vdCByZXRyeSB0aGUgY29tbWFuZCwgZXZlbiBpZgo+Pj4+Pj4gdGhlIHN0YW5k
YXJkIHN0YXR1cyBldmFsdWF0aW9uIGluZGljYXRlcyBzby4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+
ICAgwqAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgNyArKysrKysrCj4+Pj4+PiAgIMKgIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+Pj4+
PiBpbmRleCBjYzA5YjgxZmM3ZjQuLmMzZTkyNTRmNDc1NyAxMDA2NDQKPj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29y
ZS5jCj4+Pj4+PiBAQCAtMjc5LDYgKzI3OSwxMyBAQCB2b2lkIG52bWVfY29tcGxldGVfcnEoc3Ry
dWN0IHJlcXVlc3QgKnJlcSkKPj4+Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuOwo+Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4gICDCoMKgwqDCoMKgIH0K
Pj4+Pj4+ICvCoMKgwqAgLyoKPj4+Pj4+ICvCoMKgwqDCoCAqIEFueSBwYXRoaW5nIGVycm9yIG1p
Z2h0IGJlIHJldHJpZWQsIGJ1dCB0aGUgRE5SIGJpdCB0YWtlcwo+Pj4+Pj4gK8KgwqDCoMKgICog
cHJlY2VkZW5jZS4gU28gcmV0dXJuIEJMS19TVFNfVEFSR0VUIGlmIHRoZSBETlIgYml0IGlzIHNl
dAo+Pj4+Pj4gK8KgwqDCoMKgICogdG8gYXZvaWQgcmV0cnlpbmcuCj4+Pj4+PiArwqDCoMKgwqAg
Ki8KPj4+Pj4+ICvCoMKgwqAgaWYgKGJsa19wYXRoX2Vycm9yKHN0YXR1cykgJiYgbnZtZV9yZXEo
cmVxKS0+c3RhdHVzICYgTlZNRV9TQ19ETlIpCj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHVz
ID0gQkxLX1NUU19UQVJHRVQ7Cj4+Pj4+PiAgIMKgwqDCoMKgwqAgYmxrX21xX2VuZF9yZXF1ZXN0
KHJlcSwgc3RhdHVzKTsKPj4+Pj4+ICAgwqAgfQo+Pj4+Pj4gICDCoCBFWFBPUlRfU1lNQk9MX0dQ
TChudm1lX2NvbXBsZXRlX3JxKTsKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IC0gSWYgRE5SIGFsd2F5cyB0
YWtlcyBwcmVjZWRlbmNlLCBpcyB0aGUgYmxrX3BhdGhfZXJyb3IoKSBjaGVjayBzdGlsbAo+Pj4+
PiBuZWVkZWQ/Cj4+Pj4+Cj4+Pj4gSXQgdGFrZXMgcHJlY2VkZW5jZSBpbiB0aGUgc2Vuc2UgdGhh
dCBpdCBzaG91bGQgY2F1c2UgdGhlIGNvbW1hbmQgbm90IHRvIGJlCj4+Pj4gcmV0cmllZC4gSXQg
c2hvdWxkIG5vdCBvdmVyd3JpdGUgYW55IGVycm9yIGNvZGUgaW5kaWNhdGluZyBhIG5vbi1yZXRy
eWFibGUKPj4+PiBlcnJvci4KPj4+Cj4+PiBCdXQgd2UncmUgYWxyZWFkeSBwYXN0IHRoZSBudm1l
IHJldHJ5IGxvZ2ljLCB3aGljaCBhbHNvIGhhbmRsZXMgdGhlIEROUgo+Pj4gYml0LiBXaG8gaXMg
dGhpcyB0ZWxsaW5nIG5vdCB0byByZXRyeT8KPj4+Cj4+IEFueXRoaW5nIGxheWVyZWQgb24gdG9w
IG9mIGl0LCBuYW1lbHkgZG0tbXVsdGlwYXRoIG9yIE1ELgo+IAo+IE9rYXksIHRoYXQncyB3aGF0
IEkgdGhvdWdodC4gQ2FuIHdlIGp1c3QgbW92ZSB0aGlzIGNoZWNrIHRvIGZpdCBpbiB0aGUKPiB1
bmxpa2VseSgpIGVycm9yIGNhc2UganVzdCBhYm92ZSB3aGVyZSB5b3UgaGF2ZSBpdD8KPiAKV2h5
LCBzdXJlLCBvZiBjb3Vyc2UuCldpbGwgYmUgc2VuZGluZyBhbiB1cGRhdGVkIHBhdGNoLgoKQ2hl
ZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxlYWQg
U3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5
MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkg
UmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
