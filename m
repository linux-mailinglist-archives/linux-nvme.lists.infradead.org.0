Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1CC6C8ED
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 07:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJPVR1R95RHAwWiJ1jdBXe/2RjrP6YcODQy7SiPFu5M=; b=hAxnRnV6IbXQ4c
	FqQETFu+7YtQb/fTK1KPTQ9PBrskYegBqwbV1gWa+JxBDcPV2q7xvbYadWxdpPzBfDb32lRm9rJmB
	GpdO8Q5iJq30OU5ylH7uVNcxDFE+0Ky4W75fGPp2YD5AuglJ0yxiPOS+cvov8HA6FvmE5lnUvI7HS
	XcD30koVob0q2VyH2wAFStWzmNFvo4deSfTQ/NxAB3gtDDEENd9pvkvQWuXJV2tcK3+EjL7hqummi
	P+2oqg9+T+8CVCj0oSY7LBmiOmdw7LL2Njxt3zMgOf7WEWMIxYkbUq/VLTvI4CAtUoYaLKPkzXLl0
	8zElbdJilL2aeulF5ntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzME-0003HX-Sh; Thu, 18 Jul 2019 05:53:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzM4-0003Gz-Dk
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 05:53:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2B69AAD05;
 Thu, 18 Jul 2019 05:53:23 +0000 (UTC)
Subject: Re: [PATCH 06/10] nvme-cli: Add routine to compare ctrl_list_item to
 connect args
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-7-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <9c69e6f0-79ee-80a5-4fec-2e5ef3debdf8@suse.de>
Date: Thu, 18 Jul 2019 07:53:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716211241.7650-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_225324_759918_E477A2AA 
X-CRM114-Status: GOOD (  17.89  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xNi8xOSAxMToxMiBQTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24g
Zm9yIHNlYXJjaGluZyBjb250cm9sbGVycyB0byBtYXRjaCB3aXRoIGNvbm5lY3QgYXJnczoKPiAK
PiBDcmVhdGUgYSBuZXcgcm91dGluZSB0aGF0IHJlY2VpdmVzIGEgc3RydWN0dXJlIGNvbnRhaW5p
bmcgY29ubmVjdAo+IGFyZ3VtZW50cyBhbmQgYSBkZXZpY2UgbmFtZS4gVGhlIHJvdXRpbmUgd2ls
bCBidWlsZCBhbmQgZmlsbCBpbiBhCj4gY3RybF9saXN0X2l0ZW0gZm9yIHRoZSBkZXZpY2UgYW5k
IGNvbXBhcmUgaXRzIGF0dHJpYnV0ZXMgd2l0aCB0aGUKPiBjb25uZWN0IGFyZ3VtZW50cy4gVGhl
IHJvdXRpbmUgcmV0dXJucyB0cnVlL2ZhbHNlIG9uIHdoZXRoZXIgdGhleQo+IG1hdGNoLgo+IAo+
IFJvdXRpbmUgaXMgZGVmaW5lZCBhcyBhIGdsb2JhbCBhcyBhIHN1YnNlcXVlbnQgcGF0Y2ggd2ls
bCB1c2UgaXQKPiBmcm9tIHRoZSBmYWJyaWNzIHJvdXRpbmVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4KPiBDQzogU2FnaSBHcmltYmVyZyA8
c2FnaUBncmltYmVyZy5tZT4KPiBDQzogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+
IAo+IC0tLQo+IGZyb20gcmZjIHRvIGFjdHVhbCBwb3N0aW5nOgo+ICAgbW92ZWQgU1lTX05WTUUg
ZnJvbSBmYWJyaWNzLmMgdG8gbnZtZS5oCj4gICByZXBsYWNlZCBudm1lX2N0cmxfZGlyIHdpdGgg
U1lTX05WTUUKPiAtLS0KPiAgZmFicmljcy5jIHwgIDEgLQo+ICBudm1lLmMgICAgfCAzOCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBudm1lLmggICAgfCAxMSArKysr
KysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVy
cywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAm
IE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2
ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZl
bGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcg
TsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
