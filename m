Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484F2CFB8
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Jk0cWeZc6BOnBSkagNf7dyIVDkKkmctJIsyeUmJTRw=; b=QrSj7vPPy00I+LZCKRPQYLG+u
	Ug8MyNmANFhWPOqzaOZcCqWVVsetJRhH5VgQm7zTYm9H5X/+iJT93muOnklRbPuEUTRjwGTbcarUg
	cO4/ajSIFlSY7MzcRfMHCP5uTEdhJBOxiQYYdVrNjASes7UdVLJHQFjCPN/X4q162d1Zje/f1RGp0
	DFGsxsmSJnjjBJ3u5SRxc1XuLhcvsefpamhAdDJxP0SdCjF/svv1jF9xLFaOX7l7d3W8O6VczWtbl
	L6nPlEOT0nzZmhn0Q8DrM5gOH0jJGhOiw+pXwrsUL9o7BaUtNnCjbUdYZqdUmAMV0qBkRo99qKTcI
	zskmJaiPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVi3O-00038I-3P; Tue, 28 May 2019 19:46:34 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVi3I-00037N-HG
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:46:29 +0000
Received: by mail-pf1-f195.google.com with SMTP id y11so7267482pfm.13
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 12:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=19bnUAzi8zfZKpxAQG3E03G1V48hxY/bkgcSYo+1HIQ=;
 b=csJ1JnLbZDWfkd22zG81cbtPP3+SIjkxGBGLkdx1i+3ssBFdm64gVt9sbdDt0YT68D
 WpQhWw/T0/D50JpN7mYPxkf9sQaeLurPzqLi6NBse/+NWSSbW3yqFiyIGdwgNNeTjZcl
 z2LUqKSw30TQQS5G/7B9PdcH5Qey+cKPMYjhkbsDFHEO9wU7qrow8dU6Vj1weMpcItMe
 ynH67f7ldSsnUBB3UCu+CqFJg3GRVt21sSyOITVH0tnLYZswTeLwpZ6D4+ryhvkbxK1W
 Z3Y/uv9LUAkKW+yEqE5PmWEAExoYVDNsEMkCOsjX8sRtz+M4e+mrrDGL0IU6rjTfZfBd
 U9jA==
X-Gm-Message-State: APjAAAXRQaD4EocaCLl0ee43EdGVUPuccEiSFxXUc3oHx9dlNiRNGq2p
 qgip2Q4n1NV/jlzNcO6BtBQ=
X-Google-Smtp-Source: APXvYqw/tOLGfPUrsbXHNRkJAytxpZyyLf+ENAKPgvRnJKAl0rkTb0fT7j18RTX2eIdcM4U/Mevoig==
X-Received: by 2002:a17:90a:db4d:: with SMTP id
 u13mr8137422pjx.43.1559072786370; 
 Tue, 28 May 2019 12:46:26 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id s2sm15480000pfe.105.2019.05.28.12.46.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 12:46:25 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190524041004.23200-1-sagi@grimberg.me>
 <35bf4975-a67b-8851-09e1-217969c6fb2e@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <47b75bf8-366d-91fb-7527-e357396c57a5@grimberg.me>
Date: Tue, 28 May 2019 12:46:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <35bf4975-a67b-8851-09e1-217969c6fb2e@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_124628_577838_4F6F7519 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IFdoZW4gdGhlIGNvbnRyb2xsZXIgc3VwcG9ydHMgbGVzcyBxdWV1ZXMgdGhhbiByZXF1ZXN0
ZWQsIHdlCj4+IHNob3VsZCBtYWtlIHN1cmUgdGhhdCBxdWV1ZSBtYXBwaW5nIGRvZXMgdGhlIHJp
Z2h0IHRoaW5nIGFuZAo+PiBub3QgYXNzdW1lIHRoYXQgYWxsIHF1ZXVlcyBhcmUgYXZhaWxhYmxl
LiBUaGlzIGZpeGVzIGEgY3Jhc2gKPj4gd2hlbiB0aGUgY29udHJvbGxlciBzdXBwb3J0cyBsZXNz
IHF1ZXVlcyB0aGFuIHJlcXVlc3RlZC4KPj4KPj4gVGhlIHJ1bGVzIGFyZToKPj4gMS4gaWYgbm8g
d3JpdGUvcG9sbCBxdWV1ZXMgYXJlIHJlcXVlc3RlZCwgd2UgYXNzaWduIHRoZSBhdmFpbGFibGUg
cXVldWVzCj4+IMKgwqDCoCB0byB0aGUgZGVmYXVsdCBxdWV1ZSBtYXAuIFRoZSBkZWZhdWx0IGFu
ZCByZWFkIHF1ZXVlIG1hcHMgc2hhcmUgdGhlCj4+IMKgwqDCoCBleGlzdGluZyBxdWV1ZXMuCj4+
IDIuIGlmIHdyaXRlIHF1ZXVlcyBhcmUgcmVxdWVzdGVkOgo+PiDCoMKgIC0gZmlyc3QgbWFrZSBz
dXJlIHRoYXQgcmVhZCBxdWV1ZSBtYXAgZ2V0cyB0aGUgcmVxdWVzdGVkCj4+IMKgwqDCoMKgIG5y
X2lvX3F1ZXVlcyBjb3VudAo+PiDCoMKgIC0gdGhlbiBncmFudCB0aGUgZGVmYXVsdCBxdWV1ZSBt
YXAgdGhlIG1pbmltdW0gYmV0d2VlbiB0aGUgcmVxdWVzdGVkCj4+IMKgwqDCoMKgIG5yX3dyaXRl
X3F1ZXVlcyBhbmQgdGhlIHJlbWFpbmluZyBxdWV1ZXMuIElmIHRoZXJlIGFyZSBubyBhdmFpbGFi
bGUKPj4gwqDCoMKgwqAgcXVldWVzIHRvIGRlZGljYXRlIHRvIHRoZSBkZWZhdWx0IHF1ZXVlIG1h
cCwgZmFsbGJhY2sgdG8gKDEpIGFuZAo+PiDCoMKgwqDCoCBzaGFyZSBhbGwgdGhlIHF1ZXVlcyBp
biB0aGUgZXhpc3RpbmcgcXVldWUgbWFwLgo+PiAzLiBpZiBwb2xsIHF1ZXVlcyBhcmUgcmVxdWVz
dGVkOgo+PiDCoMKgIC0gbWFwIHRoZSByZW1haW5pbmcgcXVldWVzIHRvIHRoZSBwb2xsIHF1ZXVl
IG1hcC4KPj4KPj4gQWxzbywgcHJvdmlkZSBhIGxvZyBpbmRpY2F0aW9uIG9uIGhvdyB3ZSBjb25z
dHJ1Y3RlZCB0aGUgZGlmZmVyZW50Cj4+IHF1ZXVlIG1hcHMuCj4+Cj4+IE9uZSBzaWRlLWFmZmVj
dCBjaGFuZ2UgaXMgdGhhdCB3ZSByZW1vdmUgdGhlIHJkbWEgZGV2aWNlIG51bWJlciBvZgo+PiBj
b21wbGV0aW9uIHZlY3RvcnMgZGV2aWNlIGxpbWl0YXRpb24gd2hlbiBzZXR0aW5nIHRoZSBxdWV1
ZSBjb3VudC4KPiAKPiBXaHkgY3JlYXRpbmcgbW9yZSBydyBxdWV1ZXMgdGhhbiBjb21wbGV0aW9u
IHZlY3RvcnMgPwoKSWYgdGhlIHVzZXIgaXMgYXNraW5nIGZvciBudW1fb25saW5lX2NwdXMgcmVh
ZCBhbmQgbnVtX29ubGluZV9jcHVzIHdyaXRlCml0IHdpbGwgbmV2ZXIgYmUgYWJsZSB0by4gWW91
IGFyZSBzYXlpbmcgdGhhdCBlYWNoIG9uZSBzaG91bGQgYmUgbGltaXRlZAp0byB0aGUgbnVtYmVy
IG9mIGNvbXBsZXRpb24gdmVjdG9ycz8KCkkgY2FuIGRvIHRoYXQuCgo+PiBAQCAtNjgxLDYgKzY1
OCwzNCBAQCBzdGF0aWMgaW50IG52bWVfcmRtYV9hbGxvY19pb19xdWV1ZXMoc3RydWN0IAo+PiBu
dm1lX3JkbWFfY3RybCAqY3RybCkKPj4gwqDCoMKgwqDCoCBkZXZfaW5mbyhjdHJsLT5jdHJsLmRl
dmljZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgICJjcmVhdGluZyAlZCBJL08gcXVldWVzLlxuIiwg
bnJfaW9fcXVldWVzKTsKPj4gK8KgwqDCoCBpZiAob3B0cy0+bnJfd3JpdGVfcXVldWVzICYmIG9w
dHMtPm5yX2lvX3F1ZXVlcyA8IG5yX2lvX3F1ZXVlcykgewo+IEkgd291bGQgdXNlIGxvY2FsIHZh
cmlhYmxlcyBmb3Igd3JpdGUvcG9sbC9kZWZhdWx0IHF1ZXVlcyBhbmQgbm90IAo+IGN0cmwtPm9w
dHMgcG9pbnRlci4KPiAKPiBvcHRzLT5ucl93cml0ZV9xdWV1ZXMgaXMgbm90IGxpbWl0ZWQgdG8g
bnVtX29ubGluZV9jcHUgYW5kIGNhbiBiZSAxMDAwIAo+IChhbmQgeW91IG1pZ2h0IHN0ZWFsIHBv
bGwgcXVldWVzKS4KClRoaXMgaXMganVzdCBhIHF1ZXN0aW9uIG9mIHdlYXRoZXIgd3JpdGUgcXVl
dWVzIHdlcmUgcmVxdWVzdGVkLCB0aGUKYWN0dWFsIG51bWJlciBpcyB0YWtlbiBmcm9tIGN0cmwt
PmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF0uIFNvCml0IGNhbm5vdCAic3RlYWwiIGFueSBx
dWV1ZXMuCgo+IE1heWJlIHdlIHNob3VsZCBsaW1pdCBpdCBpbiBudm1mX3BhcnNlX29wdGlvbnMg
PwoKSSB3b3VsZCBhdm9pZCBjaGFuZ2luZyB3aGF0IHRoZSB1c2VyIHBhc3NlZCBpbi4KCj4+IEBA
IC0xNzYzLDE3ICsxNzY4LDI0IEBAIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9jb21wbGV0ZV9ycShz
dHJ1Y3QgCj4+IHJlcXVlc3QgKnJxKQo+PiDCoCBzdGF0aWMgaW50IG52bWVfcmRtYV9tYXBfcXVl
dWVzKHN0cnVjdCBibGtfbXFfdGFnX3NldCAqc2V0KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3Ry
dWN0IG52bWVfcmRtYV9jdHJsICpjdHJsID0gc2V0LT5kcml2ZXJfZGF0YTsKPj4gK8KgwqDCoCBz
dHJ1Y3QgbnZtZl9jdHJsX29wdGlvbnMgKm9wdHMgPSBjdHJsLT5jdHJsLm9wdHM7Cj4+IC3CoMKg
wqAgc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLnF1ZXVlX29mZnNldCA9IDA7Cj4+IC3CoMKg
wqAgc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLm5yX3F1ZXVlcyA9Cj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07Cj4+IC3CoMKg
wqAgc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcyA9IAo+PiBjdHJsLT5pb19xdWV1
ZXNbSENUWF9UWVBFX1JFQURdOwo+PiAtwqDCoMKgIGlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dy
aXRlX3F1ZXVlcykgewo+PiArwqDCoMKgIGlmIChvcHRzLT5ucl93cml0ZV9xdWV1ZXMgJiYgY3Ry
bC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyog
c2VwYXJhdGUgcmVhZC93cml0ZSBxdWV1ZXMgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIHNldC0+bWFw
W0hDVFhfVFlQRV9ERUZBVUxUXS5ucl9xdWV1ZXMgPQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwo+PiArwqDCoMKgwqDCoMKgwqAg
c2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLnF1ZXVlX29mZnNldCA9IDA7Cj4+ICvCoMKgwqDC
oMKgwqDCoCBzZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0ubnJfcXVldWVzID0KPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5xdWV1ZV9vZmZzZXQgPQo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVf
REVGQVVMVF07Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tIQ1RY
X1RZUEVfREVGQVVMVF07Cj4+IMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4gLcKgwqDCoMKgwqDCoMKg
IC8qIG1peGVkIHJlYWQvd3JpdGUgcXVldWVzICovCj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBzaGFy
ZWQgcmVhZC93cml0ZSBxdWV1ZXMgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhf
VFlQRV9ERUZBVUxUXS5ucl9xdWV1ZXMgPQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJs
LT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwo+PiArwqDCoMKgwqDCoMKgwqAgc2V0LT5t
YXBbSENUWF9UWVBFX0RFRkFVTFRdLnF1ZXVlX29mZnNldCA9IDA7Cj4+ICvCoMKgwqDCoMKgwqDC
oCBzZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0ubnJfcXVldWVzID0KPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9ERUZBVUxUXTsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5xdWV1ZV9vZmZzZXQgPSAwOwo+IAo+
IHdoeSB3ZSBzaG91bGQgc2V0IHRoZSBSRUFEIG1hcCBpbiBjYXNlIG9mIHNoYXJlZCBxdWV1ZXMg
PwoKVGhlIFJFQUQgbWFwIGlzIGFsd2F5cyBzZXQgcmVnYXJkbGVzcyBvZiB3aGljaCBjYXNlLCBp
dHMganVzdApzZXQgZGlmZmVyZW50bHkuCgo+IEluIHRoYXQgY2FzZSB3ZSBzaG91bGQgcmVuYW1l
IFRZUEVfREVGQVVMVCB0byBUWVBFX1dSSVRFLi4KClRoaXMgaXMgdGhlIHNoYXJlZCBxdWV1ZXMg
Y2FzZS4gVGhpcyBtZWFucyB0aGF0IGJvdGggZGVmYXVsdAphbmQgcmVhZCBxdWV1ZSBtYXBzIHJl
bGF0ZSB0byB0aGUgc2FtZSBxdWV1ZXMuCgo+PiBAQCAtMTc4MSwxNiArMTc5MywyMiBAQCBzdGF0
aWMgaW50IG52bWVfcmRtYV9tYXBfcXVldWVzKHN0cnVjdCAKPj4gYmxrX21xX3RhZ19zZXQgKnNl
dCkKPj4gwqDCoMKgwqDCoCBibGtfbXFfcmRtYV9tYXBfcXVldWVzKCZzZXQtPm1hcFtIQ1RYX1RZ
UEVfUkVBRF0sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmRldmljZS0+ZGV2
LCAwKTsKPj4gLcKgwqDCoCBpZiAoY3RybC0+Y3RybC5vcHRzLT5ucl9wb2xsX3F1ZXVlcykgewo+
PiArwqDCoMKgIGlmIChvcHRzLT5ucl9wb2xsX3F1ZXVlcyAmJiBjdHJsLT5pb19xdWV1ZXNbSENU
WF9UWVBFX1BPTExdKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBtYXAgZGVkaWNhdGVkIHBvbGwg
cXVldWVzIG9ubHkgaWYgd2UgaGF2ZSBxdWV1ZXMgbGVmdCAqLwo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgc2V0LT5tYXBbSENUWF9UWVBFX1BPTExdLm5yX3F1ZXVlcyA9Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9QT0xMXTsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQg
PQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVlc1tIQ1RY
X1RZUEVfREVGQVVMVF07Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoY3RybC0+Y3RybC5vcHRzLT5u
cl93cml0ZV9xdWV1ZXMpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhf
VFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQgKz0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdOwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdICsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPiAKPiBJIHdv
dWxkIHVzZSBzZXQtPm1hcFtUWVBFXS5ucl9xdWV1ZXMgKHRoZSByZWFsIG9mZnNldCkuCgpJdHMg
ZXhhY3RseSB0aGUgc2FtZSB2YWx1ZSwgd2hhdHMgdGhlIGRpZmZlcmVuY2U/CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
