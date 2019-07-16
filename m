Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D676A509
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 11:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kN7yss475Kw3w+tLJ5fSBCANsZSE9P1qIM5knHNXqeg=; b=XKFk63yNTg8AzK
	N74xrhNcH7P+H1vUyZJ5cqbOpMzZOHHCkkFg6JyMpcibi5fcOsVygptgc6jjJ3WQ9pNZMgfxi2veH
	N8LCKbIqYVJhzdPlhLTUX3Zy2CSFvk/zRoy5GA1REEfp1EshFYrO7+vf7BGVuOoHJnvuS/hxOXDlW
	7xx08n53gRxfksv82riJwPOLwoHiZ8XJuS8tCtZ/jSbZTv9ZDOhbH2Il5TG4Mo5E7MP5fwxdn3C3Z
	eXNBDOY3JFoQfmBIA0QJkB+268JzcKw9xZY07eVi+4pLaYXcbxXfz+DffmRpVpyqD+CuU2x7ytc24
	/p4nBhVFOcenIzEKO0dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJst-0003FV-35; Tue, 16 Jul 2019 09:36:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJsj-0003F3-7Z
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 09:36:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 49AE768B05; Tue, 16 Jul 2019 11:36:17 +0200 (CEST)
Date: Tue, 16 Jul 2019 11:36:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <tom.leiming@gmail.com>
Subject: Re: nvme-5.3 ssd performance regression
Message-ID: <20190716093617.GB32562@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_023621_423240_D297B819 
X-CRM114-Status: GOOD (  11.04  )
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
Cc: Jens Axboe <axboe@fb.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDM6MTI6MDZQTSArMDgwMCwgTWluZyBMZWkgd3JvdGU6
Cj4gSXQgc2hvdWxkIGJlIGNhdXNlZCBieSB0aGUgZm9sbG93aW5nIGNvbW1pdCwgYW5kIHRoYXQg
cGF0Y2ggdXNlcwo+IHNpbmdsZSBtYXBwaW5nIHNpemUgdG8gbGltaXQgbWF4IGh3IHNlY3RvcnMs
IGFuZCBsb29rcyB0aGF0IHdheQo+IGlzIHdyb25nLiBGb3IgZXhhbXBsZSwgb24gcWVtdSwgbWF4
X2h3X3NlY3RvcnMgaXMgZGVjcmVhc2VkIHRvCj4gNTEyLiBZb3UgY2FuIHRyeSB0byByZXZlcnQg
dGhlIHBhdGNoIGFuZCBzZWUgaWYgaXQgbWFrZXMgYSBkaWZmZXJlbmNlLgo+IAo+IEkgZmVlbCB3
ZSBtaWdodCBuZWVkIHRoZSBtYXggc2VnbWVudCBzaXplIGxpbWl0IHRvby4KCk5vLCB3aXRoIHN3
aW90bGIgaXQgcmVhbGx5IGlzIHRoZSB3aG9sZSByZXF1ZXN0IHNpemUgdGhhdCDRlnMgbGltaXRl
ZApieSB0aGUgc3dpb3RsYiBidWZmZXIgc2l6ZS4gIFNpbWlsYXIgZm9yIHBvdGVudGlhbCBpb21t
dXMgd2hlcmUKYWdhaW4gaXQgaXMgdGhlIHdob2xlIHRoaW5nLgoKQnV0IGxvb2tpbmcgYXQgdGhl
IGltcGxlbWVudGF0aW9uIG9mIGRtYV9kaXJlY3RfbWF4X21hcHBpbmdfc2l6ZSBJCnRoaW5rIHdl
IG5lZWQgdG8gcmVsYXggaXQgLSBpdCBjdXJyZW50bHkgbGltaXRzIHRoZSBzaXplIGFzIHNvb24K
YXMgc3dpb3RsYiBpcyBlbmFibGVkLCBhbmQgbm90IGp1c3QgaWYgd2UgbmVlZCBpdCBmb3IgYSBn
aXZlbiBkZXZpY2UuCgpXZSBoYXZlIHNvbWUgb3BlbiBjb2RlZCB2ZXJzaW9ucyBvZiB0aG9zZSBj
aGVja3MgZWxzZXdoZXJlLCBsZXQgbWUKY29vayB1cCBhIHNlcmllcyB0byBzb3J0IHRoYXQgbWVz
cyBvdXQuCgpCZW4sIGluIHRoZW4gbWVhbnRpbWUgY2FuIHlvdSB0cnkgYSByZXZlcnQgb2YgdGhl
IGNvbW1pdCBNaW5nIGlkZW50aWZpZWQ/ClRoYXQgaXMgb2J2aW91c2x5IG5vdCB0aGUgcHJvcGVy
IGZpeCwgYnV0IGl0IHdvdWxkIGhlbHAgdmFsaWRhdGluZyB0aGUKaHlwb3RoZXNpcy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
