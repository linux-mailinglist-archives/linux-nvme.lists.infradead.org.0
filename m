Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1543D8197C
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 14:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5cXSsNwaPZ7lM5qwYaDgDGm5hKpLazSIkD2DOa1v+A=; b=DqyZDXb4buwTqX
	fxf/+LBhL8Ix/EoO2HHUw98hi3vN08/nY/8TRuatkYr5UIXpcjT+G8hH9W3WOno5rKVvZG4Y2NUQm
	uJiy9vK3btMDe3TpbaIxE/ZRt3z4aBBIb010xMYal3Njalk3UazLlLVA44vZK3RD7Rr38p8+M1+hz
	LNmWwtzmfz8Na6j8Y6PCh1Tfr7a1H1s45IIzfgQlovUzJHG4dE3PBovTs4umntglcNHElRRXeWy4N
	P4hv7mQWCjBjWxcueDWp2BQxzb5seMvaNJeyk7VQNl2Tovqq6rB54CI3cbaJPLxKiQ8qVP3zmP9gA
	uHdceUhIt1LmvX92AkLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucH3-0003qi-UM; Mon, 05 Aug 2019 12:39:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucGr-0003kW-41
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 12:39:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 82BA1AC8C;
 Mon,  5 Aug 2019 12:39:20 +0000 (UTC)
Subject: Re: [PATCH rfc v2 3/6] nvme: make nvme_identify_ns propagate errors
 back
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-4-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <05c77c73-6bf6-ecc8-ec6a-99f924ea6916@suse.de>
Date: Mon, 5 Aug 2019 14:39:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190803024955.29508-4-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_053925_456601_2DB00DC6 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8zLzE5IDQ6NDkgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gcmlnaHQgbm93IGNhbGxl
cnMgb2YgbnZtZV9pZGVudGlmeV9ucyBvbmx5IGtub3cgdGhhdAo+IGl0IGZhaWxlZCwgYnV0IGRv
bid0IGtub3cgd2h5LiBNYWtlIG52bWVfaWRlbnRpZnlfbnMgcHJvcGFnYXRlCj4gdGhlIGVycm9y
IGJhY2sgKGxpa2UgbnZtZV9pZGVudGlmeV9jdHJsKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYWdp
IEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMgfCAzMCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRl
eCBmNDM1Yzg1YzQwNjIuLjgwMmQxYjQ5ZWNmZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUv
aG9zdC9jb3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAtMTA5NCwx
MCArMTA5NCw5IEBAIHN0YXRpYyBpbnQgbnZtZV9pZGVudGlmeV9uc19saXN0KHN0cnVjdCBudm1l
X2N0cmwgKmRldiwgdW5zaWduZWQgbnNpZCwgX19sZTMyICpuCj4gIAkJCQkgICAgTlZNRV9JREVO
VElGWV9EQVRBX1NJWkUpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgc3RydWN0IG52bWVfaWRfbnMgKm52
bWVfaWRlbnRpZnlfbnMoc3RydWN0IG52bWVfY3RybCAqY3RybCwKPiAtCQl1bnNpZ25lZCBuc2lk
KQo+ICtzdGF0aWMgaW50IG52bWVfaWRlbnRpZnlfbnMoc3RydWN0IG52bWVfY3RybCAqY3RybCwK
PiArCQl1bnNpZ25lZCBuc2lkLCBzdHJ1Y3QgbnZtZV9pZF9ucyAqKmlkKQo+ICB7Cj4gLQlzdHJ1
Y3QgbnZtZV9pZF9ucyAqaWQ7Cj4gIAlzdHJ1Y3QgbnZtZV9jb21tYW5kIGMgPSB7IH07Cj4gIAlp
bnQgZXJyb3I7Cj4gIAo+IEBAIC0xMTA2LDE4ICsxMTA1LDE3IEBAIHN0YXRpYyBzdHJ1Y3QgbnZt
ZV9pZF9ucyAqbnZtZV9pZGVudGlmeV9ucyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLAo+ICAJYy5p
ZGVudGlmeS5uc2lkID0gY3B1X3RvX2xlMzIobnNpZCk7Cj4gIAljLmlkZW50aWZ5LmNucyA9IE5W
TUVfSURfQ05TX05TOwo+ICAKPiAtCWlkID0ga21hbGxvYyhzaXplb2YoKmlkKSwgR0ZQX0tFUk5F
TCk7Cj4gLQlpZiAoIWlkKQo+IC0JCXJldHVybiBOVUxMOwo+ICsJKmlkID0ga21hbGxvYyhzaXpl
b2YoKippZCksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCEqaWQpCj4gKwkJcmV0dXJuIC1FTk9NRU07
Cj4gIAo+IC0JZXJyb3IgPSBudm1lX3N1Ym1pdF9zeW5jX2NtZChjdHJsLT5hZG1pbl9xLCAmYywg
aWQsIHNpemVvZigqaWQpKTsKPiArCWVycm9yID0gbnZtZV9zdWJtaXRfc3luY19jbWQoY3RybC0+
YWRtaW5fcSwgJmMsICppZCwgc2l6ZW9mKCoqaWQpKTsKPiAgCWlmIChlcnJvcikgewo+ICAJCWRl
dl93YXJuKGN0cmwtPmRldmljZSwgIklkZW50aWZ5IG5hbWVzcGFjZSBmYWlsZWQgKCVkKVxuIiwg
ZXJyb3IpOwo+IC0JCWtmcmVlKGlkKTsKPiAtCQlyZXR1cm4gTlVMTDsKPiArCQlrZnJlZSgqaWQp
Owo+ICAJfQo+ICAKPiAtCXJldHVybiBpZDsKPiArCXJldHVybiBlcnJvcjsKPiAgfQo+ICAKSSdk
IHByZWZlciB1c2luZyBQVFJfRVJSKCkgaGVyZTsgdGhhdCB3b3VsZCBhdm9pZCB0aGUgKippZCBw
YXJhbWV0ZXIuCihJJ20gcmVhbGx5IGJpYXNlZCBhZ2FpbnN0IHRoaXMgY2FsbGluZyBtb2RlbCwg
cmV0dXJuaW5nIGFuIGVycm9yIF9hbmRfCmEgc3RydWN0dXJlLiBZb3UgY2FuIG5ldmVyIGJlIHN1
cmUgdGhhdCBib3RoIG1hdGNoLCBhbmQgeW91IGFsd2F5cyBnZXQKaW50byB3ZWlyZCBlcnJvciBo
YW5kbGluZyByb3V0aW5lcy4pCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVj
a2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAg
ICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4g
NSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywg
U3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
