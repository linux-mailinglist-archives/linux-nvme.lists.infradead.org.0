Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954DC8BF11
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dx41SSzD61ktjMGECvwZlqnnmvK4ZwVy/rBSC7zUmds=; b=kjxAdGv0y0K0crDiiiaH/LXo6
	sMc+jw1avAfB09atqyiVkJuv3a+/VEz6hXIo1Rz27F0RvJtitSEwjBrO2ktQgdl1qzJOZ+UnLjswb
	PCUOFrQa3SkuoKucnQdfEhoxQg6mKgfn2lLN73a0TNir81yRPvPqPhqrkncBYDmwKitjV5u7zVlv0
	+EyN9twwJO4F3jiJNwVVZt5GaL3upLc8bJ1RtcBX2wOJdsQKUnbjS41++J6BUI3PrM8fqPo7Qn4xx
	GwPcmLUDKzAktSkP3+939AajMHil2JBhv/amRFo/CtKnaQ6ALfWHY22RlZfx8QebQuUm2n4eHfW+q
	jIc0TFIsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxa6g-0006CN-Sn; Tue, 13 Aug 2019 16:57:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxa6a-0006Bw-Cd
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:57:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 066EAAC10;
 Tue, 13 Aug 2019 16:56:59 +0000 (UTC)
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>
References: <20190812075147.79598-1-hare@suse.de>
 <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
 <1f2025d7-b79e-ad46-df73-66fdff1b5f28@grimberg.me>
 <20190813141510.GB32686@localhost.localdomain>
 <5c6ec6e6-d2ae-2e3b-0adc-e30cbcce528b@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <ceea7aaf-9537-ea19-8abe-bda525582170@suse.de>
Date: Tue, 13 Aug 2019 18:56:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5c6ec6e6-d2ae-2e3b-0adc-e30cbcce528b@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_095704_583432_6E0585B3 
X-CRM114-Status: GOOD (  18.05  )
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 "Nadolski, Edmund" <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8xMy8xOSA2OjM3IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBXZSBuZWVkIHRv
IG92ZXJyaWRlIHRoZSBkZWZhdWx0IG52bWVfZXJyb3Jfc3RhdHVzKCkgdG8gQkxLX1NUU19UQVJH
RVQKPj4gd2hlbiBETlIgaXMgc2V0IHRvIHByZXZlbnQgdXBwZXIgbGF5ZXJzIGZyb20gdGhlaXIg
b3duIHJldHJpZXMvZmFpbG92ZXIuCj4+IEkgc3VnZ2VzdGVkIGFkZGluZyB0aGF0IGNoZWNrIGlu
IHRoZSBleGlzdGluZyB1bmxpa2VseSgpIGNhc2UsIGJ1dCBtYXliZQo+PiBpdCdzIG1vcmUgb2J2
aW91cyBpZiB3ZSB0ZWFjaCBudm1lX2Vycm9yX3N0YXR1cygpIHRvIGRlZmF1bHQgdG8gcmV0dXJu
Cj4+IEJMS19TVFNfVEFSR0VUIGZvciB0aGlzIGNvbmRpdGlvbj8KPj4KPj4gLS0tCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3Jl
LmMKPj4gaW5kZXggOGYzZmJlNWNhOTM3Li41MGFkY2RkZTQ0ZDUgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMK
Pj4gQEAgLTE5OSw2ICsxOTksOSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgbnZtZV9uc19oYXNfcGko
c3RydWN0IG52bWVfbnMgKm5zKQo+PiDCoCBzdGF0aWMgYmxrX3N0YXR1c190IG52bWVfZXJyb3Jf
c3RhdHVzKHN0cnVjdCByZXF1ZXN0ICpyZXEpCj4+IMKgIHsKPj4gK8KgwqDCoCBpZiAodW5saWtl
bHkobnZtZV9yZXEocmVxKS0+c3RhdHVzICYgTlZNRV9TQ19ETlIpKQo+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIEJMS19TVFNfVEFSR0VUOwo+PiArCj4+IMKgwqDCoMKgwqAgc3dpdGNoIChudm1l
X3JlcShyZXEpLT5zdGF0dXMgJiAweDdmZikgewo+PiDCoMKgwqDCoMKgIGNhc2UgTlZNRV9TQ19T
VUNDRVNTOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIEJMS19TVFNfT0s7Cj4+IC0tIAo+
IAo+IE1ha2VzIHNlbnNlIHRvIG1lLCBIYW5uZXMgZG9lcyB0aGlzIGFkZHJlc3MgeW91ciBpc3N1
ZT8KT2gsIHllcywgaXQgZG9lcy4KSSB3YXMgc2xpZ2h0bHkgd29ycmllZCBhcyB3ZSB3b3VsZCBv
dmVycmlkZSBvdGhlciBub24tcmV0cnlhYmxlIHN0YXR1cyAKY29kZXMsIGJ1dCBhcyB0aGVyZSBp
cyBubyBkZWZpbml0ZSBtYXBwaW5nIHdoaWNoIHN0YXR1cyBjb2RlcyBhcmUgCnJldHJ5YWJsZSB3
ZSBjYW4gZ28gd2l0aCB0aGlzIG9uZS4KCkknbGwgYmUgc2VuZGluZyBhIHBhdGNoLgoKQ2hlZXJz
LAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxlYWQgU3Rv
cmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFz
aWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=
