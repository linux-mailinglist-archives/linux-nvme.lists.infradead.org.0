Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013E0561BC
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 07:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NvfmQ+nrL5f9vLS3Iph+dlcdr/MMnKYLJrhf5ZLbVEM=; b=FJeLjPVEZS0yS53GjREj4jiPh
	wNTv9tXV1iRWGw3ccFXfzQ4NwQ7CzZLRrOfquAe0XwwM2hVChZhyicOJU31r66rN+Zqkkx2+6GUnz
	hQxmXY6WWm0+1RexidP96KpBh4K3qYWmN+N4iPdgpV4uRoqTsCuid2zh+7r/8agMFQn2GsWZeudYu
	JznkbDJr81EDnycJ5UHsjpTYVtQ2yByt1z6kj5GRn2ZPtYfJVIg6OlnXjM0qQiaoEe9nPgSZAxHK+
	BJVEI/5ll5w/GHH+YRTOb0jJPxPygUomJbWjwiF3ngrUBYqrMTmSDdTm4sQGLP64jxEXT5Fjnvg1n
	jWexJMMug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg0Zn-0000DV-FI; Wed, 26 Jun 2019 05:34:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg0ZU-0000CW-Pj
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 05:34:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D6440AE5E;
 Wed, 26 Jun 2019 05:34:14 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
 <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
 <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <04a61807-ed2c-c91a-6eeb-c3df864fedc4@suse.de>
Date: Wed, 26 Jun 2019 07:34:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_223417_133840_781BCF93 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8yNS8xOSAxMTo1MCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiAKPj4+Pj4+PiBUaGF0
J3Mgd2hhdCBJIHRob3VnaHQgaW5pdGlhbGx5LCB0b28sIGJ1dCBpdCB0dXJuZWQgb3V0IHRvIGJl
IG5vdAo+Pj4+Pj4+IHN1ZmZpY2llbnQuCj4+Pj4+Pgo+Pj4+Pj4gTm90IHN1ZmZpY2llbnQgYmVj
YXVzZSBpdCBoYW5ncz8gb3IgcGFuaWNzPwo+Pj4+Pj4KPj4+PiBJdCBoYW5ncywgYW5kIHdlJ3Jl
IHNlZWluZyBhIHdhcm5pbmc6Cj4+Pj4KPj4+PiBrZXJuZWw6IFs2NzA4OC4zNDQwMzRdIFdBUk5J
Tkc6IENQVTogNCBQSUQ6IDI1MDIwIGF0Cj4+Pj4gLi4vbGliL3BlcmNwdS1yZWZjb3VudC5jOjMz
NCBwZXJjcHVfcmVmX2tpbGxfYW5kX2NvbmZpcm0rMHg3YS8weGEwCj4+Pj4gWyAuLiBdCj4+Pj4g
a2VybmVsOiBbNjcwODguMzQ0MTA2XSBDYWxsIFRyYWNlOgo+Pj4+IGtlcm5lbDogWzY3MDg4LjM0
NDExMl3CoCBibGtfZnJlZXplX3F1ZXVlX3N0YXJ0KzB4MmEvMHg0MAo+Pj4+IGtlcm5lbDogWzY3
MDg4LjM0NDExNF3CoCBibGtfZnJlZXplX3F1ZXVlKzB4ZS8weDQwCj4+Pj4ga2VybmVsOiBbNjcw
ODguMzQ0MTE4XcKgIG52bWVfdXBkYXRlX2Rpc2tfaW5mbysweDM2LzB4MjYwIFtudm1lX2NvcmVd
Cj4+Pj4ga2VybmVsOiBbNjcwODguMzQ0MTIyXcKgIF9fbnZtZV9yZXZhbGlkYXRlX2Rpc2srMHhj
YS8weGYwIFtudm1lX2NvcmVdCj4+Pj4ga2VybmVsOiBbNjcwODguMzQ0MTI1XcKgIG52bWVfcmV2
YWxpZGF0ZV9kaXNrKzB4YTYvMHgxMjAgW252bWVfY29yZV0KPj4+PiBrZXJuZWw6IFs2NzA4OC4z
NDQxMjddwqAgPyBibGtfbXFfZ2V0X3RhZysweGEzLzB4MjIwCj4+Pj4ga2VybmVsOiBbNjcwODgu
MzQ0MTMwXcKgIHJldmFsaWRhdGVfZGlzaysweDIzLzB4YzAKPj4+PiBrZXJuZWw6IFs2NzA4OC4z
NDQxMzNdwqAgbnZtZV92YWxpZGF0ZV9ucysweDQzLzB4ODMwIFtudm1lX2NvcmVdCj4+Pj4ga2Vy
bmVsOiBbNjcwODguMzQ0MTM3XcKgID8gd2FrZV91cF9xKzB4NzAvMHg3MAo+Pj4+IGtlcm5lbDog
WzY3MDg4LjM0NDEzOV3CoCA/IGJsa19tcV9mcmVlX3JlcXVlc3QrMHgxMmEvMHgxNjAKPj4+PiBr
ZXJuZWw6IFs2NzA4OC4zNDQxNDJdwqAgPyBfX252bWVfc3VibWl0X3N5bmNfY21kKzB4NzMvMHhl
MCBbbnZtZV9jb3JlXQo+Pj4+IGtlcm5lbDogWzY3MDg4LjM0NDE0NV3CoCBudm1lX3NjYW5fd29y
aysweDJiMy8weDM1MCBbbnZtZV9jb3JlXQo+Pj4+IGtlcm5lbDogWzY3MDg4LjM0NDE0OV3CoCBw
cm9jZXNzX29uZV93b3JrKzB4MWRhLzB4NDAwCj4+Pj4KPj4+PiDCoMKgRnJvbSB3aGljaCBJJ3Zl
IGluZmVycmVkIHRoYXQgd2UncmUgc3RpbGwgcnVubmluZyBhIHNjYW4gaW4gCj4+Pj4gcGFyYWxs
ZWwgdG8KPj4+PiByZXNldCwgYW5kIHRoYXQgdGhlIHNjYW4gdGhyZWFkIGlzIGNhbGxpbmcgJ2Js
a19mcmVlemVfcXVldWUoKScgb24gYQo+Pj4+IHF1ZXVlIHdoaWNoIGlzIGFscmVhZHkgdG9ybiBk
b3duLgo+Pj4KPj4+Cj4+PiBXaGVyZSBpcyB0aGUgc2NhbiB0cmlnZ2VyZWQgZnJvbT8gdGhlcmUg
aXMgbm8gc2NhbiBjYWxsIGZyb20gdGhlIHJlc2V0Cj4+PiBwYXRoLgo+Pj4KPj4gSXQncyB0cmln
Z2VyZWQgZnJvbSBBRU4sIGJlaW5nIHJlY2VpdmVkIGFyb3VuZCB0aGUgc2FtZSB0aW1lIHdoZW4g
cmVzZXQKPj4gdHJpZ2dlcnMuCj4+IFRoZXJlJ3MgYWN0dWFsbHkgYSBjaGFuZ2UgdGhhdCB0aGUg
QUVOIGhhbmRsaW5nIGl0c2VsZiB0cmlnZ2VyZWQgdGhlCj4+IHJlc2V0LCBidXQgSSBoYXZlbid0
IGJlIGFibGUgdG8gZGVjaXBoZXIgdGhhdCBmcm9tIHRoZSBjcmFzaCBkdW1wLgo+Pgo+Pj4gSXMg
dGhlcmUgYSBuYW1lc3BhY2UgcmVtb3ZhbCBvciBzb21ldGhpbmcgZWxzZSB0aGF0IHRyaWdnZXJz
IEFFTgo+Pj4gdG8gbWFrZSB0aGlzIGhhcHBlbj8KPj4+Cj4+PiBXaGF0IGV4YWN0bHkgaXMgdGhl
IHNjZW5hcmlvPwo+Pgo+PiBUaGUgc2NlbmFyaW8gaXMgbXVsdGlwbGUgc3RvcmFnZSBmYWlsb3Zl
ciBvbiBOZXRBcHAgT25UQVAgd2hpbGUgSS9PIGlzCj4+IHJ1bm5pbmcuCj4gCj4gSGFubmVzLAo+
IAo+IEknbSBzdGlsbCBub3QgY29udmluY2VkIHRoYXQgdGhlIHRyYW5zcG9ydHMgbmVlZCB0byBm
bHVzaCB0aGUgc2NhbiB3b3JrCj4gb24gcmVzZXRzLgo+IAo+IERvZXMgdGhlIGJlbG93IGhlbHAg
YXMgYW4gYWx0ZXJuYXRpdmU6Cj4gLS0gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0
L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IGluZGV4IDAyNGZiMjE5ZGUxNy4u
MDc0YmNiMWU3OTdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ICsr
KyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IEBAIC0xNjY1LDYgKzE2NjUsMTAgQEAgc3Rh
dGljIHZvaWQgX19udm1lX3JldmFsaWRhdGVfZGlzayhzdHJ1Y3QgZ2VuZGlzayAKPiAqZGlzaywg
c3RydWN0IG52bWVfaWRfbnMgKmlkKQo+ICDCoHsKPiAgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG52
bWVfbnMgKm5zID0gZGlzay0+cHJpdmF0ZV9kYXRhOwo+IAo+ICvCoMKgwqDCoMKgwqAgLyogaWYg
bnMgaXMgcmVtb3Zpbmcgd2UgY2Fubm90IG1hbmdsZSB3aXRoIHRoZSByZXF1ZXN0IHF1ZXVlICov
Cj4gK8KgwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoTlZNRV9OU19SRU1PVklORywgJm5zLT5mbGFn
cykpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+ICsKPiAgwqDCoMKg
wqDCoMKgwqAgLyoKPiAgwqDCoMKgwqDCoMKgwqDCoCAqIElmIGlkZW50aWZ5IG5hbWVzcGFjZSBm
YWlsZWQsIHVzZSBkZWZhdWx0IDUxMiBieXRlIGJsb2NrIAo+IHNpemUgc28KPiAgwqDCoMKgwqDC
oMKgwqDCoCAqIGJsb2NrIGxheWVyIGNhbiB1c2UgYmVmb3JlIGZhaWxpbmcgcmVhZC93cml0ZSBm
b3IgMCBjYXBhY2l0eS4KPiAtLSAKCkhtbS4gTm90IHN1cmUgaWYgdGhhdCBpcyBzdWZmaWNpZW50
LCB0aG91Z2guCldlIGRvIGlzc3VlIHNldmVyYWwgSS9PIGluIHRoZSBjb3Vyc2Ugb2YgbnZtZV9y
ZXZhbGlkYXRlX2Rpc2soKSwgYW5kIGFzIAp3ZSdyZSBydW5uaW5nIGZ1bGx5IGFzeW5jaHJvbm91
cyBoZXJlIHRoZSBkaXNrIG1pZ2h0IGJlIHJlbW92ZWQgYXQgYW55IApnaXZlbiB0aW1lLiBDZiB0
aGUgYWJvdmUgc3RhY2sgdHJhY2U7IHdlJ3JlIGdldHRpbmcgYW4gZXJyb3IgZm9yIHRoZSAKX3Nl
Y29uZF8gSS9PIChudm1lX2lkZW50aWZ5X25zIGlzIGlzc3VpbmcgSS9PLCB0b28sIGJ1dCB3ZW50
IHRocm91Z2ggCndpdGhvdXQgZXJyb3JzKS4KU28gaWYgd2Ugd2VyZSB0byBnbyB0aGF0IHJvdXRl
IHdlJ2QgbmVlZCB0byBwcm90ZWN0IGVhY2ggYW5kIGV2ZXJ5IEkvTyAKd2l0aCB0aGF0IHRlc3Qu
CldoaWNoIHRoZW4gd291bGQgYmUgc2ltaWxhciB0byBteSBwYXRjaCwgb25seSB0aGUgJ3Jlc2V0
dGluZycgc3RhdGUgCmNoZWNrIHJlcGxhY2VkIGJ5IHRoZSAncmVtb3ZpbmcnIGNoZWNrLgoKQ2hl
ZXJzLAoKSGFubmUKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBT
dG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBS
YXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
