Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DBF5527A
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 16:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fupzjt8cWpE/6z70oCFAmjV0z+YrtXHoSSAFFL9b5AM=; b=UgO5VrlfwVXH9h
	JZ/sILKnjt0XfQ2HZ9okn3ZPty7WgSsicTNm080vDTjuZZLtFPNSCy4gTlTt0qkRJJFvfV4dgWzC5
	kDHgpb5cfXOxnYWDVd5WUisYiu0NcoO+SEfEzemm2NS6z3AjYIXafa4jiVCQGZuixNaY/hf5yhSzU
	lUKVwrKiXQ0kQG1uK3IXySyBVfyp/taYxSDqQpiZrU7nH+pr0FtR5inOFrc6Lxx2fWAzCnoyGXU/T
	oZRqYVD4rJnjzoyhc6pneE5Uu8IH+w9rwcnhNXjYIRy9y4Nwq9lKWv5GimhOT4Kzj9PSgl5zUkZnB
	tRE7imsjMfbQy2yGrHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfml1-0004Z0-VH; Tue, 25 Jun 2019 14:49:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmkt-0004YX-QA
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 14:49:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id f15so8340465wrp.2
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 07:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jzJplX7Dwi+ZkfGmgePioN8ABN01AVCN3IQ/Lax0Uyc=;
 b=PEzzxsZwFiO4iQZm4auXmkqkc+EjdzC/b20ulKqVZF2TXPZYQKsSjIDWLzx/4dSQms
 rmhlv6ltlPwAT3By0xJWrwxbdVY6JKMt5l/8PJVRUnGXQ7L083gy/W9bIf2Mp2+/3+2H
 apEsf+kWn6smKa1PomQlq/+iIHR3Y5mLCVBGAe/KijzQlL+ZlK+IaU99yrsuNngWVxXK
 l4zGbtG7wQ+V/eUmTVk3Ij1QYE2wuqJU2B/XsbPbN3qdTf9SWJkQWEoMtIuCO4x7zJHM
 XR5peFI0iQyv+ZHoCcWiXGR5RtZop6n8XE2ZK/+eG0WwI+PePKjKpOSplMkmb9XGMjkH
 5q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jzJplX7Dwi+ZkfGmgePioN8ABN01AVCN3IQ/Lax0Uyc=;
 b=Pt6KF0JutRBOyPQZqKbdGHiEqioSq0uSDAqSig8Y/r7MMITAYtGBzXCYm/9hRrQzey
 ydws+zv1z92qOYpsTZOam34Xd7OGcvcSv2A6K5Xkt4EjYjF3FvWknMOYUrHoOuC/57TS
 isxSEvA+2sGdL1Dg0Fy4VQjSLQpBZjXgi6X6vfWyWk8m+8tBARqQAahwLsUqKPbLeh8Y
 +lCWggCCh1JKURJGdsL1dwDOQB7wU59cUSEcG92QXH81yb8UFKCImZExsNSpTiLu0hLZ
 eHpJHOwG+eH5VvV1OgdnA/LW5p2NOAxyAenSKcYaG7FxcGKdPErH7izkTKvYkQkQ20Z/
 NeOg==
X-Gm-Message-State: APjAAAWIcxKahi3ca0ExjDmW6bkoy+LXOOeZg7nc8hm+Z+OOdzKzEQ8n
 xO17EgO9xD9hvhIdA1GclQqQpmOuVWQCHc4gZ6E=
X-Google-Smtp-Source: APXvYqwEhAfob2tq0T/JqOKDguzQ6tHbe3VinRkLT8FqixJMW0kUkRYlG3p6BUjaNXtA1+2evyNhxYNRyNLbSQoPjWs=
X-Received: by 2002:adf:ea45:: with SMTP id j5mr21982384wrn.281.1561474146563; 
 Tue, 25 Jun 2019 07:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
 <20190624200445.GB6526@minwooim-desktop>
In-Reply-To: <20190624200445.GB6526@minwooim-desktop>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Tue, 25 Jun 2019 22:48:57 +0800
Message-ID: <CAA70yB5arvfaUsktN-cvd0yHpRi+FwFjL4r5_jTRWM8+rBVdnA@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues to
 read_queues
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_074907_846050_504A6D3F 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDbmnIgyNeaXpeWR
qOS6jCDkuIrljYg2OjAw5YaZ6YGT77yaCj4KPiBPbiAxOS0wNi0yNCAyMjoyOToxOSwgV2VpcGlu
ZyBaaGFuZyB3cm90ZToKPiA+IE5vdyBudm1lIHN1cHBvcnQgdGhyZWUgdHlwZSBoYXJkd2FyZSBx
dWV1ZXMsIHJlYWQsIHBvbGwgYW5kIGRlZmF1bHQsCj4gPiB0aGlzIHBhdGNoIHJlbmFtZSB3cml0
ZV9xdWV1ZXMgdG8gcmVhZF9xdWV1ZXMgdG8gc2V0IHRoZSBudW1iZXIgb2YKPiA+IHJlYWQgcXVl
dWVzIG1vcmUgZXhwbGljaXRseS4gVGhpcyBwYXRjaCBhbG9zIGlzIHByZXBhcmVkIGZvciBudm1l
Cj4gPiBzdXBwb3J0IFdSUih3ZWlnaHRlZCByb3VuZCByb2JpbikgdGhhdCB3ZSBjYW4gZ2V0IHRo
ZSBudW1iZXIgb2YKPiA+IGVhY2ggcXVldWUgdHlwZSBlYXNpbHkuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogV2VpcGluZyBaaGFuZyA8emhhbmd3ZWlwaW5nQGRpZGlnbG9iYWwuY29tPgo+Cj4gSGVs
bG8sIFdlaXBpbmcuCj4KPiBUaGFua3MgZm9yIG1ha2luZyB0aGlzIHBhdGNoIGFzIGEgc2VwYXJh
dGVkIG9uZS4gIEFjdHVhbGx5IEknZCBsaWtlIHRvCj4gaGVhciBhYm91dCBpZiB0aGUgb3JpZ2lu
IHB1cnBvc2Ugb2YgdGhpcyBwYXJhbSBjYW4gYmUgY2hhbmdlZCBvciBub3QuCj4KPiBJIGNhbiBz
ZWUgYSBsb2cgZnJvbSBKZW5zIHdoZW4gaXQgZ2V0cyBhZGRlZCBoZXI6Cj4gICBDb21taXQgM2I2
NTkyZjcwYWQ3KCJudm1lOiB1dGlsaXplIHR3byBxdWV1ZSBtYXBzLCBvbmUgZm9yIHJlYWRzIGFu
ZAo+ICAgICAgICAgICAgICAgICAgICAgICAgb25lIGZvciB3cml0ZXMiKQo+ICAgSXQgc2F5czoK
PiAgICIiIgo+ICAgTlZNZSBkb2VzIHJvdW5kLXJvYmluIGJldHdlZW4gcXVldWVzIGJ5IGRlZmF1
bHQsIHdoaWNoIG1lYW5zIHRoYXQKPiAgIHNoYXJpbmcgYSBxdWV1ZSBtYXAgZm9yIGJvdGggcmVh
ZHMgYW5kIHdyaXRlcyBjYW4gYmUgcHJvYmxlbWF0aWMKPiAgIGluIHRlcm1zIG9mIHJlYWQgc2Vy
dmljaW5nLiBJdCdzIG11Y2ggZWFzaWVyIHRvIGZsb29kIHRoZSBxdWV1ZQo+ICAgd2l0aCB3cml0
ZXMgYW5kIHJlZHVjZSB0aGUgcmVhZCBzZXJ2aWNpbmcuCj4gICAiIiIKPgo+IFNvLCBJJ2QgbGlr
ZSB0byBoZWFyIHdoYXQgb3RoZXIgcGVvcGxlIHRoaW5rIGFib3V0IHRoaXMgcGF0Y2ggOikKPgoK
VGhpcyBwYXRjaCBkb2VzIG5vdCBjaGFuZ2UgaXRzIG9yaWdpbmFsIGJlaGF2aW9yLCBpZiB3ZSBz
ZXQgcmVhZF9xdWV1ZQpncmVhdGVyIHRoYW4gMCwgdGhlIHJlYWQgYW5kIHdyaXRlIHJlcXVlc3Qg
d2lsbCB1c2UgZGlmZmVyZW50IHRhZ3NldCBtYXAsCnNvIHRoZXkgd2lsbCB1c2UgZGlmZmVyZW50
IGhhcmR3YXJlIHF1ZXVlLgoKPiBUaGFua3MsCj4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbnZtZS9o
b3N0L3BjaS5jIHwgMjIgKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9udm1lL2hvc3QvcGNpLmMgYi9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwo+ID4gaW5k
ZXggNWQ4NDI0MWYwMjE0Li5hM2M5YmI3MmQ5MGUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252
bWUvaG9zdC9wY2kuYwo+ID4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiA+IEBAIC02
OCwxMCArNjgsMTAgQEAgc3RhdGljIGludCBpb19xdWV1ZV9kZXB0aCA9IDEwMjQ7Cj4gPiAgbW9k
dWxlX3BhcmFtX2NiKGlvX3F1ZXVlX2RlcHRoLCAmaW9fcXVldWVfZGVwdGhfb3BzLCAmaW9fcXVl
dWVfZGVwdGgsIDA2NDQpOwo+ID4gIE1PRFVMRV9QQVJNX0RFU0MoaW9fcXVldWVfZGVwdGgsICJz
ZXQgaW8gcXVldWUgZGVwdGgsIHNob3VsZCA+PSAyIik7Cj4gPgo+ID4gLXN0YXRpYyBpbnQgd3Jp
dGVfcXVldWVzOwo+ID4gLW1vZHVsZV9wYXJhbSh3cml0ZV9xdWV1ZXMsIGludCwgMDY0NCk7Cj4g
PiAtTU9EVUxFX1BBUk1fREVTQyh3cml0ZV9xdWV1ZXMsCj4gPiAtICAgICAiTnVtYmVyIG9mIHF1
ZXVlcyB0byB1c2UgZm9yIHdyaXRlcy4gSWYgbm90IHNldCwgcmVhZHMgYW5kIHdyaXRlcyAiCj4g
PiArc3RhdGljIGludCByZWFkX3F1ZXVlczsKPiA+ICttb2R1bGVfcGFyYW0ocmVhZF9xdWV1ZXMs
IGludCwgMDY0NCk7Cj4gPiArTU9EVUxFX1BBUk1fREVTQyhyZWFkX3F1ZXVlcywKPiA+ICsgICAg
ICJOdW1iZXIgb2YgcXVldWVzIHRvIHVzZSBmb3IgcmVhZHMuIElmIG5vdCBzZXQsIHJlYWRzIGFu
ZCB3cml0ZXMgIgo+ID4gICAgICAgIndpbGwgc2hhcmUgYSBxdWV1ZSBzZXQuIik7Cj4gPgo+ID4g
IHN0YXRpYyBpbnQgcG9sbF9xdWV1ZXM7Cj4gPiBAQCAtMjExLDcgKzIxMSw3IEBAIHN0cnVjdCBu
dm1lX2lvZCB7Cj4gPgo+ID4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgbWF4X2lvX3F1ZXVlcyh2b2lk
KQo+ID4gIHsKPiA+IC0gICAgIHJldHVybiBudW1fcG9zc2libGVfY3B1cygpICsgd3JpdGVfcXVl
dWVzICsgcG9sbF9xdWV1ZXM7Cj4gPiArICAgICByZXR1cm4gbnVtX3Bvc3NpYmxlX2NwdXMoKSAr
IHJlYWRfcXVldWVzICsgcG9sbF9xdWV1ZXM7Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgdW5zaWdu
ZWQgaW50IG1heF9xdWV1ZV9jb3VudCh2b2lkKQo+ID4gQEAgLTIwMjEsMTggKzIwMjEsMTYgQEAg
c3RhdGljIHZvaWQgbnZtZV9jYWxjX2lycV9zZXRzKHN0cnVjdCBpcnFfYWZmaW5pdHkgKmFmZmQs
IHVuc2lnbmVkIGludCBucmlycXMpCj4gPiAgICAgICAgKiBJZiBvbmx5IG9uZSBpbnRlcnJ1cHQg
aXMgYXZhaWxhYmxlIG9yICd3cml0ZV9xdWV1ZScgPT0gMCwgY29tYmluZQo+ID4gICAgICAgICog
d3JpdGUgYW5kIHJlYWQgcXVldWVzLgo+ID4gICAgICAgICoKPiA+IC0gICAgICAqIElmICd3cml0
ZV9xdWV1ZXMnID4gMCwgZW5zdXJlIGl0IGxlYXZlcyByb29tIGZvciBhdCBsZWFzdCBvbmUgcmVh
ZAo+ID4gKyAgICAgICogSWYgJ3JlYWRfcXVldWVzJyA+IDAsIGVuc3VyZSBpdCBsZWF2ZXMgcm9v
bSBmb3IgYXQgbGVhc3Qgb25lIHdyaXRlCj4gPiAgICAgICAgKiBxdWV1ZS4KPiA+ICAgICAgICAq
Lwo+ID4gLSAgICAgaWYgKCFucmlycXMpIHsKPiA+ICsgICAgIGlmICghbnJpcnFzIHx8IG5yaXJx
cyA9PSAxKSB7Cj4gPiAgICAgICAgICAgICAgIG5yaXJxcyA9IDE7Cj4gPiAgICAgICAgICAgICAg
IG5yX3JlYWRfcXVldWVzID0gMDsKPiA+IC0gICAgIH0gZWxzZSBpZiAobnJpcnFzID09IDEgfHwg
IXdyaXRlX3F1ZXVlcykgewo+ID4gLSAgICAgICAgICAgICBucl9yZWFkX3F1ZXVlcyA9IDA7Cj4g
PiAtICAgICB9IGVsc2UgaWYgKHdyaXRlX3F1ZXVlcyA+PSBucmlycXMpIHsKPiA+IC0gICAgICAg
ICAgICAgbnJfcmVhZF9xdWV1ZXMgPSAxOwo+ID4gKyAgICAgfSBlbHNlIGlmIChyZWFkX3F1ZXVl
cyA+PSBucmlycXMpIHsKPiA+ICsgICAgICAgICAgICAgbnJfcmVhZF9xdWV1ZXMgPSBucmlycXMg
LSAxOwo+ID4gICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgICAgICAgbnJfcmVhZF9xdWV1ZXMg
PSBucmlycXMgLSB3cml0ZV9xdWV1ZXM7Cj4gPiArICAgICAgICAgICAgIG5yX3JlYWRfcXVldWVz
ID0gcmVhZF9xdWV1ZXM7Cj4gPiAgICAgICB9Cj4gPgo+ID4gICAgICAgZGV2LT5pb19xdWV1ZXNb
SENUWF9UWVBFX0RFRkFVTFRdID0gbnJpcnFzIC0gbnJfcmVhZF9xdWV1ZXM7Cj4gPiAtLQo+ID4g
Mi4xNC4xCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
