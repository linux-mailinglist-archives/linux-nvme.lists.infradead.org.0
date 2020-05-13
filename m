Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6687A1D06F7
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 08:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASOKUicHBvnN8x9k3MxxYLQba+HqyLfdvOZZHi6C6X0=; b=uo2g6KIOwWvW33aHPy9bdpCQh
	sXFmmbk9MTNXu6XIQKKj0zsJskavJe4FzZdvAkKMNITQeO1zK9hIYqzYJC/MLzgDH1ejRC0/kiJcT
	dZAY4q0JAn4jBk71b0Rv1JTRAOg54Fosyj+V6Oxq5TsKK5LxRc7PbZd31Fs8GYWaZobEDjXGesYOK
	ufY3nzdFqxw+McV6UMR3gc0JcslQ0PxrhHTEKZ/TH179l35rzUMKzK+Xn5+VFPx8LS7ouED1SNxiC
	2Nivim+kVpi03OIrSCJt/OYXELSAcJf7VtGvl/o9/2RZ5XPCoDUaYKh6Qp5soumguJShiPLcvGABj
	E3jGDbKew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkdY-00035x-19; Wed, 13 May 2020 06:13:00 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkdK-0002y9-6B
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 06:12:47 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3CD743B0FF3190AF07B8;
 Wed, 13 May 2020 14:12:34 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.100) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 13 May 2020 14:12:24 +0800
Subject: Re: [PATCH] nvme/core:disable streams when get stream params failed
To: Christoph Hellwig <hch@lst.de>
References: <1588754221-661597-1-git-send-email-wubo40@huawei.com>
 <20200512160618.GA5403@lst.de>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <cecc6494-efab-ef38-6461-e6d571cb05ee@huawei.com>
Date: Wed, 13 May 2020 14:12:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200512160618.GA5403@lst.de>
Content-Language: en-US
X-Originating-IP: [10.166.215.100]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_231246_414986_4A559DDF 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linfeilong@huawei.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org,
 liuzhiqiang26@huawei.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMjAyMC81LzEzIDA6MDYsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9uIFdlZCwgTWF5
IDA2LCAyMDIwIGF0IDA0OjM3OjAxUE0gKzA4MDAsIFd1IEJvIHdyb3RlOgo+PiBBZnRlciBlbmFi
bGUgbnZtZSBzdHJlYW1zLCB0aGVuIGlmIGdldCBzdHJlYW0gcGFyYW1zIGZhaWxlZCwKPj4gV2Ug
c2hvdWxkIGRpc2FibGUgc3RyZWFtcyBiZWZvcmUgcmV0dXJuIGVycm9yIGluCj4+IG52bWVfY29u
ZmlndXJlX2RpcmVjdGl2ZXMoKSBmdW5jdGlvbi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogV3UgQm8g
PHd1Ym80MEBodWF3ZWkuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMg
fCA0ICsrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMKPj4gaW5kZXggZjJhZGVhOS4uYWZlMWY1YSAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2Nv
cmUuYwo+PiBAQCAtNTUyLDggKzU1MiwxMCBAQCBzdGF0aWMgaW50IG52bWVfY29uZmlndXJlX2Rp
cmVjdGl2ZXMoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPj4gICAJCXJldHVybiByZXQ7Cj4+ICAg
Cj4+ICAgCXJldCA9IG52bWVfZ2V0X3N0cmVhbV9wYXJhbXMoY3RybCwgJnMsIE5WTUVfTlNJRF9B
TEwpOwo+PiAtCWlmIChyZXQpCj4+ICsJaWYgKHJldCkgewo+PiArCQludm1lX2Rpc2FibGVfc3Ry
ZWFtcyhjdHJsKTsKPj4gICAJCXJldHVybiByZXQ7Cj4+ICsJfQo+IAo+IFBsZWFzZSB1c2UgYSBv
dXRfZGlzYWJsZSBnb3RvIGxhYmVsIHRvIG5vdCBkdXBsaWNhdGUgdGhlIGVycm9yCj4gaGFuZGxp
bmcgd2l0aCB0aGUgb3RoZXIgY2FzZSB0aGF0IG5lZWRzIGl0Lgo+IAoKT0vvvIwgSSB3aWxsIG1v
ZGlmeSBpdCBpbiB0aGUgVjIgcGF0Y2guCgpUaGFua3MsCld1IEJvCgo+IC4KPiAKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWls
aW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
