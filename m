Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F64D1C71FB
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 15:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ym28SeHGT+68gh9mJ7hVkuhFPSPk/KZRUlYklXnhJSI=; b=T6vpx4IrtZG04fVTMuNAn+UdK
	bX6fsacPhVBAG5BoWHPm8xkDoNmLq/CoLBCqzqN0iZ/jAk6BTU3cG+/jK3THBt4BtXmDbZgqDQ0bf
	4O5JubiXHRWLuFuk3Ht5n9AraRKG6t3yylqSvvjIkbZx6hnb5s+ueTwv4Yif6S5Ri5aeGNzEgN5Sg
	aizXMlV9F9lfxluyVaBtFcG7tHwJqjViHrBPOq/NSuAT6L3gv5IrSGhu2v2Y/QoHlFP7PQZ2TTSYJ
	syjJrVR86jFKOiAuzs8sQ3nLo9A7kkBZGDZS5HmN9xeqW7ioS75KiktV9cXRsgrOf1+IPKTneAC9E
	yMfXCxWHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKMq-0004dh-PW; Wed, 06 May 2020 13:45:44 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKMm-0004cU-HA
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 13:45:42 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id AD9F5E0CD773D7228325;
 Wed,  6 May 2020 14:45:37 +0100 (IST)
Received: from [127.0.0.1] (10.47.1.169) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 6 May 2020
 14:45:36 +0100
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
To: Alexey Dobriyan <adobriyan@gmail.com>, Keith Busch <kbusch@kernel.org>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
From: John Garry <john.garry@huawei.com>
Message-ID: <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
Date: Wed, 6 May 2020 14:44:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200506132429.GA21451@avx2>
Content-Language: en-US
X-Originating-IP: [10.47.1.169]
X-ClientProxiedBy: lhreml708-chm.china.huawei.com (10.201.108.57) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_064540_720093_D480BBFF 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMDYvMDUvMjAyMCAxNDoyNCwgQWxleGV5IERvYnJpeWFuIHdyb3RlOgo+IE9uIFdlZCwgTWF5
IDA2LCAyMDIwIGF0IDA2OjQ3OjAxQU0gLTA2MDAsIEtlaXRoIEJ1c2NoIHdyb3RlOgo+PiBPbiBX
ZWQsIE1heSAwNiwgMjAyMCBhdCAxMjowMzozNVBNICswMTAwLCBKb2huIEdhcnJ5IHdyb3RlOgo+
Pj4gT24gMjkvMDIvMjAyMCAwNTo1MywgS2VpdGggQnVzY2ggd3JvdGU6Cj4+Pj4gT24gRnJpLCBG
ZWIgMjgsIDIwMjAgYXQgMDk6NDU6MTlQTSArMDMwMCwgQWxleGV5IERvYnJpeWFuIHdyb3RlOgo+
Pj4+PiAgICBzdGF0aWMgaW5saW5lIHZvaWQgbnZtZV91cGRhdGVfY3FfaGVhZChzdHJ1Y3QgbnZt
ZV9xdWV1ZSAqbnZtZXEpCj4+Pj4+ICAgIHsKPj4+Pj4gLQlpZiAobnZtZXEtPmNxX2hlYWQgPT0g
bnZtZXEtPnFfZGVwdGggLSAxKSB7Cj4+Pj4+ICsJaWYgKCsrbnZtZXEtPmNxX2hlYWQgPT0gbnZt
ZXEtPnFfZGVwdGgpIHsKPj4+Cj4+PiBJIGZpZ3VyZSBtb21lbnRhcmlseSBudm1lcS0+Y3FfaGVh
ZCBtYXkgdHJhbnNpdGlvbiB0byBlcXVhbCBudm1lcS0+cV9kZXB0aAo+Pj4gYW5kIHRoZW4gdG8g
MCwgd2hpY2ggY2F1c2VzIGFuIG91dC1vZi1ib3VuZHMgYWNjZXNzIGhlcmU6Cj4+Pgo+Pj4gc3Rh
dGljIGlubGluZSBib29sIG52bWVfY3FlX3BlbmRpbmcoc3RydWN0IG52bWVfcXVldWUgKm52bWVx
KQo+Pj4gewo+Pj4gCXJldHVybiAobGUxNl90b19jcHUobnZtZXEtPmNxZXNbbnZtZXEtPmNxX2hl
YWRdLnN0YXR1cykgJiAxKSA9PQo+Pj4gCQkJbnZtZXEtPmNxX3BoYXNlOwo+Pj4gfQo+Pgo+PiBU
aGFua3MgZm9yIHRoZSBub3RpY2UsIHlvdXIgYW5hbHlzaXMgc291bmRzIGNvcnJlY3QgdG8gbWUu
Cj4+Cj4+IElkZWFsbHkgd2Ugd291bGRuJ3QgbGV0IHRoZSBpcnEgY2hlY2sgaGFwcGVuIHdoaWxl
IHRoZSB0aHJlYWRlZAo+PiBoYW5kbGVyIGlzIHJ1bm5pbmcsIGJ1dCB0aGF0IGlzIGEgYml0IHJp
c2t5IHRvIGludHJvZHVjZSBhdCB0aGlzCj4+IHBvaW50LiBJJ20gb2theSB3aXRoIHJldmVydGlu
ZyB0byBmaXggdGhpcyBpc3N1ZS4KPiAKPiBQcmUtaW5jcmVtZW50IGlzIHN0aWxsIGJlbmVmaWNp
YWwsIHNob3VsZCBiZSBkb25lIGluIHJlZ2lzdGVyLgo+IFBsZWFzZSwgdGVzdC4KCkknZCByYXRo
ZXIgaGVhciB0aGUgbWFpbnRhaW5lcuKAmXMgb3BpbmlvbiBiZWZvcmUgYm90aGVyaW5nIHRlc3Rp
bmcgdGhpcy4uLgoKQW5kIHlvdSBoYXZlIG5vdCBnaXZlbiBhbnkgc2lnbmlmaWNhbnQganVzdGlm
aWNhdGlvbiBmb3IgeW91ciBmaXggb3ZlciBhIApyZXZlcnQuCgpUaGFua3MsCkpvaG4KCj4gCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IERvYnJpeWFuIDxhZG9icml5YW5AZ21haWwuY29tPgo+
IC0tLQo+IAo+ICAgZHJpdmVycy9udm1lL2hvc3QvcGNpLmMgfCAgICA5ICsrKysrKysrLQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IC0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMK
PiBAQCAtOTczLDkgKzk3MywxNiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgbnZtZV9oYW5kbGVfY3Fl
KHN0cnVjdCBudm1lX3F1ZXVlICpudm1lcSwgdTE2IGlkeCkKPiAgIAo+ICAgc3RhdGljIGlubGlu
ZSB2b2lkIG52bWVfdXBkYXRlX2NxX2hlYWQoc3RydWN0IG52bWVfcXVldWUgKm52bWVxKQo+ICAg
ewo+IC0JaWYgKCsrbnZtZXEtPmNxX2hlYWQgPT0gbnZtZXEtPnFfZGVwdGgpIHsKPiArCS8qCj4g
KwkgKiBDYW4ndCBwcmUtaW5jcmVtZW50IC0+Y3FfaGVhZCBkaXJlY3RseS4KPiArCSAqIEl0IG11
c3QgYmUgaW4gWzAsIC0+cV9kZXB0aCkgcmFuZ2UgYXQgYWxsIHRpbWVzLgo+ICsJICovCj4gKwl1
MTYgdG1wID0gUkVBRF9PTkNFKG52bWVxLT5jcV9oZWFkKTsgPiArCWlmICgrK3RtcCA9PSBudm1l
cS0+cV9kZXB0aCkgewo+ICAgCQludm1lcS0+Y3FfaGVhZCA9IDA7Cj4gICAJCW52bWVxLT5jcV9w
aGFzZSBePSAxOwo+ICsJfSBlbHNlIHsKPiArCQludm1lcS0+Y3FfaGVhZCA9IHRtcDsKPiAgIAl9
Cj4gICB9Cj4gICAKPiAuCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
