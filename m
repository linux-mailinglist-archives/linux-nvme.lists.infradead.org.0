Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4690F21D59
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 20:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2bn7ym3hK6gMhB2ysUK7J4F5I3fhBzPtrNUbjoos48Y=; b=SWQLiOS01PmCVRKCWFzFL0YQP
	lzyq3nJIStuArKfUVNgKc9LC51zV7hxY6t+q+Eue7RITK6tswYYfI3EaWnbtY32OY08I1eQWVlyTz
	b3iW87agjdG3pOgbEVU/kVZvelCed97FBTveYjxz39/hznEj88muKNc87FIYKSF277/RwWNQGo6QO
	ffR8iS2F+C70zWGwyKYEoXBCHkDd1Gh6f3Z0F0uQG2OhadTDIZLm++YW6Xupas7BYI/Orobz7pZZm
	PQM/qw2kDU2l6yJ2AcvDzlqiG98W7I+MZ2cgVCGo59QUT1IyCIl60HQhWATUt4yz6qW7GXOtXEo6V
	S5EKPAcdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhgi-0007ki-3r; Fri, 17 May 2019 18:34:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhga-0007jZ-O2
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 18:34:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D4537ADD9;
 Fri, 17 May 2019 18:34:26 +0000 (UTC)
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
To: James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
References: <20190517064254.95561-1-hare@suse.de>
 <20190517064254.95561-4-hare@suse.de>
 <12b86c1a-9e83-f3b7-d72b-20eef528ab06@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <69ca35ef-1c40-03bd-b116-09dc3eb655aa@suse.de>
Date: Fri, 17 May 2019 20:34:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <12b86c1a-9e83-f3b7-d72b-20eef528ab06@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_113428_924368_394614E3 
X-CRM114-Status: GOOD (  20.46  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNy8xOSA2OjEwIFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiBPbiA1LzE2LzIwMTkgMTE6
NDIgUE0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZt
ZS9ob3N0L2ZjLmMgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4+IGluZGV4IGU1YzgxYmEyYjdh
MS4uYThlZjYyNTEyZDlhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4+
ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gQEAgLTI3MjYsNiArMjczNCwxMyBAQCBu
dm1lX2ZjX2NyZWF0ZV9hc3NvY2lhdGlvbihzdHJ1Y3QgbnZtZV9mY19jdHJsIAo+PiAqY3RybCkK
Pj4gwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgY2hhbmdlZCA9IG52bWVfY2hhbmdlX2N0cmxf
c3RhdGUoJmN0cmwtPmN0cmwsIE5WTUVfQ1RSTF9MSVZFKTsKPj4gK8KgwqDCoCBpZiAoIWNoYW5n
ZWQgJiYgY3RybC0+Y3RybC5zdGF0ZSAhPSBOVk1FX0NUUkxfREVMRVRJTkcpIHsKPj4gK8KgwqDC
oMKgwqDCoMKgIGRldl9lcnIoY3RybC0+Y3RybC5kZXZpY2UsCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJOVk1FLUZDeyVkfTogZXJyb3JfcmVjb3Zlcnk6IENvdWxkbid0IGNoYW5nZSAiCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJzdGF0ZSBmcm9tICVzIHRvIExJVkVcbiIsIGN0cmwt
PmNudW0sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVfY3RybF9zdGF0ZV9uYW1lKCZj
dHJsLT5jdHJsKSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVBR0FJTjsKPj4gK8KgwqDC
oCB9Cj4+IMKgwqDCoMKgwqAgY3RybC0+Y3RybC5ucl9yZWNvbm5lY3RzID0gMDsKPiAKPiBTb3Jy
eSwgSSBzaG91bGQgaGF2ZSBzcG90dGVkIHRoaXMgbGFzdCB0aW1lLsKgwqAgV2Ugc2hvdWxkbid0
IGJlIGV4aXRpbmcgCj4gaW4gdGhlIGJhZCBjYXNlIC0gd2Ugc2hvdWxkIGJlIHNldHRpbmcgcmV0
PS1FQUdBSU4gdGhlbiBoYXZlIGEgZ290byAKPiBvdXRfdGVybV9hZW5fb3BzIHNvIHRoYXQgd2hh
dGV2ZXIgd2FzIGJ1aWx0IHVwIGZvciB0aGUgYXNzb2NpYXRpb24gaXMgCj4gdG9ybiBkb3duLgo+
IApJIF9hY3R1YWxseV8gZGlkIGRvIHRoYXQgb24gcHVycG9zZTsgSSBkaWQgYXNrIG1lIHRoZSB2
ZXJ5IHNhbWUgcXVlc3Rpb24uClJlYXNvbmluZyB3YXMgdGhhdCB0aGlzIGlzIHRoZSBmaW5hbCBz
dGVwLCBhbmQgcmV2ZXJ0aW5nIHRoaXMgd291bGQgCmFtb3VudCB0byBhIGZ1bGwgcmVzZXQuIEhl
bmNlIHdlIGNvdWxkIGp1c3QgcmV0dXJuIGFuIGVycm9yLCBhbmQgbGV0IHRoZSAKcmVzZXQgaGFu
ZGxlIHRoaW5ncy4gRXNwZWNpYWxseSBhcyB3ZSBkbyBub3QgY2xlYXIgdGhlIHJlY29ubmVjdCBj
b3VudGVyIApoZXJlLgpBbSBJIHdyb25nPwoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVz
IFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBz
dXNlLmRlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VT
RSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IElt
ZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
