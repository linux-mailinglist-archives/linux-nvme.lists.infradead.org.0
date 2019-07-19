Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9686D7DD
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mwPrSqOI0OCQFswBxrEseVyfZ+RCpp4MXt3vrxKl8U=; b=kXYH5vte7iLSXF
	qpShheYObFQR1/INCBRN+0Qq4GA7ytvT1CfHDO7kVWN4+6kyF5B3PKa2FsEEeNlQOyM5K6bLo5+WQ
	/tSjIv6izqv91sTPIYPLnhMaLJGlcEGvb7vAvHisG+SHlwNe8WnbBnZIfze42sFGmvWjOdjcF1mF9
	2lkib316G1c9EI+4668msbEzghuW/0rp/600jlcE8Rvs/gXXUyXdV9tlHtH3Eo/nIezulh7JcG/P+
	Bo0bzY5FaJKMuqegjGG+Iz/Zlh/GBUCt7dQLPJQb2za73TEPQvBUeAv1ARl+NQk8oczcCqm2A0P2O
	KSK1O1derXUuK5lQOzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGwu-0006Fc-FE; Fri, 19 Jul 2019 00:40:36 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGwL-0004t8-M3
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:40:03 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hoGwH-0003ao-La; Thu, 18 Jul 2019 18:39:58 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
Date: Thu, 18 Jul 2019 18:39:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, axboe@fb.com, kbusch@kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_174001_932811_5F63C309 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA3LTE4IDY6MjUgcC5tLiwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiAKPj4gV2l0
aCBtdWx0aXBhdGggZW5hYmxlZCwgbnZtZV9zY2FuX3dvcmsoKSBjYW4gcmVhZCBmcm9tIHRoZQo+
PiBkZXZpY2UgKHRocm91Z2ggbnZtZV9tcGF0aF9hZGRfZGlzaygpKS4gSG93ZXZlciwgd2l0aCBm
YWJyaWNzLAo+PiBvbmNlIGN0cmwtPnN0YXRlIGlzIHNldCB0byBOVk1FX0NUUkxfREVMRVRJTkcs
IHRoZSByZWFkcyB3aWxsIGhhbmcKPj4gKHNlZSBudm1mX2NoZWNrX3JlYWR5KCkpLgo+Pgo+PiBB
ZnRlciBzZXR0aW5nIHRoZSBzdGF0ZSB0byBkZWxldGluZywgbnZtZV9yZW1vdmVfbmFtZXNwYWNl
cygpIHdpbGwKPj4gaGFuZyB3YWl0aW5nIGZvciBzY2FuX3dvcmsgdG8gZmx1c2ggYW5kIHRoZXNl
IHRhc2tzIHdpbGwgaGFuZy4KPj4KPj4gVG8gZml4IHRoaXMsIGVuc3VyZSB3ZSB0YWtlIHNjYW5f
bG9jayBiZWZvcmUgY2hhbmdpbmcgdGhlIGN0cmwtc3RhdGUuCj4+IEFsc28sIGVuc3VyZSB0aGUg
c3RhdGUgaXMgY2hlY2tlZCB3aGlsZSB0aGUgbG9jayBpcyBoZWxkCj4+IGluIG52bWVfc2Nhbl9s
b2NrX3dvcmsoKS4KPiAKPiBUaGF0J3MgYSBiaWcgaGFtbWVyLi4uCgpJIGRpZG4ndCB0aGluayB0
aGUgc2Nhbl9sb2NrIHdhcyB0aGF0IGNvbnRlc3RlZCBvciB0aGF0Cm52bWVfY2hhbmdlX2N0cmxf
c3RhdGUoKSB3YXMgcmVhbGx5IGNhbGxlZCB0aGF0IG9mdGVuLi4uCgo+IEJ1dCB0aGlzIGlzIEkv
TyB0aGF0IHdlIGNhbm5vdCBoYXZlIHF1ZXVlZCB1bnRpbCB3ZSBoYXZlIGEgcGF0aC4uCj4gCj4g
SSB3b3VsZCByYXRoZXIgaGF2ZSBudm1lX3JlbW92ZV9uYW1lc3BhY2VzKCkgcmVxdWV1ZSBhbGwg
SS9PcyBmb3IKPiBuYW1lc3BhY2VzIHRoYXQgc2VydmUgYXMgdGhlIGN1cnJlbnRfcGF0aCBhbmQg
aGF2ZSB0aGUgbWFrZV9yZXF1ZXN0Cj4gcm91dGluZSB0byBmYWlsIEkvTyBpZiBhbGwgY29udHJv
bGxlcnMgYXJlIGRlbGV0aW5nIGFzIHdlbGwuCj4gCj4gV291bGQgc29tZXRoaW5nIGxpa2UgWzFd
ICh1bnRlc3RlZCkgbWFrZSBzZW5zZSBpbnN0ZWFkPwoKSSdsbCBoYXZlIHRvIGdpdmUgdGhpcyBh
IHRyeSBuZXh0IHdlZWsgYW5kIEknbGwgbGV0IHlvdSBrbm93IHRoZW4uIEl0CmtpbmQgb2YgbWFr
ZXMgc2Vuc2UgdG8gbWUgYnV0IGEgbnVtYmVyIG9mIHRoaW5ncyBJIHRyaWVkIHRvIGZpeCB0aGlz
CnRoYXQgSSB0aG91Z2h0IG1hZGUgc2Vuc2UgZGlkIG5vdCB3b3JrLgoKPiAKPj4gK8KgwqDCoCBt
dXRleF9sb2NrKCZjdHJsLT5zY2FuX2xvY2spOwo+PiArCj4+IMKgwqDCoMKgwqAgaWYgKGN0cmwt
PnN0YXRlICE9IE5WTUVfQ1RSTF9MSVZFKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+
IAo+IHVubG9jawoKSWYgd2UgdW5sb2NrIGhlcmUgYW5kIHJlbG9jayBiZWxvdywgd2UnZCBoYXZl
IHRvIHJlY2hlY2sgdGhlIGN0cmwtPnN0YXRlCnRvIGF2b2lkIGFueSByYWNlcy4gSWYgeW91IGRv
bid0IHdhbnQgdG8gY2FsbCBudm1lX2lkZW50aWZ5X2N0cmwgd2l0aAp0aGUgbG9jayBoZWxkLCB0
aGVuIGl0IHdvdWxkIHByb2JhYmx5IGJlIGJldHRlciB0byBtb3ZlIHRoZSBzdGF0ZSBjaGVjawpi
ZWxvdyBpdC4KCj4+IMKgIEBAIC0zNTQ3LDcgKzM1NTQsNiBAQCBzdGF0aWMgdm9pZCBudm1lX3Nj
YW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QKPj4gKndvcmspCj4+IMKgwqDCoMKgwqAgaWYgKG52
bWVfaWRlbnRpZnlfY3RybChjdHJsLCAmaWQpKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
Owo+IAo+IHVubG9jawo+IAo+IAo+IFsxXToKPiAtLSAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
dm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggNzZjZDNk
ZDg3MzZhLi42MjdmNTg3MTg1OGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvY29y
ZS5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gQEAgLTM1NzYsNiArMzU3Niwx
MSBAQCB2b2lkIG52bWVfcmVtb3ZlX25hbWVzcGFjZXMoc3RydWN0IG52bWVfY3RybCAqY3RybCkK
PiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgbnZtZV9ucyAqbnMsICpuZXh0Owo+IMKgwqDCoMKgwqDC
oMKgIExJU1RfSEVBRChuc19saXN0KTsKPiAKPiArwqDCoMKgwqDCoMKgIG11dGV4X2xvY2soJmN0
cmwtPnNjYW5fbG9jayk7Cj4gK8KgwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5KG5zLCAm
Y3RybC0+bmFtZXNwYWNlcywgbGlzdCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBu
dm1lX21wYXRoX2NsZWFyX2N1cnJlbnRfcGF0aChucyk7Cj4gK8KgwqDCoMKgwqDCoCBtdXRleF9s
b2NrKCZjdHJsLT5zY2FuX2xvY2spOwo+ICsKPiDCoMKgwqDCoMKgwqDCoCAvKiBwcmV2ZW50IHJh
Y2luZyB3aXRoIG5zIHNjYW5uaW5nICovCj4gwqDCoMKgwqDCoMKgwqAgZmx1c2hfd29yaygmY3Ry
bC0+c2Nhbl93b3JrKTsKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlw
YXRoLmMgYi9kcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYwo+IGluZGV4IGE5YTkyNzY3Nzk3
MC4uZGExNzMxMjY2Nzg4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0
aC5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlwYXRoLmMKPiBAQCAtMjMxLDYgKzIz
MSwyNCBAQCBpbmxpbmUgc3RydWN0IG52bWVfbnMgKm52bWVfZmluZF9wYXRoKHN0cnVjdAo+IG52
bWVfbnNfaGVhZCAqaGVhZCkKPiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gbnM7Cj4gwqB9Cj4gCj4g
K3N0YXRpYyBib29sIG52bWVfYXZhaWxhYmxlX3BhdGgoc3RydWN0IG52bWVfbnNfaGVhZCAqaGVh
ZCkKPiArewo+ICvCoMKgwqDCoMKgwqAgc3RydWN0IG52bWVfbnMgKm5zOwo+ICsKPiArwqDCoMKg
wqDCoMKgIGxpc3RfZm9yX2VhY2hfZW50cnlfcmN1KG5zLCAmaGVhZC0+bGlzdCwgc2libGluZ3Mp
IHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzd2l0Y2ggKG5zLT5jdHJsLT5zdGF0
ZSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhc2UgTlZNRV9DVFJMX0xJVkU6
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2FzZSBOVk1FX0NUUkxfUkVTRVRUSU5H
Ogo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhc2UgTlZNRV9DVFJMX0NPTk5FQ1RJ
Tkc6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIGZh
bGx0aHJ1ICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiB0cnVlOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRlZmF1bHQ6Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiArwqDCoMKgwqDCoMKgIH0KPiArwqDCoMKg
wqDCoMKgIHJldHVybiBmYWxzZTsKPiArfQo+ICsKPiDCoHN0YXRpYyBibGtfcWNfdCBudm1lX25z
X2hlYWRfbWFrZV9yZXF1ZXN0KHN0cnVjdCByZXF1ZXN0X3F1ZXVlICpxLAo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgYmlvICpiaW8pCj4gwqB7Cj4gQEAgLTI1NywxNCAr
Mjc1LDE0IEBAIHN0YXRpYyBibGtfcWNfdCBudm1lX25zX2hlYWRfbWFrZV9yZXF1ZXN0KHN0cnVj
dAo+IHJlcXVlc3RfcXVldWUgKnEsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGlza19kZXZ0KG5zLT5o
ZWFkLT5kaXNrKSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaW8tPmJpX2l0ZXIuYmlfc2VjdG9yKTsK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGlyZWN0X21ha2VfcmVxdWVz
dChiaW8pOwo+IC3CoMKgwqDCoMKgwqAgfSBlbHNlIGlmICghbGlzdF9lbXB0eV9jYXJlZnVsKCZo
ZWFkLT5saXN0KSkgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl93YXJuX3Jh
dGVsaW1pdGVkKGRldiwgIm5vIHBhdGggYXZhaWxhYmxlIC0gcmVxdWV1aW5nCj4gSS9PXG4iKTsK
PiArwqDCoMKgwqDCoMKgIH0gZWxzZSBpZiAobnZtZV9hdmFpbGFibGVfcGF0aChoZWFkKSkgewo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl93YXJuX3JhdGVsaW1pdGVkKGRldiwg
Im5vIHVzYWJsZSBwYXRoIC0gcmVxdWV1aW5nCj4gSS9PXG4iKTsKPiAKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2lycSgmaGVhZC0+cmVxdWV1ZV9sb2NrKTsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmlvX2xpc3RfYWRkKCZoZWFkLT5yZXF1ZXVl
X2xpc3QsIGJpbyk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2Nr
X2lycSgmaGVhZC0+cmVxdWV1ZV9sb2NrKTsKPiDCoMKgwqDCoMKgwqDCoCB9IGVsc2Ugewo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl93YXJuX3JhdGVsaW1pdGVkKGRldiwgIm5v
IHBhdGggLSBmYWlsaW5nIEkvT1xuIik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2X3dhcm5fcmF0ZWxpbWl0ZWQoZGV2LCAibm8gYXZhaWxhYmxlIHBhdGggLSBmYWlsaW5nCj4g
SS9PXG4iKTsKPiAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmlvLT5iaV9zdGF0
dXMgPSBCTEtfU1RTX0lPRVJSOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaW9f
ZW5kaW8oYmlvKTsKPiAtLSAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
