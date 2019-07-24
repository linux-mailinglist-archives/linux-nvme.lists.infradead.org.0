Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511EA723ED
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 03:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMrdRk+kWLLbI88hIFAgQvdWADxdf6pgdfs5+AJxZBw=; b=RXA/IphhyXhDnF
	C31RzTkar5oPiD6K/y3n89cPAcF7cMkHLxh8tnzPFSrTJVEdxtG794wFXPXnRfcwY+crvGkbl2Gmk
	1FCmYYgZxL8vFNjhArrP6uugmthjVXVbJ/e0P7MuONkxvW+2Mgw2aMbZPKPl2nNnWzVuO6uuN9ksM
	mWGgT1Whu6IGwodeN2/NFJa8Kj9FtQRJFnjxAF3Y2YtJKlmsJknWp+TaeYhfOkizdUK0T7PMX7Qg9
	RK15n9zSJSP3MswjG6/ZPAM1DhWkpAsvCFu3VX92mDssvm0LuANnOxNlXA5BLyT8ztbhhl0cuNkAG
	oq86DHKPHzLFps8/12QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6LX-0002xH-Vk; Wed, 24 Jul 2019 01:45:36 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6LM-0002wV-RM
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 01:45:26 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 605783082E10;
 Wed, 24 Jul 2019 01:45:24 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9559A60BEC;
 Wed, 24 Jul 2019 01:45:16 +0000 (UTC)
Date: Wed, 24 Jul 2019 09:45:12 +0800
From: Ming Lei <ming.lei@redhat.com>
To: davidc502 <davidc502@tds.net>
Subject: Re: fstrim error - AORUS NVMe Gen4 SSD
Message-ID: <20190724014510.GD22421@ming.t460p>
References: <fb510e33-5c81-6d62-fcde-a2989b3a1a8f@tds.net>
 <20190723021928.GF30776@ming.t460p>
 <4a7ec7aa-f6ee-f9dc-4a17-38f2b169c721@tds.net>
 <20190723043803.GB13829@ming.t460p>
 <38cf2485-727b-268d-f42c-6c53b971cb87@tds.net>
 <5ef41ec4-abb8-90bf-e2eb-8a62f51ad951@tds.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ef41ec4-abb8-90bf-e2eb-8a62f51ad951@tds.net>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 24 Jul 2019 01:45:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_184524_928147_5DF92429 
X-CRM114-Status: GOOD (  28.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NTY6MTBQTSAtMDUwMCwgZGF2aWRjNTAyIHdyb3Rl
Ogo+IE1pbmcsCj4gCj4gT24gNy8yMy8xOSA0OjM4IFBNLCBkYXZpZGM1MDIgd3JvdGU6Cj4gPiBI
ZWxsbywKPiA+IAo+ID4gT24gNy8yMi8xOSAxMTozOCBQTSwgTWluZyBMZWkgd3JvdGU6Cj4gPiA+
IEhpLAo+ID4gPiAKPiA+ID4gT24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDk6Mzk6MDdQTSAtMDUw
MCwgZGF2aWRjNTAyIHdyb3RlOgo+ID4gPiA+IFNlZSBhdHRhY2hlZDrCoCBudm1lX2lvX3RyYWNl
LmxvZwo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IE9uIDcvMjIvMTkgOToxOSBQTSwgTWluZyBM
ZWkgd3JvdGU6Cj4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gT24gU2F0LCBKdWwg
MjAsIDIwMTkgYXQgMDk6NDE6MjRQTSAtMDUwMCwgZGF2aWRjNTAyIHdyb3RlOgo+ID4gPiA+ID4g
PiDCoCDCoEhlbGxvLAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gwqAgwqBJJ3ZlIGFzc2VtYmxl
ZCBhIFg1NzAgYm9hcmQgd2l0aCBhIDFUQiBBT1JVUyBOVk1lIEdlbjQgU1NELgo+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gwqAgwqBXaGVuIGF0dGVtcHRpbmcgdG8gZnN0cmltIHRoZSBOVk1lLCBJ
IHJlY2VpdmUgdGhlIGZvbGxvd2luZyBlcnJvci4KPiA+ID4gPiA+ID4gwqAgwqBkYXZpZGM1MDJA
Unl6ZW4tMzkwMHg6fiQgc3VkbyBmc3RyaW0gLWEgLXYKPiA+ID4gPiA+ID4gwqAgwqBmc3RyaW06
IC9ib290L2VmaTogRklUUklNIGlvY3RsIGZhaWxlZDogSW5wdXQvb3V0cHV0IGVycm9yCj4gPiA+
ID4gPiA+IMKgIMKgZnN0cmltOiAvOiBGSVRSSU0gaW9jdGwgZmFpbGVkOiBJbnB1dC9vdXRwdXQg
ZXJyb3IKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IMKgIMKgQW55aG93LCBJIGhhdmUgcHV0IHNv
bWUgZGV0YWlscyBiZWxvdyB3aGljaCBtaWdodCBiZQo+ID4gPiA+ID4gPiBoZWxwZnVsLiBOb3Rl
IHRoYXQKPiA+ID4gPiA+ID4gdGhpcyBOVk1lIGlzIHN1cHBvc2VkIHRvIGJlIFRSSU0gYW5kIFNN
QVJUIGNvbXBsaWFudC4KPiA+ID4gPiA+ID4gVGhlIFNNQVJUIG91dHB1dHMgYXJlCj4gPiA+ID4g
PiA+IGF2YWlsYWJsZSB1c2luZyB0aGUgdXRpbGl0eSDigJxudm1lLWNsaeKAnS4KPiA+ID4gPiA+
ID4gwqAgwqBJIGFtIHdpbGxpbmcgdG8gcHJvdmlkZSB3aGF0ZXZlciBjb21tYW5kIG91dHB1dHMg
dGhhdAo+ID4gPiA+ID4gPiBhcmUgbmVlZGVkIHRvIGhlbHAKPiA+ID4gPiA+ID4gc29sdmUgdGhp
cyBpc3N1ZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IMKgIMKgT1M9IFVidW50dSAxOC40LjIg
TFRTCj4gPiA+ID4gPiA+IMKgIMKgRGlmZmVyZW50IEtlcm5lbHMgSeKAmXZlIHRyaWVkID0gNS4x
LjE2LCA1LjIgcmM3LCBhbmQgNC4xOAo+ID4gPiA+ID4gPiDCoCDCoGZzdHJpbSB2ZXJzaW9uID3C
oCBmc3RyaW0gZnJvbSB1dGlsLWxpbnV4IDIuMzEuMQo+ID4gPiA+ID4gPiDCoCDCoEZpcm13YXJl
IHZlcnNpb24gZm9yIEFvcnVzIE5WTWUgPSBFR0ZNMTEuMAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
IEkgc2F3IGRpc2NhcmQgdGltZW91dCBvbiBIR1NUIDEuNlRCIE5WTWUsIG5vdCBzdXJlIGlmIHlv
dXJzCj4gPiA+ID4gPiBpcyBzYW1lIHdpdGgKPiA+ID4gPiA+IHRoYXQgb25lLgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBDb3VsZCB5b3UgY29sbGVjdCBsb2dzIHZpYSB0aGUgZm9sbG93aW5nIHN0ZXBz
Pwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTdXBwb3NlIHlvdXIgbnZtZSBkaXNrIG5hbWUgaXMgL2Rl
di9udm1lMG4xOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiAxKSBxdWV1ZSBsaW1pdHMgbG9nOgo+ID4g
PiA+ID4gCj4gPiA+ID4gPiDCoMKgwqDCoCMoY2QgL3N5cy9ibG9jay9udm1lMG4xL3F1ZXVlICYm
IGZpbmQgLiAtdHlwZSBmIC1leGVjCj4gPiA+ID4gPiBncmVwIC1hSCAuIHt9IFw7KQo+ID4gPiA+
ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+IDIpIE5WTWUgSU8gdHJhY2UKPiA+ID4gPiA+IAo+ID4g
PiA+ID4gLSBlbmFibGUgbnZtZSBJTyB0cmFjZSBiZWZvcmUgcnVubmluZyBmc3RyaW06Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IMKgwqDCoMKgI2VjaG8gMcKgID4gL3N5cy9rZXJuZWwvZGVidWcvdHJh
Y2luZy9ldmVudHMvbnZtZV9zZXR1cF9jbWQvZW5hYmxlCj4gPiA+ID4gPiDCoMKgwqDCoCNlY2hv
IDHCoCA+Cj4gPiA+ID4gPiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL2V2ZW50cy9udm1lX2Nv
bXBsZXRlX3JxL2VuYWJsZQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtIHJ1biBmc3RyaW0KPiA+ID4g
PiA+IAo+ID4gPiA+ID4gLSBhZnRlciB0aGUgZnN0cmltIGZhaWx1cmUgaXMgdHJpZ2dlcmVkLCBk
aXNhYmxlIHRoZSBudm1lIGlvCj4gPiA+ID4gPiB0cmFjZSAmIHBvc3QgdGhlIGxvZzoKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gwqDCoMKgwqAjZWNobyAwwqAgPiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFj
aW5nL2V2ZW50cy9udm1lX3NldHVwX2NtZC9lbmFibGUKPiA+ID4gPiA+IMKgwqDCoMKgI2VjaG8g
MMKgID4KPiA+ID4gPiA+IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvZXZlbnRzL252bWVfY29t
cGxldGVfcnEvZW5hYmxlCj4gPiA+ID4gPiAKPiA+ID4gPiA+IMKgwqDCoMKgI2NwwqDCoMKgIC9z
eXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UgL3Jvb3QvbnZtZV9pb190cmFjZS5sb2cKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+IHRoYW5rcywKPiA+ID4gPiA+
IE1pbmcKPiA+ID4gPiAKPiA+ID4gPiBIZWxsbyBNaW5nCj4gPiA+ID4gCj4gPiA+ID4gVGhhbmsg
eW91IGZvciB0aGUgcXVpY2sgcmVwbHkgLS3CoCBTZWUgYXR0YWNoZWQKPiA+ID4gwqBGcm9tIHRo
ZSBJTyB0cmFjZSwgZGlzY2FyZCBjb21tYW5kKG52bWVfY21kX2RzbSkgaXMgZmFpbGVkOgo+ID4g
PiAKPiA+ID4gwqDCoCBrd29ya2VyLzE1OjFILTQ2MsKgwqAgWzAxNV0gLi4uLiA5MTgxNC4zNDI0
NTI6IG52bWVfc2V0dXBfY21kOgo+ID4gPiBudm1lMDogZGlzaz1udm1lMG4xLCBxaWQ9NywgY21k
aWQ9NTUyLCBuc2lkPTEsIGZsYWdzPTB4MCwgbWV0YT0weDAsCj4gPiA+IGNtZD0obnZtZV9jbWRf
ZHNtIG5yPTAsIGF0dHJpYnV0ZXM9NCkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGlkbGU+
LTDCoMKgwqDCoCBbMDEzXSBkLmguIDkxODE0LjM0MjcwODogbnZtZV9jb21wbGV0ZV9ycToKPiA+
ID4gbnZtZTA6IGRpc2s9bnZtZTBuMSwgcWlkPTcsIGNtZGlkPTU1MiwgcmVzPTAsIHJldHJpZXM9
MCwgZmxhZ3M9MHgwLAo+ID4gPiBzdGF0dXM9ODE5OAo+ID4gPiAKPiA+ID4gQW5kIHRoZSByZXR1
cm5lZCBlcnJvciBjb2RlIGlzIDB4ODE5OCwgSSBhbSBub3Qgc3VyZSBob3cgdG8gcGFyc2UgdGhl
Cj4gPiA+ICdDb21tYW5kIFNwZWNpZmljIFN0YXR1cyBWYWx1ZXMnIG9mIDB4OTgsIG1heWJlIENo
cmlzdG9waCwgS2VpdGggb3IKPiA+ID4gb3VyIG90aGVyCj4gPiA+IE5WTWUgZ3V5cyBjYW4gaGVs
cCB0byB1bmRlcnN0YW5kIHRoZSBmYWlsdXJlLgo+ID4gPiAKPiA+ID4gCj4gPiA+IFRoYW5rcywK
PiA+ID4gTWluZwo+ID4gCj4gPiBMb25nIHN0b3J5IHNob3J0IHdlIGhhdmUgMyBuZXcgUENJIEdl
biA0IFNTRCAtIE5WTWUgZHJpdmVzIGZyb20KPiA+IEdpZ2FieXRlLiBCdXQgYWN0dWFsbHksIEdp
Z2FieXRlIGlzIGp1c3QgcHV0dGluZyB0aGVpciBuYW1lIG9uIGl0IGFzIEkKPiA+IGJlbGlldmUg
aXQgaXMgYWN0dWFsbHkgZnJvbSAiUGhpc29uIi4KPiA+IAo+ID4gSGVyZSBpcyB0aGUgd2Vic2l0
ZSB3aGVyZSB5b3UgY2FuIHNlZSB0aGUgbmV3IGRyaXZlcyAtLQo+ID4gaHR0cHM6Ly93d3cuZ2ln
YWJ5dGUuY29tL1NvbGlkLVN0YXRlLURyaXZlL0dlbi00Cj4gPiAKPiA+IEkgaGF2ZSBvcGVuZWQg
YSB0aWNrZXQgd2l0aCBHaWdhYnl0ZSwgYW5kIGhhdmUgaW5xdWlyZWQgYWJvdXQgYW55Cj4gPiBh
dmFpbGFibGUgZmlybXdhcmUgdXBkYXRlcy4gSXQgd2lsbCB0YWtlIDMtNSBkYXlzIHRvIGhlYXIg
YmFjayBmcm9tCj4gPiB0aGVtLCBidXQgd2lsbCByZXBvcnQgYmFjayB0aGUgZmluZGluZy4KPiA+
IAo+ID4gVGhhbmsgeW91IGZvciB0YWtpbmcgYSBsb29rIGF0IHRoZSB0cmFjaW5nIGZpbGUsIGFu
ZCBob3BlZnVsbHkgdGhhdAo+ID4gZ2l2ZXMgZW5vdWdoIGluc2lnaHQgYXMgdG8gd2hhdCBtaWdo
dCBiZSBoYXBwZW5pbmcuCj4gPiAKPiA+IEJlc3QgUmVnYXJkcywKPiA+IAo+ID4gRGF2aWQKPiA+
IAo+ID4gCj4gSSBoYXZlIGF0dGVtcHRlZCB0byBDQyBpbG51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcsIGJ1dCByZWNlaXZlIGEKPiBpbW1lZGlhdGUgbm90aWZpY2F0aW9uICIgNTUwIFVua25v
d24gcmVjaXBpZW50ICIuwqAgU28gaXQganVzdCBnZXRzIGJvdW5jZWQKPiBiYWNrIHRvIG1lLgoK
SXQgc2hvdWxkIGhhdmUgYmVlbiBsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcuCgpUaGFu
a3MsCk1pbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
