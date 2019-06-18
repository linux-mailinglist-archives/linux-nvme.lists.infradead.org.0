Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01B14A4FA
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 17:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bu6TNvKLHwaBtvAQmneg2Btxu5df4IHkoKYW3L9ULrg=; b=Vv+a5EqXcLb7CA
	XAWR7B5rp0Dv1FfVYStZMOAwgqeJSugf4oSXz6Pqzf85Dd8NAsB7kXfik7dLxDRzCmWBEro4Q2eu0
	Mh/SNWdwyv3gHewyTd3FdYbwb7WQm8ogu9mQWrpCridRs7u2+tY3IM7uR0Bv+XpfDCzt67Y+xzSJ6
	lWUzuU3UBFfUD4BkizEh/KRi9EcfqeoUJd1G205VT8HKCMCZJkP/bBKfNKIVt3m246W5ZchUsH+aL
	5cJCrB0VBSYzRa6T4QU7qszInIAIKptLlEFoec10EaFiCnBrAee9U4ocw9CTroDZhLOZYjgU4PxnK
	skLHhtJX997LS7LIzIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFq7-0002BM-Cg; Tue, 18 Jun 2019 15:16:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFpz-0002Aa-RZ
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 15:15:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8E7DBAE5A;
 Tue, 18 Jun 2019 15:15:53 +0000 (UTC)
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Daniel Drake <drake@endlessm.com>
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
 <06c38b3e-603b-5bae-4959-9965ab40db62@suse.de>
 <CAD8Lp44rqGh3nmUOFhwq+SSxpJGuWvLFJ8sKtM0q1GeY0j4v9A@mail.gmail.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <1f56c881-9005-f8ad-1557-5efd6e0ef535@suse.de>
Date: Tue, 18 Jun 2019 17:15:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAD8Lp44rqGh3nmUOFhwq+SSxpJGuWvLFJ8sKtM0q1GeY0j4v9A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081556_188858_67B1FAFC 
X-CRM114-Status: GOOD (  30.09  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Bjorn Helgaas <bhelgaas@google.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux PCI <linux-pci@vger.kernel.org>,
 Keith Busch <keith.busch@gmail.com>, linux-ide@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8xOC8xOSAxMDowNiBBTSwgRGFuaWVsIERyYWtlIHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDE4
LCAyMDE5IGF0IDM6NDYgUE0gSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuZGU+IHdyb3RlOgo+
PiBPbiA2LzE0LzE5IDQ6MjYgQU0sIERhbmllbCBEcmFrZSB3cm90ZToKPj4+IE9uIFRodSwgSnVu
IDEzLCAyMDE5IGF0IDQ6NTQgUE0gQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3Rl
Ogo+Pj4+IFNvIHVudGlsIHdlIGdldCB2ZXJ5IGNsZWFyIGFuZCBnb29kIGRvY3VtZW50YXRpb24g
ZnJvbSBJbnRlbCBvbiB0aGF0Cj4+Pj4gSSBkb24ndCB0aGluayBhbnkgZm9ybSBvZiB1cHN0cmVh
bSBzdXBwb3J0IHdpbGwgZmx5LiAgQW5kIGdpdmVuIHRoYXQKPj4+PiBEYW4gd2hvIHN1Ym1pdHRl
ZCB0aGUgb3JpZ2luYWwgcGF0Y2ggY2FuJ3QgZXZlbiB0YWxrIGFib3V0IHRoaXMgdGhpbmcKPj4+
PiBhbnkgbW9yZSBhbmQgYXBwYXJlbnRseSBnb3QgYSBnYWcgb3JkZXIgZG9lc24ndCByZWFsbHkg
Z2l2ZSBtZSBjb25maWRlbmNlCj4+Pj4gYW55IG9mIHRoaXMgd2lsbCBldmVyIHdvcmsuCj4+Pgo+
Pj4gSSByZWFsaXNlIHRoZSBhcmNoaXRlY3R1cmUgaGVyZSBzZWVtcyBiYWRseSB0aG91Z2h0IG91
dCwgYW5kIHRoZSBsYWNrCj4+PiBvZiBhIGRlY2VudCBzcGVjIG1ha2VzIHRoZSBzaXR1YXRpb24g
d29yc2UsIGJ1dCBJJ2QgZW5jb3VyYWdlIHlvdSB0bwo+Pj4gcmVjb25zaWRlciB0aGlzIGZyb20g
dGhlIHBlcnNwZWN0aXZlcyBvZjoKPj4+ICAtIEFyZSB0aGUgcGF0Y2hlcyByZWFsbHkgbW9yZSB1
Z2x5IHRoYW4gdGhlIHVuZGVybHlpbmcgYXJjaGl0ZWN0dXJlPwo+Pj4gIC0gV2Ugc3RyaXZlIHRv
IG1ha2UgTGludXggd29yayB3ZWxsIG9uIGNvbW1vbiBwbGF0Zm9ybXMgYW5kIHNvbWV0aW1lcwo+
Pj4gaGF2ZSB0byBhY2NlcHQgdGhhdCBoYXJkd2FyZSB2ZW5kb3JzIGRvIHF1ZXN0aW9uYWJsZSB0
aGluZ3MgJiBkbyBub3QKPj4+IGZ1bGx5IGNvb3BlcmF0ZQo+Pj4gIC0gSXQgd29ya3Mgb3V0IG9m
IHRoZSBib3ggb24gV2luZG93cwo+Pj4KPj4gQWN0dWFsbHksIHRoZXJlIF9pc18gYSByZWdpc3Rl
ciBkZXNjcmlwdGlvbjoKPj4KPj4gaHR0cHM6Ly93d3cuaW50ZWwuY29tL2NvbnRlbnQvZGFtL3d3
dy9wdWJsaWMvdXMvZW4vZG9jdW1lbnRzL2RhdGFzaGVldHMvMzAwLXNlcmllcy1jaGlwc2V0LXBj
aC1kYXRhc2hlZXQtdm9sLTIucGRmCj4+Cj4+IExvb2sgZm9yIHNlY3Rpb24gMTU6IEludGVsIFJT
VCBmb3IgUENJZSBTdG9yYWdlLgo+Pgo+PiBUaGF0IGdpdmVzIHlvdSBhIHJlYXNvbmFibGUgZGVz
Y3JpcHRpb24gb2YgdGhlIHZhcmlvdXMgcmVnaXN0ZXJzIGV0Yy4KPiAKPiBUaGFua3MgZm9yIHlv
dXIgZW1haWwhIEkgYWxzbyBzcG90dGVkIGl0IGZvciB0aGUgZmlyc3QgdGltZSBlYXJsaWVyIHRv
ZGF5Lgo+IAo+IFNlY3Rpb24gMTUgdGhlcmUgKEQyNDpGMCkgZGVzY3JpYmVzIGEgc3BlY2lhbC9o
aWRkZW4gUENJIGRldmljZSB3aGljaAo+IEkgY2FuJ3QgZmlndXJlIG91dCBob3cgdG8gYWNjZXNz
IGZyb20gTGludXggKEkgYmVsaWV2ZSBpdCB3b3VsZCBiZSBhdAo+IEQxODpGMCBpbiB0aGUgY2Fz
ZXMgd2hlcmUgdGhlIDMwMCBQQ0ggaXMgaW50ZWdyYXRlZCBpbnRvIHRoZSBTb0MsIGFzCj4gaXQg
aXMgb24gdGhlIFdoaXNrZXkgTGFrZSBwbGF0Zm9ybSBJIGhhdmUgaGVyZSkuIFRoYXQncyBwcm9i
YWJseSBub3QKPiBpbXBvcnRhbnQgYmVjYXVzZSBpZiBldmVuIGlmIHdlIGhhZCBhY2Nlc3MgYWxs
IHRoZSB2YWx1ZXMgYXJlIHByb2JhYmx5Cj4gcmVhZC1vbmx5LCBhcyB0aGUgQklPUyB3aWxsIGxv
Y2sgdGhlbSBhbGwgZG93biBkdXJpbmcgZWFybHkgYm9vdCwgYXMKPiBpcyBkb2N1bWVudGVkLiBC
dXQgdGhlIGRvY3MgZ2l2ZSBzb21lIGludGVyZXN0aW5nIGluc2lnaHRzIGludG8gdGhlCj4gZGVz
aWduLgo+IAo+IFNlY3Rpb24gMTUuMiBpcyBwb3RlbnRpYWxseSBtb3JlIHJlbGV2YW50LCBhcyBp
dCBkZXNjcmliZXMgcmVnaXN0ZXJzCj4gd2l0aGluIHRoZSBBSENJIEJBUiBhbmQgd2UgZG8gaGF2
ZSBhY2Nlc3MgdG8gdGhhdC4gU29tZSBvZiB0aGVzZQo+IHJlZ2lzdGVycyBhcmUgYWxyZWFkeSB1
c2VkIGJ5IHRoZSBjdXJyZW50IGNvZGUgdG8gZGV0ZXJtaW5lIHRoZQo+IHByZXNlbmNlIG9mIHJl
bWFwcGVkIGRldmljZXMuIEl0IG1pZ2h0IGJlIG5pY2UgdG8gdXNlIERldmljZSBNZW1vcnkKPiBC
QVIgTGVuZ3RoIChETUJMXzEpIGJ1dCBJIGNhbid0IGZpZ3VyZSBvdXQgd2hhdCBpcyBtZWFudCBi
eSAiQSAxIGluCj4gdGhlIGJpdCBsb2NhdGlvbiBpbmRpY2F0ZXMgdGhlIGNvcnJlc3BvbmRpbmcg
bG93ZXIgbWVtb3J5IEJBUiBiaXQgZm9yCj4gdGhlIFBDSWUgU1NEIGRldmljZSBpcyBhIFJlYWQv
V3JpdGUgKFJXKSBiaXQuIiBUaGUgdmFsdWUgaXMgMHgzZmZmIG9uCj4gdGhlIHBsYXRmb3JtIEkg
aGF2ZSBoZXJlLgo+IAo+IFdlIGNhbiBwcm9iYWJseSBhbHNvIHVzZSB0aGVzZSByZWdpc3RlcnMg
Zm9yIE1TSSBzdXBwb3J0LiBJIHN0YXJ0ZWQgdG8KPiBleHBlcmltZW50LCBkb2Vzbid0IHF1aXRl
IHdvcmsgYnV0IEknbGwga2VlcCBwb2tpbmcuIFRoZSBkb2Mgc3VnZ2VzdHMKPiB0aGVyZSBpcyBh
IHNpbmdsZSBNU0ktWCB2ZWN0b3IgZm9yIHRoZSBBSENJIFNBVEEgZGV2aWNlLCBhbmQgQUhDSQo+
IE1TSS1YIFN0YXJ0aW5nIFZlY3RvciAoQU1YVikgaGFzIHZhbHVlIDB4MTQwIG9uIHRoaXMgcGxh
dGZvcm0uIE5vIGlkZWEKPiBob3cgdG8gaW50ZXJwcmV0IHRoYXQgdmFsdWUuIEZyb20gZXhwZXJp
bWVudGF0aW9uLCB0aGUgQUhDSSBTQVRBIGRpc2sKPiBnZW5lcmF0ZXMgaW50ZXJydXB0cyBvbiB2
ZWN0b3IgMC4KPiAKVGhlIDB4MTQwIGlzIHByb2JhYmx5IHRoZSBvZmZzZXQgaW50byB0aGUgUENJ
IGNvbmZpZyBzcGFjZSB3aGVyZSB0aGUKQUhDSSBNU0ktWCB2ZWN0b3IgdGFibGUgY2FuIGJlIGZv
dW5kIC4uLgoKPiBUaGVuIHRoZXJlIGFyZSBtdWx0aXBsZSB2ZWN0b3JzIGZvciB0aGUgcmVtYXBw
ZWQgTlZNZSBkZXZpY2VzLiBEZXZpY2UKPiBNU0ktWCBDb25maWd1cmF0aW9uIChETVhDX0xfMSkg
aXMgc2V0IHVwIHRvIGFzc2lnbiB2ZWN0b3JzIDEgdG8gMTkgdG8KPiBOVk1lIG9uIHRoaXMgcGxh
dGZvcm0uIEJ1dCBpdCBzYXlzICJUaGlzIGZpZWxkIGlzIG9ubHkgdmFsaWQgd2hlbgo+IERNWEMu
SUQgaW5kaWNhdGVzIGludGVycnVwdCBkZWxpdmVyeSB1c2luZyBNU0ktWCIgYnV0IHdoYXQvd2hl
cmUgaXMKPiBETVhDLklEPyBTbyBmYXIgSSBjYW4gZ2V0IE5WTWUtcmVsYXRlZCBpbnRlcnJ1cHRz
IG9uIHZlY3RvciAxIGJ1dAo+IGFwcGFyZW50bHkgbm90IGVub3VnaCBvZiB0aGVtLCB0aGUgZHJp
dmVyIGhhbmdzIGR1cmluZyBwcm9iZS4KPiAKSSBfdGhpbmtfIHRoZSBwcm9ibGVtIGhlcmUgaXMg
dGhlIGF1dG9tYXRpYyBpbnRlcnJ1cHQgYWZmaW5pdHkgd2UncmUKZG9pbmc7IHdlIHByb2JhYmx5
IGhhdmUgdG8gZXhjbHVkZSB0aGUgQUhDSSB2ZWN0b3Igd2hlbiBzZXR0aW5nIHVwCmludGVycnVw
dCBhZmZpbml0eS4KCj4gSSd2ZSBuZWFybHkgZmluaXNoZWQgcmVmcmVzaGluZyAmIGV4dGVuZGlu
ZyBEYW4gV2lsbGlhbXMnIHBhdGNoZXMgYW5kCj4gd2lsbCBzZW5kIHRoZW0gZm9yIG1vcmUgZGlz
Y3Vzc2lvbiBzb29uLgo+IApUSFguCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVp
bmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAg
ICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0
ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lu
cywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
