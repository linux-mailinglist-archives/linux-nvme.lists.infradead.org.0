Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7577E7C13F
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 14:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUyMPiLymKOloGtw+tgyp5dLkF+jZBI/XlFSezRoOF4=; b=Ht/UlNz4TGjLbA
	sVAGHju9NuN5EXew/GKykKlCSP1H3NhSoIIWuBGucX2W/tv6kkP+6YLf+n2e4AXJANkHemHbbVaTF
	2rbQIhwUaYUF7O70na4WDv37TRfjyorOfCtSiZ1Blsc19hF1vZmKm0yCcevWWZ2SB5xsx1bLgzeVU
	ev+ikAukjAN3ko8+FDt66PqfFLp4Z6yTAyM5b7QoKs11hnOLGtJPv3/m2RAxgioHAL7WZOJ94D7u2
	iL+u5DForxha9Xjx275+ztfeEZXG1Q9+aBpBMjNDX8/QItiQZ5ExeSjgiIAr5oX3UBJ81IeORhS+/
	+hEDKK4VmoViNE3r2cLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnfy-0000H3-JU; Wed, 31 Jul 2019 12:25:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnda-0004V2-Ul
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 12:23:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9921EAF38;
 Wed, 31 Jul 2019 12:23:21 +0000 (UTC)
Subject: Re: [PATCH rfc 2/2] nvme: fix possible use-after-free condition when
 controller reset is racing namespace scanning
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-3-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <e3b0f11f-a66f-9b1a-6790-89efcaa33140@suse.de>
Date: Wed, 31 Jul 2019 14:23:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729233201.27993-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052323_358935_13406B1D 
X-CRM114-Status: GOOD (  22.98  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMC8xOSAxOjMyIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IHJlbW92ZSBucyBmcm9t
IGN0cmwgbmFtZXNwYWNlcyBsaXN0IGJlZm9yZSBkZXN0cm95aW5nIHRoZSByZXF1ZXN0IHF1ZXVl
Cj4gYXMgdGhlIHJlc2V0IHdvcmsgd2lsbCB1bnF1aXNjZSBmb3IgYWxsIHRoZSBjb250cm9sbGVy
IG5hbWVzcGFjZXMsIHdoaWxlCj4gYW4gb25saW5lIHNjYW4gbWlnaHQgcmVtb3ZlIGludmFsaWQg
bmFtZXNwYWNlcyByZXN1bHRpbmcgZnJvbSBhCj4gY29uY3VycmVudCBBRU4uCj4gCj4gV2hpbGUg
d2UncmUgYXQgaXQsIG1vdmUgbnZtZV9jaGVja19sYXN0X3BhdGggdG8gcmlnaHQgYWZ0ZXIgd2Ug
bW9kaWZ5Cj4gdGhlIG11bHRpcGF0aCByZWF0ZWQgY2xlYW51cHMuCj4gCj4gUmVwb3J0ZWQtYnk6
IEhhbm5lcyBSZWluZWNrZSAgPGhhcmVAc3VzZS5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdy
aW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9jb3Jl
LmMgfCAxMCArKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IGluZGV4IDVmNjk3MGU3YmE3My4uOWY4ZjhmNWZl
ZWFlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ICsrKyBiL2RyaXZl
cnMvbnZtZS9ob3N0L2NvcmUuYwo+IEBAIC0zNDA2LDYgKzM0MDYsMTEgQEAgc3RhdGljIHZvaWQg
bnZtZV9uc19yZW1vdmUoc3RydWN0IG52bWVfbnMgKm5zKQo+ICAJc3luY2hyb25pemVfcmN1KCk7
IC8qIGd1YXJhbnRlZSBub3QgYXZhaWxhYmxlIGluIGhlYWQtPmxpc3QgKi8KPiAgCW52bWVfbXBh
dGhfY2xlYXJfY3VycmVudF9wYXRoKG5zKTsKPiAgCXN5bmNocm9uaXplX3NyY3UoJm5zLT5oZWFk
LT5zcmN1KTsgLyogd2FpdCBmb3IgY29uY3VycmVudCBzdWJtaXNzaW9ucyAqLwo+ICsJbnZtZV9t
cGF0aF9jaGVja19sYXN0X3BhdGgobnMpOwo+ICsKPiArCWRvd25fd3JpdGUoJm5zLT5jdHJsLT5u
YW1lc3BhY2VzX3J3c2VtKTsKPiArCWxpc3RfZGVsX2luaXQoJm5zLT5saXN0KTsKPiArCXVwX3dy
aXRlKCZucy0+Y3RybC0+bmFtZXNwYWNlc19yd3NlbSk7Cj4gIAo+ICAJaWYgKG5zLT5kaXNrICYm
IG5zLT5kaXNrLT5mbGFncyAmIEdFTkhEX0ZMX1VQKSB7Cj4gIAkJZGVsX2dlbmRpc2sobnMtPmRp
c2spOwo+IEBAIC0zNDE0LDExICszNDE5LDYgQEAgc3RhdGljIHZvaWQgbnZtZV9uc19yZW1vdmUo
c3RydWN0IG52bWVfbnMgKm5zKQo+ICAJCQlibGtfaW50ZWdyaXR5X3VucmVnaXN0ZXIobnMtPmRp
c2spOwo+ICAJfQo+ICAKPiAtCWRvd25fd3JpdGUoJm5zLT5jdHJsLT5uYW1lc3BhY2VzX3J3c2Vt
KTsKPiAtCWxpc3RfZGVsX2luaXQoJm5zLT5saXN0KTsKPiAtCXVwX3dyaXRlKCZucy0+Y3RybC0+
bmFtZXNwYWNlc19yd3NlbSk7Cj4gLQo+IC0JbnZtZV9tcGF0aF9jaGVja19sYXN0X3BhdGgobnMp
Owo+ICAJbnZtZV9wdXRfbnMobnMpOwo+ICB9Cj4gIAo+IApIb3cgZG9lcyB0aGlzIG9uZSBwbGF5
IHdpdGggbnZtZV9zdG9wX3F1ZXVlcygpL252bWVfc3RhcnRfcXVldWVzKCkgd2UncmUKZG9pbmcg
ZHVyaW5nIHJlc2V0PwpJRSB3aGF0IGhhcHBlbnMgaWYgdGhpcyBpcyBjYWxsZWQgYWZ0ZXIgbnZt
ZV9zdG9wX3F1ZXVlcygpLCBidXQgYmVmb3JlCm52bWVfc3RhcnRfcXVldWVzKCk/CldlJ2xsIGVu
ZCB1cCBoYXZpbmcgYSBzdG9wcGVkIHF1ZXVlIHdoZW4gZGVsZXRpbmcgdGhlIGRpc2s7IGZyb20g
d2hhdApJJ3ZlIHNlZW4gYmxrX2NsZWFudXBfcXVldWUoKSB3aWxsIGp1c3QgZnJlZXplIHRoZSBx
dWV1ZSBhbmQgd2FpdCBmb3IKSS9PIHRvIGNvbXBsZXRlLCB3aGljaCBpdCdsbCBuZXZlciB3aWxs
IGFzIHRoZSBxdWV1ZSBpcyBzdG9wcGVkIC4uLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFu
bmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2Uu
ZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1h
eGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5
IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
