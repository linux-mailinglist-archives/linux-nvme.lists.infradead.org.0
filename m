Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACF51F127A
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jun 2020 07:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kr2GidIbDjqamXihvON120y8hqKTSUKoPWJxuAkShgo=; b=bYu21lk3AImmiAJDiobmO5TvL
	dLYhYV7Xg/dsMjVmMeGJTK4krxFbyov8NxuCMOMdRHlDqPayEQic5KbkE2iqYxSrwVmEHa695Ls6l
	pqSZSfGEoFSwdbY+cAcCLZZcQLdRcm3L0BTguy0BtqWPaRoMNvOyVC9WMC7tdsY9V83z26Jc5ac6Y
	rvC2QAgIWxFaKUjGrNYtfxD3JaqqgvkSXtSWg5IBt5FQJCrBkoGGGCzjHflB/71CcdyveF70xefwF
	suSKTLxIW1ULPpswN1i9NUI5cRaSpdXc/ZGUFX7A6O9KJi8wBG92cuPMwRAB8WLOS6gdoWSzTs8Lf
	PZeoBTYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiAQN-0001Op-Vz; Mon, 08 Jun 2020 05:34:19 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiAQJ-0001OH-Nc
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 05:34:17 +0000
Received: by mail-pf1-f194.google.com with SMTP id z64so8045765pfb.1
 for <linux-nvme@lists.infradead.org>; Sun, 07 Jun 2020 22:34:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QOtucofxk1cKlKDOrbZOjZ3Oy91+fnmAEy/0e3ZUh2E=;
 b=s0X08gv8EH9dEu0BFpPwLVW5e+zUWglGN703SLLX2GxCgwy3c0o0x2DUfSy7j8QwP8
 vIcWgfw1q8udzro9vbOz0N9n2LIbSdQV5yH/+t7w77yYrffFy8xf9OyVAqMC1SQOVDYY
 +0ChAT7UccVIy5cp/M5vbf6YtAChw0AyXKGygCGu/Px6n+E2k7fOjWVdSTQDVWNj8BNo
 i8PPWirfDZSUW6q9N5x9QvNNLIyyafcIF1BrBfWD+ob31sbJ8iUXDMutQ4iY8mdxdA63
 vsDItE3d9hjCq3CzJsG0k8Wsyuksf4DFiBORmZVVOeUpDIEYGaZstsuBgfg/XLP0ZoEx
 Bk1w==
X-Gm-Message-State: AOAM532JvBhW5wooqgQClX6sRrSOypzlYC12BLWMygS9q7Kg3bX/hk49
 0AX4puH9bn5gl+nITX7ZyqSSQKKtUow=
X-Google-Smtp-Source: ABdhPJy7AC1axEJ4elvrjCuWsvBODyaeKImAxtwsEwB6aNQ4iKBvUQPn6wU94Nvtzx2mkgRIoLiZfw==
X-Received: by 2002:a63:d412:: with SMTP id a18mr18829993pgh.154.1591594454133; 
 Sun, 07 Jun 2020 22:34:14 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5183:321c:38f8:ee16?
 ([2601:647:4802:9070:5183:321c:38f8:ee16])
 by smtp.gmail.com with ESMTPSA id nl5sm15090739pjb.36.2020.06.07.22.34.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 22:34:13 -0700 (PDT)
Subject: Re: blktests test nvme/003 fails
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <a2b9e92a-f499-b54c-a275-c08a23467866@acm.org>
 <BYAPR04MB49651040C77627E3A70FF86886880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <fddde27a-eb61-7031-a067-5538e0fe3243@grimberg.me>
 <BYAPR04MB49651CF1169CD33108A484B386880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <BYAPR04MB4965217373E87DFEE2398D3F86890@BYAPR04MB4965.namprd04.prod.outlook.com>
 <96530c68-0cc0-8b88-4d3e-c2a66be44167@grimberg.me>
 <e110c297-a357-5e8d-754b-09a5faec7399@grimberg.me>
 <BYAPR04MB49658EAA5D722230E5036DE686850@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d3a692a7-bc4b-215a-4d02-a6711d542d97@grimberg.me>
Date: Sun, 7 Jun 2020 22:34:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB49658EAA5D722230E5036DE686850@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_223415_769486_8410C534 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA2LzcvMjAgOTo1OCBQTSwgQ2hhaXRhbnlhIEt1bGthcm5pIHdyb3RlOgo+IFNhZ2ksCj4g
Cj4gT24gNi81LzIwIDQ6MTUgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4+Cj4+Pj4gICDCoMKg
IHZvaWQgbnZtZXRfc3FfZGVzdHJveShzdHJ1Y3QgbnZtZXRfc3EgKnNxKQo+Pj4+ICAgwqDCoCB7
Cj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqAgdTE2IHN0YXR1cyA9IE5WTUVfU0NfSU5URVJOQUwg
fCBOVk1FX1NDX0ROUjsKPj4+PiBAQCAtNzg2LDggKzgwMCwxNiBAQCB2b2lkIG52bWV0X3NxX2Rl
c3Ryb3koc3RydWN0IG52bWV0X3NxICpzcSkKPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
SWYgdGhpcyBpcyB0aGUgYWRtaW4gcXVldWUsIGNvbXBsZXRlIGFsbCBBRVJzIHNvIHRoYXQgb3Vy
Cj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHF1ZXVlIGRvZXNuJ3QgaGF2ZSBvdXRzdGFu
ZGluZyByZXF1ZXN0cyBvbiBpdC4KPj4+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+Pj4g
LcKgwqDCoMKgwqDCoCBpZiAoY3RybCAmJiBjdHJsLT5zcXMgJiYgY3RybC0+c3FzWzBdID09IHNx
KQo+Pj4+ICvCoMKgwqDCoMKgwqAgaWYgKGN0cmwgJiYgY3RybC0+c3FzICYmIGN0cmwtPnNxc1sw
XSA9PSBzcSkgewo+Pj4+ICAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1l
dF9hc3luY19ldmVudHNfcHJvY2VzcyhjdHJsLCBzdGF0dXMpOwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8qCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
IFRhcmdldCBjb250cm9sbGVyJ3MgaG9zdCBwb3N0ZWQgZXZlbnRzIG5lZWRzIHRvIGJlCj4+Pj4g
ZXhwbGljaXRseQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBjaGVja2Vk
IGFuZCBjbGVhcmVkIHNpbmNlIHRoZXJlIGlzIG5vIDEgOiAxIG1hcHBpbmcKPj4+PiBiZXR3ZWVu
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGhvc3QgcG9zdGVkIEFFTiBy
ZXF1ZXN0cyBhbmQgdGFyZ2V0IGdlbmVyYXRlZCBBRU5zCj4+Pj4gb24gdGhlCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHRhcmdldCBjb250cm9sbGVyJ3MgYWVuX2xpc3Qu
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG52bWV0X2FzeW5jX2V2ZW50c19mcmVlX2hvc3RfcmVxKGN0cmwp
Owo+Pj4KPj4+IENhbGwgaXQgbnZtZXRfYXN5bmNfZXZlbnRzX2ZhaWxfYWxsKGN0cmwpOwo+Pj4K
Pj4+IEkgdGhpbmsgdGhlIG9sZGVyIHdhcyBiZXR0ZXIgdGhvdWdoLi4gQ2FuIHlvdSBzZW5kIHRo
ZSBsYXRlc3Qgb25lIHRvIHNlZQo+Pj4gaXQgc2lkZSBieSBzaWRlPwo+Pgo+PiBBcmUgeW91IHNl
bmRpbmcgYSBwYXRjaCBDaGFpdGFueWE/Cj4+Cj4gU29ycnkgZm9yIGRlbGF5Lgo+IAo+IEhlcmUg
aXMgaW5pdGlhbCBwYXRjaCB3aXRoIG1vZGlmaWNhdGlvbiB0byBbMV0gYXMgaXQgaGFkIGEgYnVn
IHdoaWNoIEkKPiBmaXhlZCBoZXJlIHRoYXQgY2xlYXJzIG91dCBvdXRzdGFuZGluZyBBRU5zIGlu
IHRoZQo+IG52bWV0X2FzeW5jX2V2ZW50X3Byb2Nlc3MoKSA6LQoKQ2hhaXRhbnlhLAoKV2hpbGUg
SSBsaWtlZCB0aGlzIHBhdGNoIGJldHRlciwgZGlkIHlvdSBjaGVjayBpZiB0aGUgZXZlbnRzIGFy
ZQpjb21pbmcgb3V0IGNvcnJlY3RseT8gd2hlbiBJIHJhbiB0aGlzIHBhdGggSSBzYXcgdGhhdCBJ
J20gZ2V0dGluZwpjb25zdGFudCBOU19DSEFOR0UgZXZlbnRzIGluIHVkZXZhZG0gbW9uaXRvci4u
LgoKSSB0aGluayB3ZSB3YW50IHBhdGNoIDIgaW5zdGVhZC4uLgoKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwo+
IGluZGV4IDYzOTJiY2QzMGJkNy4uODQzZGExMjFjZGRmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bnZtZS90YXJnZXQvY29yZS5jCj4gKysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKPiBA
QCAtMTM5LDEyICsxMzksMjYgQEAgc3RhdGljIHZvaWQgbnZtZXRfYXN5bmNfZXZlbnRzX3Byb2Nl
c3Moc3RydWN0Cj4gbnZtZXRfY3RybCAqY3RybCwgdTE2IHN0YXR1cykKPiAgICAgICAgICAgICAg
ICAgICBhZW4gPSBsaXN0X2ZpcnN0X2VudHJ5KCZjdHJsLT5hc3luY19ldmVudHMsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbnZtZXRfYXN5bmNfZXZl
bnQsIGVudHJ5KTsKPiAgICAgICAgICAgICAgICAgICByZXEgPSBjdHJsLT5hc3luY19ldmVudF9j
bWRzWy0tY3RybC0+bnJfYXN5bmNfZXZlbnRfY21kc107Cj4gLSAgICAgICAgICAgICAgIGlmIChz
dGF0dXMgPT0gMCkKPiArICAgICAgICAgICAgICAgaWYgKHN0YXR1cyA9PSAwICYmIGFlbikgewo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbnZtZXRfc2V0X3Jlc3VsdChyZXEsCj4gbnZtZXRf
YXN5bmNfZXZlbnRfcmVzdWx0KGFlbikpOwo+IC0KPiAtICAgICAgICAgICAgICAgbGlzdF9kZWwo
JmFlbi0+ZW50cnkpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsKCZhZW4tPmVu
dHJ5KTsKPiArICAgICAgICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICAgIGtmcmVlKGFlbik7
Cj4gCj4gKyAgICAgICAgICAgICAgIHRyYWNlX252bWV0X2FzeW5jX2V2ZW50KGN0cmwsIHJlcS0+
Y3FlLT5yZXN1bHQudTMyKTsKPiArICAgICAgICAgICAgICAgbnZtZXRfcmVxX2NvbXBsZXRlKHJl
cSwgc3RhdHVzKTsKPiArICAgICAgICAgICAgICAgbXV0ZXhfbG9jaygmY3RybC0+bG9jayk7Cj4g
KyAgICAgICB9Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogV2hlbiBzdGF0dXMgIT0gMCB3ZSBh
cmUgY2FsbGVkIGZyb20gbnZtZXRfc3FfZGVzdHJveSgpCj4gY29udGV4dCB0aGF0Cj4gKyAgICAg
ICAgKiBtZWFucyB3ZSBuZWVkIHRvIGNvbXBsZXRlIHJlbWFpbmluZyBob3N0IHBvc3RlZCBvdXRz
dGFuZGluZwo+IHJlcXVlc3RzCj4gKyAgICAgICAgKiBpbiBjdHJsLT5ucl9hc3luY19jbWRzW10g
d2hpY2ggZG9lc24ndCBoYXZlIDE6MSBtYXBwaW5nIG9udG8KPiArICAgICAgICAqIGN0cmwtPmFz
eW5jX2V2ZW50IGxpc3QgaW4gb3JkZXIgdG8gcHV0IHRoZSByZWZlcmVuY2Ugb24gdGhlCj4gcmVx
KHMpCj4gKyAgICAgICAgKiB3aGljaCB3YXMgdGFrZW4gYnkgb3V0c3RhbmRpbmcgcmVxKHMpIHNv
IHRoYXQgd2UgY2FuIG1ha2UKPiBwcm9ncmVzcyBpbgo+ICsgICAgICAgICogbnZtZXRfc3FfZGVz
dHJveSgpLT4gd2FpdF9mb3IgY29tcGxldGlvbigmc3EtPmZyZWVfZG9uZSkuCj4gKyAgICAgICAg
Ki8KPiArICAgICAgIHdoaWxlIChzdGF0dXMgIT0gMCAmJiBjdHJsLT5ucl9hc3luY19ldmVudF9j
bWRzKSB7Cj4gKyAgICAgICAgICAgICAgIHJlcSA9IGN0cmwtPmFzeW5jX2V2ZW50X2NtZHNbLS1j
dHJsLT5ucl9hc3luY19ldmVudF9jbWRzXTsKPiAgICAgICAgICAgICAgICAgICBtdXRleF91bmxv
Y2soJmN0cmwtPmxvY2spOwo+ICAgICAgICAgICAgICAgICAgIHRyYWNlX252bWV0X2FzeW5jX2V2
ZW50KGN0cmwsIHJlcS0+Y3FlLT5yZXN1bHQudTMyKTsKPiAgICAgICAgICAgICAgICAgICBudm1l
dF9yZXFfY29tcGxldGUocmVxLCBzdGF0dXMpOwo+IAo+IAo+IEhlcmUgaXMgdGhlIG5ldyBwYXRj
aCB3aGljaCBjbGVhcnMgdXAgdGhlIG91dHN0YW5kaW5nIEFFTnMgaW4gYSBzZXBhcmF0ZQo+IGZ1
bmN0aW9uIGZyb20gWzJdOi0KPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9j
b3JlLmMgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwo+IGluZGV4IDYzOTJiY2QzMGJkNy4u
YjQ5NGE5MDJjM2ZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvY29yZS5jCj4g
KysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKPiBAQCAtNzc3LDYgKzc3NywyMCBAQCBz
dGF0aWMgdm9pZCBudm1ldF9jb25maXJtX3NxKHN0cnVjdCBwZXJjcHVfcmVmICpyZWYpCj4gICAg
ICAgICAgICBjb21wbGV0ZSgmc3EtPmNvbmZpcm1fZG9uZSk7Cj4gICAgIH0KPiAKPiArc3RhdGlj
IHZvaWQgbnZtZXRfYXN5bmNfZXZlbnRzX2ZyZWVfaG9zdF9yZXEoc3RydWN0IG52bWV0X2N0cmwg
KmN0cmwpCgpMZXRzIGNhbGwgaXQgbnZtZXRfYXN5bmNfZXZlbnRzX2ZhaWxhbGwgYW5kIGtlZXAg
aXQgYXMgaXMuLgoKPiArewo+ICsgICAgICAgc3RydWN0IG52bWV0X3JlcSAqcmVxOwo+ICsKPiAr
ICAgICAgIG11dGV4X2xvY2soJmN0cmwtPmxvY2spOwo+ICsgICAgICAgd2hpbGUgKGN0cmwtPm5y
X2FzeW5jX2V2ZW50X2NtZHMpIHsKPiArICAgICAgICAgICAgICAgcmVxID0gY3RybC0+YXN5bmNf
ZXZlbnRfY21kc1stLWN0cmwtPm5yX2FzeW5jX2V2ZW50X2NtZHNdOwo+ICsgICAgICAgICAgICAg
ICBtdXRleF91bmxvY2soJmN0cmwtPmxvY2spOwo+ICsgICAgICAgICAgICAgICBudm1ldF9yZXFf
Y29tcGxldGUocmVxLCBOVk1FX1NDX0lOVEVSTkFMIHwgTlZNRV9TQ19ETlIpOwo+ICsgICAgICAg
ICAgICAgICBtdXRleF9sb2NrKCZjdHJsLT5sb2NrKTsKPiArICAgICAgIH0KPiArICAgICAgIG11
dGV4X3VubG9jaygmY3RybC0+bG9jayk7Cj4gK30KPiArCj4gICAgIHZvaWQgbnZtZXRfc3FfZGVz
dHJveShzdHJ1Y3QgbnZtZXRfc3EgKnNxKQo+ICAgICB7Cj4gICAgICAgICAgICB1MTYgc3RhdHVz
ID0gTlZNRV9TQ19JTlRFUk5BTCB8IE5WTUVfU0NfRE5SOwo+IEBAIC03ODYsOCArODAwLDE2IEBA
IHZvaWQgbnZtZXRfc3FfZGVzdHJveShzdHJ1Y3QgbnZtZXRfc3EgKnNxKQo+ICAgICAgICAgICAg
ICogSWYgdGhpcyBpcyB0aGUgYWRtaW4gcXVldWUsIGNvbXBsZXRlIGFsbCBBRVJzIHNvIHRoYXQg
b3VyCj4gICAgICAgICAgICAgKiBxdWV1ZSBkb2Vzbid0IGhhdmUgb3V0c3RhbmRpbmcgcmVxdWVz
dHMgb24gaXQuCj4gICAgICAgICAgICAgKi8KPiAtICAgICAgIGlmIChjdHJsICYmIGN0cmwtPnNx
cyAmJiBjdHJsLT5zcXNbMF0gPT0gc3EpCj4gKyAgICAgICBpZiAoY3RybCAmJiBjdHJsLT5zcXMg
JiYgY3RybC0+c3FzWzBdID09IHNxKSB7Cj4gICAgICAgICAgICAgICAgICAgIG52bWV0X2FzeW5j
X2V2ZW50c19wcm9jZXNzKGN0cmwsIHN0YXR1cyk7Cj4gKyAgICAgICAgICAgICAgIC8qCj4gKyAg
ICAgICAgICAgICAgICAqIFRhcmdldCBjb250cm9sbGVyJ3MgaG9zdCBwb3N0ZWQgZXZlbnRzIG5l
ZWRzIHRvIGJlCj4gZXhwbGljaXRseQo+ICsgICAgICAgICAgICAgICAgKiBjaGVja2VkIGFuZCBj
bGVhcmVkIHNpbmNlIHRoZXJlIGlzIG5vIDEgOiAxIG1hcHBpbmcKPiBiZXR3ZWVuCj4gKyAgICAg
ICAgICAgICAgICAqIGhvc3QgcG9zdGVkIEFFTiByZXF1ZXN0cyBhbmQgdGFyZ2V0IGdlbmVyYXRl
ZCBBRU5zIG9uIHRoZQo+ICsgICAgICAgICAgICAgICAgKiB0YXJnZXQgY29udHJvbGxlcidzIGFl
bl9saXN0Lgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgbnZtZXRfYXN5
bmNfZXZlbnRzX2ZyZWVfaG9zdF9yZXEoY3RybCk7Cj4gKyAgICAgICB9Cj4gICAgICAgICAgICBw
ZXJjcHVfcmVmX2tpbGxfYW5kX2NvbmZpcm0oJnNxLT5yZWYsIG52bWV0X2NvbmZpcm1fc3EpOwo+
ICAgICAgICAgICAgd2FpdF9mb3JfY29tcGxldGlvbigmc3EtPmNvbmZpcm1fZG9uZSk7Cj4gICAg
ICAgICAgICB3YWl0X2Zvcl9jb21wbGV0aW9uKCZzcS0+ZnJlZV9kb25lKTsKPiAKPiBbMV1odHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtbnZtZS8yMDIwLUp1bmUvMDMw
ODIzLmh0bWwKPiBbMl1odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgt
bnZtZS8yMDIwLUp1bmUvMDMwODM5Lmh0bWwKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LW52bWUgbWFpbGluZyBsaXN0Cj4gbGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
