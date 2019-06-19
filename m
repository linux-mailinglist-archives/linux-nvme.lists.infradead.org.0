Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A284B4C20B
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 22:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=39Mi6v2oXrbXVrG2DpaxMMFM99GpO6E6t3O55JOfgxc=; b=tTEWO3+oxMu/g7pfjgiali9CV
	DFiPhC9AVeGPRnbyJFe9tgZdM5YTpbQZ1pAME+rPPhY8+CLcKv1I76vik6DPzzvtZaH+bphMTBc9g
	t8AoxgzlJIc2OWcKGazPqzaDwW/+E7bm5aM9+CBbglo+KqfvGpf8SHQVYCIi1VxXA/RT3AuwnswX4
	QrelaDMMMM2xNqwmJtUtUjxRA5f6OeuW2Hj3HsI+FhLfKWkYS/Xx+G5UbJy+gSUtliWLKOMWMbQRn
	1SSosxGfLOXCdP7T/OZobE0Sw6ARTNHgiJ7/kjBKZ+Pm7J6ulm+q7ip31n4HUXHEYS0BP6O59N2KY
	S96APmlxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgpn-0003Rs-6s; Wed, 19 Jun 2019 20:05:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgon-0001UY-Ik
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 20:04:37 +0000
Received: by mail-ot1-f68.google.com with SMTP id z23so264384ote.13
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 13:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XVvONteGDMIsEr17Q8VSHptj7qfYKf76EcQBRDivr1k=;
 b=oz8n3c3oHexl8aALh1UKCBlC7hocwEwPS/nBRx335gHY0Ceyj4vr0pBo62X5PvDeZ5
 MpKkFZpkdgmPamn+mBcIHn7xncumM7unAquWKNcUGE+ot1J/12AlSj0H+y1Z0VEjdPwJ
 IkouE7Prhv+psBH/b4edDXO6bmCysbvbhY9T8+017dDnHErQ9fmcSQXm8namCO3o3f7z
 Csnf3vhQZnWyl8VbTDLSMs/+84cWmEkIu8kZzc9hvVeF6uSPQF72TNQ0As3ALwTuC2nc
 MIQHOCq+QpMlnjLFA7c9d4KDkwuCZtAl7lBBjFZ6ep1zid2ne7fNu1mzEoMay+rw3U9b
 P/Mg==
X-Gm-Message-State: APjAAAUUwyhO0FHxh6hM+i8cIJ+XudO2m6lQGDyaSXbOKc55EE0Tv4gx
 UB219Cfbs9I1FfpIR4oABShJCV2Z
X-Google-Smtp-Source: APXvYqxfhAI3cuOLsm5W+BTSgYEdE0wGF7VEnH/GjwKwpuo+tYuUq41RoueT+k1nCFQ2tI5ipRiy4w==
X-Received: by 2002:a05:6830:1293:: with SMTP id
 z19mr8292785otp.25.1560974667429; 
 Wed, 19 Jun 2019 13:04:27 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n3sm7203924oib.49.2019.06.19.13.04.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 13:04:26 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
Date: Wed, 19 Jun 2019 13:04:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_130429_648868_709F7AF3 
X-CRM114-Status: GOOD (  28.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4+IFdoZW4gcmVzZXR0aW5nIHRoZSBjb250cm9sbGVyIHRoZXJlIGlzIG5vIHBvaW50IHdo
YXRzb2V2ZXIgdG8KPj4+Pj4gaGF2ZSBhIHNjYW4gcnVuIGluIHBhcmFsbGVsOwo+Pj4+Cj4+Pj4g
VGhlcmUgaXMgYWxzbyBubyBwb2ludCBvZiB0cnlpbmcgdG8gcHJldmVudCBpdC4KPj4+Pgo+Pj4g
T2gsIEkgZG9uJ3QgbWluZCBoYXZpbmcgYSBzY2FuIHJ1bm5pbmcgaW4gcGFyYWxsZWwgb25jZSBy
ZXNldCBpcwo+Pj4gdW5kZXJ3YXk7IHRoYXQgd2lsbCBiZSBwcm9wZXJseSBzaG9ydC1jaXJjdWl0
ZWQgYW55d2F5Lgo+Pj4gV2hhdCBJIG9iamVjdCB0byBpcyBoYXZpbmcgc2Nhbm5pbmcgYW5kIHJl
c2V0dGluZyBfc3RhcnRpbmdfIGF0IHRoZSBzYW1lCj4+PiB0aW1lLCBhcyB0aGVuIHdlIGluY3Vy
IGFsbCBzb3J0cyBvZiByYWNlIGNvbmRpdGlvbnMuCj4+Cj4+IEJ1dCB5b3VyIHBhdGNoIGRvZXMg
bm90IGluaGVyZW50bHkgcHJvdGVjdCBhZ2FpbnN0IGl0LCB0aGVzZSBzdGF0ZQo+PiBjb25kaXRp
b25zIHNwcmlua2xlZCBjYW4gZWFzaWx5IHJhY2UgdGhlIHJlc2V0Lgo+Pgo+IFRoZSByZWFzb25p
bmcgaXM6Cj4gLSAoYSkgSS9PIGlzIHN0YXJ0ZWQgZnJvbSB0aGUgc2NhbiB0aHJlYWQKPiAtIChi
KSByZXNldCB0cmlnZ2Vycwo+IC0gKGIpIHJlc2V0IGFib3J0IEkvTwo+IC0gKGEpIEkvTyByZXR1
cm5zIHdpdGggYW4gZXJyb3IKPiAtIChhKSBjaGVja3MgdGhlIHN0YXRlIGFuZCBza2lwcyByZW1h
aW5pbmcgSS9PCj4gCj4+IE5vdGUgdGhhdCBJIGRvIGFncmVlIHdpdGggcGF0Y2ggIzEsIGJ1dCBJ
IGRvbid0IHVuZGVyc3RhbmQgaG93IHBhdGNoCj4+ICMyIGlzIGZpeGluZyB0aGUgcHJvYmxlbSBv
dGhlciB0aGFuIG5hcnJvd2luZyB0aGUgd2luZG93IGF0IGJlc3QuCj4+Cj4gT25seSBpZiB0aGUg
c3RhdGUgaXMgbm90IHByb3BhZ2F0ZWQgdG8gdGhlIHNjYW4gdGhyZWFkLgo+IE15IHJlYXNvbmlu
ZyBpcyB0aGF0IHRoZSB0aHJlYWQgd2lsbCBoYXZlIGEgY29udGV4dCBzd2l0Y2ggKGFzIGl0J3Mg
Cj4gZG9pbmcgSS9PKSwgYW5kIGhlbmNlIHRoZSBzdGF0ZSBjaGFuZ2Ugd2lsbCBiZSBwcm9wYWdh
dGVkLgoKU3RpbGwgbm90IGd1YXJhbnRlZWQuCgoKPj4gTm90IHN1cmUgd2hhdCB5b3UgbWVhbiBi
eSBzdGFsbCwgYXJlIHlvdSByZWZlcnJpbmcgdG8gdGhlIGNhc2UgdGhhdAo+PiBpdCB0YWtlcyBh
IGxvbmcgdGltZSB0byByZWNvbm5lY3Q/Cj4+Cj4gVGhlIHN0YWxsIGlzIGhlcmUgKHRvIHN0aWNr
IHdpdGggdGhlIGFib3ZlIGV4YW1wbGUpOgo+IC0gKGEpIHNjYW4gdGhyZWFkIGlzc3VlcyBJL08K
PiAtIChiKSByZXNldCB0cmlnZ2Vycwo+IC0gKGIpIHJlc2V0IGFib3J0cyBhbGwgSS9PCj4gLSAo
YSkgSS9PIHJldHVybnMgd2l0aCBhbiBlcnJvcgo+IC0gKGEpIHNjYW4gdGhyZWFkIGlzc3VlcyBu
ZXh0IEkvTwo+IC0gKGIpIGZsdXNoZXMgc2NhbiB0aHJlYWQKCkJ1dCByZXNldHMgZG8gbm90IGZs
dXNoIHRoZSBzY2FuIHRocmVhZCAoYmVmb3JlIHlvdXIgcGF0Y2gpLiBUaGF0CmlzIHdoYXQgSSdt
IGZhaWxpbmcgdG8gdW5kZXJzdGFuZC4gdGhlIHNjYW4gd29yayBpcyBvbmx5IGZsdXNoZWQKaW4g
bnZtZV9yZW1vdmVfbmFtZXNwYWNlcygpLgoKPiAtIChhKSBJL08gaXMgaGVsZCBieSB0aGUgY29y
ZSBhcyB0aGUgY29udHJvbGxlciBpcyBpbiByZXNldAo+IC0gKGIpIGZsdXNoIGhhbmdzCj4gCj4+
IFRoZSBzb2x1dGlvbiBpcyB0byBtYWtlIHN1cmUgd2UgZHJhaW4gdGhlIGluZmxpZ2h0IEkvTywg
bm90IGhhbGYtd2F5Cj4+IHRyeWluZyB0byBwcmV2ZW50IHRoZW0gZnJvbSBoYXBwZW5pbmcuCj4+
Cj4gU2VlIGFib3ZlLiBUaHMgcHJvYmxlbSBpcyB0aGF0IHdlJ3JlIGRyYWluaW5nIEkvTyBvbmx5
IG9uY2UsIGJ1dCB0aGUgCj4gc2NhbiB0aHJlYWQgaXMgaXNzdWluZyBfc2V2ZXJhbF8gSS9PLCBv
ZiB3aGljaCBvbmx5IF9vbmVfIHdpbGwgYmUgYWJvcnRlZC4KCkJ1dCB3aXRoIHlvdXIgcGF0Y2gg
IzEgaXQgd2lsbCBiYWlsIGlmIGl0IGZhaWxlZCBhbmQgdGhlIHN0YXRlIHdhcyAKcHJvcGFnYXRl
ZC4KCj4+PiBQcm9ibGVtIGhlcmUgaXMgdGhhdCBJL08gd2lsbCBiZSBoZWxkIGR1cmluZyByZXNl
dCwgYW5kCj4+PiByZXN1Ym1pdHRlZCBvbmNlIHJlc2V0IGlzIGZpbmlzaGVkLgo+Pj4KPj4+IFRo
ZSB0cmFuc3BvcnQgZHJpdmVycyB3b3JrIGFyb3VuZCB0aGlzIHByb2JsZW0gdG8gdGVybWluYXRl
IGFueSBJL08KPj4+IHByaW9yIHRvIHJlc2V0dGluZyB0aGUgY29udHJvbGxlciwKPj4KPj4gSXRz
IG5vdCBhIHdvcmsgYXJvdW5kLgo+Pgo+IFNlZSBhYm92ZS4gTm90IGEgd29ya2FvdW5kLCBidXQg
bm90IHN1ZmZpY2llbnQgdG8gbGV0IHRoZSBzY2FuIHRocmVhZCAKPiBtYWtpbmcgcHJvZ3Jlc3Ms
IGVpdGhlci4KPiAKPj4+IGJ1dCB0aGlzIHdpbGwgb25seSBjb3ZlciBJL08gd2hpY2gKPj4+IGhh
ZCBiZWVuIHBlbmRpbmcgX2JlZm9yZV8gcmVzZXQgd2FzIGNhbGxlZC4KPj4+IEFueSBJL08gYmVp
bmcgc3RhcnRlZCBhZnRlciB0aGF0IHdpbGwgc3RpbGwgYmUgaGVsZCwgYW5kIHdlIHdvdWxkCj4+
PiBsaXZlLWxvY2sgdHJ5aW5nIHRvIGZsdXNoIHRoZSBzY2FuIHRocmVhZC4KPj4KPj4gQnV0IHJl
c2V0cyBkbyBub3QgZmx1c2ggdGhlIHNjYW4gdGhyZWFkIChiZWZvcmUgeW91IHJlc3RvcmVkIGl0
KS4KPj4KPiBZZXMuIEJ1dCB0aGUgc2NhbiB0aHJlYWQgd2lsbCB0ZWFyIGRvd24gbmFtZXNwYWNl
cyB3aGVuIHJ1bm5pbmcgaW4gCj4gcGFyYWxsZWwgd2l0aCByZXNldHMsIGFuZCB0aGVuIHdlJ3Jl
IHJ1bm5pbmcgaW50byBhIHJhY2UgY29uZGl0aW9uLgoKQnV0IHdoZXJlIGlzIHRoZSAiaGFuZyIg
eW91IGFyZSByZWZlcnJpbmcgdG8gd2hpY2ggZmx1c2hlcyB0aGUgc2Nhbgp0aHJlYWQ/Cgo+PiBC
dXQgYWdhaW4sIEkgd2FudCB0byB1bmRlcnN0YW5kIGFmdGVyIHBhdGNoICMxIGlzIGFwcGxpZWQs
IHdoYXQgYXJlIHRoZQo+PiBzeW1wdG9tcyBhbmQgd2h5IHBhdGNoICMyIGlzIHNvbHZpbmcgdGhl
bS4KCkNhbiB3ZSB0YWtlIGEgc3RlcCBiYWNrIGhlcmU/IEkgdGhpbmsgd2UgYXJlIG1peGluZyB0
d28gZGlmZmVyZW50IGlzc3VlcwpoZXJlLiBpbiB5b3VyIHRyYWNlIHlvdSByZWZlciB0byBhIHVz
ZS1hZnRlci1mcmVlIHBhbmljIHdoZW4gdGhpcwpwYXRjaCBpcyB0cnlpbmcgdG8gc29sdmUgYSAi
aGFuZyIgY29uZGl0aW9uLgoKQ2FuIHdlIHVuZGVyc3RhbmQgd2hhdCBpcyB0aGUgcGhlbm9tZW5v
biBhZnRlciBwYXRjaCAjMSBpcyBhcHBsaWVkPwoKPj4+IHN0YXRpYyB2b2lkIG52bWVfdmFsaWRh
dGVfbnMoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdW5zaWduZWQgbnNpZCkKPj4+IHsKPj4+IMKg
wqDCoMKgc3RydWN0IG52bWVfbnMgKm5zOwo+Pj4KPj4+IMKgwqDCoMKgbnMgPSBudm1lX2ZpbmRf
Z2V0X25zKGN0cmwsIG5zaWQpOwo+Pj4gwqDCoMKgwqBpZiAobnMpIHsKPj4+IMKgwqDCoMKgwqDC
oMKgIGlmIChucy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spKQo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBudm1lX25zX3JlbW92ZShucyk7Cj4+PiDCoMKgwqDCoMKgwqDCoCBu
dm1lX3B1dF9ucyhucyk7Cj4+PiDCoMKgwqDCoH0gZWxzZQo+Pj4gwqDCoMKgwqDCoMKgwqAgbnZt
ZV9hbGxvY19ucyhjdHJsLCBuc2lkKTsKPj4+IH0KPj4+Cj4+Cj4+IFdoaWNoIGlzIHdoYXQgcGF0
Y2ggIzEgaXMgZm9yIHJpZ2h0Pwo+Pgo+IFRoYXQncyB3aGF0IEkgdGhvdWdodCBpbml0aWFsbHks
IHRvbywgYnV0IGl0IHR1cm5lZCBvdXQgdG8gYmUgbm90IAo+IHN1ZmZpY2llbnQuCgpOb3Qgc3Vm
ZmljaWVudCBiZWNhdXNlIGl0IGhhbmdzPyBvciBwYW5pY3M/Cgo+PiBXZSBjYW4gaGF2ZSBhbiBp
bmNyZW1lbnRhbCBwYXRjaCB0aGF0IG1vdmVzIHRoZSBucyByZW1vdmFsIGZyb20KPj4gY3RybC0+
bmFtZXNwYWNlcyBhbHNvIGJlZm9yZS4KPj4KPiBBZ2FpbiwgSSdtIG5vdCBzdXJlIGlmIHRoYXQn
cyBzdWZmaWNpZW50LgoKWy4uLl0KCj4gVWx0aW1hdGVseSwgaXQncyB0aGUgaW1iYWxhbmNlIGlu
IG52bWVfbnNfcmVtb3ZlKCkgd2hpY2ggaXMgY2F1c2luZyB0aGlzIAo+IGNyYXNoLgo+IG52bWVf
bnNfcmVtb3ZlKCkgd2lsbCBjYWxsIGJsa19jbGVhbnVwX3F1ZXVlKCkgX2JlZm9yZV8gcmVtb3Zp
bmcgdGhlIAo+IG5hbWVzcGFjZSBmcm9tIHRoZSBsaXN0LgoKVGhpcyBpcyB3aGF0IEkgc3VnZ2Vz
dCBhcyBhbiBpbmNyZW1lbnRhbCBjaGFuZ2UgdG8gdGhlIHBhdGNoIEkKcmVmZXJlbmNlZC4gYmxr
X2NsZWFudXBfcXVldWUoKSBpcyBjYWxsZWQgYWZ0ZXIgdGhlIG5zIGlzIHJlbW92ZWQKZnJvbSB0
aGUgbGlzdC4KCj4gd2hpY2ggbWVhbnMgdGhhdCBhbnkgY2FsbCB0byBudm1lX3N0b3BfcXVldWVz
KCkgb3IgbnZtZV9zdGFydF9xdWV1ZXMoKSAKPiBoYXBwZW5pbmcgYmV0d2VlbiBibGtfY2xlYW51
cF9xdWV1ZSgpIGFuZCBsaXN0X2RlbCgpIHdpbGwgYmUgaGl0dGluZyAKPiB0aGlzIGlzc3VlLgoK
VGhpcyBpcyB0aGUgdXNlLWFmdGVyLWZyZWUgYWdhaW4gcmlnaHQ/Cgo+IEFuZCB3aXRob3V0IGFu
IGV4cGxpY2l0IGZsdXNoIG9mIHRoZSBzY2FuIHRocmVhZCB3ZSBjYW5ub3QgYXZvaWQgdGhpcy4K
PiBMZWF2aW5nIHVzIHdpdGggdGhlIGNob2ljZSBvZiBlaXRoZXIgcmViYWxhbmNlIG52bWVfbnNf
cmVtb3ZlKCkgKHdoaWNoIAo+IGlzIHdoYXQgdGhlIHBhdGNoc2V0IGZyb20gTWluZyBMZWkgdHJp
ZWQgdG8gZG8pIG9yIHdlIGZsdXNoIHRoZSBzY2FuIAo+IHRocmVhZCwgd2hpY2ggaXMgd2hhdCBJ
IGhhdmUgYmVlbiBkb2luZy4KCllvdSBtYXkgYmUgcmlnaHQsIEkganVzdCBuZWVkIGEgbGl0dGxl
IGhlbHAgZ2V0dGluZyB0aGVyZSBhcyBzbyBmYXIgSSdtCm5vdCBjb252aW5jZWQgdGhhdCB0aGVy
ZSBpcyBubyBvdGhlciB3YXkuIEknbSBhbHNvIG5vdCAxMDAlIGNsZWFyCm9uIHdoYXQgaXMgdGhl
IHBoZW5vbWVub24gYWZ0ZXIgcGF0Y2ggIzEgaXMgYXBwbGllZCwgaXMgaXQgYSBjcmFzaCBvcgph
IGhhbmc/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
