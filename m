Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9483E5A7CE
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 02:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mLde/Xsup33pM2NXgU+8bcx+RHkH/QTqgpNxBj4j2BM=; b=Bwn4t7f3YB84pdw/5O44qnXjl
	JF3ZWSku3nRDDC5xkDumPo6JIk4OJ8ZgUMotMdyEmDT552+yUk9TgSY16l+sTRLfuYpAtu+ewx4IN
	GGDFgNuLPCrHIHPVLV5Dc2msa9Ii4CvZAbseSEJS8rDmOowNBY7g4tlGO9fhRJlh9h4eHEE/d8Nll
	7LU3ZDFM+NFJZrKJgFPz3m1miISEiJj19G8KxEq1aDfrT5RhQO+6z7eT34xlDz/EwDX5YV8Lw2YzO
	kPw25BTzgcwBiRduFv5aqN2MEtroLfXuVbHalgrsLtG3Y7DdBRZZOcX01zZ8rWAVvLBPU5UKzb3El
	MB7uv2IpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0ng-0001kk-JE; Sat, 29 Jun 2019 00:01:04 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0nX-0001kC-JP
 for linux-nvme@lists.infradead.org; Sat, 29 Jun 2019 00:00:57 +0000
Received: by mail-pf1-f195.google.com with SMTP id 19so3757756pfa.4
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 17:00:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eGXcLN8XvQhZ0bFO0tA5SdQQVKC8r8mNVhBmsDO6ehs=;
 b=rDWwIhH78Y+z1+pEyMJOyA7k9yzylaWHJjZeZ/3R6gksDifPZYWZQqni2X1cA7eU3s
 rOKXJ3XmVMmXq6aVPtZ6CuiutGenjb5DADhJ39gvOM8cyJRYcPI1u1KLH21jaF4n8DU1
 QSHgwqBEXzNpgXUvwygGm1H8zbsI24T1dpdgCdrfbkyEQQ51eKTJKbMv4B452nmbYaho
 ujcF7alfrq+oiBsxNzoY/s+Eggt2Is860SoP+2m7Oick9LwwFoiI91Ysiqc4wN5IpSpz
 siK2kWfWoV+bqHyiiL7+n9d2CsSxEGtQ8NZ7ZtE4kykSd8JytjTu8j8jx1wpPSxyuReX
 AmMQ==
X-Gm-Message-State: APjAAAUXYsX7lxjlciQ0yk6qUDpgdaZyKS4H2dDIsRcOcwurbGb8Q5BB
 wbHq5w1hddE4dkEGyVTdw+AM2NldYPQ=
X-Google-Smtp-Source: APXvYqyioi/2DPxNPNTrPneZdIJY9Y+1vX/m5nV9nG7GTXCFf0apzcwQxfXMxVTQXk5inyJPuvTNTw==
X-Received: by 2002:a63:7a4f:: with SMTP id j15mr12045552pgn.427.1561766452541; 
 Fri, 28 Jun 2019 17:00:52 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id u97sm2909973pjb.26.2019.06.28.17.00.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 17:00:51 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: fix module unloads while lports still pending
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190628231621.15867-1-jsmart2021@gmail.com>
 <b07da70f-770c-db0d-bf4e-7997c890c67b@acm.org>
 <1cfc9504-45d5-2ba3-55d9-949e5a301889@broadcom.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <6a2d56bd-eb0c-d9d4-884a-a883c7084b8c@acm.org>
Date: Fri, 28 Jun 2019 17:00:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1cfc9504-45d5-2ba3-55d9-949e5a301889@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_170055_848547_A61087FF 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8yOC8xOSA0OjMyIFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiAKPiAKPiBPbiA2LzI4LzIw
MTkgNDoyNiBQTSwgQmFydCBWYW4gQXNzY2hlIHdyb3RlOgo+PiBPbiA2LzI4LzE5IDQ6MTYgUE0s
IEphbWVzIFNtYXJ0IHdyb3RlOgo+Pj4gQEAgLTIzNyw2ICsyNDIsNyBAQCBudm1lX2ZjX2ZyZWVf
bHBvcnQoc3RydWN0IGtyZWYgKnJlZikKPj4+IMKgwqDCoMKgwqAgcHV0X2RldmljZShscG9ydC0+
ZGV2KTsKPj4+IMKgIMKgwqDCoMKgwqAga2ZyZWUobHBvcnQpOwo+Pj4gKwo+Pj4gwqAgfQo+Pgo+
PiBTcHVyaW91cyB3aGl0ZXNwYWNlPwo+IAo+IHllcwo+IAo+Pgo+Pj4gK3N0YXRpYyB2b2lkCj4+
PiArbnZtZV9mY19jbGVhbnVwX2Zvcl91bmxvYWQodm9pZCkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0
cnVjdCBudm1lX2ZjX2xwb3J0ICpscG9ydDsKPj4+ICvCoMKgwqAgc3RydWN0IG52bWVfZmNfcnBv
cnQgKnJwb3J0Owo+Pj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmbnZtZV9mY19sb2NrLCBmbGFncyk7Cj4+PiArwqDCoMKg
IGxpc3RfZm9yX2VhY2hfZW50cnkobHBvcnQsICZudm1lX2ZjX2xwb3J0X2xpc3QsIHBvcnRfbGlz
dCkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGxpc3RfZm9yX2VhY2hfZW50cnkocnBvcnQsICZscG9y
dC0+ZW5kcF9saXN0LCBlbmRwX2xpc3QpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52
bWVfZmNfZGVsZXRlX2NvbnRyb2xsZXJzKHJwb3J0KTsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+
PiArwqDCoMKgIH0KPj4+ICvCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbnZtZV9mY19s
b2NrLCBmbGFncyk7Cj4+PiArCj4+PiArwqDCoMKgIHByX2luZm8oIiVzOiB3YWl0aW5nIGZvciBj
dGxyIGRlbGV0ZXNcbiIsIF9fZnVuY19fKTsKPj4+ICvCoMKgwqAgd2FpdF9mb3JfY29tcGxldGlv
bigmbnZtZV9mY191bmxvYWRfcHJvY2VlZCk7Cj4+PiArwqDCoMKgIHByX2luZm8oIiVzOiBjdHJs
IGRlbGV0ZXMgY29tcGxldGVcbiIsIF9fZnVuY19fKTsKPj4+ICt9Cj4+PiArCj4+PiDCoCBzdGF0
aWMgdm9pZCBfX2V4aXQgbnZtZV9mY19leGl0X21vZHVsZSh2b2lkKQo+Pj4gwqAgewo+Pj4gLcKg
wqDCoCAvKiBzYW5pdHkgY2hlY2sgLSBhbGwgbHBvcnRzIHNob3VsZCBiZSByZW1vdmVkICovCj4+
PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+PiArwqDCoMKgIGJvb2wgbmVlZF9jbGVh
bnVwID0gZmFsc2U7Cj4+PiArCj4+PiArwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZudm1lX2Zj
X2xvY2ssIGZsYWdzKTsKPj4+ICvCoMKgwqAgbnZtZV9mY193YWl0aW5nX3RvX3VubG9hZCA9IHRy
dWU7Cj4+PiArwqDCoMKgIGluaXRfY29tcGxldGlvbigmbnZtZV9mY191bmxvYWRfcHJvY2VlZCk7
Cj4+PiDCoMKgwqDCoMKgIGlmICghbGlzdF9lbXB0eSgmbnZtZV9mY19scG9ydF9saXN0KSkKPj4+
IC3CoMKgwqDCoMKgwqDCoCBwcl93YXJuKCIlczogbG9jYWxwb3J0IGxpc3Qgbm90IGVtcHR5XG4i
LCBfX2Z1bmNfXyk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbmVlZF9jbGVhbnVwID0gdHJ1ZTsKPj4+
ICvCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbnZtZV9mY19sb2NrLCBmbGFncyk7Cj4+
PiArwqDCoMKgIGlmIChuZWVkX2NsZWFudXApCj4+PiArwqDCoMKgwqDCoMKgwqAgbnZtZV9mY19j
bGVhbnVwX2Zvcl91bmxvYWQoKTsKPj4KPj4gQ2FuIHRoZSBudm1lX2ZjX2xwb3J0X2xpc3QgbGlz
dCBiZWNvbWUgZW1wdHkgYWZ0ZXIgCj4+IG52bWVfZmNfZXhpdF9tb2R1bGUoKSBoYXMgdW5sb2Nr
ZWQgbnZtZV9mY19sb2NrIGFuZCBiZWZvcmUgCj4+IG52bWVfZmNfY2xlYW51cF9mb3JfdW5sb2Fk
KCkgaXMgY2FsbGVkPyBJZiBzbywgc2hvdWxkbid0IAo+PiBudm1lX2ZjX2NsZWFudXBfZm9yX3Vu
bG9hZCgpIGJlIGNhbGxlZCB1bmNvbmRpdGlvbmFsbHkgYW5kIHNob3VsZG4ndCAKPj4gdGhlIHdh
aXRfZm9yX2NvbXBsZXRpb24oJm52bWVfZmNfdW5sb2FkX3Byb2NlZWQpIGNhbGwgZGVwZW5kIG9u
IAo+PiB3aGV0aGVyIG9yIG5vdCBudm1lX2ZjX2NsZWFudXBfZm9yX3VubG9hZCgpIGhhcyBkZWxl
dGVkIGFueSBjb250cm9sbGVycz8KPiAKPiBJdCdzIHBvc3NpYmxlIHdoaWNoIGlzIHdoeSBJIGlu
aXQnZCB0aGUgY29tcGxldGlvbiB3aGlsZSB1bmRlciB0aGUgCj4gbG9jay7CoMKgIFRoZXJlZm9y
ZSwgdGhlIHJlbW92YWwgdGhhdCB3b3VsZCBtYWtlIGl0IGVtcHR5LCB3aGljaCBpcyBhbHNvIAo+
IHVuZGVyIGxvY2ssIHdpbGwgdHJpZ2dlciB0aGUgY29tcGxldGlvbi4gSW4gdGhpcyBzY2VuYXJp
bywgdGhlIGNsZWFudXAgCj4gcm91dGluZSB3b3VsZCBiZSBhbiBlbXB0eSBsaXN0LCBmYWxsIGlu
dG8gdGhlIHdhaXQgZm9yIGNvbXBsZXRpb24sIHdoaWNoIAo+IGltbWVkaWF0ZWx5IHN1Y2NlZWRz
LgoKSGkgSmFtZXMsCgpIYXZlIHlvdSBjb25zaWRlcmVkIHRvIHVzZSBERUNMQVJFX0NPTVBMRVRJ
T04oKT8KClRoYW5rcywKCkJhcnQuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbnZtZQo=
