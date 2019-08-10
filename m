Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7244588B3F
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rez+gUWXYgLlmYSqxuV7AdkxgMCQIaDQCWU8Rt90b+c=; b=j0R9A0SgkLPgx9hrnh+MSEGcV
	nRolhPjSCnEnBly7/+27AhyNTTLhdgO0BSDCa4m6J2qVjPfBjfKPwc3AmWUN/oVSe1oS7XhVczubt
	oXMXXwCAL0FWr6cBiZqytE8m9EQtKxJH/UVrtd6BHVX+d7VbJ6iS8qwpAmG/+T8/QRP3GXj5fnUWU
	6Pm7q+/ffCHrcYboOMvNkkP1uzWtal0SHeFAlhkorKASkOPN/UGLXTtWsvqy4juvt3CjGFgzQ21hN
	8wl/Z0kP7QGpQbYI0XE0AVQ7lFyJWCbruZrrDlOLPynub8d7DDjhBjp8DTUb06Edk9bjwCUlE23qM
	AnHSzgLRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQGp-0003ks-5r; Sat, 10 Aug 2019 12:14:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQGf-0003kW-LN
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:14:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4D0F1ACB7;
 Sat, 10 Aug 2019 12:14:40 +0000 (UTC)
Subject: Re: [PATCH v3 7/7] nvme: don't remove namespace if revalidate failed
 because of a transport error
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-8-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <16b63247-f020-5522-ffab-9404ba7b3408@suse.de>
Date: Sat, 10 Aug 2019 14:14:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-8-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_051441_851712_BC0CB3F8 
X-CRM114-Status: GOOD (  27.37  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IElmIGEgY29udHJvbGxl
ciByZXNldCBpcyByYWNpbmcgd2l0aCBhIG5hbWVzcGFjZSByZXZhbGlkYXRpb24sIHRoZQo+IHJl
dmFsaWRhdGlvbiAoYWRtaW4pIEkvTyB3aWxsIHN1cmVseSBmYWlsLCBidXQgd2Ugc2hvdWxkIG5v
dCByZW1vdmUgdGhlCj4gbmFtZXNwYWNlIGFzIHdlIHdpbGwgZXhlY3V0ZSB0aGUgSS9PIHdoZW4g
dGhlIGNvbnRyb2xsZXIgaXMgYmFjayB1cC4KPiAKPiBGaXggdGhpcyBieSBjaGVja2luZyB0aGUg
c3BlY2lmaWMgZXJyb3IgY29kZSB0aGF0IHJldmFsaWRhdGVfZGlzawo+IHJldHVybnMsIGFuZCBp
ZiBpdCBpcyBhIHRyYW5zcG9ydCByZWxhdGVkIGVycm9yLCBkbyBub3QgcmVtb3ZlCj4gdGhlIG5h
bWVzcGFjZSBhcyBpdCB3aWxsIGVpdGhlciByZWNvdmVyIHdoZW4gdGhlIGNvbnRyb2xsZXIgaXMK
PiBiYWNrIHVwIGFuZCBzY2hlZHVsZSBhIHN1YnNlcXVlbnQgc2Nhbiwgb3IgdGhlIGNvbnRyb2xs
ZXIgaXMKPiBnb2luZyBhd2F5IGFuZCB0aGUgbmFtZXNwYWNlcyB3aWxsIGJlIHJlbW92ZWQgYW55
d2F5cy4KPiAKPiBUaGlzIGZpeGVzIGEgaGFuZyBuYW1lc3BhY2Ugc2Nhbm5pbmcgcmFjaW5nIHdp
dGggYSBjb250cm9sbGVyIHJlc2V0IGFuZAo+IGFsc28gc3BvcmlvdXMgSS9PIGVycm9ycyBpbiBw
YXRoIGZhaWxvdmVyIGNvZGl0aW9ucyB3aGVyZSB0aGUKPiBjb250cm9sbGVyIHJlc2V0IGlzIHJh
Y2luZyB3aXRoIHRoZSBuYW1lc3BhY2Ugc2NhbiB3b3JrIHdpdGggbXVsdGlwYXRoCj4gZW5hYmxl
ZC4KPiAKPiBSZXBvcnRlZC1ieTogSGFubmVzIFJlaW5lY2tlICA8aGFyZUBzdXNlLmRlPgo+IFNp
Z25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gLS0tCj4gICBk
cml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCA5ICsrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggNDlm
ZmNjZDcyMDkxLi4wMDFiY2M4YThkM2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3Qv
Y29yZS5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gQEAgLTIyOCw2ICsyMjgs
OCBAQCBzdGF0aWMgYmxrX3N0YXR1c190IG52bWVfZXJyb3Jfc3RhdHVzKHN0cnVjdCByZXF1ZXN0
ICpyZXEpCj4gICAJCXJldHVybiBCTEtfU1RTX1BST1RFQ1RJT047Cj4gICAJY2FzZSBOVk1FX1ND
X1JFU0VSVkFUSU9OX0NPTkZMSUNUOgo+ICAgCQlyZXR1cm4gQkxLX1NUU19ORVhVUzsKPiArCWNh
c2UgTlZNRV9TQ19IT1NUX1BBVEhfRVJST1I6Cj4gKwkJcmV0dXJuIEJMS19TVFNfVFJBTlNQT1JU
Owo+ICAgCWRlZmF1bHQ6Cj4gICAJCXJldHVybiBCTEtfU1RTX0lPRVJSOwo+ICAgCX0KPiBAQCAt
MzQ1Miw4ICszNDU0LDExIEBAIHN0YXRpYyB2b2lkIG52bWVfdmFsaWRhdGVfbnMoc3RydWN0IG52
bWVfY3RybCAqY3RybCwgdW5zaWduZWQgbnNpZCkKPiAgIAo+ICAgCW5zID0gbnZtZV9maW5kX2dl
dF9ucyhjdHJsLCBuc2lkKTsKPiAgIAlpZiAobnMpIHsKPiAtCQlpZiAobnMtPmRpc2sgJiYgcmV2
YWxpZGF0ZV9kaXNrKG5zLT5kaXNrKSkKPiAtCQkJbnZtZV9uc19yZW1vdmUobnMpOwo+ICsJCWlm
IChucy0+ZGlzaykgewo+ICsJCQlibGtfc3RhdHVzX3Qgc3RzID0gcmV2YWxpZGF0ZV9kaXNrKG5z
LT5kaXNrKTsKPiArCQkJaWYgKHN0cyAmJiBzdHMgIT0gQkxLX1NUU19UUkFOU1BPUlQpCj4gKwkJ
CQludm1lX25zX3JlbW92ZShucyk7Cj4gKwkJfQo+ICAgCQludm1lX3B1dF9ucyhucyk7Cj4gICAJ
fSBlbHNlCj4gICAJCW52bWVfYWxsb2NfbnMoY3RybCwgbnNpZCk7Cj4gClRoaXMgaXMgYSBuZWF0
IHNvbHV0aW9uLCB5ZXQgSSdtIG5vdCBjb252aW5jZWQgdGhhdCBpdCdsbCBzb2x2ZSB0aGUgCnBy
b2JsZW0gZW50aXJlbHkuIEknbGwgZ2l2ZSBpdCBhIHNwaW4uCkJ1dCBpbiBhbnkgY2FzZSwgaXQn
cyBkZWZpbml0ZWx5IGEgc3RlcCBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uLgpTbzoKClJldmlld2Vk
LWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMsCgpIYW5uZXMKLS0g
CkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29y
a2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArNDkgOTExIDc0
MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpH
RjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
