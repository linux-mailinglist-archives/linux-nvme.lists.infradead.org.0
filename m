Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54A288B33
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jQXpeG/tbiymxJ514nQRpcjYBVswgBsWX9AyDk2IfN8=; b=mVPq/Qjbu3meDeguk9+55eASh
	QvWfhkFlQkbwihyJ+3QfYAUeH3cKlslaGoSi1urlvO2xKWXlJOhTtbt51KXy9Lp6Z/ylK+ipbZw1T
	abl3bv7lmfqwtO+rwZDn9AyMMxbz+rqDpREJMyK0ZNoPXrr8kmJsN3i21aUPXjvmGjicoBtnMW+ej
	bBgG0Ud48JQwKi9/9UBCAeP8M7AU5wKsQqW1vE9kurxVkqg5dNKix9mELIFcth2RUmrGeHH8hxLPG
	9hMfnSuvaNiqFVwHM5GR2vIs5HzeH/50RBxiEcxkkdzwOm2LSkg4bGdJ7yqJnx6/EN4sj3FZ9qOVO
	lYEPqF4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQC8-0001ec-Mr; Sat, 10 Aug 2019 12:10:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQBz-0001e1-GK
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:09:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1EB77ACB7;
 Sat, 10 Aug 2019 12:09:50 +0000 (UTC)
Subject: Re: [PATCH v3 3/7] nvme: make nvme_identify_ns propagate errors back
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-4-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <9bf08266-c51c-d1e1-1881-6817cfbd0c59@suse.de>
Date: Sat, 10 Aug 2019 14:09:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-4-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_050951_693326_9E6A798D 
X-CRM114-Status: GOOD (  22.01  )
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

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IHJpZ2h0IG5vdyBjYWxs
ZXJzIG9mIG52bWVfaWRlbnRpZnlfbnMgb25seSBrbm93IHRoYXQgaXQgZmFpbGVkLAo+IGJ1dCBk
b24ndCBrbm93IHdoeS4gTWFrZSBudm1lX2lkZW50aWZ5X25zIHByb3BhZ2F0ZSB0aGUgZXJyb3Ig
YmFjay4KPiAKPiBSZXZpZXdlZC1ieTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0t
LQo+ICAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgMTIgKysrKysrLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMK
PiBpbmRleCBmNDM1Yzg1YzQwNjIuLmU1MDNmZDE0ZGU4MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAt
MTEwOCwxMyArMTEwOCwxMyBAQCBzdGF0aWMgc3RydWN0IG52bWVfaWRfbnMgKm52bWVfaWRlbnRp
ZnlfbnMoc3RydWN0IG52bWVfY3RybCAqY3RybCwKPiAgIAo+ICAgCWlkID0ga21hbGxvYyhzaXpl
b2YoKmlkKSwgR0ZQX0tFUk5FTCk7Cj4gICAJaWYgKCFpZCkKPiAtCQlyZXR1cm4gTlVMTDsKPiAr
CQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPiAgIAo+ICAgCWVycm9yID0gbnZtZV9zdWJtaXRf
c3luY19jbWQoY3RybC0+YWRtaW5fcSwgJmMsIGlkLCBzaXplb2YoKmlkKSk7Cj4gICAJaWYgKGVy
cm9yKSB7Cj4gICAJCWRldl93YXJuKGN0cmwtPmRldmljZSwgIklkZW50aWZ5IG5hbWVzcGFjZSBm
YWlsZWQgKCVkKVxuIiwgZXJyb3IpOwo+ICAgCQlrZnJlZShpZCk7Cj4gLQkJcmV0dXJuIE5VTEw7
Cj4gKwkJcmV0dXJuIEVSUl9QVFIoZXJyb3IpOwo+ICAgCX0KPiAgIAo+ICAgCXJldHVybiBpZDsK
PiBAQCAtMTc0OCw4ICsxNzQ4LDggQEAgc3RhdGljIGludCBudm1lX3JldmFsaWRhdGVfZGlzayhz
dHJ1Y3QgZ2VuZGlzayAqZGlzaykKPiAgIAl9Cj4gICAKPiAgIAlpZCA9IG52bWVfaWRlbnRpZnlf
bnMoY3RybCwgbnMtPmhlYWQtPm5zX2lkKTsKPiAtCWlmICghaWQpCj4gLQkJcmV0dXJuIC1FTk9E
RVY7Cj4gKwlpZiAoSVNfRVJSKGlkKSkKPiArCQlyZXR1cm4gUFRSX0VSUihpZCk7Cj4gICAKPiAg
IAlpZiAoaWQtPm5jYXAgPT0gMCkgewo+ICAgCQlyZXQgPSAtRU5PREVWOwo+IEBAIC0zMzM3LDgg
KzMzMzcsOCBAQCBzdGF0aWMgaW50IG52bWVfYWxsb2NfbnMoc3RydWN0IG52bWVfY3RybCAqY3Ry
bCwgdW5zaWduZWQgbnNpZCkKPiAgIAludm1lX3NldF9xdWV1ZV9saW1pdHMoY3RybCwgbnMtPnF1
ZXVlKTsKPiAgIAo+ICAgCWlkID0gbnZtZV9pZGVudGlmeV9ucyhjdHJsLCBuc2lkKTsKPiAtCWlm
ICghaWQpIHsKPiAtCQlyZXQgPSAtRUlPOwo+ICsJaWYgKElTX0VSUihpZCkpIHsKPiArCQlyZXQg
PSBQVFJfRVJSKGlkKTsKPiAgIAkJZ290byBvdXRfZnJlZV9xdWV1ZTsKPiAgIAl9Cj4gICAKPiAK
U2VlIG15IGNvbW1lbnRzIHRvIHRoZSBwcmV2aW91cyBwYXRjaC4gVGhpcyB3aWxsIG9ubHkgd29y
ayBpZiB3ZSByZXR1cm4gClBPU0lYIGVycm9yIGNvZGVzIG9ubHk7IGl0J2xsIHByb2JhYmx5IGZh
bGwgZmxhdCBvbiBpdHMgZmFjZSB3aGVuIApyZXR1cm5pbmcgYmxrX3N0YXR1c190IGNvZGVzLgpP
bmNlIHdlIGhhdmUgY29udmVydGVkIG52bWVfc3VibWl0X3N5bmNfY21kKCkgdG8gcmV0dXJuIFBP
U0lYIGVycm9yIApjb2RlcyB0aGlzIGlzIGZpbmUuCgpSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5l
Y2tlIDxoYXJlQHN1c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5l
Y2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5V
WCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
