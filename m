Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582A55896A
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 20:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rm0nJ9movxwoGsMND3au0DWKBmglaXuVcQfJ7fLSchI=; b=dCRqIJNlaUZdHF
	YO5dfAOlYMOEYdRDOdmPOmhdHUd04C8rUsmRsMHacxOUZuhmHtNJY5vEfeL9cbsQFUEZyNhyKFQsx
	JfpDU+Un6UwXJns2GLB+jlr6aBRidXTLonHVbsvz0NqTB0kxVGORxGQ48HHTyD+Zl0lr+CJZEkOFQ
	hpiu36Kq6UotBHuzUIMvzZcSX12obqM1/6dsmKZuk5dua/iKRBTp05FjmxtJT+CvtJYli+2tFIUQI
	mO/u6CYoHqyGsxfFmCXQmpxyJhlZiMUKVOsP1J/L4YOjtwv+KCTVwJ66iQfY7Yy9v1fZRu9MYBz4v
	WU/3JAQoA1rCtmM5L9aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYhd-0006Sw-TD; Thu, 27 Jun 2019 18:00:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYhT-0006SK-QF
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 18:00:49 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hgYhL-00046B-JH; Thu, 27 Jun 2019 12:00:40 -0600
To: Christoph Hellwig <hch@lst.de>
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
 <20190627170027.GE10652@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e63d0259-e17f-effe-b76d-43dbfda8ae3a@deltatee.com>
Date: Thu, 27 Jun 2019 12:00:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190627170027.GE10652@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_110047_912796_FAA7FA46 
X-CRM114-Status: GOOD (  20.52  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA2LTI3IDExOjAwIGEubS4sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IEl0
IGlzIG5vdC4gIChjKSBpcyBmdW5kYW1lbnRhbGx5IHZlcnkgZGlmZmVyZW50IGFzIGl0IGlzIG5v
dCBhY3R1YWxseQo+IGFuIG9wZXJhdGlvbiB0aGF0IGV2ZXIgZ29lcyBvdXQgdG8gdGhlIHdpcmUg
YXQgYWxsLCBhbmQgd2hpY2ggaXMgd2h5IHRoZQo+IGFjdHVhbCBwaHlzaWNhbCBhZGRyZXNzIG9u
IHRoZSB3aXJlIGRvZXMgbm90IG1hdHRlciBhdCBhbGwuCj4gU29tZSBpbnRlcmZhY2VzIGxpa2Ug
TlZNZSBoYXZlIGRlc2lnbmVkIGl0IGluIGEgd2F5IHRoYXQgaXQgdGhlIGNvbW1hbmRzCj4gdXNl
ZCB0byBkbyB0aGlzIGludGVybmFsIHRyYW5zZmVyIGxvb2sgbGlrZSAoYjIpLCBidXQgdGhhdCBp
cyBqdXN0IHRoZWlyCj4gKElNSE8gdmVyeSBxdWVzdGlvbmFibGUpIGludGVyZmFjZSBkZXNpZ24g
Y2hvaWNlLCB0aGF0IHByb2R1Y2VzIGEgd2hvbGUKPiBjaGFpbiBvZiBwcm9ibGVtcy4KCkZyb20g
dGhlIG1hcHBpbmcgZGV2aWNlJ3MgZHJpdmVyJ3MgcGVyc3BlY3RpdmUgeWVzLCBidXQgZnJvbSB0
aGUKcGVyc3BlY3RpdmUgb2YgYSBzdWJtaXR0aW5nIGRyaXZlciB0aGV5IHdvdWxkIGJlIHRoZSBz
YW1lLgoKPj4+IEkgZ3Vlc3MgaXQgbWlnaHQgbWFrZSBzZW5zZSB0byBqdXN0IGhhdmUgYSBibG9j
ayBsYXllciBmbGFnIHRoYXQgKGIpIG9yCj4+PiAoYykgbWlnaHQgYmUgY29udGFpbmVkIGluIGEg
YmlvLiAgVGhlbiB3ZSBhbHdheXMgbG9vayB1cCB0aGUgZGF0YQo+Pj4gc3RydWN0dXJlLCBidXQg
Y2FuIHN0aWxsIGZhbGwgYmFjayB0byAoYSkgaWYgbm90aGluZyB3YXMgZm91bmQuICBUaGF0Cj4+
PiBldmVuIGFsbG93cyBmcmVlIG1peGluZyBhbmQgbWF0Y2hpbmcgb2YgbWVtb3J5IHR5cGVzLCBh
dCBsZWFzdCBhcyBsb25nCj4+PiBhcyB0aGV5IGFyZSBjb250YWluZWQgdG8gc2VwYXJhdGUgYmlv
X3ZlYyBzZWdtZW50cy4KPj4KPj4gSU1PIHRoZXNlIHRocmVlIGNhc2VzIHNob3VsZCBiZSByZWZs
ZWN0ZWQgaW4gZmxhZ3MgaW4gdGhlIGJpb192ZWMuIFdlJ2QKPj4gcHJvYmFibHkgc3RpbGwgbmVl
ZCBhIHF1ZXVlIGZsYWcgdG8gaW5kaWNhdGUgc3VwcG9ydCBmb3IgbWFwcGluZyB0aGVzZSwKPj4g
YnV0IGEgZmxhZyBvbiB0aGUgYmlvIHRoYXQgaW5kaWNhdGVzIHNwZWNpYWwgY2FzZXMgKm1pZ2h0
KiBleGlzdCBpbiB0aGUKPj4gYmlvX3ZlYyBhbmQgdGhlIGRyaXZlciBoYXMgdG8gZG8gZXh0cmEg
d29yayB0byBzb21laG93IGRpc3Rpbmd1aXNoIHRoZQo+PiB0aHJlZSB0eXBlcyBkb2Vzbid0IHNl
ZW0gdXNlZnVsLiBiaW9fdmVjIGZsYWdzIGFsc28gbWFrZSBpdCBlYXN5IHRvCj4+IHN1cHBvcnQg
bWl4aW5nIHNlZ21lbnRzIGZyb20gZGlmZmVyZW50IG1lbW9yeSB0eXBlcy4KPiAKPiBTbyBJINGW
bml0aWFsbHkgc3VnZ2VzdGVkIHRoZXNlIGZsYWdzLiAgQnV0IHdpdGhvdXQgYSBwZ21hcCB3ZSBh
YnNvbHV0ZWx5Cj4gbmVlZCBhIGxvb2t1cCBvcGVyYXRpb24gdG8gZmluZCB3aGljaCBwaHlzIGFk
ZHJlc3MgcmFuZ2VzIG1hcCB0byB3aGljaAo+IGRldmljZS4gIEFuZCBvbmNlIHdlIGRvIHRoYXQg
dGhlIGRhdGEgc3RydWN0dXJlIHRoZSBvbmx5IHRoaW5nIHdlIG5lZWQKPiBpcyBhIGZsYWcgc2F5
aW5nIHRoYXQgd2UgbmVlZCB0aGF0IGluZm9ybWF0aW9uLCBhbmQgZXZlcnl0aGluZyBlbHNlCj4g
Y2FuIGJlIGluIHRoZSBkYXRhIHN0cnVjdHVyZSByZXR1cm5lZCBmcm9tIHRoYXQgbG9va3VwLgoK
WWVzLCB5b3UgZGlkIHN1Z2dlc3QgdGhlbS4gQnV0IHdoYXQgSSdtIHRyeWluZyB0byBzdWdnZXN0
IGlzIHdlIGRvbid0CipuZWNlc3NhcmlseSogbmVlZCB0aGUgbG9va3VwLiBGb3IgZGVtb25zdHJh
dGlvbiBwdXJwb3NlcyBvbmx5LCBhCnN1Ym1pdHRpbmcgZHJpdmVyIGNvdWxkIHZlcnkgcm91Z2hs
eSBwb3RlbnRpYWxseSBkbzoKCnN0cnVjdCBiaW9fdmVjIHZlYzsKZGlzdCA9IHBjaV9wMnBkbWFf
ZGlzdChwcm92aWRlcl9wZGV2LCBtYXBwaW5nX3BkZXYpOwppZiAoZGlzdCA8IDApIHsKICAgICAv
KiB1c2UgcmVndWxhciBtZW1vcnkgKi8KICAgICB2ZWMuYnZfYWRkciA9IHZpcnRfdG9fcGh5cyhr
bWFsbG9jKC4uLikpOwogICAgIHZlYy5idl9mbGFncyA9IDA7Cn0gZWxzZSBpZiAoZGlzdCAmIFBD
SV9QMlBETUFfVEhSVV9IT1NUX0JSSURHRSkgewogICAgIHZlYy5idl9hZGRyID0gcGNpX3AycG1l
bV9hbGxvY19waHlzKHByb3ZpZGVyX3BkZXYsIC4uLik7CiAgICAgdmVjLmJ2X2ZsYWdzID0gQlZF
Q19NQVBfUkVTT1VSQ0U7Cn0gZWxzZSB7CiAgICAgdmVjLmJ2X2FkZHIgPSBwY2lfcDJwbWVtX2Fs
bG9jX2J1c19hZGRyKHByb3ZpZGVyX3BkZXYsIC4uLik7CiAgICAgdmVjLmJ2X2ZsYWdzID0gQlZF
Q19NQVBfQlVTX0FERFI7Cn0KCi0tIEFuZCBhIG1hcHBpbmcgZHJpdmVyIHdvdWxkIHJvdWdobHkg
anVzdCBkbzoKCmRtYV9hZGRyX3QgZG1hX2FkZHI7CmlmICh2ZWMuYnZfZmxhZ3MgJiBCVkVDX01B
UF9CVVNfQUREUikgewogICAgIGlmIChwY2lfYnVzX2FkZHJfaW5fYmFyKG1hcHBpbmdfcGRldiwg
dmVjLmJ2X2FkZHIsICZiYXIsICZvZmYpKSAgewogICAgICAgICAgLyogY2FzZSAoYykgKi8KICAg
ICAgICAgIC8qIHByb2dyYW0gdGhlIERNQSBlbmdpbmUgd2l0aCBiYXIgYW5kIG9mZiAqLwogICAg
IH0gZWxzZSB7CiAgICAgICAgICAvKiBjYXNlIChiMikgKi8KICAgICAgICAgIGRtYV9hZGRyID0g
dmVjLmJ2X2FkZHI7CiAgICAgfQp9IGVsc2UgaWYgKHZlYy5idl9mbGFncyAmIEJWRUNfTUFQX1JF
U09VUkNFKSB7CiAgICAgLyogY2FzZSAoYjEpICovCiAgICAgZG1hX2FkZHIgPSBkbWFfbWFwX3Jl
c291cmNlKG1hcHBpbmdfZGV2LCB2ZWMuYnZfYWRkciwgLi4uKTsKfSBlbHNlIHsKICAgICAvKiBj
YXNlIChhKSAqLwogICAgIGRtYV9hZGRyID0gZG1hX21hcF9wYWdlKC4uLiwgcGh5c190b19wYWdl
KHZlYy5idl9hZGRyKSwgLi4uKTsKfQoKVGhlIHJlYWwgZGlmZmljdWx0eSBoZXJlIGlzIHRoYXQg
eW91J2QgcmVhbGx5IHdhbnQgYWxsIHRoZSBhYm92ZSBoYW5kbGVkCmJ5IGEgZG1hX21hcF9idmVj
KCkgc28gaXQgY2FuIGNvbWJpbmUgZXZlcnkgdmVjdG9yIGhpdHRpbmcgdGhlIElPTU1VCmludG8g
YSBzaW5nbGUgY29udGludW91cyBJT1ZBIC0tIGJ1dCBpdCdzIGhhcmQgdG8gZml0IGNhc2UgKGMp
IGludG8gdGhhdAplcXVhdGlvbi4gU28gaXQgbWlnaHQgYmUgdGhhdCBhIGRtYV9tYXBfYnZlYygp
IGhhbmRsZXMgY2FzZXMgKGEpLCAoYjEpCmFuZCAoYjIpIGFuZCB0aGUgbWFwcGluZyBkcml2ZXIg
aGFzIHRvIHRoZW4gY2hlY2sgZWFjaCByZXN1bHRpbmcgRE1BCnZlY3RvciBmb3IgcGNpX2J1c19h
ZGRyX2luX2JhcigpIHdoaWxlIGl0IGlzIHByb2dyYW1taW5nIHRoZSBETUEgZW5naW5lCnRvIGRl
YWwgd2l0aCBjYXNlIChjKS4KCkxvZ2FuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
