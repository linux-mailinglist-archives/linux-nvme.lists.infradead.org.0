Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9EF291D7
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 09:35:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9i0ZHgVvLIpwQNNiKusEBjhFZao3kN/qDQmz2rR9sM0=; b=lMGkysc3VhfUlqtY+NK1t5u0B
	Z80J557amwXDP32kG5DdJTpDyIFF9LizpaaW7wQuN8a7xHeP+YRLXNVhLpJRb81cE8A+Cp5gZy/gk
	SBcjpG2ZXKs+qNLcX1XoqRD0EXauIEpBipu5lx/DBxYIUSqiGpS7RSK3J69Ja1x3Hh8/hYMLtG/DP
	zlJsO5jAiwzxh7uk4/c90Bgk/5/2gLPBX71bhOnmXXkO+8RWFW/D5ZNZglMN+VqeVdIRZjbp/C0V5
	BI+FVAw/n5+dasWcW8oUOkFLb0pZ2h0X4jpy6avbGrh/Uk3ef93BTbauef+MZKdDjPW0dCKy0k7/W
	HjI7bxTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4k0-0002hp-47; Fri, 24 May 2019 07:35:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4jt-0002gE-Ad
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 07:35:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 11A4CACAC;
 Fri, 24 May 2019 07:35:40 +0000 (UTC)
Subject: Re: [PATCH 2/4] nvme-fc: track state change failures during reconnect
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-3-hare@suse.de>
 <ddf3f233-263d-288a-aedd-8d1ee3989709@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <5dcb50ea-28d8-16b0-c7c7-3bc581717cbc@suse.de>
Date: Fri, 24 May 2019 09:35:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ddf3f233-263d-288a-aedd-8d1ee3989709@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_003541_515768_CB8870C7 
X-CRM114-Status: GOOD (  17.00  )
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
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yNC8xOSA4OjUxIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gaW5k
ZXggMGM5ZTAzNmFmZDA5Li5lNWM4MWJhMmI3YTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZt
ZS9ob3N0L2ZjLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+PiBAQCAtMjg2Nyw4
ICsyODY3LDEyIEBAIG52bWVfZmNfcmVjb25uZWN0X29yX2RlbGV0ZShzdHJ1Y3QgbnZtZV9mY19j
dHJsIAo+PiAqY3RybCwgaW50IHN0YXR1cykKPj4gwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIHJl
Y29uX2RlbGF5ID0gY3RybC0+Y3RybC5vcHRzLT5yZWNvbm5lY3RfZGVsYXkgKiBIWjsKPj4gwqDC
oMKgwqDCoCBib29sIHJlY29uID0gdHJ1ZTsKPj4gLcKgwqDCoCBpZiAoY3RybC0+Y3RybC5zdGF0
ZSAhPSBOVk1FX0NUUkxfQ09OTkVDVElORykKPj4gK8KgwqDCoCBpZiAoY3RybC0+Y3RybC5zdGF0
ZSAhPSBOVk1FX0NUUkxfQ09OTkVDVElORykgewo+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2luZm8o
Y3RybC0+Y3RybC5kZXZpY2UsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIk5WTUUtRkN7
JWR9OiBjb3VsZG4ndCByZWNvbm5lY3QgaW4gc3RhdGUgJXNcbiIsCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY3RybC0+Y251bSwgbnZtZV9jdHJsX3N0YXRlX25hbWUoJmN0cmwtPmN0cmwp
KTsKPiAKPiBJcyB0aGlzIGFsd2F5cyAiY291bGRuJ3QiPyBJcyB0aGlzIGV4cGVjdGVkPwo+IApT
dXJlbHkgbm90IGV4cGVjdGVkOyB0aGlzIGlzIHByZXR0eSBtdWNoIHRoZSBlcnJvciBwYXRoLgoK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gK8KgwqDCoCB9Cj4+IMKgwqDCoMKgwqAg
aWYgKHBvcnRwdHItPnBvcnRfc3RhdGUgPT0gRkNfT0JKU1RBVEVfT05MSU5FKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgZGV2X2luZm8oY3RybC0+Y3RybC5kZXZpY2UsCj4+IEBAIC0yOTE0LDcgKzI5
MTgsOCBAQCBfX252bWVfZmNfdGVybWluYXRlX2lvKHN0cnVjdCBudm1lX2ZjX2N0cmwgKmN0cmwp
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAhbnZtZV9jaGFuZ2VfY3RybF9zdGF0ZSgmY3RybC0+Y3Ry
bCwgTlZNRV9DVFJMX0NPTk5FQ1RJTkcpKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2Vycihj
dHJsLT5jdHJsLmRldmljZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIk5WTUUtRkN7
JWR9OiBlcnJvcl9yZWNvdmVyeTogQ291bGRuJ3QgY2hhbmdlIHN0YXRlICIKPj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgInRvIENPTk5FQ1RJTkdcbiIsIGN0cmwtPmNudW0pOwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiZnJvbSAlcyB0byBDT05ORUNUSU5HXG4iLCBjdHJsLT5jbnVtLAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2N0cmxfc3RhdGVfbmFtZSgmY3RybC0+Y3Ry
bCkpOwo+IAo+IERvZXNuJ3QgdGhpcyBwcmVzZW50IGFuIHVubmVjZXNzYXJ5IGNvbWJpbmF0aW9u
IG9mIGEgbG93ZXItY2FzZSBzdGF0ZQo+IGFuZCBhbGwtY2FwcyBDT05ORUNUSU5HPwpIbW0uIElu
ZGVlZC4gSSdsbCBiZSB1c2luZyB0aGUgc2FtZSBub3RhdGlvbiBmb3IgdGhlIG5leHQgdmVyc2lv
bi4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQg
U3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkx
MSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJl
cmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAy
MTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
