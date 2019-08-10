Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82BD88B40
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nyssbr+SFGUXvpterFhY7eI5HqaUfEjIDZqdG47YViU=; b=jJRbyrPaL7pM8+GhTbKhq44DV
	Eg+EFsSr+1mMOdb1KNrU8XfRO+KTT8VYduWbIzTXNFFY3I6Vc91fz6kAZqn+SJ5wRUf2SMp9Umm6W
	QPLIlBKFihFp9U3mdwHjRFFSR8rMnz1Z823Zi4uNxRbKl1xOGC9aBoDG4s9gwW8Q1viL/0p1vS3eW
	k+dLT7dwm79P6NhAc0rorWbBlgicK8XsoojMT827HzeYumI0cgpaUZfv8gC8ee52ewB2Uvh2rO4Qn
	wOaONaFwG92GKXdHIPHn3m8adUrxgXgcxDewdajyDZ8UGDRTdJopWpfw/mbmjodLbCZhNeJSmFD4h
	ogmbom8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQIC-0005A9-AZ; Sat, 10 Aug 2019 12:16:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQI1-00059f-2o
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:16:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CE802ADCF;
 Sat, 10 Aug 2019 12:16:03 +0000 (UTC)
Subject: Re: [PATCH v4 2/7] nvme: return a proper errno for sync commands
 failure
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808232536.4258-1-sagi@grimberg.me>
 <20190808232536.4258-3-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <e117a938-e85f-1d6b-c7da-0edb91658adb@suse.de>
Date: Sat, 10 Aug 2019 14:16:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808232536.4258-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_051605_273136_FD5D2B67 
X-CRM114-Status: GOOD (  20.26  )
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

T24gOC85LzE5IDE6MjUgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gY2FsbGVycyBzaG91bGQg
bm90IHJlbHkgb24gcmF3IG52bWUgc3RhdHVzLCBpbnN0ZWFkIHJldHVybgo+IGlzIG1vcmUgYXBw
cm9wcmlhdGUgZXJybm8gdGhhdCByZWxhdGVzIHRvIGJsa19zdGF0dXNfdC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0tLQo+ICAgZHJpdmVy
cy9udm1lL2hvc3QvY29yZS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRleCBkMmI0ZjU3ZmE2N2Uu
LmMyNTk1ODZlZWFkYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiAr
KysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAtODAzLDcgKzgwMyw3IEBAIGludCBf
X252bWVfc3VibWl0X3N5bmNfY21kKHN0cnVjdCByZXF1ZXN0X3F1ZXVlICpxLCBzdHJ1Y3QgbnZt
ZV9jb21tYW5kICpjbWQsCj4gICAJaWYgKG52bWVfcmVxKHJlcSktPmZsYWdzICYgTlZNRV9SRVFf
Q0FOQ0VMTEVEKQo+ICAgCQlyZXQgPSAtRUlOVFI7Cj4gICAJZWxzZQo+IC0JCXJldCA9IG52bWVf
cmVxKHJlcSktPnN0YXR1czsKPiArCQlyZXQgPSBibGtfc3RhdHVzX3RvX2Vycm5vKG52bWVfZXJy
b3Jfc3RhdHVzKHJlcSkpOwo+ICAgIG91dDoKPiAgIAlibGtfbXFfZnJlZV9yZXF1ZXN0KHJlcSk7
Cj4gICAJcmV0dXJuIHJldDsKPiBAQCAtODk0LDcgKzg5NCw3IEBAIHN0YXRpYyBpbnQgbnZtZV9z
dWJtaXRfdXNlcl9jbWQoc3RydWN0IHJlcXVlc3RfcXVldWUgKnEsCj4gICAJaWYgKG52bWVfcmVx
KHJlcSktPmZsYWdzICYgTlZNRV9SRVFfQ0FOQ0VMTEVEKWNrCj4gICAJCXJldCA9IC1FSU5UUjsK
PiAgIAllbHNlCj4gLQkJcmV0ID0gbnZtZV9yZXEocmVxKS0+c3RhdHVzOwo+ICsJCXJldCA9IGJs
a19zdGF0dXNfdG9fZXJybm8obnZtZV9lcnJvcl9zdGF0dXMocmVxKSk7Cj4gICAJaWYgKHJlc3Vs
dCkKPiAgIAkJKnJlc3VsdCA9IGxlMzJfdG9fY3B1KG52bWVfcmVxKHJlcSktPnJlc3VsdC51MzIp
Owo+ICAgCWlmIChtZXRhICYmICFyZXQgJiYgIXdyaXRlKSB7Cj4gCkhlaGUuIEp1c3QgYXMgSSBz
YWlkLgoKUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVy
cywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0
b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0
MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJh
c2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK
