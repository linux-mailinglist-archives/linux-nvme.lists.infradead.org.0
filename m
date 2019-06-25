Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F185524F
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 16:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sh+0miouHtYop3pCmryVnr78v0vV8Nf6q8+au/OjeeQ=; b=OEVn4sXKSZjWjL
	q5tX8OhnSWITq/6lKpsbijAEae6i9QwTSfPn/t9B3vnSoQeFELt7i83T0IsUF4xEjQcTAxThaTOog
	8w8Ct5L1iq/912G0c8TgoDZA5nppjzF8EgSLsD39iWySU5o1h1vMMxUDfMNvQXzgKNYZS0EMvDH22
	T8YPziPMcR5JjGjF9Sx5SpN3jdpE4dtnBwVLGYgGdMXb/HlCJEQ86v2MV373XeggO2PSDWRR59QgY
	QjCf7+s3PS2x2A+QbRX7iPyl9/LWIITuX4p3qD5hoFM0lb3Yo37gmkjsUG8jFR3yuwgJ5X6v34Wz3
	9eez8zyexh6aNLtNq/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmh2-00028J-CU; Tue, 25 Jun 2019 14:45:08 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmgt-00021l-2j
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 14:45:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 07:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="184511718"
Received: from syhu-mobl.ccr.corp.intel.com ([10.249.173.95])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2019 07:44:54 -0700
Message-ID: <1561473887.19713.6.camel@intel.com>
Subject: Re: [PATCH v4 3/3] nvme: notify thermal framework when temperature
 threshold events occur
From: Zhang Rui <rui.zhang@intel.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org, 
 linux-pm@vger.kernel.org
Date: Tue, 25 Jun 2019 22:44:47 +0800
In-Reply-To: <1560439238-4054-4-git-send-email-akinobu.mita@gmail.com>
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
 <1560439238-4054-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_074459_137079_F121CA8E 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24g5LqULCAyMDE5LTA2LTE0IGF0IDAwOjIwICswOTAwLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4g
VGhlIE5WTWUgY29udHJvbGxlciBzdXBwb3J0cyB0aGUgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGZl
YXR1cmUKPiAoRmVhdHVyZQo+IElkZW50aWZpZXIgMDRoKSB0aGF0IGVuYWJsZXMgdG8gY29uZmln
dXJlIHRoZSBhc3luY2hyb25vdXMgZXZlbnQKPiByZXF1ZXN0Cj4gY29tbWFuZCB0byBjb21wbGV0
ZSB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBpcyBjcm9zc2VkIGl0cyBjb3JyZXNwb25kaW5nCj4gdGVt
cGVyYXR1cmUgdGhyZXNob2xkLgo+IAo+IFRoaXMgZW5hYmxlcyB0aGUgcmVwb3J0aW5nIG9mIGFz
eW5jaHJvbm91cyBldmVudHMgZnJvbSB0aGUgY29udHJvbGxlcgo+IHdoZW4KPiB0aGUgdGVtcGVy
YXR1cmUgcmVhY2hlZCBvciBleGNlZWRlZCBhIHRlbXBlcmF0dXJlIHRocmVzaG9sZC4KPiBJbiB0
aGUgY2FzZSBvZiB0aGUgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGNvbmRpdGlvbnMsIHRoaXMgbm90
aWZpZXMKPiB0aGUKPiB0aGVybWFsIGZyYW1ld29yay4KPiAKPiBUaGUgbWFpbiBwdXJwb3NlIG9m
IHRoaXMgaXMgdG8gdHVybiBvbiBhIGZhbiB3aGVuIG92ZXJoZWF0ZWQgd2l0aG91dAo+IHBvbGxp
bmcgdGhlIGRldmljZSBmb3IgdGhlIHNtYXJ0IGxvZyB0aGF0IGNvdWxkIHByZXZlbnQgdGhlIGxv
d2VyCj4gcG93ZXIKPiBzdGF0ZSB0cmFuc2l0aW9ucy4KPiAKPiBDYzogWmhhbmcgUnVpIDxydWku
emhhbmdAaW50ZWwuY29tPgo+IENjOiBFZHVhcmRvIFZhbGVudGluIDxlZHViZXp2YWxAZ21haWwu
Y29tPgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiBD
YzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPgo+IENjOiBKZW5zIEF4Ym9lIDxheGJv
ZUBmYi5jb20+Cj4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+IENjOiBTYWdp
IEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IENjOiBNaW53b28gSW0gPG1pbndvby5pbS5k
ZXZAZ21haWwuY29tPgo+IENjOiBLZW5uZXRoIEhlaXRrZSA8a2VubmV0aC5oZWl0a2VAaW50ZWwu
Y29tPgo+IENjOiBDaGFpdGFueWEgS3Vsa2FybmkgPENoYWl0YW55YS5LdWxrYXJuaUB3ZGMuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEFraW5vYnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT4K
PiAtLS0KPiAqIHY0Cj4gLSBzdXBwb3J0IERUIHRoZXJtYWwgem9uZSBkZXZpY2UuCj4gLSB1c2Ug
Yml0bWFwIHRvIGl0ZXJhdGUgb3ZlciBpbXBsZW1lbnRlZCBzZW5zb3JzCj4gCj4gwqBkcml2ZXJz
L252bWUvaG9zdC9jb3JlLmPCoMKgwqDCoHwgMTQgKysrKysrKysrKysrKysKPiDCoGRyaXZlcnMv
bnZtZS9ob3N0L252bWUuaMKgwqDCoMKgfMKgwqA1ICsrKysrCj4gwqBkcml2ZXJzL252bWUvaG9z
dC90aGVybWFsLmMgfCAxMiArKysrKysrKysrKysKPiDCoGluY2x1ZGUvbGludXgvbnZtZS5owqDC
oMKgwqDCoMKgwqDCoHzCoMKgNyArKysrKysrCj4gwqA0IGZpbGVzIGNoYW5nZWQsIDM4IGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJp
dmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggNGJlMzM5Yi4uNDRkYWRiYiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMKPiBAQCAtMTE4Niw2ICsxMTg2LDkgQEAgc3RhdGljIHZvaWQgbnZtZV9lbmFibGVfYWVu
KHN0cnVjdCBudm1lX2N0cmwKPiAqY3RybCkKPiDCoAl1MzIgcmVzdWx0LCBzdXBwb3J0ZWRfYWVu
cyA9IGN0cmwtPm9hZXMgJgo+IE5WTUVfQUVOX1NVUFBPUlRFRDsKPiDCoAlpbnQgc3RhdHVzOwo+
IMKgCj4gKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfVEhFUk1BTCkpCj4gKwkJc3VwcG9ydGVkX2Fl
bnMgfD0gTlZNRV9TTUFSVF9DUklUX1RFTVBFUkFUVVJFOwo+ICsKPiDCoAlpZiAoIXN1cHBvcnRl
ZF9hZW5zKQo+IMKgCQlyZXR1cm47Cj4gwqAKPiBAQCAtMzU2MSw2ICszNTY0LDE2IEBAIHZvaWQg
bnZtZV9yZW1vdmVfbmFtZXNwYWNlcyhzdHJ1Y3QgbnZtZV9jdHJsCj4gKmN0cmwpCj4gwqB9Cj4g
wqBFWFBPUlRfU1lNQk9MX0dQTChudm1lX3JlbW92ZV9uYW1lc3BhY2VzKTsKPiDCoAo+ICtzdGF0
aWMgdm9pZCBudm1lX2hhbmRsZV9hZW5fc21hcnQoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdTMy
Cj4gcmVzdWx0KQo+ICt7Cj4gKwl1MzIgYWVyX3R5cGUgPSByZXN1bHQgJiBOVk1FX0FFUl9UWVBF
X01BU0s7Cj4gKwl1MzIgYWVyX2luZm8gPSAocmVzdWx0ID4+IE5WTUVfQUVSX0lORk9fU0hJRlQp
ICYKPiBOVk1FX0FFUl9JTkZPX01BU0s7Cj4gKwo+ICsJaWYgKGFlcl90eXBlID09IE5WTUVfQUVS
X1NNQVJUICYmCj4gKwnCoMKgwqDCoGFlcl9pbmZvID09IE5WTUVfQUVSX1NNQVJUX1RFTVBfVEhS
RVNIKQo+ICsJCW52bWVfdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKGN0cmwpOwo+ICt9Cj4gKwo+
IMKgc3RhdGljIHZvaWQgbnZtZV9hZW5fdWV2ZW50KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4g
wqB7Cj4gwqAJY2hhciAqZW52cFsyXSA9IHsgTlVMTCwgTlVMTCB9Owo+IEBAIC0zNTgyLDYgKzM1
OTUsNyBAQCBzdGF0aWMgdm9pZCBudm1lX2FzeW5jX2V2ZW50X3dvcmsoc3RydWN0Cj4gd29ya19z
dHJ1Y3QgKndvcmspCj4gwqAJc3RydWN0IG52bWVfY3RybCAqY3RybCA9Cj4gwqAJCWNvbnRhaW5l
cl9vZih3b3JrLCBzdHJ1Y3QgbnZtZV9jdHJsLAo+IGFzeW5jX2V2ZW50X3dvcmspOwo+IMKgCj4g
Kwludm1lX2hhbmRsZV9hZW5fc21hcnQoY3RybCwgY3RybC0+YWVuX3Jlc3VsdCk7Cj4gwqAJbnZt
ZV9hZW5fdWV2ZW50KGN0cmwpOwo+IMKgCWN0cmwtPm9wcy0+c3VibWl0X2FzeW5jX2V2ZW50KGN0
cmwpOwo+IMKgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLmggYi9kcml2
ZXJzL252bWUvaG9zdC9udm1lLmgKPiBpbmRleCBhOWM2M2VhLi40MDMyNWI2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L252
bWUuaAo+IEBAIC02MDUsNiArNjA1LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbnZtZV9ucwo+
ICpudm1lX2dldF9uc19mcm9tX2RldihzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gwqAKPiDCoGludCBu
dm1lX3RoZXJtYWxfem9uZXNfcmVnaXN0ZXIoc3RydWN0IG52bWVfY3RybCAqY3RybCk7Cj4gwqB2
b2lkIG52bWVfdGhlcm1hbF96b25lc191bnJlZ2lzdGVyKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwp
Owo+ICt2b2lkIG52bWVfdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKHN0cnVjdCBudm1lX2N0cmwg
KmN0cmwpOwo+IMKgCj4gwqAjZWxzZQo+IMKgCj4gQEAgLTYxNyw2ICs2MTgsMTAgQEAgc3RhdGlj
IGlubGluZSB2b2lkCj4gbnZtZV90aGVybWFsX3pvbmVzX3VucmVnaXN0ZXIoc3RydWN0IG52bWVf
Y3RybCAqY3RybCkKPiDCoHsKPiDCoH0KPiDCoAo+ICtzdGF0aWMgaW5saW5lIHZvaWQgbnZtZV90
aGVybWFsX25vdGlmeV9mcmFtZXdvcmsoc3RydWN0IG52bWVfY3RybAo+ICpjdHJsKQo+ICt7Cj4g
K30KPiArCj4gwqAjZW5kaWYgLyogQ09ORklHX1RIRVJNQUwgKi8KPiDCoAo+IMKgI2VuZGlmIC8q
IF9OVk1FX0ggKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvdGhlcm1hbC5jCj4g
Yi9kcml2ZXJzL252bWUvaG9zdC90aGVybWFsLmMKPiBpbmRleCAxOGQwZTRjLi5iNWU4MzVkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMv
bnZtZS9ob3N0L3RoZXJtYWwuYwo+IEBAIC0zMDksMyArMzA5LDE1IEBAIHZvaWQgbnZtZV90aGVy
bWFsX3pvbmVzX3VucmVnaXN0ZXIoc3RydWN0Cj4gbnZtZV9jdHJsICpjdHJsKQo+IMKgCQlfX2Ns
ZWFyX2JpdChpLCBjdHJsLT50el9lbmFibGVkKTsKPiDCoAl9Cj4gwqB9Cj4gKwo+ICt2b2lkIG52
bWVfdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4gK3sK
PiArCWludCBpOwo+ICsKPiArCWZvcl9lYWNoX3NldF9iaXQoaSwgY3RybC0+dHpfZW5hYmxlZCwg
QVJSQVlfU0laRShjdHJsLT50eikpCj4gewo+ICsJCWlmIChjdHJsLT50eltpXS5kZXYpCj4gKwkJ
CXRoZXJtYWxfbm90aWZ5X2ZyYW1ld29yayhjdHJsLT50eltpXS5kZXYsCj4gMCk7CgpJJ2QgcHJl
ZmVyIHRvIHVzZSB0aGVybWFsX3pvbmVfZGV2aWNlX3VwZGF0ZSgpIGhlcmUgdG8gbm90aWZ5IHRo
ZQp0aGVybWFsIGZyYW1ld29yay4KdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKCkgd2lsbCBiZSBy
ZW1vdmVkIHNvbWV0aW1lIGxhdGVyLgoKdGhhbmtzLApydWkKCj4gKwkJaWYgKGN0cmwtPnR6W2ld
Lm9mX2RldikKPiArCQkJdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKGN0cmwtPnR6W2ldLm9mX2Rl
diwgCj4gMCk7Cj4gKwl9Cj4gK30KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9udm1lLmgg
Yi9pbmNsdWRlL2xpbnV4L252bWUuaAo+IGluZGV4IGYyOTcyOGIuLjA2OWI5NjIgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9saW51eC9udm1lLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L252bWUuaAo+
IEBAIC00NzYsNiArNDc2LDcgQEAgZW51bSB7Cj4gwqB9Owo+IMKgCj4gwqBlbnVtIHsKPiArCU5W
TUVfQUVSX1RZUEVfTUFTSwkJPSAweDcsCj4gwqAJTlZNRV9BRVJfRVJST1IJCQk9IDAsCj4gwqAJ
TlZNRV9BRVJfU01BUlQJCQk9IDEsCj4gwqAJTlZNRV9BRVJfTk9USUNFCQkJPSAyLAo+IEBAIC00
ODQsNiArNDg1LDEyIEBAIGVudW0gewo+IMKgfTsKPiDCoAo+IMKgZW51bSB7Cj4gKwlOVk1FX0FF
Ul9JTkZPX1NISUZUCQk9IDgsCj4gKwlOVk1FX0FFUl9JTkZPX01BU0sJCT0gMHhmZiwKPiArCU5W
TUVfQUVSX1NNQVJUX1RFTVBfVEhSRVNICT0gMHgwMSwKPiArfTsKPiArCj4gK2VudW0gewo+IMKg
CU5WTUVfQUVSX05PVElDRV9OU19DSEFOR0VECT0gMHgwMCwKPiDCoAlOVk1FX0FFUl9OT1RJQ0Vf
RldfQUNUX1NUQVJUSU5HID0gMHgwMSwKPiDCoAlOVk1FX0FFUl9OT1RJQ0VfQU5BCQk9IDB4MDMs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1u
dm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
