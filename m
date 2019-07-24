Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588F573786
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 21:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFrz3SNCmkHw9T/WibEBequt4gktZssf3pNkhdZTkrk=; b=jmxR2iejxP0pM0
	/fzOG4xl+5ShEPAvE8p4XeVK48F4TaT8vEv5b1rixMb50Rf8GNc0sD5ptHb5lBJDCzH886QPzzoAI
	Ft8lpW4WSvQGkf5JXK/Hhvq1TNr5+LmvEBiDscux/JqdObY6OBmzKsRrn6yma/3CBx5o61FtjRkHO
	qek+5rCXfz0IorlvoIe0xHpuP78fl536nvj1EI5d1LLMN5YReVHt4RndN/peZniEh8uKHfggcTLkr
	aYrC73MSmcAugmEDQI+X5adVkAoyYEiQF43rbgaSjV9gKbWxrN4+V5JYrBQ2EVk1+i5ndrja09NSD
	MA8o+ND1N3Ge4qM5lngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMgY-0006MJ-58; Wed, 24 Jul 2019 19:12:22 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMgO-0006LF-2o
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 19:12:13 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqMgJ-0000Ev-5G; Wed, 24 Jul 2019 13:12:07 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
 <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
 <dd287560-2cb3-28ab-c22d-fe9f3682c609@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <021b5195-9a09-4cc2-064f-940ada9cf764@deltatee.com>
Date: Wed, 24 Jul 2019 13:12:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <dd287560-2cb3-28ab-c22d-fe9f3682c609@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, axboe@fb.com, kbusch@kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121212_173490_5C01F90A 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGV5LAoKU29ycnkgZm9yIHRoZSBkZWxheS4KCkkgdGVzdGVkIHlvdXIgcGF0Y2ggYW5kIGl0IGRv
ZXMgd29yay4gRG8geW91IHdhbnQgbWUgdG8gc2VuZCB5b3VyIGNoYW5nZQphcyBhIGZ1bGwgcGF0
Y2g/IENhbiBJIGFkZCB5b3VyIHNpZ25lZC1vZmYtYnk/CgpPbiAyMDE5LTA3LTE4IDY6NTAgcC5t
LiwgU2FnaSBHcmltYmVyZyB3cm90ZToKPj4gSSBkaWRuJ3QgdGhpbmsgdGhlIHNjYW5fbG9jayB3
YXMgdGhhdCBjb250ZXN0ZWQgb3IgdGhhdAo+PiBudm1lX2NoYW5nZV9jdHJsX3N0YXRlKCkgd2Fz
IHJlYWxseSBjYWxsZWQgdGhhdCBvZnRlbi4uLgo+IAo+IGl0IHNob3VsZG4ndCBiZSwgYnV0IEkg
dGhpbmsgaXQgbWFrZXMgdGhlIGZsb3cgbW9yZSBjb252b2x1dGVkCj4gYXMgd2Ugc2VyaWFsaXpl
IGJ5IGZsdXNoaW5nIHRoZSBzY2FuX3dvcmsgcmlnaHQgYWZ0ZXIuLi4KCkkgd291bGQgYXJndWUg
dGhhdCB0aGUgY2hlY2sgZm9yIHN0YXRlIGluIG52bWVfc2Nhbl93b3JrKCkgd2l0aG91dCBhCmxv
Y2sgaXMgcmFjeSBhbmQgY29uZnVzaW5nLiBUaGVyZSdzIG5vdGhpbmcgdG8gcHJldmVudCB0aGUg
c3RhdGUgZnJvbQpjaGFuZ2luZyBpbW1lZGlhdGVseSBhZnRlciB0aGUgY2hlY2suCgo+IFRoZSBk
ZXNpZ24gcHJpbmNpcGFsIGlzIG1ldCBhcyB3ZSBkbyBnZXQgdGhlIEkvTyBmYWlsaW5nLAo+IGJ1
dCBpdHMganVzdCB0aGF0IHdpdGggbXBhdGggd2Ugc2ltcGx5IHF1ZXVlIHRoZSBJL08gYWdhaW4K
PiBiZWNhdXNlIHRoZSBoZWFkLT5saXN0IGhhcHBlbnMgdG8gbm90IGJlIGVtcHR5Lgo+IFBlcmhh
cHMgdGFraW5nIGNhcmUgb2YgdGhhdCBjaGVjayBpcyBjbGVhbmVyLgoKWWVzLCBJIGZlZWwgeW91
ciBwYXRjaCBpcyBhIGdvb2Qgc29sdXRpb24gb24gaXQncyBvd24gbWVyaXRzLgo+IFRoYW5rcy4g
RG8geW91IGhhdmUgYSBmaXJtIHJlcHJvZHVjZXIgZm9yIGl0PwoKWWVzLiBJZiB5b3UgY29ubmVj
dCB0byBhbmQgdGhlbiBpbW1lZGlhdGVseSBkaXNjb25uZWN0IGZyb20gYSB0YXJnZXQgKGF0Cmxl
YXN0IHdpdGggbnZtZS1sb29wKSB5b3Ugd2lsbCByZWxpYWJseSB0cmlnZ2VyIHRoaXMgYnVnIC0t
IG9yIG9uZSBvZgp0aGUgb3RoZXJzIEkndmUgc2VudCBwYXRjaGVzIGZvci4KCj4+Pj4gK8KgwqDC
oCBtdXRleF9sb2NrKCZjdHJsLT5zY2FuX2xvY2spOwo+Pj4+ICsKPj4+PiDCoMKgwqDCoMKgwqAg
aWYgKGN0cmwtPnN0YXRlICE9IE5WTUVfQ1RSTF9MSVZFKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybjsKPj4+Cj4+PiB1bmxvY2sKPj4KPj4gSWYgd2UgdW5sb2NrIGhlcmUgYW5kIHJl
bG9jayBiZWxvdywgd2UnZCBoYXZlIHRvIHJlY2hlY2sgdGhlIGN0cmwtPnN0YXRlCj4+IHRvIGF2
b2lkIGFueSByYWNlcy4gSWYgeW91IGRvbid0IHdhbnQgdG8gY2FsbCBudm1lX2lkZW50aWZ5X2N0
cmwgd2l0aAo+PiB0aGUgbG9jayBoZWxkLCB0aGVuIGl0IHdvdWxkIHByb2JhYmx5IGJlIGJldHRl
ciB0byBtb3ZlIHRoZSBzdGF0ZSBjaGVjawo+PiBiZWxvdyBpdC4KPiAKPiBNZWFudCBiZWZvcmUg
dGhlIHJldHVybiBzdGF0ZW1lbnQuCgpBaCwgcmlnaHQsIG15IG1pc3Rha2UuCgpMb2dhbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
