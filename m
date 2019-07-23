Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718DC71D37
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9WBOBqLUWG+iHRM1ASJJMzM+01znw+25qQbaC8TNkA=; b=o/p7U++2P0FwcG
	lwfFpeNoCEpYJs8b1bXtmvIuh79+3g6wsX9/IxZZ4dOXOrxVTA3pnEjiRz9n7FUdoxU1pP3eO+7+N
	hff0cbWCRLjr5PK9Wp4mcWAKsfZc47Xs5TbUVWXh2B9W/u4hNe8sQ+xTVe0ferd/oVczwtdov8jHa
	NYAS0NADL7StKRycOqfCEIDZbgmYg4BmDdKKPWaAjlEq8NqcuGUMtX10w5FDzsUD6ipRx9vtNzDqb
	6eBmL6kvyZ6r9f0AG+R0iqaDjLzaYNUXTVobpwQPGJZG7p+LbYBeVzW6tC7iphh0jipCHEx7nZvD/
	AHqyaz+gOuR+xsJVzINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpy7l-0005qk-4e; Tue, 23 Jul 2019 16:58:49 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpy7b-0005q0-EK
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:58:41 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hpy7M-0003T7-TD; Tue, 23 Jul 2019 10:58:26 -0600
To: "Koenig, Christian" <Christian.Koenig@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-15-logang@deltatee.com>
 <d5e20223-04b9-dcb4-7c96-57d84eb010ae@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <a6282247-b7a4-3eb9-4f87-4e73a0047f28@deltatee.com>
Date: Tue, 23 Jul 2019 10:58:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d5e20223-04b9-dcb4-7c96-57d84eb010ae@amd.com>
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
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/14] PCI/P2PDMA: Introduce pci_p2pdma_[un]map_resource()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_095839_843402_24B6499D 
X-CRM114-Status: GOOD (  14.72  )
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

CgpPbiAyMDE5LTA3LTIzIDEwOjI4IGEubS4sIEtvZW5pZywgQ2hyaXN0aWFuIHdyb3RlOgo+IEFt
IDIzLjA3LjE5IHVtIDAxOjA4IHNjaHJpZWIgTG9nYW4gR3VudGhvcnBlOgo+PiBwY2lfcDJwZG1h
X1t1bl1tYXBfcmVzb3VyY2UoKSBjYW4gYmUgdXNlZCB0byBtYXAgYSByZXNvdXJjZSBnaXZlbgo+
PiBpdCdzIHBoeXNpY2FsIGFkZHJlc3MgYW5kIHRoZSBiYWNraW5nIHBjaV9kZXYuIFRoZSBmdW5j
dGlvbnMgd2lsbCBjYWxsCj4+IGRtYV9bdW5dbWFwX3Jlc291cmNlKCkgd2hlbiBhcHByb3ByaWF0
ZS4KPj4KPj4gVGhpcyBpcyBmb3IgZGVtb25zdHJhdGlvbiBwdXJwb3NlcyBvbmx5IGFzIHRoZXJl
IGFyZSBubyB1c2VycyBvZiB0aGlzCj4+IGZ1bmN0aW9uIGF0IHRoaXMgdGltZS4gVGh1cywgdGhp
cyBwYXRjaCBzaG91bGQgbm90IGJlIG1lcmdlZCBhdAo+PiB0aGlzIHRpbWUuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4KPiAKPiBOb3Qg
c3VyZSBpZiBwY2lfcDJwZG1hX3BoeXNfdG9fYnVzIGFjdHVhbGx5IG5lZWRzIHRvIGJlIGV4cG9y
dGVkLiBCdXQgCj4gYXBhcnQgZnJvbSB0aGF0IGxvb2tzIGZpbmUgdG8gbWUuCgpZZXMsIG9vcHMs
IGl0IGNlcnRhaW5seSBzaG91bGRuJ3QgYmUgZXhwb3J0ZWQgaWYgaXQncyBzdGF0aWMuIEknbGwg
Zml4IHRoYXQuCgo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gCj4gQ2hyaXN0aWFuLgo+IAo+PiAtLS0KPj4gICBkcml2ZXJzL3BjaS9w
MnBkbWEuYyB8IDg1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDg1IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGNpL3AycGRtYS5jIGIvZHJpdmVycy9wY2kvcDJwZG1hLmMKPj4gaW5kZXggYmFm
NDc2MDM5Mzk2Li4yMGM4MzRjZmQyZDMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL3AycGRt
YS5jCj4+ICsrKyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jCj4+IEBAIC04NzQsNiArODc0LDkxIEBA
IHZvaWQgcGNpX3AycGRtYV91bm1hcF9zZ19hdHRycyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBzY2F0dGVybGlzdCAqc2csCj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1CT0xfR1BMKHBjaV9wMnBk
bWFfdW5tYXBfc2dfYXR0cnMpOwo+PiAgIAo+PiArc3RhdGljIHBjaV9idXNfYWRkcl90IHBjaV9w
MnBkbWFfcGh5c190b19idXMoc3RydWN0IHBjaV9kZXYgKmRldiwKPj4gKwkJcGh5c19hZGRyX3Qg
c3RhcnQsIHNpemVfdCBzaXplKQo+PiArewo+PiArCXN0cnVjdCBwY2lfaG9zdF9icmlkZ2UgKmJy
aWRnZSA9IHBjaV9maW5kX2hvc3RfYnJpZGdlKGRldi0+YnVzKTsKPj4gKwlwaHlzX2FkZHJfdCBl
bmQgPSBzdGFydCArIHNpemU7Cj4+ICsJc3RydWN0IHJlc291cmNlX2VudHJ5ICp3aW5kb3c7Cj4+
ICsKPj4gKwlyZXNvdXJjZV9saXN0X2Zvcl9lYWNoX2VudHJ5KHdpbmRvdywgJmJyaWRnZS0+d2lu
ZG93cykgewo+PiArCQlpZiAod2luZG93LT5yZXMtPnN0YXJ0IDw9IHN0YXJ0ICYmIHdpbmRvdy0+
cmVzLT5lbmQgPj0gZW5kKQo+PiArCQkJcmV0dXJuIHN0YXJ0IC0gd2luZG93LT5vZmZzZXQ7Cj4+
ICsJfQo+PiArCj4+ICsJcmV0dXJuIERNQV9NQVBQSU5HX0VSUk9SOwo+PiArfQo+PiArRVhQT1JU
X1NZTUJPTF9HUEwocGNpX3AycGRtYV9waHlzX3RvX2J1cyk7Cj4+ICsKPj4gKy8qKgo+PiArICog
cGNpX3AycGRtYV9tYXBfcmVzb3VyY2UgLSBtYXAgYSBQQ0kgcGVlci10by1wZWVyIHBoeXNpY2Fs
IGFkZHJlc3MgZm9yIERNQQo+PiArICogQHByb3ZpZGVyOiBwY2kgZGV2aWNlIHRoYXQgcHJvdmlk
ZXMgdGhlIG1lbW9yeSBiYWNrZWQgYnkgcGh5c19hZGRyCj4+ICsgKiBAZG1hX2RldjogZGV2aWNl
IGRvaW5nIHRoZSBETUEgcmVxdWVzdAo+PiArICogQHBoeXNfYWRkcjogcGh5c2ljYWwgYWRkcmVz
cyBvZiB0aGUgbWVtb3J5IHRvIG1hcAo+PiArICogQHNpemU6IHNpemUgb2YgdGhlIG1lbW9yeSB0
byBtYXAKPj4gKyAqIEBkaXI6IERNQSBkaXJlY3Rpb24KPj4gKyAqIEBhdHRyczogZG1hIGF0dHJp
YnV0ZXMgcGFzc2VkIHRvIGRtYV9tYXBfcmVzb3VyY2UoKSAoaWYgY2FsbGVkKQo+PiArICoKPj4g
KyAqIE1hcHMgYSBCQVIgcGh5c2ljYWwgYWRkcmVzcyBmb3IgcHJvZ3JhbW1pbmcgYSBETUEgZW5n
aW5lLgo+PiArICoKPj4gKyAqIFJldHVybnMgdGhlIGRtYV9hZGRyX3QgdG8gbWFwIG9yIERNQV9N
QVBQSU5HX0VSUk9SIG9uIGZhaWx1cmUKPj4gKyAqLwo+PiArZG1hX2FkZHJfdCBwY2lfcDJwZG1h
X21hcF9yZXNvdXJjZShzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsCj4+ICsJCXN0cnVjdCBkZXZp
Y2UgKmRtYV9kZXYsIHBoeXNfYWRkcl90IHBoeXNfYWRkciwgc2l6ZV90IHNpemUsCj4+ICsJCWVu
dW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyBhdHRycykKPj4gK3sKPj4g
KwlzdHJ1Y3QgcGNpX2RldiAqY2xpZW50Owo+PiArCWludCBkaXN0Owo+PiArCj4+ICsJY2xpZW50
ID0gZmluZF9wYXJlbnRfcGNpX2RldihkbWFfZGV2KTsKPj4gKwlpZiAoIWNsaWVudCkKPj4gKwkJ
cmV0dXJuIERNQV9NQVBQSU5HX0VSUk9SOwo+PiArCj4+ICsJZGlzdCA9IHVwc3RyZWFtX2JyaWRn
ZV9kaXN0YW5jZShwcm92aWRlciwgY2xpZW50LCBOVUxMKTsKPj4gKwlpZiAoZGlzdCAmIFAyUERN
QV9OT1RfU1VQUE9SVEVEKQo+PiArCQlyZXR1cm4gRE1BX01BUFBJTkdfRVJST1I7Cj4+ICsKPj4g
KwlpZiAoZGlzdCAmIFAyUERNQV9USFJVX0hPU1RfQlJJREdFKQo+PiArCQlyZXR1cm4gZG1hX21h
cF9yZXNvdXJjZShkbWFfZGV2LCBwaHlzX2FkZHIsIHNpemUsIGRpciwgYXR0cnMpOwo+PiArCWVs
c2UKPj4gKwkJcmV0dXJuIHBjaV9wMnBkbWFfcGh5c190b19idXMocHJvdmlkZXIsIHBoeXNfYWRk
ciwgc2l6ZSk7Cj4+ICt9Cj4+ICtFWFBPUlRfU1lNQk9MX0dQTChwY2lfcDJwZG1hX21hcF9yZXNv
dXJjZSk7Cj4+ICsKPj4gKy8qKgo+PiArICogcGNpX3AycGRtYV91bm1hcF9yZXNvdXJjZSAtIHVu
bWFwIGEgcmVzb3VyY2UgbWFwcGVkIHdpdGgKPj4gKyAqCQlwY2lfcDJwZG1hX21hcF9yZXNvdXJj
ZSgpCj4+ICsgKiBAcHJvdmlkZXI6IHBjaSBkZXZpY2UgdGhhdCBwcm92aWRlcyB0aGUgbWVtb3J5
IGJhY2tlZCBieSBwaHlzX2FkZHIKPj4gKyAqIEBkbWFfZGV2OiBkZXZpY2UgZG9pbmcgdGhlIERN
QSByZXF1ZXN0Cj4+ICsgKiBAYWRkcjogZG1hIGFkZHJlc3MgcmV0dXJuZWQgYnkgcGNpX3AycGRt
YV91bm1hcF9yZXNvdXJjZSgpCj4+ICsgKiBAc2l6ZTogc2l6ZSBvZiB0aGUgbWVtb3J5IHRvIG1h
cAo+PiArICogQGRpcjogRE1BIGRpcmVjdGlvbgo+PiArICogQGF0dHJzOiBkbWEgYXR0cmlidXRl
cyBwYXNzZWQgdG8gZG1hX3VubWFwX3Jlc291cmNlKCkgKGlmIGNhbGxlZCkKPj4gKyAqCj4+ICsg
KiBNYXBzIGEgQkFSIHBoeXNpY2FsIGFkZHJlc3MgZm9yIHByb2dyYW1taW5nIGEgRE1BIGVuZ2lu
ZS4KPj4gKyAqCj4+ICsgKiBSZXR1cm5zIHRoZSBkbWFfYWRkcl90IHRvIG1hcCBvciBETUFfTUFQ
UElOR19FUlJPUiBvbiBmYWlsdXJlCj4+ICsgKi8KPj4gK3ZvaWQgcGNpX3AycGRtYV91bm1hcF9y
ZXNvdXJjZShzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsCj4+ICsJCXN0cnVjdCBkZXZpY2UgKmRt
YV9kZXYsIGRtYV9hZGRyX3QgYWRkciwgc2l6ZV90IHNpemUsCj4+ICsJCWVudW0gZG1hX2RhdGFf
ZGlyZWN0aW9uIGRpciwgdW5zaWduZWQgbG9uZyBhdHRycykKPj4gK3sKPj4gKwlzdHJ1Y3QgcGNp
X2RldiAqY2xpZW50Owo+PiArCWludCBkaXN0Owo+PiArCj4+ICsJY2xpZW50ID0gZmluZF9wYXJl
bnRfcGNpX2RldihkbWFfZGV2KTsKPj4gKwlpZiAoIWNsaWVudCkKPj4gKwkJcmV0dXJuOwo+PiAr
Cj4+ICsJZGlzdCA9IHVwc3RyZWFtX2JyaWRnZV9kaXN0YW5jZShwcm92aWRlciwgY2xpZW50LCBO
VUxMKTsKPj4gKwlpZiAoZGlzdCAmIFAyUERNQV9OT1RfU1VQUE9SVEVEKQo+PiArCQlyZXR1cm47
Cj4+ICsKPj4gKwlpZiAoZGlzdCAmIFAyUERNQV9USFJVX0hPU1RfQlJJREdFKQo+PiArCQlkbWFf
dW5tYXBfcmVzb3VyY2UoZG1hX2RldiwgYWRkciwgc2l6ZSwgZGlyLCBhdHRycyk7Cj4+ICt9Cj4+
ICtFWFBPUlRfU1lNQk9MX0dQTChwY2lfcDJwZG1hX3VubWFwX3Jlc291cmNlKTsKPj4gKwo+PiAg
IC8qKgo+PiAgICAqIHBjaV9wMnBkbWFfZW5hYmxlX3N0b3JlIC0gcGFyc2UgYSBjb25maWdmcy9z
eXNmcyBhdHRyaWJ1dGUgc3RvcmUKPj4gICAgKgkJdG8gZW5hYmxlIHAycGRtYQo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
