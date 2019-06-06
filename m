Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9328A36C05
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNEnPLIlf2AXe2yIHxyzxaxaKCZzzu8yJ2KVHlu54cc=; b=tUVnfQxJw6mKhz
	IlKQ2A8UzlT177WEwsHC5rjymRrYORQx7QxKO1iRssOYfUiaLe4cATdwA5UKTuIVj8PocTi2RgSn3
	l9N0kUz7LYh1ukDwQrTLdDMyXXCdBHkUkG4Qoyoec5BzZfphzsczDgsSb/lZCU/9XQMazYAJSD58A
	dPhYa9hJKQOWIgA+b4GX9wgbTZrFVSGQwFUe59P0naRF7mPR2drhOA3jZXzQY81X05Z5DMFwqN6pW
	mNX7xoIRPq9Un3RRf+vvgXnCCD6iHPRhFbdQXhoxAsTRiPjvy3TH4KujuzMdzMdy+TVC+H+A6DklV
	Tu0yKeHqp5zYtJyFvmiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlTc-0008RE-HM; Thu, 06 Jun 2019 06:02:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlTX-0008Pl-MO
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:02:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4EB62AF80;
 Thu,  6 Jun 2019 06:02:08 +0000 (UTC)
Subject: Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <345c3931-0940-7d59-ebc6-fa1ea56c60ac@suse.de>
Date: Thu, 6 Jun 2019 08:02:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605190836.32354-11-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_230212_028565_B100E44D 
X-CRM114-Status: GOOD (  23.56  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi81LzE5IDk6MDggUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IFRoaXMgZW5zdXJl
cyBhbGwgcHJvcGVyIERNQSBsYXllciBoYW5kbGluZyBpcyB0YWtlbiBjYXJlIG9mIGJ5IHRoZQo+
IFNDU0kgbWlkbGF5ZXIuICBOb3RlIHRoYXQgdGhlIGVmZmVjdCBpcyBnbG9iYWwsIGFzIHRoZSBJ
T01NVSBtZXJnaW5nCj4gaXMgYmFzZWQgb2ZmIGEgcGFyYW10ZXJzIGluIHN0cnVjdCBkZXZpY2Uu
ICBXZSBjb3VsZCBzdGlsbCB0dXJuIGlmIG9mZgo+IGlmIG5vIFBDSWUgZGV2aWNlcyBhcmUgcHJl
c2VudCwgYnV0IEkgZG9uJ3Qga25vdyBob3cgdG8gZmluZCB0aGF0IG91dC4KPiAKPiBBbHNvIHJl
bW92ZSB0aGUgYm9ndXMgbm9tZXJnZXMgZmxhZywgbWVyZ2VzIGRvIHRha2UgdGhlIHZpcnRfYm91
bmRhcnkKPiBpbnRvIGFjY291bnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBsc3QuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvc2NzaS9tZWdhcmFpZC9tZWdhcmFpZF9z
YXNfYmFzZS5jICAgfCA0NiArKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9zY3NpL21l
Z2FyYWlkL21lZ2FyYWlkX3Nhc19mdXNpb24uYyB8ICA3ICsrKysKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nhc19iYXNlLmMgYi9kcml2ZXJzL3Njc2kvbWVn
YXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2UuYwo+IGluZGV4IDNkZDFkZjQ3MmRjNi4uMjBiM2IzZjhi
YzE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc2NzaS9tZWdhcmFpZC9tZWdhcmFpZF9zYXNfYmFz
ZS5jCj4gKysrIGIvZHJpdmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nhc19iYXNlLmMKPiBA
QCAtMTg3MCwzOSArMTg3MCw2IEBAIHZvaWQgbWVnYXNhc19zZXRfZHluYW1pY190YXJnZXRfcHJv
cGVydGllcyhzdHJ1Y3Qgc2NzaV9kZXZpY2UgKnNkZXYsCj4gIAl9Cj4gIH0KPiAgCj4gLS8qCj4g
LSAqIG1lZ2FzYXNfc2V0X252bWVfZGV2aWNlX3Byb3BlcnRpZXMgLQo+IC0gKiBzZXQgbm9tZXJn
ZXM9Mgo+IC0gKiBzZXQgdmlydHVhbCBwYWdlIGJvdW5kYXJ5ID0gNEsgKGN1cnJlbnQgbXJfbnZt
ZV9wZ19zaXplIGlzIDRLKS4KPiAtICogc2V0IG1heGltdW0gaW8gdHJhbnNmZXIgPSBNRFRTIG9m
IE5WTUUgZGV2aWNlIHByb3ZpZGVkIGJ5IE1SIGZpcm13YXJlLgo+IC0gKgo+IC0gKiBNUiBmaXJt
d2FyZSBwcm92aWRlcyB2YWx1ZSBpbiBLQi4gQ2FsbGVyIG9mIHRoaXMgZnVuY3Rpb24gY29udmVy
dHMKPiAtICoga2IgaW50byBieXRlcy4KPiAtICoKPiAtICogZS5hIE1EVFM9NSBtZWFucyAyXjUg
KiBudm1lIHBhZ2Ugc2l6ZS4gKEluIGNhc2Ugb2YgNEsgcGFnZSBzaXplLAo+IC0gKiBNUiBmaXJt
d2FyZSBwcm92aWRlcyB2YWx1ZSAxMjggYXMgKDMyICogNEspID0gMTI4Sy4KPiAtICoKPiAtICog
QHNkZXY6CQkJCXNjc2kgZGV2aWNlCj4gLSAqIEBtYXhfaW9fc2l6ZToJCQkJbWF4aW11bSBpbyB0
cmFuc2ZlciBzaXplCj4gLSAqCj4gLSAqLwo+IC1zdGF0aWMgaW5saW5lIHZvaWQKPiAtbWVnYXNh
c19zZXRfbnZtZV9kZXZpY2VfcHJvcGVydGllcyhzdHJ1Y3Qgc2NzaV9kZXZpY2UgKnNkZXYsIHUz
MiBtYXhfaW9fc2l6ZSkKPiAtewo+IC0Jc3RydWN0IG1lZ2FzYXNfaW5zdGFuY2UgKmluc3RhbmNl
Owo+IC0JdTMyIG1yX252bWVfcGdfc2l6ZTsKPiAtCj4gLQlpbnN0YW5jZSA9IChzdHJ1Y3QgbWVn
YXNhc19pbnN0YW5jZSAqKXNkZXYtPmhvc3QtPmhvc3RkYXRhOwo+IC0JbXJfbnZtZV9wZ19zaXpl
ID0gbWF4X3QodTMyLCBpbnN0YW5jZS0+bnZtZV9wYWdlX3NpemUsCj4gLQkJCQlNUl9ERUZBVUxU
X05WTUVfUEFHRV9TSVpFKTsKPiAtCj4gLQlibGtfcXVldWVfbWF4X2h3X3NlY3RvcnMoc2Rldi0+
cmVxdWVzdF9xdWV1ZSwgKG1heF9pb19zaXplIC8gNTEyKSk7Cj4gLQo+IC0JYmxrX3F1ZXVlX2Zs
YWdfc2V0KFFVRVVFX0ZMQUdfTk9NRVJHRVMsIHNkZXYtPnJlcXVlc3RfcXVldWUpOwo+IC0JYmxr
X3F1ZXVlX3ZpcnRfYm91bmRhcnkoc2Rldi0+cmVxdWVzdF9xdWV1ZSwgbXJfbnZtZV9wZ19zaXpl
IC0gMSk7Cj4gLX0KPiAtCj4gLQo+ICAvKgo+ICAgKiBtZWdhc2FzX3NldF9zdGF0aWNfdGFyZ2V0
X3Byb3BlcnRpZXMgLQo+ICAgKiBEZXZpY2UgcHJvcGVydHkgc2V0IGJ5IGRyaXZlciBhcmUgc3Rh
dGljIGFuZCBpdCBpcyBub3QgcmVxdWlyZWQgdG8gYmUKPiBAQCAtMTk2MSw4ICsxOTI4LDEwIEBA
IHN0YXRpYyB2b2lkIG1lZ2FzYXNfc2V0X3N0YXRpY190YXJnZXRfcHJvcGVydGllcyhzdHJ1Y3Qg
c2NzaV9kZXZpY2UgKnNkZXYsCj4gIAkJbWF4X2lvX3NpemVfa2IgPSBsZTMyX3RvX2NwdShpbnN0
YW5jZS0+dGd0X3Byb3AtPm1heF9pb19zaXplX2tiKTsKPiAgCX0KPiAgCj4gLQlpZiAoaW5zdGFu
Y2UtPm52bWVfcGFnZV9zaXplICYmIG1heF9pb19zaXplX2tiKQo+IC0JCW1lZ2FzYXNfc2V0X252
bWVfZGV2aWNlX3Byb3BlcnRpZXMoc2RldiwgKG1heF9pb19zaXplX2tiIDw8IDEwKSk7Cj4gKwlp
ZiAoaW5zdGFuY2UtPm52bWVfcGFnZV9zaXplICYmIG1heF9pb19zaXplX2tiKSB7Cj4gKwkJYmxr
X3F1ZXVlX21heF9od19zZWN0b3JzKHNkZXYtPnJlcXVlc3RfcXVldWUsCj4gKwkJCQkobWF4X2lv
X3NpemVfa2IgPDwgMTApIC8gNTEyKTsKPiArCX0KPiAgCj4gIAlzY3NpX2NoYW5nZV9xdWV1ZV9k
ZXB0aChzZGV2LCBkZXZpY2VfcWQpOwo+ICAKV2hhdCBoYXBwZW5lZCB0byB0aGUgTk9NRVJHRVMg
cXVldWUgZmxhZz8KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAg
VGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAg
ICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFz
aWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=
