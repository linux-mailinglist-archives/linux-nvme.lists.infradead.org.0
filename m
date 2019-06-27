Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929F1587F4
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 19:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ruz8MTu7u+tXK1ArG6TD3G4bs/Wr86Y53KSU56Gu4c=; b=NwVyvr0hShteYj
	iEqK5l2q396daugUiDg8ceKLMS3bGJgIhr3CV40iGYfHv0YO/qaKBOECFtmldF7BTNKBwfM441Idf
	VZdyMY+HUyJbWVDLS4hK8HV0j091cGAORPzNPFp1lhO7ZeKNNoX22svM6Qe2x16VwwALmcJXoHJT9
	ZIp4e7Z4ki5KUcM3Cbjf9HgxzdG3FgpaUhypG6IxuQmCzro5xIul8s8KmRy/koBRzV4Wi3/YLD+S3
	1dfh6dMOqc+ss6n8rOkQG6qePYeMcC5+wtgg22zCLaFepza1pqPsNzit5tGfHx8e+t7xFd9ubRIhY
	tCmAWxG6VS7drUIx15Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXrV-0006cD-Qr; Thu, 27 Jun 2019 17:07:06 +0000
Received: from [213.95.11.210] (helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXrH-0006br-Qm
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 17:06:53 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 991F9227A8B; Thu, 27 Jun 2019 19:00:27 +0200 (CEST)
Date: Thu, 27 Jun 2019 19:00:27 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190627170027.GE10652@lst.de>
References: <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190627090843.GB11548@lst.de>
 <89889319-e778-7772-ab36-dc55b59826be@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89889319-e778-7772-ab36-dc55b59826be@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_100652_173285_FA2E3E63 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMTA6MzA6NDJBTSAtMDYwMCwgTG9nYW4gR3VudGhvcnBl
IHdyb3RlOgo+ID4gIChhKSBhIHJhbmdlIGlzIG5vcm1hbCBSQU0sIERNQSBtYXBwaW5nIHdvcmtz
IGFzIHVzdWFsCj4gPiAgKGIpIGEgcmFuZ2UgaXMgYW5vdGhlciBkZXZpY2VzIEJBUiwgaW4gd2hp
Y2ggY2FzZSB3ZSBuZWVkIHRvIGRvIGEKPiA+ICAgICAgbWFwX3Jlc291cmNlIGVxdWl2YWxlbnQg
KHdoaWNoIHJlYWxseSBqdXN0IG1lYW5zIGRvbid0IGJvdGhlciB3aXRoCj4gPiAgICAgIGNhY2hl
IGZsdXNoIG9uIG5vbi1jb2hlcmVudCBhcmNoaXRlY3R1cmVzKSBhbmQgYXBwbHkgYW55IG5lZWRl
ZAo+ID4gICAgICBvZmZzZXQsIGZpeGVkIG9yIGlvbW11IGJhc2VkCj4gCj4gV2VsbCBJIHdvdWxk
IHNwbGl0IHRoaXMgaW50byB0d28gY2FzZXM6IChiMSkgcmFuZ2VzIGluIGFub3RoZXIgZGV2aWNl
J3MKPiBCQVIgdGhhdCB3aWxsIHBhc3MgdGhyb3VnaCB0aGUgcm9vdCBjb21wbGV4IGFuZCByZXF1
aXJlIGEgbWFwX3Jlc291cmNlCj4gZXF1aXZhbGVudCBhbmQgKGIyKSByYW5nZXMgaW4gYW5vdGhl
ciBkZXZpY2UncyBiYXIgdGhhdCBkb24ndCBwYXNzCj4gdGhyb3VnaCB0aGUgcm9vdCBjb21wbGV4
IGFuZCByZXF1aXJlIGFwcGx5aW5nIGFuIG9mZnNldCB0byB0aGUgYnVzCj4gYWRkcmVzcy4gQm90
aCByZXF1aXJlIHJhdGhlciBkaWZmZXJlbnQgaGFuZGxpbmcgYW5kIHRoZSBzdWJtaXR0aW5nCj4g
ZHJpdmVyIHNob3VsZCBhbHJlYWR5IGtub3cgYWhlYWQgb2YgdGltZSB3aGF0IHR5cGUgd2UgaGF2
ZS4KClRydWUuCgo+IAo+ID4gIChjKSBhIHJhbmdlIHBvaW50cyB0byBhIEJBUiBvbiB0aGUgYWN0
aW5nIGRldmljZS4gSW4gd2hpY2ggY2FzZSB3ZQo+ID4gICAgICBkb24ndCBuZWVkIHRvIERNQSBt
YXAgYXQgYWxsLCBiZWNhdXNlIG5vIGRtYSBpcyBoYXBwZW5pbmcgYnV0IGp1c3QgYW4KPiA+ICAg
ICAgaW50ZXJuYWwgdHJhbnNmZXIuICBBbmQgZGVwZW5kaW5nIG9uIHRoZSBkZXZpY2UgdGhhdCBt
aWdodCBhbHNvIHJlcXVpcmUKPiA+ICAgICAgYSBkaWZmZXJlbnQgYWRkcmVzc2luZyBtb2RlCj4g
Cj4gSSB0aGluayAoYykgaXMgYWN0dWFsbHkganVzdCBhIHNwZWNpYWwgY2FzZSBvZiAoYjIpLiBB
bnkgZGV2aWNlIHRoYXQgaGFzCj4gYSBzcGVjaWFsIHByb3RvY29sIGZvciBhZGRyZXNzaW5nIHRo
ZSBsb2NhbCBCQVIgY2FuIGp1c3QgZG8gYSByYW5nZQo+IGNvbXBhcmUgb24gdGhlIGFkZHJlc3Mg
dG8gZGV0ZXJtaW5lIGlmIGl0J3MgbG9jYWwgb3Igbm90LiBEZXZpY2VzIHRoYXQKPiBkb24ndCBo
YXZlIGEgc3BlY2lhbCBwcm90b2NvbCBmb3IgdGhpcyB3b3VsZCBoYW5kbGUgYm90aCAoYykgYW5k
IChiMikKPiB0aGUgc2FtZS4KCkl0IGlzIG5vdC4gIChjKSBpcyBmdW5kYW1lbnRhbGx5IHZlcnkg
ZGlmZmVyZW50IGFzIGl0IGlzIG5vdCBhY3R1YWxseQphbiBvcGVyYXRpb24gdGhhdCBldmVyIGdv
ZXMgb3V0IHRvIHRoZSB3aXJlIGF0IGFsbCwgYW5kIHdoaWNoIGlzIHdoeSB0aGUKYWN0dWFsIHBo
eXNpY2FsIGFkZHJlc3Mgb24gdGhlIHdpcmUgZG9lcyBub3QgbWF0dGVyIGF0IGFsbC4KU29tZSBp
bnRlcmZhY2VzIGxpa2UgTlZNZSBoYXZlIGRlc2lnbmVkIGl0IGluIGEgd2F5IHRoYXQgaXQgdGhl
IGNvbW1hbmRzCnVzZWQgdG8gZG8gdGhpcyBpbnRlcm5hbCB0cmFuc2ZlciBsb29rIGxpa2UgKGIy
KSwgYnV0IHRoYXQgaXMganVzdCB0aGVpcgooSU1ITyB2ZXJ5IHF1ZXN0aW9uYWJsZSkgaW50ZXJm
YWNlIGRlc2lnbiBjaG9pY2UsIHRoYXQgcHJvZHVjZXMgYSB3aG9sZQpjaGFpbiBvZiBwcm9ibGVt
cy4KCj4gPiBJIGd1ZXNzIGl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8ganVzdCBoYXZlIGEgYmxvY2sg
bGF5ZXIgZmxhZyB0aGF0IChiKSBvcgo+ID4gKGMpIG1pZ2h0IGJlIGNvbnRhaW5lZCBpbiBhIGJp
by4gIFRoZW4gd2UgYWx3YXlzIGxvb2sgdXAgdGhlIGRhdGEKPiA+IHN0cnVjdHVyZSwgYnV0IGNh
biBzdGlsbCBmYWxsIGJhY2sgdG8gKGEpIGlmIG5vdGhpbmcgd2FzIGZvdW5kLiAgVGhhdAo+ID4g
ZXZlbiBhbGxvd3MgZnJlZSBtaXhpbmcgYW5kIG1hdGNoaW5nIG9mIG1lbW9yeSB0eXBlcywgYXQg
bGVhc3QgYXMgbG9uZwo+ID4gYXMgdGhleSBhcmUgY29udGFpbmVkIHRvIHNlcGFyYXRlIGJpb192
ZWMgc2VnbWVudHMuCj4gCj4gSU1PIHRoZXNlIHRocmVlIGNhc2VzIHNob3VsZCBiZSByZWZsZWN0
ZWQgaW4gZmxhZ3MgaW4gdGhlIGJpb192ZWMuIFdlJ2QKPiBwcm9iYWJseSBzdGlsbCBuZWVkIGEg
cXVldWUgZmxhZyB0byBpbmRpY2F0ZSBzdXBwb3J0IGZvciBtYXBwaW5nIHRoZXNlLAo+IGJ1dCBh
IGZsYWcgb24gdGhlIGJpbyB0aGF0IGluZGljYXRlcyBzcGVjaWFsIGNhc2VzICptaWdodCogZXhp
c3QgaW4gdGhlCj4gYmlvX3ZlYyBhbmQgdGhlIGRyaXZlciBoYXMgdG8gZG8gZXh0cmEgd29yayB0
byBzb21laG93IGRpc3Rpbmd1aXNoIHRoZQo+IHRocmVlIHR5cGVzIGRvZXNuJ3Qgc2VlbSB1c2Vm
dWwuIGJpb192ZWMgZmxhZ3MgYWxzbyBtYWtlIGl0IGVhc3kgdG8KPiBzdXBwb3J0IG1peGluZyBz
ZWdtZW50cyBmcm9tIGRpZmZlcmVudCBtZW1vcnkgdHlwZXMuCgpTbyBJINGWbml0aWFsbHkgc3Vn
Z2VzdGVkIHRoZXNlIGZsYWdzLiAgQnV0IHdpdGhvdXQgYSBwZ21hcCB3ZSBhYnNvbHV0ZWx5Cm5l
ZWQgYSBsb29rdXAgb3BlcmF0aW9uIHRvIGZpbmQgd2hpY2ggcGh5cyBhZGRyZXNzIHJhbmdlcyBt
YXAgdG8gd2hpY2gKZGV2aWNlLiAgQW5kIG9uY2Ugd2UgZG8gdGhhdCB0aGUgZGF0YSBzdHJ1Y3R1
cmUgdGhlIG9ubHkgdGhpbmcgd2UgbmVlZAppcyBhIGZsYWcgc2F5aW5nIHRoYXQgd2UgbmVlZCB0
aGF0IGluZm9ybWF0aW9uLCBhbmQgZXZlcnl0aGluZyBlbHNlCmNhbiBiZSBpbiB0aGUgZGF0YSBz
dHJ1Y3R1cmUgcmV0dXJuZWQgZnJvbSB0aGF0IGxvb2t1cC4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
