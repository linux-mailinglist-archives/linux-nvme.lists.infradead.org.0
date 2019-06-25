Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD7355305
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 17:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZyfcXRbuOqdnC48g/eDwFofFqX/iksJmhgRrM8es18=; b=SQUTXcAA3v+0jv
	TrrrQ4dan5mhn2QfXxEMSXIrcDE9Vycd2+j+5IAVNHta/jWr4t70cSQS5Z9YLp1gbiC8pDlJxQrPb
	MiBRTC4D2z9N/P8M7ekvj594pJ0gt6ofh+lnPALenrh0doEkN2Tua3SBK+bABMINmtzHUm4mvbyZw
	MC2P1PBHW4nm1zAJCtNliML1c0EDyliVTjsDYwa+QRFJpQrJ7pHklxPj85bMnPc1NUP2O4D817YaN
	nyDo6dMd/jXLiVYNe76ekXy/wP3a/KD18UoUktEolosfSaTNNKR2ls/MQoyO1K/9lU2TgnbYJNmC0
	vMAl9JbCDg6kzonXICeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfn9m-0007dN-Gu; Tue, 25 Jun 2019 15:14:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfn9g-0007cn-JT
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 15:14:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so8973814plb.9
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 08:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AiypwnEqHIwqKwf+R3e2H+Rvy6WR//fHScn0AOjLw3I=;
 b=NDRmLkfny2mQ3nvxayJ7eaEca9oIVcQ4nQ9M3VhZUBTSbB/iY1QTCI1dx6mMj8u0Bz
 GdZELXPDhuKZH2+sZYF5dyN9exNwRjBrm65bzwcppCIxdUnt+9fcoFqdQ3/6sNRchzd2
 iFKJGz2TeYxUrPJodB8FS74kHzVdkpGNLOmGQHedvXs9pTDjDPaGznEbGWpoUAG8EbSh
 mYuowhQfT9sU8mSw2EAwmvyd0rcrxP7k5uWfEqGCVbLzudvBeWNFbjFXcUxqRDeCAeQZ
 EWoJKM6OvuCLeUsyGoVSox+tJKlpr2HfVuDfJIOr/c+s6VTUh8J2DL5GAH/MSQnmTbzY
 06GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AiypwnEqHIwqKwf+R3e2H+Rvy6WR//fHScn0AOjLw3I=;
 b=F6wZZD/8lyFrGQWZc128qXOfADCbZRqW2j8Gfaz/5YC2sDFib3ar44vxQfHZd+nEF1
 hRr4aT8HXkNWz2UqIgocG0MjF0ji1laiPF0I9D26Zkqu1SlvFwnDFZXlPAnPHrIPUML/
 gMFcOIP/dxB43Nzjh+AH0JS6pk9IiHc+DBiiGp090laOU1g8MIQ/FPJftHLrfwl4aB55
 NtC4E2GhvC4biTPvUVuamumR1e4JMI3e+TDwnQHKaVupYhfaWyQwxEcBKHINqgvC3boR
 HT6ZL/mAgMmMMWaH1td2GYVFmQEIOMwq5DhIxa1t+eMsMMyoeGiD1dT7PeNBBbcWMvJL
 hxYQ==
X-Gm-Message-State: APjAAAUtBNisRFqlh3kLpD9LZy35/OU7wPzoTQU7hiBhIW/VPQJnpbKD
 jcIdS38eR5C5avzlO43yDNynaT6nawPNvZOHTq0=
X-Google-Smtp-Source: APXvYqxHoaMUX/D0YohPi1Xl3zaWAzEpC1/isJE3gtRb272DLi5OhqgbMLNNI2L1/AiIEoLCMUMZ2MQEPuZIw3j7p1c=
X-Received: by 2002:a17:902:e082:: with SMTP id
 cb2mr35643359plb.274.1561475683402; 
 Tue, 25 Jun 2019 08:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
 <1560439238-4054-4-git-send-email-akinobu.mita@gmail.com>
 <1561473887.19713.6.camel@intel.com>
In-Reply-To: <1561473887.19713.6.camel@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 26 Jun 2019 00:14:32 +0900
Message-ID: <CAC5umyj6tyCH9GM4bPE30JYoKN57HCvjdM89h8eyAcZWspCm6A@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] nvme: notify thermal framework when temperature
 threshold events occur
To: Zhang Rui <rui.zhang@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_081444_670063_FE298F84 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIgyNeaXpSjngaspIDIzOjQ0IFpoYW5nIFJ1aSA8cnVpLnpoYW5nQGludGVsLmNv
bT46Cj4KPiBPbiDkupQsIDIwMTktMDYtMTQgYXQgMDA6MjAgKzA5MDAsIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+IFRoZSBOVk1lIGNvbnRyb2xsZXIgc3VwcG9ydHMgdGhlIHRlbXBlcmF0dXJlIHRo
cmVzaG9sZCBmZWF0dXJlCj4gPiAoRmVhdHVyZQo+ID4gSWRlbnRpZmllciAwNGgpIHRoYXQgZW5h
YmxlcyB0byBjb25maWd1cmUgdGhlIGFzeW5jaHJvbm91cyBldmVudAo+ID4gcmVxdWVzdAo+ID4g
Y29tbWFuZCB0byBjb21wbGV0ZSB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBpcyBjcm9zc2VkIGl0cyBj
b3JyZXNwb25kaW5nCj4gPiB0ZW1wZXJhdHVyZSB0aHJlc2hvbGQuCj4gPgo+ID4gVGhpcyBlbmFi
bGVzIHRoZSByZXBvcnRpbmcgb2YgYXN5bmNocm9ub3VzIGV2ZW50cyBmcm9tIHRoZSBjb250cm9s
bGVyCj4gPiB3aGVuCj4gPiB0aGUgdGVtcGVyYXR1cmUgcmVhY2hlZCBvciBleGNlZWRlZCBhIHRl
bXBlcmF0dXJlIHRocmVzaG9sZC4KPiA+IEluIHRoZSBjYXNlIG9mIHRoZSB0ZW1wZXJhdHVyZSB0
aHJlc2hvbGQgY29uZGl0aW9ucywgdGhpcyBub3RpZmllcwo+ID4gdGhlCj4gPiB0aGVybWFsIGZy
YW1ld29yay4KPiA+Cj4gPiBUaGUgbWFpbiBwdXJwb3NlIG9mIHRoaXMgaXMgdG8gdHVybiBvbiBh
IGZhbiB3aGVuIG92ZXJoZWF0ZWQgd2l0aG91dAo+ID4gcG9sbGluZyB0aGUgZGV2aWNlIGZvciB0
aGUgc21hcnQgbG9nIHRoYXQgY291bGQgcHJldmVudCB0aGUgbG93ZXIKPiA+IHBvd2VyCj4gPiBz
dGF0ZSB0cmFuc2l0aW9ucy4KPiA+Cj4gPiBDYzogWmhhbmcgUnVpIDxydWkuemhhbmdAaW50ZWwu
Y29tPgo+ID4gQ2M6IEVkdWFyZG8gVmFsZW50aW4gPGVkdWJlenZhbEBnbWFpbC5jb20+Cj4gPiBD
YzogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gPiBDYzogS2Vp
dGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPgo+ID4gQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZi
LmNvbT4KPiA+IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiA+IENjOiBTYWdp
IEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+ID4gQ2M6IE1pbndvbyBJbSA8bWlud29vLmlt
LmRldkBnbWFpbC5jb20+Cj4gPiBDYzogS2VubmV0aCBIZWl0a2UgPGtlbm5ldGguaGVpdGtlQGlu
dGVsLmNvbT4KPiA+IENjOiBDaGFpdGFueWEgS3Vsa2FybmkgPENoYWl0YW55YS5LdWxrYXJuaUB3
ZGMuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21h
aWwuY29tPgo+ID4gLS0tCj4gPiAqIHY0Cj4gPiAtIHN1cHBvcnQgRFQgdGhlcm1hbCB6b25lIGRl
dmljZS4KPiA+IC0gdXNlIGJpdG1hcCB0byBpdGVyYXRlIG92ZXIgaW1wbGVtZW50ZWQgc2Vuc29y
cwo+ID4KPiA+ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICAgfCAxNCArKysrKysrKysrKysr
Kwo+ID4gIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCAgICB8ICA1ICsrKysrCj4gPiAgZHJpdmVy
cy9udm1lL2hvc3QvdGhlcm1hbC5jIHwgMTIgKysrKysrKysrKysrCj4gPiAgaW5jbHVkZS9saW51
eC9udm1lLmggICAgICAgIHwgIDcgKysrKysrKwo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMzggaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMg
Yi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiA+IGluZGV4IDRiZTMzOWIuLjQ0ZGFkYmIgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMv
bnZtZS9ob3N0L2NvcmUuYwo+ID4gQEAgLTExODYsNiArMTE4Niw5IEBAIHN0YXRpYyB2b2lkIG52
bWVfZW5hYmxlX2FlbihzdHJ1Y3QgbnZtZV9jdHJsCj4gPiAqY3RybCkKPiA+ICAgICAgIHUzMiBy
ZXN1bHQsIHN1cHBvcnRlZF9hZW5zID0gY3RybC0+b2FlcyAmCj4gPiBOVk1FX0FFTl9TVVBQT1JU
RUQ7Cj4gPiAgICAgICBpbnQgc3RhdHVzOwo+ID4KPiA+ICsgICAgIGlmIChJU19FTkFCTEVEKENP
TkZJR19USEVSTUFMKSkKPiA+ICsgICAgICAgICAgICAgc3VwcG9ydGVkX2FlbnMgfD0gTlZNRV9T
TUFSVF9DUklUX1RFTVBFUkFUVVJFOwo+ID4gKwo+ID4gICAgICAgaWYgKCFzdXBwb3J0ZWRfYWVu
cykKPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4KPiA+IEBAIC0zNTYxLDYgKzM1NjQsMTYg
QEAgdm9pZCBudm1lX3JlbW92ZV9uYW1lc3BhY2VzKHN0cnVjdCBudm1lX2N0cmwKPiA+ICpjdHJs
KQo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MX0dQTChudm1lX3JlbW92ZV9uYW1lc3BhY2VzKTsK
PiA+Cj4gPiArc3RhdGljIHZvaWQgbnZtZV9oYW5kbGVfYWVuX3NtYXJ0KHN0cnVjdCBudm1lX2N0
cmwgKmN0cmwsIHUzMgo+ID4gcmVzdWx0KQo+ID4gK3sKPiA+ICsgICAgIHUzMiBhZXJfdHlwZSA9
IHJlc3VsdCAmIE5WTUVfQUVSX1RZUEVfTUFTSzsKPiA+ICsgICAgIHUzMiBhZXJfaW5mbyA9IChy
ZXN1bHQgPj4gTlZNRV9BRVJfSU5GT19TSElGVCkgJgo+ID4gTlZNRV9BRVJfSU5GT19NQVNLOwo+
ID4gKwo+ID4gKyAgICAgaWYgKGFlcl90eXBlID09IE5WTUVfQUVSX1NNQVJUICYmCj4gPiArICAg
ICAgICAgYWVyX2luZm8gPT0gTlZNRV9BRVJfU01BUlRfVEVNUF9USFJFU0gpCj4gPiArICAgICAg
ICAgICAgIG52bWVfdGhlcm1hbF9ub3RpZnlfZnJhbWV3b3JrKGN0cmwpOwo+ID4gK30KPiA+ICsK
PiA+ICBzdGF0aWMgdm9pZCBudm1lX2Flbl91ZXZlbnQoc3RydWN0IG52bWVfY3RybCAqY3RybCkK
PiA+ICB7Cj4gPiAgICAgICBjaGFyICplbnZwWzJdID0geyBOVUxMLCBOVUxMIH07Cj4gPiBAQCAt
MzU4Miw2ICszNTk1LDcgQEAgc3RhdGljIHZvaWQgbnZtZV9hc3luY19ldmVudF93b3JrKHN0cnVj
dAo+ID4gd29ya19zdHJ1Y3QgKndvcmspCj4gPiAgICAgICBzdHJ1Y3QgbnZtZV9jdHJsICpjdHJs
ID0KPiA+ICAgICAgICAgICAgICAgY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBudm1lX2N0cmws
Cj4gPiBhc3luY19ldmVudF93b3JrKTsKPiA+Cj4gPiArICAgICBudm1lX2hhbmRsZV9hZW5fc21h
cnQoY3RybCwgY3RybC0+YWVuX3Jlc3VsdCk7Cj4gPiAgICAgICBudm1lX2Flbl91ZXZlbnQoY3Ry
bCk7Cj4gPiAgICAgICBjdHJsLT5vcHMtPnN1Ym1pdF9hc3luY19ldmVudChjdHJsKTsKPiA+ICB9
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oIGIvZHJpdmVycy9udm1l
L2hvc3QvbnZtZS5oCj4gPiBpbmRleCBhOWM2M2VhLi40MDMyNWI2IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oCj4gPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9udm1l
LmgKPiA+IEBAIC02MDUsNiArNjA1LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbnZtZV9ucwo+
ID4gKm52bWVfZ2V0X25zX2Zyb21fZGV2KHN0cnVjdCBkZXZpY2UgKmRldikKPiA+Cj4gPiAgaW50
IG52bWVfdGhlcm1hbF96b25lc19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKTsKPiA+
ICB2b2lkIG52bWVfdGhlcm1hbF96b25lc191bnJlZ2lzdGVyKHN0cnVjdCBudm1lX2N0cmwgKmN0
cmwpOwo+ID4gK3ZvaWQgbnZtZV90aGVybWFsX25vdGlmeV9mcmFtZXdvcmsoc3RydWN0IG52bWVf
Y3RybCAqY3RybCk7Cj4gPgo+ID4gICNlbHNlCj4gPgo+ID4gQEAgLTYxNyw2ICs2MTgsMTAgQEAg
c3RhdGljIGlubGluZSB2b2lkCj4gPiBudm1lX3RoZXJtYWxfem9uZXNfdW5yZWdpc3RlcihzdHJ1
Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gIHsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyBpbmxpbmUg
dm9pZCBudm1lX3RoZXJtYWxfbm90aWZ5X2ZyYW1ld29yayhzdHJ1Y3QgbnZtZV9jdHJsCj4gPiAq
Y3RybCkKPiA+ICt7Cj4gPiArfQo+ID4gKwo+ID4gICNlbmRpZiAvKiBDT05GSUdfVEhFUk1BTCAq
Lwo+ID4KPiA+ICAjZW5kaWYgLyogX05WTUVfSCAqLwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bnZtZS9ob3N0L3RoZXJtYWwuYwo+ID4gYi9kcml2ZXJzL252bWUvaG9zdC90aGVybWFsLmMKPiA+
IGluZGV4IDE4ZDBlNGMuLmI1ZTgzNWQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9z
dC90aGVybWFsLmMKPiA+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3RoZXJtYWwuYwo+ID4gQEAg
LTMwOSwzICszMDksMTUgQEAgdm9pZCBudm1lX3RoZXJtYWxfem9uZXNfdW5yZWdpc3RlcihzdHJ1
Y3QKPiA+IG52bWVfY3RybCAqY3RybCkKPiA+ICAgICAgICAgICAgICAgX19jbGVhcl9iaXQoaSwg
Y3RybC0+dHpfZW5hYmxlZCk7Cj4gPiAgICAgICB9Cj4gPiAgfQo+ID4gKwo+ID4gK3ZvaWQgbnZt
ZV90aGVybWFsX25vdGlmeV9mcmFtZXdvcmsoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiA+ICt7
Cj4gPiArICAgICBpbnQgaTsKPiA+ICsKPiA+ICsgICAgIGZvcl9lYWNoX3NldF9iaXQoaSwgY3Ry
bC0+dHpfZW5hYmxlZCwgQVJSQVlfU0laRShjdHJsLT50eikpCj4gPiB7Cj4gPiArICAgICAgICAg
ICAgIGlmIChjdHJsLT50eltpXS5kZXYpCj4gPiArICAgICAgICAgICAgICAgICAgICAgdGhlcm1h
bF9ub3RpZnlfZnJhbWV3b3JrKGN0cmwtPnR6W2ldLmRldiwKPiA+IDApOwo+Cj4gSSdkIHByZWZl
ciB0byB1c2UgdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBoZXJlIHRvIG5vdGlmeSB0aGUK
PiB0aGVybWFsIGZyYW1ld29yay4KPiB0aGVybWFsX25vdGlmeV9mcmFtZXdvcmsoKSB3aWxsIGJl
IHJlbW92ZWQgc29tZXRpbWUgbGF0ZXIuCgpZb3UgYXJlIHJpZ2h0LgoKSSBnb3QgbXkgUk9DS1By
bzY0IGJvYXJkIGFuZCBqdXN0IHN0YXJ0ZWQgdGVzdGluZyB3aXRoIHB3bS1mYW4gY29vbGluZwpk
ZXZpY2UuICBBbmQgdGhlbiBJIGFsc28gbm90aWNlZCB0aGF0IHVzaW5nIHRoZXJtYWxfbm90aWZ5
X2ZyYW1ld29yaygpCmlzIGluc3VmZmljaWVudCB3aGVuIHBvbGxpbmctZGVsYXkgaXMgemVybyAo
aS5lLiBpbnRlcnJ1cHQgZHJpdmVuIHRoZXJtYWwKem9uZSkuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
