Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E484557099
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 20:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OOm6ohjvAYZ9AzhgD633GBijh2YRZm6xZ7nWYCT6vM=; b=UTHtuMINx1oD2U
	Ds+b7uvFVU6d3Q3RAtTYsZQTyRkKN0zeiiPpdQE7s4FOjBNePSC2sAw7iclX89HAvVqAlcX0FL9pB
	GvvL+Yw9LQqqXbDJ1jAfc2dQRUmPKYADedtaYCeGLvrE+xSniTlxqo1icklUjfPx0UUE2ZYVUf586
	wjPJR2U43zjtB0cPAjksaIFcEOe6NTFkv6DPT/HmY297awhtKyPZFqvJdv2CzmSRlGIFPX7cV6AVG
	h672h1pIR9FyMlPnu+Bb9Q/L8M1vjyB9xtd1lXcuvG512mXKCCTaCxoeAZ4AvjHhmt8q9AkywMQX4
	OhPZ+TpBQXoNp9fWXWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCho-0002ca-Vf; Wed, 26 Jun 2019 18:31:41 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCha-0002c2-KV
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 18:31:28 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hgChR-0000jK-UL; Wed, 26 Jun 2019 12:31:19 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
Date: Wed, 26 Jun 2019 12:31:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190626065708.GB24531@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, jgg@ziepe.ca, kbusch@kernel.org,
 sagi@grimberg.me, dan.j.williams@intel.com, bhelgaas@google.com,
 axboe@kernel.dk, linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_113126_725797_EED46E79 
X-CRM114-Status: GOOD (  26.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA2LTI2IDEyOjU3IGEubS4sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9u
IFR1ZSwgSnVuIDI1LCAyMDE5IGF0IDAxOjU0OjIxUE0gLTA2MDAsIExvZ2FuIEd1bnRob3JwZSB3
cm90ZToKPj4gV2VsbCB3aGV0aGVyIGl0J3MgZG1hX2FkZHJfdCwgcGh5c19hZGRyX3QsIHBmbl90
IHRoZSByZXN1bHQgaXNuJ3QgYWxsCj4+IHRoYXQgZGlmZmVyZW50LiBZb3Ugc3RpbGwgbmVlZCBy
b3VnaGx5IHRoZSBzYW1lICdpZicgaG9va3MgZm9yIGFueQo+PiBiYWNrZWQgbWVtb3J5IHRoYXQg
aXNuJ3QgaW4gdGhlIGxpbmVhciBtYXBwaW5nIGFuZCB5b3UgY2FuJ3QgZ2V0IGEKPj4ga2VybmVs
IG1hcHBpbmcgZm9yIGRpcmVjdGx5Lgo+Pgo+PiBJdCB3b3VsZG4ndCBiZSB0b28gaGFyZCB0byBk
byBhIHNpbWlsYXIgcGF0Y2ggc2V0IHRoYXQgdXNlcyBzb21ldGhpbmcKPj4gbGlrZSBwaHlzX2Fk
ZHJfdCBpbnN0ZWFkIGFuZCBoYXZlIGEgcmVxdWVzdCBhbmQgcXVldWUgZmxhZyBmb3Igc3VwcG9y
dAo+PiBvZiBub24tbWFwcGFibGUgbWVtb3J5LiBCdXQgeW91J2xsIGVuZCB1cCB3aXRoIHZlcnkg
c2ltaWxhciAnaWYnIGhvb2tzCj4+IGFuZCB3ZSdkIGhhdmUgdG8gY2xlYW4gdXAgYWxsIGJpby11
c2luZyBkcml2ZXJzIHRoYXQgYWNjZXNzIHRoZSBzdHJ1Y3QKPj4gcGFnZXMgZGlyZWN0bHkuCj4g
Cj4gV2UnbGwgbmVlZCB0byBjbGVhbiB0aGF0IG1lc3MgdXAgYW55d2F5LCBhbmQgSSd2ZSBiZWVu
IGNodWdnaW5nCj4gYWxvbmcgZG9pbmcgc29tZSBvZiB0aGF0LiAgQSBsb3Qgc3RpbGwgYXNzdW1l
IG5vIGhpZ2htZW0sIHNvIHdlIG5lZWQKPiB0byBjb252ZXJ0IHRoZW0gb3ZlciB0byBzb21ldGhp
bmcgdGhhdCBrbWFwcyBhbnl3YXkuICBJZiB3ZSBnZXQKPiB0aGUgYWJzdHJhY3Rpb24gcmlnaHQg
dGhhdCB3aWxsIGFjdHVhbGx5IGhlbHAgY29udmVydGluZyBvdmVyIHRvCj4gYSBiZXR0ZXIgcmVw
cnNlbnRhdGlvbi4KPiAKPj4gVGhvdWdoLCB3ZSdkIGFsc28gc3RpbGwgaGF2ZSB0aGUgcHJvYmxl
bSBvZiBob3cgdG8gcmVjb2duaXplIHdoZW4gdGhlCj4+IGFkZHJlc3MgcG9pbnRzIHRvIFAyUERN
QSBhbmQgbmVlZHMgdG8gYmUgdHJhbnNsYXRlZCB0byB0aGUgYnVzIG9mZnNldC4KPj4gVGhlIG1h
cC1maXJzdCBpbnZlcnNpb24gd2FzIHdoYXQgaGVscGVkIGhlcmUgYmVjYXVzZSB0aGUgZHJpdmVy
Cj4+IHN1Ym1pdHRpbmcgdGhlIHJlcXVlc3RzIGhhZCBhbGwgdGhlIGluZm9ybWF0aW9uLiBUaG91
Z2ggaXQgY291bGQgYmUKPj4gYW5vdGhlciByZXF1ZXN0IGZsYWcgYW5kIGluZGljYXRpbmcgbm9u
LW1hcHBhYmxlIG1lbW9yeSBjb3VsZCBiZSBhIGZsYWcKPj4gZ3JvdXAgbGlrZSBSRVFfTk9NRVJH
RV9GTEFHUyAtLSBSRVFfTk9NQVBfRkxBR1MuCj4gCj4gVGhlIGFzc3VtZXMgdGhlIHJlcXVlc3Qg
YWxsIGhhcyB0aGUgc2FtZSBtZW1vcnksIHdoaWNoIGlzIGEgc2ltcGxpZmluZwo+IGFzc3VwdGlv
bi4gIE15IGlkZWEgd2FzIHRoYXQgaWYgaGFkIG91ciBuZXcgYmlvX3ZlYyBsaWtlIHRoaXM6Cj4g
Cj4gc3RydWN0IGJpb192ZWMgewo+IAlwaHlzX2FkZHJfdAkJcGFkZHI7IC8vIDY0LWJpdCBvbiA2
NC1iaXQgc3lzdGVtcwo+IAl1bnNpZ25lZCBsb25nCQlsZW47Cj4gfTsKPiAKPiB3ZSBoYXZlIGEg
aG9sZSBiZWhpbmQgbGVuIHdoZXJlIHdlIGNvdWxkIHN0b3JlIGZsYWcuICBQcmVmZXJhYmx5Cj4g
b3B0aW9uYWxseSBiYXNlZCBvbiBhIFAyUCBvciBvdGhlciBtYWdpYyBtZW1vcnkgdHlwZXMgY29u
ZmlnCj4gb3B0aW9uIHNvIHRoYXQgMzItYml0IHN5c3RlbXMgd2l0aCAzMi1iaXQgcGh5c19hZGRy
X3QgYWN0dWFsbHkKPiBiZW5lZml0IGZyb20gdGhlIHNtYWxsZXIgYW5kIGJldHRlciBwYWNraW5n
IHN0cnVjdHVyZS4KClRoYXQgc2VlbXMgc2Vuc2libGUuIFRoZSBvbmUgdGhpbmcgdGhhdCdzIHVu
Y2xlYXIgdGhvdWdoIGlzIGhvdyB0byBnZXQKdGhlIFBDSSBCdXMgYWRkcmVzcyB3aGVuIGFwcHJv
cHJpYXRlLiBDYW4gd2UgcGFzcyB0aGF0IGluIGluc3RlYWQgb2YgdGhlCnBoeXNfYWRkciB3aXRo
IGFuIGFwcHJvcHJpYXRlIGZsYWc/IE9yIHdpbGwgd2UgbmVlZCB0byBwYXNzIHRoZSBhY3R1YWwK
cGh5c2ljYWwgYWRkcmVzcyBhbmQgdGhlbiwgYXQgdGhlIG1hcCBzdGVwLCB0aGUgZHJpdmVyIGhh
cyB0byBzb21lIGhvdwpsb29rdXAgdGhlIFBDSSBkZXZpY2UgdG8gZmlndXJlIG91dCB0aGUgYnVz
IG9mZnNldD8KCj4+IElmIHlvdSB0aGluayBhbnkgb2YgdGhlIGFib3ZlIGlkZWFzIHNvdW5kIHdv
cmthYmxlIEknZCBiZSBoYXBweSB0byB0cnkKPj4gdG8gY29kZSB1cCBhbm90aGVyIHByb3RvdHlw
ZS4KPiAKPiDQhnQgc291bmRzIHdvcmthYmxlLiAgVG8gc29tZSBvZiB0aGUgZmlyc3Qgc3RlcHMg
YXJlIGNsZWFudXBzIGluZGVwZW5kZW50Cj4gb2YgaG93IHRoZSBiaW9fdmVjIGlzIGV2ZW50dWFs
bHkgZ29pbmcgdG8gbG9vayBsaWtlLiAgVGhhdCBpcyBtYWtpbmcKPiB0aGUgRE1BLUFQSSBpbnRl
cm5hbHMgd29yayBvbiB0aGUgcGh5c19hZGRyX3QsIHdoaWNoIGFsc28gdW5pZmllcyB0aGUKPiBt
YXBfcmVzb3VyY2UgaW1wbGVtZW50YXRpb24gd2l0aCBtYXBfcGFnZS4gIEkgcGxhbiB0byBkbyB0
aGF0IHJlbGF0aXZlbHkKPiBzb29uLiAgVGhlIG5leHQgaXMgc29ydGluZyBvdXQgYWNjZXNzIHRv
IGJpb3MgZGF0YSBieSB2aXJ0dWFsIGFkZHJlc3MuCj4gQWxsIHRoZXNlIG5lZWQgbmljZSBrbWFw
cGluZyBoZWxwZXIgdGhhdCBhdm9pZCB0b28gbXVjaCBvcGVuIGNvZGluZy4KPiBJIHdhcyBnb2lu
ZyB0byBsb29rIGludG8gdGhhdCBuZXh0LCBtb3N0bHkgdG8ga2lsbCB0aGUgYmxvY2sgbGF5ZXIK
PiBib3VuY2UgYnVmZmVyaW5nIGNvZGUuICBTaW1pbGFyIHRoaW5ncyB3aWxsIGFsc28gYmUgbmVl
ZGVkIGF0IHRoZQo+IHNjYXR0ZXJsaXN0IGxldmVsIEkgdGhpbmsuICBBZnRlciB0aGF0IHdlIG5l
ZWQgdG8gbW9yZSBhdWRpdHMgb2YKPiBob3cgYnZfcGFnZSBpcyBzdGlsbCB1c2VkLiAgc29tZXRo
aW5nIGxpa2UgYSBidl9waHlzKCkgaGVscGVyIHRoYXQKPiBkb2VzICJwYWdlX3RvX3BoeXMoYnYt
PmJ2X3BhZ2UpICsgYnYtPmJ2X29mZnNldCIgbWlnaHQgY29tZSBpbiBoYW5keQo+IGZvciBleGFt
cGxlLgoKT2ssIEkgc2hvdWxkIGJlIGFibGUgdG8gaGVscCB3aXRoIHRoYXQuIFdoZW4gSSBoYXZl
IGEgY2hhbmNlIEknbGwgdHJ5IHRvCmxvb2sgYXQgdGhlIGJ2X3BoeXMoKSBoZWxwZXIuCgpMb2dh
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
