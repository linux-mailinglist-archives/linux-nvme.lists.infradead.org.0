Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6BA99F77
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 21:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VTx9rNe3IjqO/jWyR2AlIbQ+C+9rd0kRIVuPEZ5+uGU=; b=FdS//AkrKRV5NazKq+jNIG9Fy
	p6VCILMcGJJnSa/GvjRvBgbcgjekNUQYJPjrgLQrYeZEK16oWvm0nr/FJfvT4QwLCZYDe2TmG/niM
	eR1aBL/ab2f5V23zt7dBqrmAD8KlRSxCC9DtzHmqolyFVv0RhKPosN8r3nPxktxovsYzVAMKfm/Th
	wHSEey3Lrja1lC/0lz6cTMM4Br91NbDDNBF5JTlgDpBdGWnGIPbJjRd0LuwvxJxheJRxQt2wU3XEu
	O4pkreC0sp5+gz+c2AQxndrQdHdDAW81np4DLP+XpICHJFJH9z1+Ro2cnJ+QHMVFsjPXqg6IPaXeL
	U5bXOMKmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sTi-0000b6-LS; Thu, 22 Aug 2019 19:10:34 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sTa-0000an-Qt
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 19:10:28 +0000
Received: by mail-ot1-f65.google.com with SMTP id b1so6494224otp.6
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 12:10:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wEfYqOoEdHxL4S8Bcxic9t2UrFf+5a8yqEl/eO75w2A=;
 b=Bw7Mr4tlgx6P6zsQLCa4aKufrklhxj/GvqGxwi7OqiPc4DCl1NBtYxa2PXX3Lx00Vb
 LUC5ANT9hSmrUkVy3Mk7Oq9O//2LsJ9Kz0KVH49RHABVUHhAdJ5ikmV8FTvy9bLd3TAB
 OKxhjrI+MXX8nnJJRXVMxOeO/BeQ9yJnxjJnjtUMkS0ARA8wspzewfNf2IhhUS2OLFxs
 weVlD+/M2yiCmjVvALCQ4qzGW+SeCu2SoT1E+qquckT0qP6cDIoiQp0kuxUUhvx0Dpmf
 bKGN0kxsX37t0U0CLbdUnlqBHW7wwELZvP+Qrks5+HxVivHIvoxa2WOheX6BIGftzGmA
 dp1Q==
X-Gm-Message-State: APjAAAVx35xLMo+RWtWYl+paNJYsJh7RG0YpULRQwyHg80x2ZKfymvmz
 PycV4gLTE9DEUXTB2TL8ZSA=
X-Google-Smtp-Source: APXvYqxqdFFT16KSxiLUp6Um2kkbWnfm1i9cI33CNbGw1x7QcsDOwklnoqVPTdJvYNCAqxHYmkSO/g==
X-Received: by 2002:a9d:5cc9:: with SMTP id r9mr944123oti.174.1566501025631;
 Thu, 22 Aug 2019 12:10:25 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 97sm171616otp.8.2019.08.22.12.10.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 12:10:24 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
From: Sagi Grimberg <sagi@grimberg.me>
To: Christoph Hellwig <hch@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me> <20190822002328.GP9511@lst.de>
 <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
Message-ID: <e4603511-6dae-e26d-12a9-e9fa727a8d03@grimberg.me>
Date: Thu, 22 Aug 2019 12:10:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <205d06ab-fedc-739d-323f-b358aff2cbfe@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_121026_873598_7A4C08AB 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiArc3RhdGljIHZvaWQgbnZtZV9kaXNjX2Flbl91ZXZlbnQoc3RydWN0IG52bWVfY3RybCAq
Y3RybCkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBudm1mX2N0cmxfb3B0aW9ucyAqb3B0cyA9
IGN0cmwtPm9wdHM7Cj4+PiArwqDCoMKgIGNoYXIgKmVudnBbMTZdOwo+Pj4gK8KgwqDCoCBpbnQg
aSwgZW52bG9jID0gMDsKPj4+ICsKPj4+ICvCoMKgwqAgZW52cFtlbnZsb2MrK10gPSBrYXNwcmlu
dGYoR0ZQX0tFUk5FTCwgIk5WTUVfRVZFTlQ9ZGlzY292ZXJ5Iik7Cj4+PiArwqDCoMKgIGVudnBb
ZW52bG9jKytdID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJOVk1FX0NUUkxfTkFNRT0lcyIsCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfbmFtZShjdHJsLT5kZXZpY2UpKTsKPj4+ICvC
oMKgwqAgZW52cFtlbnZsb2MrK10gPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIk5WTUVfVFJUWVBF
PSVzIiwgCj4+PiBvcHRzLT50cmFuc3BvcnQpOwo+Pgo+PiBUaGlzIGFkZHMgYSA+IDgwIGNoYXJh
Y3RlciBsaW5lLgo+Pgo+Pj4gK8KgwqDCoCBlbnZwW2VudmxvYysrXSA9IGthc3ByaW50ZihHRlBf
S0VSTkVMLCAiTlZNRV9UUkFERFI9JXMiLCAKPj4+IG9wdHMtPnRyYWRkcik7Cj4+PiArwqDCoMKg
IGVudnBbZW52bG9jKytdID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJOVk1FX1RSU1ZDSUQ9JXMi
LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3B0cy0+dHJzdmNpZCA/OiAibm9uZSIpOwo+
Pj4gK8KgwqDCoCBlbnZwW2VudmxvYysrXSA9IGthc3ByaW50ZihHRlBfS0VSTkVMLCAiTlZNRV9I
T1NUX1RSQUREUj0lcyIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHRzLT5ob3N0X3Ry
YWRkciA/OiAibm9uZSIpOwo+Pj4gK8KgwqDCoCBlbnZwW2VudmxvY10gPSBOVUxMOwo+Pj4gKwo+
Pj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgZW52bG9jOyBpKyspCj4+PiArwqDCoMKgwqDCoMKg
wqAgZGV2X2RiZyhjdHJsLT5kZXZpY2UsICIlc1xuIiwgZW52cFtpXSk7Cj4+Cj4+IFdoeSBhcmUg
d2Ugbm90IGhhdmluZyBhIGdlbmVyaWMgQUVOIHVldmVudCBmb3IgdGhvc2UgdGhhdCB3ZSB3YW50
IHRvCj4+IHBhc3Mgb24/wqAgQWxzbyBtb3N0IG9mIHRoZSBpbmZvcm1hdGlvbiBpcyByZWR1bmRh
bnQgYXMgaXQgY2FuIGJlCj4+IGVhc2lseSBkZXJpdmVkIGZyb20gdGhlIGNvbnRyb2xsZXJzIHN5
c2ZzIGRpcmVjdG9yeS4KPiAKPiBZb3UgYXJlIGNvcnJlY3QgdGhhdCB0aGlzIGluZm9ybWF0aW9u
IGNhbiBiZSBkZXJpdmVkIGZyb20gc3lzZnMsIGJ1dCB0aGUKPiBtYWluIHJlYXNvbiB3aHkgd2Ug
YWRkIHRoZXNlIGhlcmUsIGlzIGJlY2F1c2UgaW4gdWRldiBydWxlIHdlIGNhbid0Cj4ganVzdCBn
byBhaGVhZCBhbmQgc3RhcnQgbG9va2luZyB0aGVzZSB1cCBhbmQgcGFyc2luZyB0aGVzZS4uCj4g
Cj4gV2UgY291bGQgc2VuZCB0aGUgZGlzY292ZXJ5IGFlbiB3aXRoIE5WTUVfQ1RSTF9OQU1FIGFu
ZCBoYXZlCj4gdGhlbiBoYXZlIHN5c3RlbWQgcnVuIHNvbWV0aGluZyBsaWtlOgo+IAo+IG52bWUg
Y29ubmVjdC1hbGwgLWQgbnZtZTAgLS1zeXNmcwo+IAo+IGFuZCBoYXZlIG52bWUtY2xpIHJldHJp
ZXZlIGFsbCB0aGlzIHN0dWZmIGZyb20gc3lzZnM/CgpBY3R1YWxseSB0aGF0IG1heSBiZSBhIHBy
b2JsZW0uCgpUaGVyZSBjb3VsZCBiZSBhIGh5cG90aGV0aWNhbCBjYXNlIHdoZXJlIGFmdGVyIHRo
ZSBldmVudCB3YXMgZmlyZWQKYW5kIGJlZm9yZSBpdCB3YXMgaGFuZGxlZCwgdGhlIGRpc2NvdmVy
eSBjb250cm9sbGVyIHdlbnQgYXdheSBhbmQKY2FtZSBiYWNrIGFnYWluIHdpdGggYSBkaWZmZXJl
bnQgY29udHJvbGxlciBpbnN0YW5jZSwgYW5kIHRoZSBvbGQKaW5zdGFuY2UgaXMgbm93IGEgZGlm
ZmVyZW50IGRpc2NvdmVyeSBjb250cm9sbGVyLgoKVGhpcyBpcyB3aHkgd2UgbmVlZCB0aGlzIGlu
Zm9ybWF0aW9uIGluIHRoZSBldmVudC4gQW5kIHdlIHZlcmlmeSB0aGlzCmluZm9ybWF0aW9uIGlu
IHN5c2ZzIGluIG52bWUtY2xpLgoKTWFrZXMgc2Vuc2U/CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
