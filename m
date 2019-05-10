Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE521997C
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 10:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpIFqvX+J/sP+pzMODKl8EzQlPTuLRJg5ci1vptlWQk=; b=oIx1CCMtcGBWcV
	y9YtwB3lCZvekic9I9UYkP7MDEtuECjJJ7ME7afDF/Bvd4SFQn1hCoRP51Hr1HwXtfKk3dbh10EXz
	rcnkEwqJtIQv7ELHJBJmKxQQ0gSe1RAbV/dF7ClpYEfvEfUmSYCcLzmswghrItmpSiru+KQBoXnRE
	VWCnH3fDiWcbNmytNIPamZ+sXWiCDMuUVzSatctteqk12vC9fKaYQ6JF/Ni8DmbmSImO17EnY/SCW
	meECl2+iGqbuuc+22E1LfKRZdC0tY17r19dU+obm2veuDEaJKlpXjarSIcNkikyygCVUVcY5EM5fG
	psSfqZo/gmXbB16ZWz0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0oU-0002KE-4U; Fri, 10 May 2019 08:23:30 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0oO-0002JQ-7b
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 08:23:25 +0000
Received: by mail-oi1-f195.google.com with SMTP id l203so3955314oia.3
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 01:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eIUgkS+i8V9ActI1SeEXEkTwiVQDtHGpqTfQg2cf+/g=;
 b=Fe/VoCjoVqWXI7enSC7RYR6T1pK6cjBvfd1bo6Cla6jgupF1J+cGTgPF32+CIKWRcz
 AcCkn1Rm9yBKNmDueD/k21dIkPbJQYyN5BGTYL+BiPq9SMTv0H6xrva6NodQphFtJKLK
 FPyPH1CwI4huRPYJnCAcrME7HnIuzyPZT6bYn8P42ihkmgdsnEdkb6yNa68cVsZfyBtD
 WcGQ9vVhmPeWHrBcUq7/Faunj4ps4s29yDoBu6shdWflnn421zV+jcEVyk58fiBk0mUI
 okUqxPaowHd8ww2W0LV5j2RwK067SrPMs1yvCrFpSQzL+uJtJ1QL4aTLz7Rtfl1JpB+B
 DEXQ==
X-Gm-Message-State: APjAAAX7u3J9phWasSVzt6QrfuWzv2E6u9ykOckHHvwkUgRHIHFEntI1
 NqRcnHtqqZM02Ys0q2g5XngaqXHEe32AyrqtNFE=
X-Google-Smtp-Source: APXvYqw4OwqPYcfkamYLebY3WJAizsj0tZym0rvql+8y1B5WyAXw2UsRIh9SpfWm9DS5lDtVu0hOR5Ykw8XKEatVjHo=
X-Received: by 2002:aca:b841:: with SMTP id i62mr4611198oif.103.1557476602612; 
 Fri, 10 May 2019 01:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
In-Reply-To: <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 10 May 2019 10:23:11 +0200
Message-ID: <CAJZ5v0jAcX-Q2twygKoKvmx2H6tneHWimmH+c2GsYitHK5-knw@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_012324_286622_81F10854 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgODowOCBBTSBLYWktSGVuZyBGZW5nCjxrYWkuaGVuZy5m
ZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Cj4gYXQgMDY6MTksIDxNYXJpby5MaW1vbmNpZWxs
b0BkZWxsLmNvbT4gPE1hcmlvLkxpbW9uY2llbGxvQGRlbGwuY29tPiB3cm90ZToKPgo+ID4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPj4gRnJvbTogS2VpdGggQnVzY2ggPGtidXNjaEBr
ZXJuZWwub3JnPgo+ID4+IFNlbnQ6IFRodXJzZGF5LCBNYXkgOSwgMjAxOSA0OjU0IFBNCj4gPj4g
VG86IExpbW9uY2llbGxvLCBNYXJpbwo+ID4+IENjOiBrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5j
b207IGhjaEBsc3QuZGU7IGF4Ym9lQGZiLmNvbTsKPiA+PiBzYWdpQGdyaW1iZXJnLm1lOyByYWZh
ZWxAa2VybmVsLm9yZzsgbGludXgtcG1Admdlci5rZXJuZWwub3JnOwo+ID4+IHJhZmFlbC5qLnd5
c29ja2lAaW50ZWwuY29tOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0KPiA+
PiBudm1lQGxpc3RzLmluZnJhZGVhZC5vcmc7IGtlaXRoLmJ1c2NoQGludGVsLmNvbQo+ID4+IFN1
YmplY3Q6IFJlOiBbUEFUQ0hdIG52bWUtcGNpOiBVc2Ugbm9uLW9wZXJhdGlvbmFsIHBvd2VyIHN0
YXRlIGluc3RlYWQKPiA+PiBvZiBEMyBvbgo+ID4+IFN1c3BlbmQtdG8tSWRsZQo+ID4+Cj4gPj4K
PiA+PiBbRVhURVJOQUwgRU1BSUxdCj4gPj4KPiA+PiBPbiBUaHUsIE1heSAwOSwgMjAxOSBhdCAw
OTozNzo1OFBNICswMDAwLCBNYXJpby5MaW1vbmNpZWxsb0BkZWxsLmNvbQo+ID4+IHdyb3RlOgo+
ID4+Pj4gK2ludCBudm1lX3NldF9wb3dlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25l
ZCBucHNzKQo+ID4+Pj4gK3sKPiA+Pj4+ICsgIGludCByZXQ7Cj4gPj4+PiArCj4gPj4+PiArICBt
dXRleF9sb2NrKCZjdHJsLT5zY2FuX2xvY2spOwo+ID4+Pj4gKyAgbnZtZV9zdGFydF9mcmVlemUo
Y3RybCk7Cj4gPj4+PiArICBudm1lX3dhaXRfZnJlZXplKGN0cmwpOwo+ID4+Pj4gKyAgcmV0ID0g
bnZtZV9zZXRfZmVhdHVyZXMoY3RybCwgTlZNRV9GRUFUX1BPV0VSX01HTVQsIG5wc3MsIE5VTEws
IDAsCj4gPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMKTsKPiA+Pj4+ICsgIG52
bWVfdW5mcmVlemUoY3RybCk7Cj4gPj4+PiArICBtdXRleF91bmxvY2soJmN0cmwtPnNjYW5fbG9j
ayk7Cj4gPj4+PiArCj4gPj4+PiArICByZXR1cm4gcmV0Owo+ID4+Pj4gK30KPiA+Pj4+ICtFWFBP
UlRfU1lNQk9MX0dQTChudm1lX3NldF9wb3dlcik7Cj4gPj4+Cj4gPj4+IEkgYmVsaWV2ZSB3aXRo
b3V0IG1lbW9yeSBiYXJyaWVycyBhdCB0aGUgZW5kIGRpc2tzIHdpdGggSE1CIHRoaXMgd2lsbAo+
ID4+PiBzdGlsbCBrZXJuZWwgcGFuaWMgKFN1Y2ggYXMgVG9zaGliYSBCRzMpLgo+ID4+Cj4gPj4g
V2VsbCwgdGhlIG11dGV4IGhhcyBhbiBpbXBsaWVkIG1lbW9yeSBiYXJyaWVyLCBidXQgeW91ciBI
TUIgZXhwbGFuYXRpb24KPiA+PiBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSB0byBtZSBhbnl3YXku
IFRoZSAibWIoKSIgaW4gdGhpcyB0aHJlYWQncyBvcmlnaW5hbAo+ID4+IHBhdGNoIGlzIGEgQ1BV
IG1lbW9yeSBiYXJyaWVyLCBhbmQgdGhlIENQVSBoYWQgYmV0dGVyIG5vdCBiZSBhY2Nlc3NpbmcK
PiA+PiBITUIgbWVtb3J5LiBJcyB0aGVyZSBzb21ldGhpbmcgZWxzZSBnb2luZyBvbiBoZXJlPwo+
ID4KPiA+IEthaSBIZW5nIHdpbGwgbmVlZCB0byBzcGVhayB1cCBhIGJpdCBpbiBoaXMgdGltZSB6
b25lIGFzIGhlIGhhcyB0aGlzIGRpc2sKPiA+IG9uIGhhbmQsCj4gPiBidXQgd2hhdCBJIHJlY2Fs
bCBmcm9tIG91ciBkaXNjdXNzaW9uIHdhcyB0aGF0IERNQSBvcGVyYXRpb24gTWVtUmQgYWZ0ZXIK
PiA+IHJlc3VtZSB3YXMgdGhlIHNvdXJjZSBvZiB0aGUgaGFuZy4KPgo+IFllcywgdGhhdOKAmSB3
aGF0IEkgd2FzIHRvbGQgYnkgdGhlIE5WTWUgdmVuZG9yLCBzbyBhbGwgSSBrbm93IGlzIHRvIGlt
cG9zZSBhCj4gbWVtb3J5IGJhcnJpZXIuCj4gSWYgbWIoKSBzaG91bGRu4oCZdCBiZSB1c2VkIGhl
cmUsIHdoYXTigJlzIHRoZSBjb3JyZWN0IHZhcmlhbnQgdG8gdXNlIGluIHRoaXMKPiBjb250ZXh0
Pwo+Cj4gPgo+ID4+PiBUaGlzIHN0aWxsIGFsbG93cyBEMyB3aGljaCB3ZSBmb3VuZCBhdCBsZWFz
dCBmYWlsZWQgdG8gZ28gaW50byBkZWVwZXN0Cj4gPj4+IHN0YXRlIGFuZAo+ID4+IGJsb2NrZWQK
PiA+Pj4gcGxhdGZvcm0gczBpeCBmb3IgdGhlIGZvbGxvd2luZyBTU0RzIChtYXliZSBvdGhlcnMp
Ogo+ID4+PiBIeW5peCBQQzYwMQo+ID4+PiBMaXRlT24gQ0wxCj4gPj4KPiA+PiBXZSB1c3VhbGx5
IHdyaXRlIGZlYXR1cmVzIHRvIHNwZWMgZmlyc3QsIHRoZW4gcXVpcmsgbm9uLWNvbXBsaWFudAo+
ID4+IGRldmljZXMgYWZ0ZXIuCj4gPgo+ID4gTlZNRSBzcGVjIGRvZXNuJ3QgdGFsayBhYm91dCBh
IHJlbGF0aW9uc2hpcCBiZXR3ZWVuIFNldEZlYXR1cmVzIHcvCj4gPiBOVk1FX0ZFQVRfUE9XRVJf
TUdNR1QgYW5kIEQzIHN1cHBvcnQsIG5vciBvcmRlciBvZiBldmVudHMuCj4gPgo+ID4gVGhpcyBp
cyB3aHkgd2Ugb3BlbmVkIGEgZGlhbG9nIHdpdGggc3RvcmFnZSB2ZW5kb3JzLCBpbmNsdWRpbmcK
PiA+IGNvbnRyYXN0aW5nIHRoZSBiZWhhdmlvcgo+ID4gb2YgTWljcm9zb2Z0IFdpbmRvd3MgaW5i
b3ggTlZNRSBkcml2ZXIgYW5kIEludGVsJ3MgV2luZG93cyBSU1QgZHJpdmVyLgo+ID4KPiA+IFRo
b3NlIHR3byBJIG1lbnRpb24gdGhhdCBjb21lIHRvIG1pbmQgaW1tZWRpYXRlbHkgYmVjYXVzZSB0
aGV5IHdlcmUgbW9zdAo+ID4gcmVjZW50bHkKPiA+IHRlc3RlZCB0byBmYWlsLiAgT3VyIGRpc2N1
c3Npb24gd2l0aCBzdG9yYWdlIHZlbmRvcnMgb3ZlcndoZWxtaW5nbHkKPiA+IHJlcXVlc3RlZAo+
ID4gdGhhdCB3ZSBkb24ndCB1c2UgRDMgdW5kZXIgUzJJIGJlY2F1c2UgdGhlaXIgY3VycmVudCBm
aXJtd2FyZQo+ID4gYXJjaGl0ZWN0dXJlIHdvbid0Cj4gPiBzdXBwb3J0IGl0Lgo+ID4KPiA+IEZv
ciBleGFtcGxlIG9uZSB2ZW5kb3IgdG9sZCB1cyB3aXRoIGN1cnJlbnQgaW1wbGVtZW50YXRpb24g
dGhhdCByZWNlaXZpbmcKPiA+IEQzaG90Cj4gPiBhZnRlciBOVk1FIHNodXRkb3duIHdpbGwgcHJl
dmVudCBiZWluZyBhYmxlIHRvIGVudGVyIEwxLjIuICBEM2hvdCBlbnRyeQo+ID4gd2FzIHN1cHBv
cnRlZAo+ID4gYnkgYW4gSVJRIGhhbmRsZXIgdGhhdCBpc24ndCBzZXJ2aWNlZCBpbiBOVk1FIHNo
dXRkb3duIHN0YXRlLgo+ID4KPiA+IEFub3RoZXIgdmVuZG9yIHRvbGQgdXMgdGhhdCB3aXRoIGN1
cnJlbnQgaW1wbGVtZW50YXRpb24gaXQncyBpbXBvc3NpYmxlCj4gPiB0byB0cmFuc2l0aW9uCj4g
PiB0byBQUzQgKGF0IGxlYXN0IHZpYSBBUFNUKSB3aGlsZSBMMS4yIEQzaG90IGlzIGFjdGl2ZS4K
Pgo+IEkgdGVzdGVkIHRoZSBwYXRjaCBmcm9tIEtlaXRoIGFuZCBpdCBoYXMgdHdvIGlzc3VlcyBq
dXN0IGFzIHNpbXBseSBza2lwcGluZwo+IG52bWVfZGV2X2Rpc2FibGUoKToKPiAxKSBJdCBjb25z
dW1lcyBtb3JlIHBvd2VyIGluIFMySQo+IDIpIFN5c3RlbSBmcmVlemUgYWZ0ZXIgcmVzdW1lCgpX
ZWxsLCB0aGUgS2VpdGgncyBwYXRjaCBkb2Vzbid0IHByZXZlbnQgcGNpX3BtX3N1c3BlbmRfbm9p
cnEoKSBmcm9tCmFza2luZyBmb3IgRDMgYW5kIGJvdGggb2YgdGhlIHN5bXB0b21zIGFib3ZlIG1h
eSBiZSBjb25zZXF1ZW5jZXMgb2YKdGhhdCBpbiBwcmluY2lwbGUuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
