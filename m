Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94178507D
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 18:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJEBSN1U02kquIb7OamrMBpgeeuUjQ5K2dbiAgxCcls=; b=fKhK7v5N63oSiX
	rXo3POPqwpHWe7l0zc6h8S8kHMzeaiiSu/Y0exazE/qnRkKzIF8LPedlmhVXg7EnJC46SEsw7HM5h
	IyuRbgn7PulxEL9r9/CNiqDoRBe/r2fvggQAAz5MQlFgaJh4tSfJjp10JeLDIY7Z/6qE8ekNzNzaN
	Y4Wkcj/88JX2+bGe6aXAsT6U9OxoQz0eX9Q5MtEGOaReCJ9qTEm3g+2lBSP2QdsFsOv1prXkF+w/N
	Ni3QndOi+OrfJKbQLp7KwCFw0oABCnbsuTw9BHdagemYP95qHNd5XmQI7aLkpjjABwe5vv6lrDpGP
	HY8jVpu5NVF7rJsxnQzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOMM-00022h-Fq; Wed, 07 Aug 2019 16:00:18 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOKh-0000Ni-H7
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 15:58:37 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hvOKK-0002XL-O8; Wed, 07 Aug 2019 09:58:13 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-4-logang@deltatee.com> <20190807055455.GA6627@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <4b0c012a-c3a1-a1c0-b098-8b350963aed1@deltatee.com>
Date: Wed, 7 Aug 2019 09:58:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807055455.GA6627@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 jgg@mellanox.com, Christian.Koenig@amd.com, bhelgaas@google.com,
 linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 03/14] PCI/P2PDMA: Add constants for not-supported
 result upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085835_934703_3FA4D5EF 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Eric Pilmore <epilmore@gigaio.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Bates <sbates@raithlin.com>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA4LTA2IDExOjU0IHAubS4sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9u
IFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDEwOjM1OjM0QU0gLTA2MDAsIExvZ2FuIEd1bnRob3JwZSB3
cm90ZToKPj4gQWRkIGNvbnN0YW50IGZsYWdzIHRvIGluZGljYXRlIHR3byBkZXZpY2VzIGFyZSBu
b3Qgc3VwcG9ydGVkIG9yIHdoZXRoZXIKPj4gdGhlIGRhdGEgcGF0aCBnb2VzIHRocm91Z2ggdGhl
IGhvc3QgYnJpZGdlIGluc3RlYWQgb2YgdXNpbmcgdGhlIG5lZ2F0aXZlCj4+IHZhbHVlcyAtMSBh
bmQgLTIuCj4+Cj4+IFRoaXMgaGVscHMgYW5ub3RhdGUgdGhlIGNvZGUgYmV0dGVyLCBidXQgdGhl
IG1haW4gcmVhc29uIGlzIHNvIHdlCj4+IGNhbiB1c2UgdGhlIGluZm9ybWF0aW9uIHRvIHN0b3Jl
IHRoZSByZXF1aXJlZCBtYXBwaW5nIG1ldGhvZCBpbiBhbgo+PiB4YXJyYXkuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4KPj4gUmV2aWV3
ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiAKPiBJ
cyB0aGVyZSByZWFsbHkgbm8gd2F5IHRvIGtlZXAgdGhlIGRpc3RhbmNlIHNlcGFyYXRlIGZyb20g
dGhlIHR5cGUgb2YKPiB0aGUgY29ubmVjdGlvbiBhcyBJIHJlcXVlc3RlZD8gIEkgdGhpbmsgdGhh
dCB3b3VsZCBhdm9pZCBhIGxvdCBvZgo+IGNvbmZ1c2lvbiBkb3duIHRoZSByb2FkLgoKV2VsbCBJ
IHNlcGFyYXRlZCBpdCBpbiB0aGUgeGFycmF5IGFuZCB0aGUgaW50ZXJmYWNlLiBJdCBvbmx5IHN0
b3JlcyB0aGUKdHlwZSBvZiBtYXBwaW5nLCBub3QgdGhlIGRpc3RhbmNlIGFuZCB1c2VzIHBjaV9w
MnBkbWFfbWFwX3R5cGUoKSB0bwpyZXRyaWV2ZSBpdC4KCldlIG9ubHkgY2FsY3VsYXRlIGl0IGF0
IHRoZSBzYW1lIHRpbWUgYXMgd2UgY2FsY3VsYXRlIHRoZSBkaXN0YW5jZS4gVGhpcwppcyBuZWNl
c3NhcnkgYmVjYXVzZSwgdG8gY2FsY3VsYXRlIHRoZSB0eXBlLCB3ZSBoYXZlIHRvIHdhbGsgdGhl
IHRyZWUKYW5kIGNoZWNrIHRoZSBBQ1MgYml0cy4gSWYgd2Ugc2VwYXJhdGVkIGl0LCB3ZSdkIGhh
dmUgdG8gd2FsayB0aGUgdHJlZQp0d2ljZSBpbiBhIHZlcnkgc2ltaWxhciB3YXkganVzdCB0byBk
ZXRlcm1pbmUgYm90aCB0aGUgZGlzdGFuY2UgYW5kIHRoZQptYXBwaW5nIHR5cGUuCgpJJ2xsIGFw
cGx5IHlvdXIgb3RoZXIgZmVlZGJhY2sgdG8gYSB2MyBuZXh0IHdlZWsuCgpMb2dhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
