Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006CE4ED21
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 18:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eexkPeTI+Nv/U3lN+er1Vki1HfeoL9Nhg6Ai4ZoTXnw=; b=E+3Q/yDEeiENnjiX4TMgAnw8N
	AL+x2K4e72avxdvYXpAgqReLRG/+Dl6toW9Fji9romqQlGMgpkaYW5+Now80PW6RTXImWbZrjbofv
	Cxwh761fxfPUxcDUeAy80qp1A9yXm/LgYWgKHaNWlB2UomkHkD53Io+FpXdkShvBXvEyxfG0HO5jI
	XQj52aWVdyMOdzPayyQ6kfb+EJvVHOOgDqiAEZiYM8uA6/M1YcCdMr776Qsj03Hx7tDuoSe/znMV5
	eQdjvVANseD/5M3+L/bjZr8qNcPQxGwc5VUvcxwR6JiLA31zR6cTHWkjrEo2RfBDzYDezvFNIHxJi
	4anZYcn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMNC-0001Ua-5m; Fri, 21 Jun 2019 16:26:46 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heMN6-0001U7-7R
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 16:26:41 +0000
Received: by mail-pl1-f195.google.com with SMTP id k8so3257770plt.3
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 09:26:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6vu5Gc1hxnukVg95acKzFG9Rm9pURGZG5JgznbZxZQM=;
 b=gr6vb/dM09egSV8ugb6Kb1bJTf/cla8lxUDSzxNWYZ9ZEw3EcYU3tM5/WIYbFJ84wJ
 KVQfYEz9WK1gZ1Kf+6M/AgOgkNRDC+XFSBb1K7y/WTdMDPIUn3SWuPST/EzkyGk5S2hQ
 UbEkVTybzkAPnrtcuTl+swRM+JZ/9MzH36hi0Z/24afRCioKSoJncBsY3upwu0LvnVXe
 ejcFb7yyUGROu7YBM6Qkh24Iy2f2EwD1I7uRYsXMhrxw7Fyn6cM/f3iJiursPcBudSos
 WG6yCmShxBPo4j4l76PwRjiIbNtjA1pvej7mz3lXtlW3C/IZ6A2+I8gfaw2F7EodUEZE
 gS4g==
X-Gm-Message-State: APjAAAX1jl675C+rFT8byj1njg0SbLncYzEW18xekZ+YFXplOakviyEb
 XUzg7LQVHtyXJ+APK7dAyeE/82A9y9I=
X-Google-Smtp-Source: APXvYqxp3Na/MXxU+fOU/3ltClsmugjjIQ/HusAQxIBtMy4THCVKUcZ2J/V+mh5FvYWF5c9+Jlpz7w==
X-Received: by 2002:a17:902:294a:: with SMTP id
 g68mr135145598plb.169.1561134395601; 
 Fri, 21 Jun 2019 09:26:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:8c36:4f80:5fb5:4302?
 ([2601:647:4800:973f:8c36:4f80:5fb5:4302])
 by smtp.gmail.com with ESMTPSA id d26sm1168144pfn.29.2019.06.21.09.26.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 09:26:34 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
Message-ID: <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
Date: Fri, 21 Jun 2019 09:26:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_092640_268137_01D509FE 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

UGluZz8KCkhhbm5lcyBkaWQgeW91IGdldCB0byBsb29rIGludG8gbXkgcXVlc3Rpb25zPwoKT24g
Ni8xOS8xOSAxOjA0IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4+Pj4gV2hlbiByZXNl
dHRpbmcgdGhlIGNvbnRyb2xsZXIgdGhlcmUgaXMgbm8gcG9pbnQgd2hhdHNvZXZlciB0bwo+Pj4+
Pj4gaGF2ZSBhIHNjYW4gcnVuIGluIHBhcmFsbGVsOwo+Pj4+Pgo+Pj4+PiBUaGVyZSBpcyBhbHNv
IG5vIHBvaW50IG9mIHRyeWluZyB0byBwcmV2ZW50IGl0Lgo+Pj4+Pgo+Pj4+IE9oLCBJIGRvbid0
IG1pbmQgaGF2aW5nIGEgc2NhbiBydW5uaW5nIGluIHBhcmFsbGVsIG9uY2UgcmVzZXQgaXMKPj4+
PiB1bmRlcndheTsgdGhhdCB3aWxsIGJlIHByb3Blcmx5IHNob3J0LWNpcmN1aXRlZCBhbnl3YXku
Cj4+Pj4gV2hhdCBJIG9iamVjdCB0byBpcyBoYXZpbmcgc2Nhbm5pbmcgYW5kIHJlc2V0dGluZyBf
c3RhcnRpbmdfIGF0IHRoZSAKPj4+PiBzYW1lCj4+Pj4gdGltZSwgYXMgdGhlbiB3ZSBpbmN1ciBh
bGwgc29ydHMgb2YgcmFjZSBjb25kaXRpb25zLgo+Pj4KPj4+IEJ1dCB5b3VyIHBhdGNoIGRvZXMg
bm90IGluaGVyZW50bHkgcHJvdGVjdCBhZ2FpbnN0IGl0LCB0aGVzZSBzdGF0ZQo+Pj4gY29uZGl0
aW9ucyBzcHJpbmtsZWQgY2FuIGVhc2lseSByYWNlIHRoZSByZXNldC4KPj4+Cj4+IFRoZSByZWFz
b25pbmcgaXM6Cj4+IC0gKGEpIEkvTyBpcyBzdGFydGVkIGZyb20gdGhlIHNjYW4gdGhyZWFkCj4+
IC0gKGIpIHJlc2V0IHRyaWdnZXJzCj4+IC0gKGIpIHJlc2V0IGFib3J0IEkvTwo+PiAtIChhKSBJ
L08gcmV0dXJucyB3aXRoIGFuIGVycm9yCj4+IC0gKGEpIGNoZWNrcyB0aGUgc3RhdGUgYW5kIHNr
aXBzIHJlbWFpbmluZyBJL08KPj4KPj4+IE5vdGUgdGhhdCBJIGRvIGFncmVlIHdpdGggcGF0Y2gg
IzEsIGJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgaG93IHBhdGNoCj4+PiAjMiBpcyBmaXhpbmcgdGhl
IHByb2JsZW0gb3RoZXIgdGhhbiBuYXJyb3dpbmcgdGhlIHdpbmRvdyBhdCBiZXN0Lgo+Pj4KPj4g
T25seSBpZiB0aGUgc3RhdGUgaXMgbm90IHByb3BhZ2F0ZWQgdG8gdGhlIHNjYW4gdGhyZWFkLgo+
PiBNeSByZWFzb25pbmcgaXMgdGhhdCB0aGUgdGhyZWFkIHdpbGwgaGF2ZSBhIGNvbnRleHQgc3dp
dGNoIChhcyBpdCdzIAo+PiBkb2luZyBJL08pLCBhbmQgaGVuY2UgdGhlIHN0YXRlIGNoYW5nZSB3
aWxsIGJlIHByb3BhZ2F0ZWQuCj4gCj4gU3RpbGwgbm90IGd1YXJhbnRlZWQuCj4gCj4gCj4+PiBO
b3Qgc3VyZSB3aGF0IHlvdSBtZWFuIGJ5IHN0YWxsLCBhcmUgeW91IHJlZmVycmluZyB0byB0aGUg
Y2FzZSB0aGF0Cj4+PiBpdCB0YWtlcyBhIGxvbmcgdGltZSB0byByZWNvbm5lY3Q/Cj4+Pgo+PiBU
aGUgc3RhbGwgaXMgaGVyZSAodG8gc3RpY2sgd2l0aCB0aGUgYWJvdmUgZXhhbXBsZSk6Cj4+IC0g
KGEpIHNjYW4gdGhyZWFkIGlzc3VlcyBJL08KPj4gLSAoYikgcmVzZXQgdHJpZ2dlcnMKPj4gLSAo
YikgcmVzZXQgYWJvcnRzIGFsbCBJL08KPj4gLSAoYSkgSS9PIHJldHVybnMgd2l0aCBhbiBlcnJv
cgo+PiAtIChhKSBzY2FuIHRocmVhZCBpc3N1ZXMgbmV4dCBJL08KPj4gLSAoYikgZmx1c2hlcyBz
Y2FuIHRocmVhZAo+IAo+IEJ1dCByZXNldHMgZG8gbm90IGZsdXNoIHRoZSBzY2FuIHRocmVhZCAo
YmVmb3JlIHlvdXIgcGF0Y2gpLiBUaGF0Cj4gaXMgd2hhdCBJJ20gZmFpbGluZyB0byB1bmRlcnN0
YW5kLiB0aGUgc2NhbiB3b3JrIGlzIG9ubHkgZmx1c2hlZAo+IGluIG52bWVfcmVtb3ZlX25hbWVz
cGFjZXMoKS4KPiAKPj4gLSAoYSkgSS9PIGlzIGhlbGQgYnkgdGhlIGNvcmUgYXMgdGhlIGNvbnRy
b2xsZXIgaXMgaW4gcmVzZXQKPj4gLSAoYikgZmx1c2ggaGFuZ3MKPj4KPj4+IFRoZSBzb2x1dGlv
biBpcyB0byBtYWtlIHN1cmUgd2UgZHJhaW4gdGhlIGluZmxpZ2h0IEkvTywgbm90IGhhbGYtd2F5
Cj4+PiB0cnlpbmcgdG8gcHJldmVudCB0aGVtIGZyb20gaGFwcGVuaW5nLgo+Pj4KPj4gU2VlIGFi
b3ZlLiBUaHMgcHJvYmxlbSBpcyB0aGF0IHdlJ3JlIGRyYWluaW5nIEkvTyBvbmx5IG9uY2UsIGJ1
dCB0aGUgCj4+IHNjYW4gdGhyZWFkIGlzIGlzc3VpbmcgX3NldmVyYWxfIEkvTywgb2Ygd2hpY2gg
b25seSBfb25lXyB3aWxsIGJlIAo+PiBhYm9ydGVkLgo+IAo+IEJ1dCB3aXRoIHlvdXIgcGF0Y2gg
IzEgaXQgd2lsbCBiYWlsIGlmIGl0IGZhaWxlZCBhbmQgdGhlIHN0YXRlIHdhcyAKPiBwcm9wYWdh
dGVkLgo+IAo+Pj4+IFByb2JsZW0gaGVyZSBpcyB0aGF0IEkvTyB3aWxsIGJlIGhlbGQgZHVyaW5n
IHJlc2V0LCBhbmQKPj4+PiByZXN1Ym1pdHRlZCBvbmNlIHJlc2V0IGlzIGZpbmlzaGVkLgo+Pj4+
Cj4+Pj4gVGhlIHRyYW5zcG9ydCBkcml2ZXJzIHdvcmsgYXJvdW5kIHRoaXMgcHJvYmxlbSB0byB0
ZXJtaW5hdGUgYW55IEkvTwo+Pj4+IHByaW9yIHRvIHJlc2V0dGluZyB0aGUgY29udHJvbGxlciwK
Pj4+Cj4+PiBJdHMgbm90IGEgd29yayBhcm91bmQuCj4+Pgo+PiBTZWUgYWJvdmUuIE5vdCBhIHdv
cmthb3VuZCwgYnV0IG5vdCBzdWZmaWNpZW50IHRvIGxldCB0aGUgc2NhbiB0aHJlYWQgCj4+IG1h
a2luZyBwcm9ncmVzcywgZWl0aGVyLgo+Pgo+Pj4+IGJ1dCB0aGlzIHdpbGwgb25seSBjb3ZlciBJ
L08gd2hpY2gKPj4+PiBoYWQgYmVlbiBwZW5kaW5nIF9iZWZvcmVfIHJlc2V0IHdhcyBjYWxsZWQu
Cj4+Pj4gQW55IEkvTyBiZWluZyBzdGFydGVkIGFmdGVyIHRoYXQgd2lsbCBzdGlsbCBiZSBoZWxk
LCBhbmQgd2Ugd291bGQKPj4+PiBsaXZlLWxvY2sgdHJ5aW5nIHRvIGZsdXNoIHRoZSBzY2FuIHRo
cmVhZC4KPj4+Cj4+PiBCdXQgcmVzZXRzIGRvIG5vdCBmbHVzaCB0aGUgc2NhbiB0aHJlYWQgKGJl
Zm9yZSB5b3UgcmVzdG9yZWQgaXQpLgo+Pj4KPj4gWWVzLiBCdXQgdGhlIHNjYW4gdGhyZWFkIHdp
bGwgdGVhciBkb3duIG5hbWVzcGFjZXMgd2hlbiBydW5uaW5nIGluIAo+PiBwYXJhbGxlbCB3aXRo
IHJlc2V0cywgYW5kIHRoZW4gd2UncmUgcnVubmluZyBpbnRvIGEgcmFjZSBjb25kaXRpb24uCj4g
Cj4gQnV0IHdoZXJlIGlzIHRoZSAiaGFuZyIgeW91IGFyZSByZWZlcnJpbmcgdG8gd2hpY2ggZmx1
c2hlcyB0aGUgc2Nhbgo+IHRocmVhZD8KPiAKPj4+IEJ1dCBhZ2FpbiwgSSB3YW50IHRvIHVuZGVy
c3RhbmQgYWZ0ZXIgcGF0Y2ggIzEgaXMgYXBwbGllZCwgd2hhdCBhcmUgdGhlCj4+PiBzeW1wdG9t
cyBhbmQgd2h5IHBhdGNoICMyIGlzIHNvbHZpbmcgdGhlbS4KPiAKPiBDYW4gd2UgdGFrZSBhIHN0
ZXAgYmFjayBoZXJlPyBJIHRoaW5rIHdlIGFyZSBtaXhpbmcgdHdvIGRpZmZlcmVudCBpc3N1ZXMK
PiBoZXJlLiBpbiB5b3VyIHRyYWNlIHlvdSByZWZlciB0byBhIHVzZS1hZnRlci1mcmVlIHBhbmlj
IHdoZW4gdGhpcwo+IHBhdGNoIGlzIHRyeWluZyB0byBzb2x2ZSBhICJoYW5nIiBjb25kaXRpb24u
Cj4gCj4gQ2FuIHdlIHVuZGVyc3RhbmQgd2hhdCBpcyB0aGUgcGhlbm9tZW5vbiBhZnRlciBwYXRj
aCAjMSBpcyBhcHBsaWVkPwo+IAo+Pj4+IHN0YXRpYyB2b2lkIG52bWVfdmFsaWRhdGVfbnMoc3Ry
dWN0IG52bWVfY3RybCAqY3RybCwgdW5zaWduZWQgbnNpZCkKPj4+PiB7Cj4+Pj4gwqDCoMKgwqBz
dHJ1Y3QgbnZtZV9ucyAqbnM7Cj4+Pj4KPj4+PiDCoMKgwqDCoG5zID0gbnZtZV9maW5kX2dldF9u
cyhjdHJsLCBuc2lkKTsKPj4+PiDCoMKgwqDCoGlmIChucykgewo+Pj4+IMKgwqDCoMKgwqDCoMKg
IGlmIChucy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spKQo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbnZtZV9uc19yZW1vdmUobnMpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgIG52
bWVfcHV0X25zKG5zKTsKPj4+PiDCoMKgwqDCoH0gZWxzZQo+Pj4+IMKgwqDCoMKgwqDCoMKgIG52
bWVfYWxsb2NfbnMoY3RybCwgbnNpZCk7Cj4+Pj4gfQo+Pj4+Cj4+Pgo+Pj4gV2hpY2ggaXMgd2hh
dCBwYXRjaCAjMSBpcyBmb3IgcmlnaHQ/Cj4+Pgo+PiBUaGF0J3Mgd2hhdCBJIHRob3VnaHQgaW5p
dGlhbGx5LCB0b28sIGJ1dCBpdCB0dXJuZWQgb3V0IHRvIGJlIG5vdCAKPj4gc3VmZmljaWVudC4K
PiAKPiBOb3Qgc3VmZmljaWVudCBiZWNhdXNlIGl0IGhhbmdzPyBvciBwYW5pY3M/Cj4gCj4+PiBX
ZSBjYW4gaGF2ZSBhbiBpbmNyZW1lbnRhbCBwYXRjaCB0aGF0IG1vdmVzIHRoZSBucyByZW1vdmFs
IGZyb20KPj4+IGN0cmwtPm5hbWVzcGFjZXMgYWxzbyBiZWZvcmUuCj4+Pgo+PiBBZ2FpbiwgSSdt
IG5vdCBzdXJlIGlmIHRoYXQncyBzdWZmaWNpZW50Lgo+IAo+IFsuLi5dCj4gCj4+IFVsdGltYXRl
bHksIGl0J3MgdGhlIGltYmFsYW5jZSBpbiBudm1lX25zX3JlbW92ZSgpIHdoaWNoIGlzIGNhdXNp
bmcgCj4+IHRoaXMgY3Jhc2guCj4+IG52bWVfbnNfcmVtb3ZlKCkgd2lsbCBjYWxsIGJsa19jbGVh
bnVwX3F1ZXVlKCkgX2JlZm9yZV8gcmVtb3ZpbmcgdGhlIAo+PiBuYW1lc3BhY2UgZnJvbSB0aGUg
bGlzdC4KPiAKPiBUaGlzIGlzIHdoYXQgSSBzdWdnZXN0IGFzIGFuIGluY3JlbWVudGFsIGNoYW5n
ZSB0byB0aGUgcGF0Y2ggSQo+IHJlZmVyZW5jZWQuIGJsa19jbGVhbnVwX3F1ZXVlKCkgaXMgY2Fs
bGVkIGFmdGVyIHRoZSBucyBpcyByZW1vdmVkCj4gZnJvbSB0aGUgbGlzdC4KPiAKPj4gd2hpY2gg
bWVhbnMgdGhhdCBhbnkgY2FsbCB0byBudm1lX3N0b3BfcXVldWVzKCkgb3IgbnZtZV9zdGFydF9x
dWV1ZXMoKSAKPj4gaGFwcGVuaW5nIGJldHdlZW4gYmxrX2NsZWFudXBfcXVldWUoKSBhbmQgbGlz
dF9kZWwoKSB3aWxsIGJlIGhpdHRpbmcgCj4+IHRoaXMgaXNzdWUuCj4gCj4gVGhpcyBpcyB0aGUg
dXNlLWFmdGVyLWZyZWUgYWdhaW4gcmlnaHQ/Cj4gCj4+IEFuZCB3aXRob3V0IGFuIGV4cGxpY2l0
IGZsdXNoIG9mIHRoZSBzY2FuIHRocmVhZCB3ZSBjYW5ub3QgYXZvaWQgdGhpcy4KPj4gTGVhdmlu
ZyB1cyB3aXRoIHRoZSBjaG9pY2Ugb2YgZWl0aGVyIHJlYmFsYW5jZSBudm1lX25zX3JlbW92ZSgp
ICh3aGljaCAKPj4gaXMgd2hhdCB0aGUgcGF0Y2hzZXQgZnJvbSBNaW5nIExlaSB0cmllZCB0byBk
bykgb3Igd2UgZmx1c2ggdGhlIHNjYW4gCj4+IHRocmVhZCwgd2hpY2ggaXMgd2hhdCBJIGhhdmUg
YmVlbiBkb2luZy4KPiAKPiBZb3UgbWF5IGJlIHJpZ2h0LCBJIGp1c3QgbmVlZCBhIGxpdHRsZSBo
ZWxwIGdldHRpbmcgdGhlcmUgYXMgc28gZmFyIEknbQo+IG5vdCBjb252aW5jZWQgdGhhdCB0aGVy
ZSBpcyBubyBvdGhlciB3YXkuIEknbSBhbHNvIG5vdCAxMDAlIGNsZWFyCj4gb24gd2hhdCBpcyB0
aGUgcGhlbm9tZW5vbiBhZnRlciBwYXRjaCAjMSBpcyBhcHBsaWVkLCBpcyBpdCBhIGNyYXNoIG9y
Cj4gYSBoYW5nPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
