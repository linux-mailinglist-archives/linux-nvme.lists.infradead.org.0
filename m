Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501BD71D39
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmTAM6Q3onDuejzZ5fjPJpIiR0mB2IyIPCMT6RBodCk=; b=DJc+GUekFTK9Iz
	OVESeEXNEUHYKKdzVVXKZ9SV5WFxwaDN0yVHGoyTn8vqk/ijBxNdyneNA/NCl6DlocLWcgXwg+JZA
	22aiNklkc3Lue7yg1FWeuUC+qIPHlEpVOSVNJMesHtVY/GD9TeDeSgzdcFXQRxfvgX/4r+DTm9Z5j
	OJCqKcH1E+FVeXuYBOV8nYZsP1R3lMmVpqUfI43UU+bVchGq4Q0+utwYgEFmRNpZi8UhhaHEO3gV7
	G7fsJVrTxkG5DUpH649BUrMXu6da1WqTiW83XJaNfXAm6/jLsI712KDfgCY1n66GRg2hn3nTZNWtW
	ka6jdxJzwluaX3fQkhmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpy81-00061D-Dk; Tue, 23 Jul 2019 16:59:05 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpy7p-00060I-Tw
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:58:55 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hpy7e-0003Tj-UQ; Tue, 23 Jul 2019 10:58:43 -0600
To: "Koenig, Christian" <Christian.Koenig@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
References: <20190722230859.5436-1-logang@deltatee.com>
 <d7c7011e-e9b7-89f8-99ba-b674d45821c6@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <deaa0992-24c8-be93-f623-a5b2b442e4d0@deltatee.com>
Date: Tue, 23 Jul 2019 10:58:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d7c7011e-e9b7-89f8-99ba-b674d45821c6@amd.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 jgg@mellanox.com, hch@lst.de, bhelgaas@google.com, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian.Koenig@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH 00/14] PCI/P2PDMA: Support transactions that hit the host
 bridge
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_095854_296182_30FD84C3 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Eric Pilmore <epilmore@gigaio.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Bates <sbates@raithlin.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA3LTIzIDEwOjMwIGEubS4sIEtvZW5pZywgQ2hyaXN0aWFuIHdyb3RlOgo+IEFt
IDIzLjA3LjE5IHVtIDAxOjA4IHNjaHJpZWIgTG9nYW4gR3VudGhvcnBlOgo+PiBBcyBkaXNjdXNz
ZWQgb24gdGhlIGxpc3QgcHJldmlvdXNseSwgaW4gb3JkZXIgdG8gZnVsbHkgc3VwcG9ydCB0aGUK
Pj4gd2hpdGVsaXN0IENocmlzdGlhbiBhZGRlZCB3aXRoIHRoZSBJT01NVSwgd2UgbXVzdCBlbnN1
cmUgdGhhdCB3ZQo+PiBtYXAgYW55IGJ1ZmZlciBnb2luZyB0aHJvdWdoIHRoZSBJT01NVSB3aXRo
IGFuIGFwcnJvcHJpYXRlIGRtYV9tYXAKPj4gY2FsbC4gVGhpcyBwYXRjaHNldCBhY2NvbXBsaXNo
ZXMgdGhpcyBieSBjbGVhbmluZyB1cCB0aGUgb3V0cHV0IG9mCj4+IHVwc3RyZWFtX2JyaWRnZV9k
aXN0YW5jZSgpIHRvIGJldHRlciBpbmRpY2F0ZSB0aGUgbWFwcGluZyByZXF1aXJlbWVudHMsCj4+
IGNhY2hpbmcgdGhlc2UgcmVxdWlyZW1lbnRzIGluIGFuIHhhcnJheSwgdGhlbiBsb29raW5nIHRo
ZW0gdXAgYXQgbWFwCj4+IHRpbWUgYW5kIGFwcGx5aW5nIHRoZSBhcHByb3ByaWF0ZSBtYXBwaW5n
IG1ldGhvZC4KPj4KPj4gQWZ0ZXIgdGhpcyBwYXRjaHNldCwgaXQncyBwb3NzaWJsZSB0byB1c2Ug
dGhlIE5WTWUtb2YgUDJQIHN1cHBvcnQgdG8KPj4gdHJhbnNmZXIgYmV0d2VlbiBkZXZpY2VzIHdp
dGhvdXQgYSBzd2l0Y2ggb24gdGhlIHdoaXRlbGlzdGVkIHJvb3QKPj4gY29tcGxleGVzLiBBIGNv
dXBsZSBJbnRlbCBkZXZpY2UgSSBoYXZlIHRlc3RlZCB0aGlzIG9uIGhhdmUgYWxzbwo+PiBiZWVu
IGFkZGVkIHRvIHRoZSB3aGl0ZSBsaXN0Lgo+Pgo+PiBNb3N0IG9mIHRoZSBjaGFuZ2VzIGFyZSBj
b250YWluZWQgd2l0aGluIHRoZSBwMnBkbWEuYywgYnV0IHRoZXJlIGFyZQo+PiBhIGZldyBtaW5v
ciB0b3VjaGVzIHRvIG90aGVyIHN1YnN5c3RlbXMsIG1vc3RseSB0byBhZGQgc3VwcG9ydAo+PiB0
byBjYWxsIGFuIHVubWFwIGZ1bmN0aW9uLgo+Pgo+PiBUaGUgZmluYWwgcGF0Y2ggaW4gdGhpcyBz
ZXJpZXMgZGVtb25zdHJhdGVzIGEgcG9zc2libGUKPj4gcGNpX3AycGRtYV9tYXBfcmVzb3VyY2Uo
KSBmdW5jdGlvbiB0aGF0IEkgZXhwZWN0IENocmlzdGlhbiB3aWxsIG5lZWQKPj4gYnV0IGRvZXMg
bm90IGhhdmUgYW55IHVzZXJzIGF0IHRoaXMgdGltZSBzbyBJIGRvbid0IGludGVuZCBmb3IgaXQg
dG8gYmUKPj4gY29uc2lkZXJlZCBmb3IgbWVyZ2luZy4KPj4KPj4gVGhpcyBwYXRjaHNldCBpcyBi
YXNlZCBvbiA1LjMtcmMxIGFuZCBhIGdpdCBicmFuY2ggaXMgYXZhaWxhYmxlIGhlcmU6Cj4+Cj4+
IGh0dHBzOi8vZ2l0aHViLmNvbS9zYmF0ZXMxMzAyNzIvbGludXgtcDJwbWVtLyBwMnBkbWFfcmNf
bWFwX3YxCj4gCj4gSSByZXZpZXdlZCBwYXRjaGVzICMxLSMzIGFuZCAjMTQuCj4gCj4gRmVlbCBm
cmVlIHRvIHN0aWNrIGFuIEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIAo+IDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IHRvIHRoZSByZXN0LCBidXQgSSdtIG5vdCByZWFsbHkgZGVlcCBpbnRv
IHRoZSAKPiBOVk1lIFAyUCBoYW5kbGluZyBoZXJlLgoKVGhhbmtzIQoKTG9nYW4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
