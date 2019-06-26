Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B5C562D5
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 08:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOYyXLiT7OTPrhQedzdGgqDIl0ZuYzUwr6cdivi/jL0=; b=HyaqelviXha4ih
	9glDWPyLHWPQecQUzqDHbBSssfV+awSFHq6blEeSErLzAZzcfH3xI7qF9JmM9+jqjaAJEgvYytusO
	5D0JttE8u25Dp/dKupFk3yOcTXgc9SR6UMMy+ESGOiT+5zK9oMbUynEdqRMhm2GZv3I9Dm41sWnpE
	gykX8Yz1Fu1S5VUVfGO4ALfGMwGjVBig6W0h9gKLucKe6JaRI/09XzP2GYTgWwi1aMyt9dNy4/JMj
	gimdu76bZgJDk2PClUVHY8OJJ2enlw08KkkR5cTt9Vv+FiLLUBFxC+EdwC5c3cyxwOcPeHbX52j5R
	7nGtf9VSNVxYMf7UDTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1sY-0007bJ-7r; Wed, 26 Jun 2019 06:58:02 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1sG-0007ZV-Tm
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 06:57:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id C9BA468B05; Wed, 26 Jun 2019 08:57:08 +0200 (CEST)
Date: Wed, 26 Jun 2019 08:57:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190626065708.GB24531@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_235745_108163_A2BBC4AF 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDE6NTQ6MjFQTSAtMDYwMCwgTG9nYW4gR3VudGhvcnBl
IHdyb3RlOgo+IFdlbGwgd2hldGhlciBpdCdzIGRtYV9hZGRyX3QsIHBoeXNfYWRkcl90LCBwZm5f
dCB0aGUgcmVzdWx0IGlzbid0IGFsbAo+IHRoYXQgZGlmZmVyZW50LiBZb3Ugc3RpbGwgbmVlZCBy
b3VnaGx5IHRoZSBzYW1lICdpZicgaG9va3MgZm9yIGFueQo+IGJhY2tlZCBtZW1vcnkgdGhhdCBp
c24ndCBpbiB0aGUgbGluZWFyIG1hcHBpbmcgYW5kIHlvdSBjYW4ndCBnZXQgYQo+IGtlcm5lbCBt
YXBwaW5nIGZvciBkaXJlY3RseS4KPiAKPiBJdCB3b3VsZG4ndCBiZSB0b28gaGFyZCB0byBkbyBh
IHNpbWlsYXIgcGF0Y2ggc2V0IHRoYXQgdXNlcyBzb21ldGhpbmcKPiBsaWtlIHBoeXNfYWRkcl90
IGluc3RlYWQgYW5kIGhhdmUgYSByZXF1ZXN0IGFuZCBxdWV1ZSBmbGFnIGZvciBzdXBwb3J0Cj4g
b2Ygbm9uLW1hcHBhYmxlIG1lbW9yeS4gQnV0IHlvdSdsbCBlbmQgdXAgd2l0aCB2ZXJ5IHNpbWls
YXIgJ2lmJyBob29rcwo+IGFuZCB3ZSdkIGhhdmUgdG8gY2xlYW4gdXAgYWxsIGJpby11c2luZyBk
cml2ZXJzIHRoYXQgYWNjZXNzIHRoZSBzdHJ1Y3QKPiBwYWdlcyBkaXJlY3RseS4KCldlJ2xsIG5l
ZWQgdG8gY2xlYW4gdGhhdCBtZXNzIHVwIGFueXdheSwgYW5kIEkndmUgYmVlbiBjaHVnZ2luZwph
bG9uZyBkb2luZyBzb21lIG9mIHRoYXQuICBBIGxvdCBzdGlsbCBhc3N1bWUgbm8gaGlnaG1lbSwg
c28gd2UgbmVlZAp0byBjb252ZXJ0IHRoZW0gb3ZlciB0byBzb21ldGhpbmcgdGhhdCBrbWFwcyBh
bnl3YXkuICBJZiB3ZSBnZXQKdGhlIGFic3RyYWN0aW9uIHJpZ2h0IHRoYXQgd2lsbCBhY3R1YWxs
eSBoZWxwIGNvbnZlcnRpbmcgb3ZlciB0bwphIGJldHRlciByZXByc2VudGF0aW9uLgoKPiBUaG91
Z2gsIHdlJ2QgYWxzbyBzdGlsbCBoYXZlIHRoZSBwcm9ibGVtIG9mIGhvdyB0byByZWNvZ25pemUg
d2hlbiB0aGUKPiBhZGRyZXNzIHBvaW50cyB0byBQMlBETUEgYW5kIG5lZWRzIHRvIGJlIHRyYW5z
bGF0ZWQgdG8gdGhlIGJ1cyBvZmZzZXQuCj4gVGhlIG1hcC1maXJzdCBpbnZlcnNpb24gd2FzIHdo
YXQgaGVscGVkIGhlcmUgYmVjYXVzZSB0aGUgZHJpdmVyCj4gc3VibWl0dGluZyB0aGUgcmVxdWVz
dHMgaGFkIGFsbCB0aGUgaW5mb3JtYXRpb24uIFRob3VnaCBpdCBjb3VsZCBiZQo+IGFub3RoZXIg
cmVxdWVzdCBmbGFnIGFuZCBpbmRpY2F0aW5nIG5vbi1tYXBwYWJsZSBtZW1vcnkgY291bGQgYmUg
YSBmbGFnCj4gZ3JvdXAgbGlrZSBSRVFfTk9NRVJHRV9GTEFHUyAtLSBSRVFfTk9NQVBfRkxBR1Mu
CgpUaGUgYXNzdW1lcyB0aGUgcmVxdWVzdCBhbGwgaGFzIHRoZSBzYW1lIG1lbW9yeSwgd2hpY2gg
aXMgYSBzaW1wbGlmaW5nCmFzc3VwdGlvbi4gIE15IGlkZWEgd2FzIHRoYXQgaWYgaGFkIG91ciBu
ZXcgYmlvX3ZlYyBsaWtlIHRoaXM6CgpzdHJ1Y3QgYmlvX3ZlYyB7CglwaHlzX2FkZHJfdAkJcGFk
ZHI7IC8vIDY0LWJpdCBvbiA2NC1iaXQgc3lzdGVtcwoJdW5zaWduZWQgbG9uZwkJbGVuOwp9OwoK
d2UgaGF2ZSBhIGhvbGUgYmVoaW5kIGxlbiB3aGVyZSB3ZSBjb3VsZCBzdG9yZSBmbGFnLiAgUHJl
ZmVyYWJseQpvcHRpb25hbGx5IGJhc2VkIG9uIGEgUDJQIG9yIG90aGVyIG1hZ2ljIG1lbW9yeSB0
eXBlcyBjb25maWcKb3B0aW9uIHNvIHRoYXQgMzItYml0IHN5c3RlbXMgd2l0aCAzMi1iaXQgcGh5
c19hZGRyX3QgYWN0dWFsbHkKYmVuZWZpdCBmcm9tIHRoZSBzbWFsbGVyIGFuZCBiZXR0ZXIgcGFj
a2luZyBzdHJ1Y3R1cmUuCgo+IElmIHlvdSB0aGluayBhbnkgb2YgdGhlIGFib3ZlIGlkZWFzIHNv
dW5kIHdvcmthYmxlIEknZCBiZSBoYXBweSB0byB0cnkKPiB0byBjb2RlIHVwIGFub3RoZXIgcHJv
dG90eXBlLgoK0IZ0IHNvdW5kcyB3b3JrYWJsZS4gIFRvIHNvbWUgb2YgdGhlIGZpcnN0IHN0ZXBz
IGFyZSBjbGVhbnVwcyBpbmRlcGVuZGVudApvZiBob3cgdGhlIGJpb192ZWMgaXMgZXZlbnR1YWxs
eSBnb2luZyB0byBsb29rIGxpa2UuICBUaGF0IGlzIG1ha2luZwp0aGUgRE1BLUFQSSBpbnRlcm5h
bHMgd29yayBvbiB0aGUgcGh5c19hZGRyX3QsIHdoaWNoIGFsc28gdW5pZmllcyB0aGUKbWFwX3Jl
c291cmNlIGltcGxlbWVudGF0aW9uIHdpdGggbWFwX3BhZ2UuICBJIHBsYW4gdG8gZG8gdGhhdCBy
ZWxhdGl2ZWx5CnNvb24uICBUaGUgbmV4dCBpcyBzb3J0aW5nIG91dCBhY2Nlc3MgdG8gYmlvcyBk
YXRhIGJ5IHZpcnR1YWwgYWRkcmVzcy4KQWxsIHRoZXNlIG5lZWQgbmljZSBrbWFwcGluZyBoZWxw
ZXIgdGhhdCBhdm9pZCB0b28gbXVjaCBvcGVuIGNvZGluZy4KSSB3YXMgZ29pbmcgdG8gbG9vayBp
bnRvIHRoYXQgbmV4dCwgbW9zdGx5IHRvIGtpbGwgdGhlIGJsb2NrIGxheWVyCmJvdW5jZSBidWZm
ZXJpbmcgY29kZS4gIFNpbWlsYXIgdGhpbmdzIHdpbGwgYWxzbyBiZSBuZWVkZWQgYXQgdGhlCnNj
YXR0ZXJsaXN0IGxldmVsIEkgdGhpbmsuICBBZnRlciB0aGF0IHdlIG5lZWQgdG8gbW9yZSBhdWRp
dHMgb2YKaG93IGJ2X3BhZ2UgaXMgc3RpbGwgdXNlZC4gIHNvbWV0aGluZyBsaWtlIGEgYnZfcGh5
cygpIGhlbHBlciB0aGF0CmRvZXMgInBhZ2VfdG9fcGh5cyhidi0+YnZfcGFnZSkgKyBidi0+YnZf
b2Zmc2V0IiBtaWdodCBjb21lIGluIGhhbmR5CmZvciBleGFtcGxlLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
