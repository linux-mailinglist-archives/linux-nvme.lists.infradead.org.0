Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC4D15B9CF
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 07:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcCntvrUS3rkBGvs/6A4FCMEL57b3+UvALx2t4Ogk38=; b=GC3Q19I0Q2T1/u
	hC6v+A9xi3g+fDWiSB204oJ1rfNQofdiw0gsrlUURJ6gRH5mGMGh/dq7sl2A5XREI+IVF/GdtUzJe
	6QqHIukLUrGfuXv3oBL2LGsCKwUqqwpQc9d5eRFAe/e9sGd2IYeQXB8P1uwbgOLzMvcnHslzVcHg6
	Pb8ybVAUn3ZrkltsA8bs3u8FyNR9S4gPBgD3eL1RDG0bPibuTsfTak0aS1IoO83LC3xvYxDTAU/vG
	nH1yYT5N+OQfz9vs5Z1Ggxv7XJUyijVDuLxa8PagyN2zIEtUAQYAeZV7ervymYCn94HsVGeXKFYlD
	jE6/hq5ZDW39lgmQnSRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28Nb-0003aU-Dr; Thu, 13 Feb 2020 06:53:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28NW-0003ZQ-Qx
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 06:53:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5C39DAE34;
 Thu, 13 Feb 2020 06:53:35 +0000 (UTC)
Subject: Re: [PATCH] nvme-multipath: do not reset controller on unknown status
To: Christoph Hellwig <hch@lst.de>
References: <20200212134140.105817-1-hare@suse.de>
 <20200212175317.GA5813@lst.de>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <88fffa65-7c1d-8b14-e4d2-e4b5e2eb00a8@suse.de>
Date: Thu, 13 Feb 2020 07:53:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200212175317.GA5813@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_225339_164344_56922261 
X-CRM114-Status: GOOD (  29.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, John Managhini <john.meneghini@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMi8xMi8yMCA2OjUzIFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBXZWQsIEZl
YiAxMiwgMjAyMCBhdCAwMjo0MTo0MFBNICswMTAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+
IFdlJ3JlIHNlZWluZyBvY2Nhc2lvbmFsIGNvbnRyb2xsZXIgcmVzZXRzIGR1cmluZyBzdHJhaWdo
dCBJL08sCj4+IGJ1dCBvbmx5IHdoZW4gbXVsdGlwYXRoIGlzIGFjdGl2ZS4KPj4gVGhlIHByb2Js
ZW0gaGVyZSBpcyB0aGUgbnZtZS1tdWx0aXBhdGggd2lsbCByZXNldCB0aGUgY29udHJvbGxlcgo+
PiBvbiBldmVyeSB1bmtub3duIHN0YXR1cywgd2hpY2ggcmVhbGx5IGlzIGFuIG9kZCBiZWhhdmlv
dXIsIHNlZWluZwo+PiB0aGF0IHRoZSBob3N0IGFscmVhZHkgcmVjZWl2ZWQgYSBwZXJmZWN0bHkg
Z29vZCBzdGF0dXM7IGl0J3MganVzdAo+PiB0aGF0IGl0J3Mgbm90IHNtYXJ0IGVub3VnaCB0byB1
bmRlcnN0YW5kIGl0Lgo+PiBBbmQgcmVzZXR0aW5nIHdvdWxkbid0IGhlbHAgYXQgYWxsOyB0aGUg
ZXJyb3Igc3RhdHVzIHdpbGwgY29udGludWUKPj4gdG8gYmUgcmVjZWl2ZWQuCj4+IFNvIHdlIHNo
b3VsZCByYXRoZXIgcGFzcyB1cCBhbnkgdW5rbm93biBlcnJvciB0byB0aGUgZ2VuZXJpYwo+PiBy
b3V0aW5lcyBhbmQgbGV0IHRoZW0gZGVhbCB3aXRoIHRoaXMgc2l0dWF0aW9uLgo+IAo+IFdoYXQg
dW5rbm93biBzdGF0dXMgZG8geW91IHNlZT8KPiAKPj4KPj4gU2lnbmVkLW9mZi1ieTogSGFubmVz
IFJlaW5lY2tlIDxoYXJlQHN1c2UuZGU+Cj4+IENjOiBKb2huIE1hbmFnaGluaSA8am9obi5tZW5l
Z2hpbmlAbmV0YXBwLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICAg
ICB8ICA0ICsrLS0KPj4gIGRyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jIHwgMTggKysrKysr
KysrKy0tLS0tLS0tCj4+ICBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggICAgICB8ICAyICstCj4+
ICAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jCj4+IGluZGV4IDVkYzMyYjcyZTdmYS4uZWRiMDgxNzgxYWU3IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3Qv
Y29yZS5jCj4+IEBAIC0yOTMsOCArMjkzLDggQEAgdm9pZCBudm1lX2NvbXBsZXRlX3JxKHN0cnVj
dCByZXF1ZXN0ICpyZXEpCj4+ICAJaWYgKHVubGlrZWx5KHN0YXR1cyAhPSBCTEtfU1RTX09LICYm
IG52bWVfcmVxX25lZWRzX3JldHJ5KHJlcSkpKSB7Cj4+ICAJCWlmICgocmVxLT5jbWRfZmxhZ3Mg
JiBSRVFfTlZNRV9NUEFUSCkgJiYKPj4gIAkJICAgIGJsa19wYXRoX2Vycm9yKHN0YXR1cykpIHsK
Pj4gLQkJCW52bWVfZmFpbG92ZXJfcmVxKHJlcSk7Cj4+IC0JCQlyZXR1cm47Cj4+ICsJCQlpZiAo
bnZtZV9mYWlsb3Zlcl9yZXEocmVxKSkKPj4gKwkJCQlyZXR1cm47Cj4gCj4gVGhpcyByZWFkcyB3
ZWlyZCwgd2h5IG5vdDoKPiAKPiAJCWlmICgocmVxLT5jbWRfZmxhZ3MgJiBSRVFfTlZNRV9NUEFU
SCkgJiYKPiAJCSAgICBibGtfcGF0aF9lcnJvcihzdGF0dXMpICYmIG52bWVfZmFpbG92ZXJfcmVx
KHJlcSkpCj4gCQkJcmV0dXJuOwo+IAo+ID8KPiAKPiBCdXQgc2VlIGJlbG93LCB3aXRoIHlvdXIg
dXBkYXRlZCBjaGVja3MgKGFzc3VtaW5nIHRoaXMgbWFrZXMgc2Vuc2UKPiBhcyB3ZSBuZWVkIG1v
cmUgZXhwbGFuYXRpb24pIHdlIGRvbid0IGV2ZW4gbmVlZCB0aGUgYmxrX3BhdGhfZXJyb3IKPiBj
YWxsLgo+IAo+PiAtdm9pZCBudm1lX2ZhaWxvdmVyX3JlcShzdHJ1Y3QgcmVxdWVzdCAqcmVxKQo+
PiArYm9vbCBudm1lX2ZhaWxvdmVyX3JlcShzdHJ1Y3QgcmVxdWVzdCAqcmVxKQo+PiAgewo+PiAg
CXN0cnVjdCBudm1lX25zICpucyA9IHJlcS0+cS0+cXVldWVkYXRhOwo+PiAgCXUxNiBzdGF0dXMg
PSBudm1lX3JlcShyZXEpLT5zdGF0dXM7Cj4+ICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gKwli
b29sIGhhbmRsZWQgPSBmYWxzZTsKPj4gIAo+PiAgCXNwaW5fbG9ja19pcnFzYXZlKCZucy0+aGVh
ZC0+cmVxdWV1ZV9sb2NrLCBmbGFncyk7Cj4+ICAJYmxrX3N0ZWFsX2Jpb3MoJm5zLT5oZWFkLT5y
ZXF1ZXVlX2xpc3QsIHJlcSk7Cj4+ICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbnMtPmhlYWQt
PnJlcXVldWVfbG9jaywgZmxhZ3MpOwo+PiAtCWJsa19tcV9lbmRfcmVxdWVzdChyZXEsIDApOwo+
IAo+IFlvdSBjYW4ndCBqdXN0IHN0ZWFsIHRoZSBiaW9zIHdpdGhvdXQgY29tcGxldGluZyB0aGUg
cmVxdWVzdC4KPiAKQWguIFRydWUuCgo+PiAgCj4+ICAJc3dpdGNoIChzdGF0dXMgJiAweDdmZikg
ewo+PiAgCWNhc2UgTlZNRV9TQ19BTkFfVFJBTlNJVElPTjoKPj4gQEAgLTg4LDExICs4OCwxMyBA
QCB2b2lkIG52bWVfZmFpbG92ZXJfcmVxKHN0cnVjdCByZXF1ZXN0ICpyZXEpCj4+ICAJCSAqIG1h
cmsgdGhlIHRoZSBwYXRoIGFzIHBlbmRpbmcgYW5kIGtpY2sgb2YgYSByZS1yZWFkIG9mIHRoZSBB
TkEKPj4gIAkJICogbG9nIHBhZ2UgQVNBUC4KPj4gIAkJICovCj4+ICsJCWJsa19tcV9lbmRfcmVx
dWVzdChyZXEsIDApOwo+PiAgCQludm1lX21wYXRoX2NsZWFyX2N1cnJlbnRfcGF0aChucyk7Cj4+
ICAJCWlmIChucy0+Y3RybC0+YW5hX2xvZ19idWYpIHsKPj4gIAkJCXNldF9iaXQoTlZNRV9OU19B
TkFfUEVORElORywgJm5zLT5mbGFncyk7Cj4+ICAJCQlxdWV1ZV93b3JrKG52bWVfd3EsICZucy0+
Y3RybC0+YW5hX3dvcmspOwo+PiAgCQl9Cj4+ICsJCWhhbmRsZWQgPSB0cnVlOwo+PiAgCQlicmVh
azsKPj4gIAljYXNlIE5WTUVfU0NfSE9TVF9QQVRIX0VSUk9SOgo+PiAgCWNhc2UgTlZNRV9TQ19I
T1NUX0FCT1JURURfQ01EOgo+PiBAQCAtMTAwLDE4ICsxMDIsMTggQEAgdm9pZCBudm1lX2ZhaWxv
dmVyX3JlcShzdHJ1Y3QgcmVxdWVzdCAqcmVxKQo+PiAgCQkgKiBUZW1wb3JhcnkgdHJhbnNwb3J0
IGRpc3J1cHRpb24gaW4gdGFsa2luZyB0byB0aGUgY29udHJvbGxlci4KPj4gIAkJICogVHJ5IHRv
IHNlbmQgb24gYSBuZXcgcGF0aC4KPj4gIAkJICovCj4+ICsJCWJsa19tcV9lbmRfcmVxdWVzdChy
ZXEsIDApOwo+PiAgCQludm1lX21wYXRoX2NsZWFyX2N1cnJlbnRfcGF0aChucyk7Cj4+ICsJCWhh
bmRsZWQgPSB0cnVlOwo+PiAgCQlicmVhazsKPj4gIAlkZWZhdWx0Ogo+PiAtCQkvKgo+PiAtCQkg
KiBSZXNldCB0aGUgY29udHJvbGxlciBmb3IgYW55IG5vbi1BTkEgZXJyb3IgYXMgd2UgZG9uJ3Qg
a25vdwo+PiAtCQkgKiB3aGF0IGNhdXNlZCB0aGUgZXJyb3IuCj4+IC0JCSAqLwo+PiAtCQludm1l
X3Jlc2V0X2N0cmwobnMtPmN0cmwpOwo+PiArCQkvKiBEZWxlZ2F0ZSB0byBjb21tb24gZXJyb3Ig
aGFuZGxpbmcgKi8KPj4gIAkJYnJlYWs7Cj4+ICAJfQo+PiAgCj4+IC0Ja2Jsb2NrZF9zY2hlZHVs
ZV93b3JrKCZucy0+aGVhZC0+cmVxdWV1ZV93b3JrKTsKPj4gKwlpZiAoaGFuZGxlZCkKPj4gKwkJ
a2Jsb2NrZF9zY2hlZHVsZV93b3JrKCZucy0+aGVhZC0+cmVxdWV1ZV93b3JrKTsKPj4gKwlyZXR1
cm4gaGFuZGxlZDsKPiAKPiBJIHRoaW5rIHlvdSBjYW4gZGVmZXIgdGhlIGJsa19tcV9lbmRfcmVx
dWVzdCB0byBoZXJlIGFzIHdlbGwuICBUaGVuCj4ganVzdCByZXR1cm4gZmFsc2UgZnJvbSB0aGUg
ZGVmYXVsdCBjYXNlIGFuZCB5b3UgZG9uJ3QgbmVlZCB0aGUgaGFuZGxlZAo+IHZhcmlhYmxlLgo+
IAo+IFNvIGluIHRoZSBlbmQgdGhpcyBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2UgdGhpczoKPiAK
WyAuLiBdCk1heWJlIHdpdGhvdXQgdGhlIGJ0cmZzIGJpdHMgOi0pCgpJJ2xsIGdpdmUgaXQgYSBz
cGluLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICAgICAgICAg
IEtlcm5lbCBTdG9yYWdlIEFyY2hpdGVjdApoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICAg
ICArNDkgOTExIDc0MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgs
IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZyks
IEdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
