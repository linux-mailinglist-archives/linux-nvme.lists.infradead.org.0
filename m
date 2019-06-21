Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3433B4E17F
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 09:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw5ARjCAvMoSVWGgqtoyS+fZIiBhgYdb4/P2rh6NAto=; b=qcnE7j6CR3IKjI
	JdCtgpATsHdMiblJVNnu8j445WvYP5BaYhbKNKW1m1BMK2P6LRH11ESYuKHSsE2BwVq9Q+DWpsOQT
	InCpAhPoS7N+DfW80abI3uwFNyJQuTaYiA+EWRHbG7H49NSrUyISAtGEzJr3ITnsiXU1xzqSVV7B8
	ybJ4MPf72U8TSClgsaz4pgKhcoMqcCwtwQ76xM61wtLhlzFWZMPPOjXW1lavRNcQvP3q3EQxi9Sup
	xOPUfLEnvy/QEMfZRL4vMzTNwrvDRHJvfhPkeCuKjJL05Zi5jGKOGiWq+3ChN5teEYTkmBCiosZIt
	vMnjvxXAlLM9reI4jTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heESA-0000TW-5F; Fri, 21 Jun 2019 07:59:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heERt-0000TD-20
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 07:59:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2BE8CAEF3;
 Fri, 21 Jun 2019 07:59:03 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Ming Lei <ming.lei@redhat.com>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de> <20190620013650.GB31179@ming.t460p>
 <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
 <20190621065851.GA22145@ming.t460p>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <5ec67ad6-a61a-b28f-9676-864a5f04bbad@suse.de>
Date: Fri, 21 Jun 2019 09:59:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621065851.GA22145@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_005905_395996_B4D36A15 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8yMS8xOSA4OjU4IEFNLCBNaW5nIExlaSB3cm90ZToKPiBPbiBGcmksIEp1biAyMSwgMjAx
OSBhdCAwODoxNDo0NUFNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+IE9uIDYvMjAv
MTkgMzozNiBBTSwgTWluZyBMZWkgd3JvdGU6Cj4+PiBPbiBUdWUsIEp1biAxOCwgMjAxOSBhdCAx
MjoxMDoyNVBNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+Pj4gV2hlbiByZXNldHRp
bmcgdGhlIGNvbnRyb2xsZXIgdGhlcmUgaXMgbm8gcG9pbnQgd2hhdHNvZXZlciB0bwo+Pj4+IGhh
dmUgYSBzY2FuIHJ1biBpbiBwYXJhbGxlbDsgd2UgY2Fubm90IGFjY2VzcyB0aGUgY29udHJvbGxl
ciBhbmQKPj4+Cj4+PiBzY2FuIHdvbid0IGJlIHJ1biBpbiBwYXJhbGxlbCwgYmVjYXVzZSAuc2Nh
bl93b3JrIGlzIGVtYmVkZGVkIGluCj4+PiAnc3RydWN0IG52bWVfY3RybCcgd2hpY2ggaXMgcGVy
LUhCQS4KPj4+Cj4+IFdyb25nLiBXZSBkby4KPj4gTm90IHN1cmUgd2h5IGhhdmluZyBpdCBlbWJl
ZGRlZCBpbiB0aGUgY29udHJvbGxlciBzdHJ1Y3R1cmUgbWlnaHQKPj4gcHJldmVudCB0aGlzIGZy
b20gaGFwcGVuaW5nOyBib3RoIHJlc2V0IGFuZCBzY2FuIGFyZSBlbWJlZGRlZCwgYnV0Cj4+IHJ1
bm5pbmcgb24gZGlmZmVyZW50IHF1ZXVlczoKPiAKPiBJIG1lYW4gdGhlIHNjYW5fd29yayBmdW5j
dGlvbiBpdHNlbGYgaXMgcnVuIGV4Y2x1c2l2ZWx5LCBidXQgeWVzLCBpdCBjYW4gYmUgCj4gcnVu
IHdoZW4gcmVzZXR0aW5nIGlzIGluLXByb2dyZXNzLgo+IAo+Pgo+PiB2b2lkIG52bWVfcXVldWVf
c2NhbihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+PiB7Cj4+IAkvKgo+PiAJICogT25seSBuZXcg
cXVldWUgc2NhbiB3b3JrIHdoZW4gYWRtaW4gYW5kIElPIHF1ZXVlcyBhcmUgYm90aCBhbGl2ZQo+
PiAJICovCj4+IAlpZiAoY3RybC0+c3RhdGUgPT0gTlZNRV9DVFJMX0xJVkUpCj4+IAkJcXVldWVf
d29yayhudm1lX3dxLCAmY3RybC0+c2Nhbl93b3JrKTsKPj4gfQo+PiBFWFBPUlRfU1lNQk9MX0dQ
TChudm1lX3F1ZXVlX3NjYW4pOwo+Pgo+PiBpbnQgbnZtZV9yZXNldF9jdHJsKHN0cnVjdCBudm1l
X2N0cmwgKmN0cmwpCj4+IHsKPj4gCWlmICghbnZtZV9jaGFuZ2VfY3RybF9zdGF0ZShjdHJsLCBO
Vk1FX0NUUkxfUkVTRVRUSU5HKSkKPj4gCQlyZXR1cm4gLUVCVVNZOwo+PiAJaWYgKCFxdWV1ZV93
b3JrKG52bWVfcmVzZXRfd3EsICZjdHJsLT5yZXNldF93b3JrKSkKPj4gCQlyZXR1cm4gLUVCVVNZ
Owo+PiAJcmV0dXJuIDA7Cj4+IH0KPj4gRVhQT1JUX1NZTUJPTF9HUEwobnZtZV9yZXNldF9jdHJs
KTsKPj4KPj4gU28gdGhlcmUncyBub3RoaW5nIHN0b3BwaW5nIHRoZW0gdG8gcnVuIGluIHBhcmFs
bGVsLgo+Pgo+Pj4+IHdlIGNhbm5vdCB0ZWxsIHdoaWNoIGRldmljZXMgYXJlIHByZXNlbnQgYW5k
IHdoaWNoIG5vdC4KPj4+PiBBZGRpdGlvbmFsbHkgd2UnbGwgcnVuIGEgc2NhbiBhZnRlciByZXNl
dCBhbnl3YXkuCj4+Pj4gU28gZmx1c2ggZXhpc3Rpbmcgc2NhbnMgYmVmb3JlIHJlY29ubmVjdGlu
ZywgZW5zdXJpbmcgdG8KPj4+PiBzaG9ydC1jaXJjdWl0IHRoZSBzY2FuIHdvcmtxdWV1ZSBmdW5j
dGlvbiBpZiB0aGUgY29udHJvbGxlciBzdGF0ZQo+Pj4+IGlzbid0IGxpdmUgdG8gYXZvaWQgbG9j
a3Vwcy4KPj4+Cj4+PiBUaGlzIHdheSBtYXkgY2F1c2UgZGVhZC1sb2NrLgo+Pj4KPj4+IDEpIG52
bWVfcmV2YWxpZGF0ZV9kaXNrKCkgbWlnaHQgZnJlZXplIHF1ZXVlIGluIGZsdXNoIGNvbnRleHQs
IGhvd2V2ZXIKPj4+IGFueSBpbi1mbGlnaHQgcmVxdWVzdHMgd29uJ3QgYmUgY29tcGxldGVkIHVu
dGlsIHJlc2V0IGlzIGRvbmUsIHNvCj4+PiBkZWFkbG9jayBtYXkgYmUgY2F1c2VkIGJ5IGZsdXNo
aW5nIHNjYW5zIGluIHJlc2V0IGNvbnRleHQuCj4+Pgo+PiBXaGljaCBpcyB3aHkgSSdtIGNoZWNr
aW5nIHRoZSBjb250cm9sbGVyIHN0YXRlOyBJJ3ZlIG9ic2VydmVkIHRoZQo+PiBkZWFkbG9jayBw
bGVudHkgb2YgdGltZXMgYmVmb3JlIGludHJvZHVjaW5nIHRoZSBjb250cm9sbGVyIHN0YXRlIGNo
ZWNrLgo+IAo+IFlvdXIgY2hlY2sgY2FuJ3QgaGVscCB3cnQuIHRoZSBkZWFkbG9jaywgZm9yIGV4
YW1wbGU6Cj4gCj4gMSkgaW4gc2NhbiB3b3JrIGNvbnRleHQ6Cj4gCj4gLSBibGtfbXFfZnJlZXpl
X3F1ZXVlKCkgaXMgYmVpbmcgc3RhcnRlZCBhZnRlciBwYXNzaW5nIHRoZSBjb250cm9sbGVyCj4g
ICBzdGF0ZSBjaGVjawo+IAo+IDIpIHRpbWVvdXQgJiByZXNldCBpcyB0cmlnZ2VyZWQgaW4gYW5v
dGhlciBjb250ZXh0IGF0IHRoZSBleGFjdCBzYW1lIHRpbWU6Cj4gCj4gLSBhbGwgaW4tZmxpZ2h0
IElPcyB3b24ndCBiZSBmcmVlZCB1bnRpbCBkaXNhYmxlIGNvbnRyb2xsZXIgJiByZXNldCBpcyBk
b25lLgo+IAo+IC0gbm93IGZsdXNoX3dvcmsoKSBpbiByZXNldCBjb250ZXh0IGNhbid0IG1vdmUg
b24sIGJlY2F1c2UKPiAgIGJsa19tcV9mcmVlemVfcXVldWUoKSBpbiBzY2FuIGNvbnRleHQgY2Fu
J3QgbWFrZSBwcm9ncmVzcy4KPiAKVGhlcmUgbWlnaHQgYmUgYSBkaWZmZXJlbmNlIGJldHdlZW4g
UkRNQSBhbmQgRkMgaW1wbGVtZW50YXRpb25zOyBmb3IgRkMKd2UgdGVybWluYXRlIGFsbCBvdXRz
dGFuZGluZyBJL09zIGZyb20gdGhlIEhXIHNpZGUsIHNvIGVhY2ggSS9PIHdpbGwgYmUKcmV0dXJu
ZWQgd2l0aCBhbiBhYm9ydGVkIHN0YXR1cy4KV2hpY2ggZm9yIGFsbCB0ZXN0cyBJIChhbmQgTmV0
QXBwIDotKSBkaWQgd2FzIGVub3VnaCB0byBnZXQKJ2Jsa19tcV9mcmVlemVfcXVldWUoKScgdW5z
dHVjayBhbmQgdGhlIGZsdXNoX3dvcmsgdG8gY29tcGxldGUuCldlIF9kaWRfIG9ic2VydmVkLCBo
b3dldmVyLCB0aGF0IHRoZSBzdGF0ZSBjaGVja3MgYXJlIGFic29sdXRlbHkKY3JpdGljYWwgdG8g
dGhpcywgb3RoZXJ3aXNlIHdlIGluZGVlZCBlbmRlZCB1cCB3aXRoIGEgc3R1Y2sgZmx1c2hfd29y
aygpLgoKPj4KPj4+IDIpIHN5bmMgSU8gbWF5IGJlIGludm9sdmVkIGluIHJldmFsaWRhdGVfZGlz
aygpIHdoaWNoIGlzIGNhbGxlZCBpbgo+Pj4gc2NhbiBjb250ZXh0LCBzbyBkZWFkbG9jayBpcyBj
YXVzZWQgZm9yIHNhbWUgcmVhc29uIHdpdGggMSkuCj4+Pgo+PiBJL08gZHVyaW5nIHJldmFsaWRh
dGVfZGlzaygpIGlzIHByb3RlY3RlZCBieSB0aGUgc3RhdGUgY2hlY2ssIHRvbywgc28gd2UKPj4g
d29uJ3QgYmUgaXNzdWluZyBhbnkgSS9PIGR1cmluZyByZXNldHRpbmcuCj4+Cj4+IFRvIGJlIHBy
ZWNpc2U6IGFueSBJL08gaW4gZmxpZ2h0IHdoZW4gcmVzZXQgaXMgdHJpZ2dlcmVkIHdpbGwgYmUK
Pj4gdGVybWluYXRlZCwgYW5kIGFueSBzdWJzZXF1ZW50IEkvTyBpcyBzaG9ydC1jaXJjdWl0ZWQg
YnkgdGhlIHN0YXRlIGNoZWNrLgo+IAo+IE5vLCBhbnkgSS9PIGluIGZsaWdodCBiZWZvcmUgcmVz
ZXR0aW5nIGlzIGp1c3QgdGVybWluYXRlZCBmcm9tIGhhcmR3YXJlLAo+IGJ1dCBzdGlsbCBpbiBi
bGstbXEgc3cgb3Igc2NoZWR1bGVyIHF1ZXVlLCBzbyBlaXRoZXIgc3luYyBJTyBvciBxdWV1ZQo+
IGZyZWV6aW5nIHdvbid0IG1ha2UgcHJvZ3Jlc3MuCj4gCj4gUGxlYXNlIHNlZSBudm1lX2NvbXBs
ZXRlX3JxKCksIGFsbCB0aGVzZSBJTyB3aWxsIGJlIHJldHJpZWQgdXN1YWxseS4KPiAKRm9yIHRo
ZSBtdWx0aXBhdGggY2FzZSB0aGUgcmVxdWVzdCB3aWxsIGJlIHJlcXVldWVkIHZpYQpibGtfc3Rl
YWxfYmlvcygpLCBhbmQgdGhlIG9yaWdpbmFsIHJlcXVlc3Qgd2lsbCBiZSBjb21wbGV0ZWQuClNv
IHRoZSBxdWV1ZSBpbmRlZWQgYmVjb21lcyBmcmVlLCBhbmQgd2UgY2FuIGNvbnRpbnVlLgoKVGhp
bmdzIF9taWdodF8gYmUgZGlmZmVyZW50IGZvciB0aGUgbm9uLW11bHRpcGF0aCBjYXNlLCB0aG91
Z2g7IEknbGwKaGF2ZSB0byBjaGVjay4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBS
ZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJ
ICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdn
aW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
