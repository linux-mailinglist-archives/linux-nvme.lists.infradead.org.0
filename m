Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74B425C83
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 06:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EH2mQ+kXzQXabeZ02K2MH1lLb8XNakWKY1WjMpQlwAo=; b=EbDCNg+Okpy1bB
	blqW2dWuOTkcoBhDeLlqsvE8kg5cZUgP6jl9eugxmjpEWlXmmJu1SsVKqctRe1ZphJvl+3dnK4GqS
	cV4ose7NG4x+SfFF/C2P97w6fXLs1ITXeilO6PoFCQ46e8FwYknLNFb+xDlJs9oaBMErbrNHg7UYN
	RsBpzFS/i6ZuN4qcyEK2AudMJzkrgUQLWz9tNN2ElLmRJEPNNNFP55RATdJWAuujzu0C2IXmxF03E
	f9dVsXFGVQ/uiizjvyRd8MNkz8QF6kmI4nMd8eSFMyr5Y1FhO0sYwxZ+KTYZ5gB++upCfk+f1/QDe
	zgfcycpPMn3Tfa7Yokgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTIYZ-00043s-Im; Wed, 22 May 2019 04:08:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTIYU-00043N-Gs
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 04:08:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id g12so554964wro.8
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 21:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NkdvaeCI4X+jdsZ7+Z73bLguaatfM/VCd6Z7pQ6Ihtg=;
 b=R7yun+8kmplC15yzIUA4NBYnA5GUmSk5S/Vt2RBRHW3S2CE7+ULtunYbrLMdipg70H
 Wn/5+v3tVDOU7Zi9EwrO7LIAPZnaSFjUrhdfFSR8jYys1xucGHtofFxyiVVsynleiRZo
 Hz7mzDx9J4AK1w7+cdeZpZSvgIKgDd+Z5MmY5drGWc0yZzZz2REd6LGc2SGNZ/b22O5G
 4gg+vW/YJcceWEh8wclrw8ZUnYQsndVr12Oelry4cc6c8FW47P3OxC50+f34gS1L7NO5
 KFZHeLPgNAS2t1GQdjzPojALuNwLRu82npbdShVi6eLIUUjzvIz9kXqwYICC079TGzWh
 21Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NkdvaeCI4X+jdsZ7+Z73bLguaatfM/VCd6Z7pQ6Ihtg=;
 b=PvIudM5ig+9rBfYVaej/FDVx1qRefw1XSOp5p9Ev2eCw8a9k/n4RQgZT09pvnheCud
 fRbPI9W14wfRlMmQ88w9gkhrM4Rroy48kkjbQ3QzeRPWpWYjyIB+gS0HQNvoIy4ANSTf
 X3UrOHHVq06cb3Y1VQ08U40SsbmL/vIDT6D2isrKIChluuPElvVIL3CsVytlDOkn5ys9
 QmChDGQzCk4ztN0R/fRKHyk6ln0ZKyyoDCk6PHCvul+lU9JPr+0lcJjFM9+p1BPBWEfg
 LiABp3NOy6BYR7EO6lcjyFyVFtKC2XAfQuMFgVL6HjanZBXuHL54G2gDTTFQ2yHhbw/A
 nuHA==
X-Gm-Message-State: APjAAAXMnjEwDYEaNTTw6yqBcps/M3lby99Jr3UGNfPMu/8BiYeA2VUY
 eJf/uwDvrTC9lKD/sHn6ba52dNs5gCfvDXLY4g0=
X-Google-Smtp-Source: APXvYqw2y2bxnSm3v1Ln4i8YKHqXcPEH+FLuoCtBHZWf+Fj/XqiM6Wdm0ddNjzPGBqBAGn4dK/laVux6j33BLDBtq2g=
X-Received: by 2002:adf:cd11:: with SMTP id w17mr19124368wrm.83.1558498118668; 
 Tue, 21 May 2019 21:08:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190521171745.4061-1-keith.busch@intel.com>
In-Reply-To: <20190521171745.4061-1-keith.busch@intel.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Wed, 22 May 2019 12:08:26 +0800
Message-ID: <CACVXFVO0Pyq-TVm5LMGk7HDm+w0YYj8-awZnWRre3pchVrF1cw@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: use blk-mq mapping for unmanaged irqs
To: Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_210842_581020_31B55400 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ivan Chavero <ichavero@chavero.com.mx>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMToyMiBBTSBLZWl0aCBCdXNjaCA8a2VpdGguYnVzY2hA
aW50ZWwuY29tPiB3cm90ZToKPgo+IElmIGEgZGV2aWNlIGlzIHByb3ZpZGluZyBhIHNpbmdsZSBJ
UlEgdmVjdG9yLCB0aGUgSU8gcXVldWUgd2lsbCBzaGFyZSB0aGF0Cj4gdmVjdG9yIHdpdGggdGhl
IGFkbWluIHF1ZXVlIHdpdGggYSAwIG9mZnNldC4gVGhpcyBpcyBhbiB1bm1hbmFnZWQgdmVjdG9y
LAo+IHNvIGRvZXMgbm90IGhhdmUgYSB2YWxpZCBQQ0kgSVJRIGFmZmluaXR5LiBBdm9pZCB0cnlp
bmcgdG8gdXNlIG1hbmFnZWQKPiBhZmZpbml0eSBpbiB0aGlzIGNhc2UgYW5kIGxldCBibGstbXEg
c2V0IHVwIHRoZSBjcHUtcXVldWUgbWFwcGluZyBpbnN0ZWFkLgo+IE90aGVyd2lzZSB3ZSdkIGhp
dCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgd2hlbiB0aGUgZGV2aWNlIGlzIHVzaW5nIE1TSToKPgo+
ICBXQVJOSU5HOiBDUFU6IDQgUElEOiA3IGF0IGRyaXZlcnMvcGNpL21zaS5jOjEyNzIgcGNpX2ly
cV9nZXRfYWZmaW5pdHkrMHg2Ni8weDgwCj4gIE1vZHVsZXMgbGlua2VkIGluOiBudm1lIG52bWVf
Y29yZSBzZXJpb19yYXcKPiAgQ1BVOiA0IFBJRDogNyBDb21tOiBrd29ya2VyL3UxNjowIFRhaW50
ZWQ6IEcgICAgICAgIFcgICAgICAgICA1LjIuMC1yYzErICM0OTQKPiAgSGFyZHdhcmUgbmFtZTog
UUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgcmVsLTEuMTIuMS0w
LWdhNWNhYjU4ZTlhM2YtcHJlYnVpbHQucWVtdS5vcmcgMDQvMDEvMjAxNAo+ICBXb3JrcXVldWU6
IG52bWUtcmVzZXQtd3EgbnZtZV9yZXNldF93b3JrIFtudm1lXQo+ICBSSVA6IDAwMTA6cGNpX2ly
cV9nZXRfYWZmaW5pdHkrMHg2Ni8weDgwCj4gIENvZGU6IDBiIDMxIGMwIGMzIDgzIGUyIDEwIDQ4
IGM3IGMwIGIwIDgzIDM1IDkxIDc0IDJhIDQ4IDhiIDg3IGQ4IDAzIDAwIDAwIDQ4IDg1IGMwIDc0
IDBlIDQ4IDhiIDUwIDMwIDQ4IDg1IGQyIDc0IDA1IDM5IDcwIDE0IDc3IDA1IDwwZj4gMGIgMzEg
YzAgYzMgNDggNjMgZjYgNDggOGQgMDQgNzYgNDggOGQgMDQgYzIgZjMgYzMgNDggOGIgNDAgMzAK
PiAgUlNQOiAwMDAwOmZmZmZiNWFiYzAxZDNjYzggRUZMQUdTOiAwMDAxMDI0Ngo+ICBSQVg6IGZm
ZmY5NTM2Nzg2YTM5YzAgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDogMDAwMDAwMDAwMDAwMDA4
MAo+ICBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwMDAwMDAwMDAwMDAwIFJESTogZmZm
Zjk1MzY3ODFlZDAwMAo+ICBSQlA6IGZmZmY5NTM2NzM0NmEwMDggUjA4OiBmZmZmOTUzNjdkNDNm
MDgwIFIwOTogZmZmZjk1MzY3OGMwNzgwMAo+ICBSMTA6IGZmZmY5NTM2NzgxNjQ4MDAgUjExOiAw
MDAwMDAwMDAwMDAwMDAwIFIxMjogMDAwMDAwMDAwMDAwMDAwMAo+ICBSMTM6IGZmZmY5NTM2Nzgx
ZWQwMDAgUjE0OiAwMDAwMDAwMGZmZmZmZmZmIFIxNTogZmZmZjk1MzY3MzQ2YTAwOAo+ICBGUzog
IDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjk1MzY3ZDQwMDAwMCgwMDAwKSBrbmxHUzow
MDAwMDAwMDAwMDAwMDAwCj4gIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAw
MDAwODAwNTAwMzMKPiAgQ1IyOiAwMDAwN2ZkZjgxNGEzZmYwIENSMzogMDAwMDAwMDAxYTIwZjAw
MCBDUjQ6IDAwMDAwMDAwMDAwMDA2ZTAKPiAgRFIwOiAwMDAwMDAwMDAwMDAwMDAwIERSMTogMDAw
MDAwMDAwMDAwMDAwMCBEUjI6IDAwMDAwMDAwMDAwMDAwMDAKPiAgRFIzOiAwMDAwMDAwMDAwMDAw
MDAwIERSNjogMDAwMDAwMDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKPiAgQ2FsbCBU
cmFjZToKPiAgIGJsa19tcV9wY2lfbWFwX3F1ZXVlcysweDM3LzB4ZDAKPiAgIG52bWVfcGNpX21h
cF9xdWV1ZXMrMHg4MC8weGIwIFtudm1lXQo+ICAgYmxrX21xX2FsbG9jX3RhZ19zZXQrMHgxMzMv
MHgyZjAKPiAgIG52bWVfcmVzZXRfd29yaysweDEwNWQvMHgxNTkwIFtudm1lXQo+ICAgcHJvY2Vz
c19vbmVfd29yaysweDI5MS8weDUzMAo+ICAgd29ya2VyX3RocmVhZCsweDIxOC8weDNkMAo+ICAg
PyBwcm9jZXNzX29uZV93b3JrKzB4NTMwLzB4NTMwCj4gICBrdGhyZWFkKzB4MTExLzB4MTMwCj4g
ICA/IGt0aHJlYWRfcGFyaysweDkwLzB4OTAKPiAgIHJldF9mcm9tX2ZvcmsrMHgxZi8weDMwCj4g
IC0tLVsgZW5kIHRyYWNlIDc0NTg3MzM5ZDkzYzgzYzAgXS0tLQo+Cj4gRml4ZXM6IDIyYjU1NjAx
OTViZDYgKCJudm1lLXBjaTogU2VwYXJhdGUgSU8gYW5kIGFkbWluIHF1ZXVlIElSUSB2ZWN0b3Jz
IikKPiBSZXBvcnRlZC1ieTogSXbDoW4gQ2hhdmVybyA8aWNoYXZlcm9AY2hhdmVyby5jb20ubXg+
Cj4gU2lnbmVkLW9mZi1ieTogS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9udm1lL2hvc3QvcGNpLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZt
ZS9ob3N0L3BjaS5jIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiBpbmRleCA1OTkwNjVlZDZh
MzIuLmY1NjIxNTQ1NTFjZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwo+
ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCj4gQEAgLTQ2NCw3ICs0NjQsNyBAQCBzdGF0
aWMgaW50IG52bWVfcGNpX21hcF9xdWV1ZXMoc3RydWN0IGJsa19tcV90YWdfc2V0ICpzZXQpCj4g
ICAgICAgICAgICAgICAgICAqIGFmZmluaXR5KSwgc28gdXNlIHRoZSByZWd1bGFyIGJsay1tcSBj
cHUgbWFwcGluZwo+ICAgICAgICAgICAgICAgICAgKi8KPiAgICAgICAgICAgICAgICAgbWFwLT5x
dWV1ZV9vZmZzZXQgPSBxb2ZmOwo+IC0gICAgICAgICAgICAgICBpZiAoaSAhPSBIQ1RYX1RZUEVf
UE9MTCkKPiArICAgICAgICAgICAgICAgaWYgKGkgIT0gSENUWF9UWVBFX1BPTEwgJiYgb2Zmc2V0
KQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJsa19tcV9wY2lfbWFwX3F1ZXVlcyhtYXAsIHRv
X3BjaV9kZXYoZGV2LT5kZXYpLCBvZmZzZXQpOwo+ICAgICAgICAgICAgICAgICBlbHNlCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgYmxrX21xX21hcF9xdWV1ZXMobWFwKTsKPiAtLQoKQXQgZGVm
YXVsdCwgbm9uLW1hbmdlZCBJUlFzIHdvbid0IGJlIGFzc2lnbmVkIGJ5IGNwdW1hc2ssIGFuZApw
Y2lfYWxsb2NfaXJxX3ZlY3RvcnNfYWZmaW5pdHkoUENJX0lSUV9BRkZJTklUWSkgYWN0dWFsbHkg
ZmFsbHMgYmFjayB0bwpub24tbWFuYWdlZCBJUlEgYWxsb2NhdGlvbiBpZiBubyB2ZWN0b3JzIGFy
ZSBhdmFpbGFibGUgZm9yIG1hbmFnZWQgSVJRcywKc28gbG9va3MgZmluZToKClJldmlld2VkLWJ5
OiBNaW5nIExlaSA8bWluZy5sZWlAcmVkaGF0LmNvbT4KCgpUaGFua3MsCk1pbmcgTGVpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
