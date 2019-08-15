Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520AC8EFE5
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 18:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96MK7l04RNrGjfK24t2NdD3vipSVB8SvqtoQNyM8raI=; b=MYF3uKzeswkuvt
	S/Vp/nAlYwZ6p4ZyjZXiwZCQELpR1P/JOabKCFlxY2hbJH7vltRR2IrJ2dIoN0bIQd565+4jQMUQg
	4dETvJRlnAHaUlFiNzIb8btkZmVPWUX7NywlIfWcM1uL1L6yMVpxgrmHYPIHpex+eiF82EvfnbQnS
	PiEA/h4hY9dpubvbPp1xGmpW3M8ctHioHQi9iW6gfzsWpvVEqpHFVKzbF06JG5XkQ6fsgXQURp1vW
	zcp6vgXU2SkvK4C4ASm0Fq47psbPVoqpbJLFpPNNj08kXWF+eQLy48ErsOnblTiOefDsXIbPcpIbr
	ai2R0CaT5/dSYkgSJgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIAc-0000aZ-JP; Thu, 15 Aug 2019 16:00:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIAM-0000aB-FN
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 15:59:58 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hyIAB-0000kk-MY; Thu, 15 Aug 2019 09:59:44 -0600
To: Max Gurtovoy <maxg@mellanox.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-2-logang@deltatee.com>
 <563baec2-61f6-5705-d751-1eee75370e66@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3dc99450-bd6d-b994-4b4c-1af225565c2f@deltatee.com>
Date: Thu, 15 Aug 2019 09:59:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <563baec2-61f6-5705-d751-1eee75370e66@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com,
 axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 maxg@mellanox.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v7 01/14] nvme-core: introduce nvme_ctrl_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_085954_557007_067DC2BA 
X-CRM114-Status: GOOD (  18.85  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA4LTE1IDU6NDYgYS5tLiwgTWF4IEd1cnRvdm95IHdyb3RlOgo+IAo+IE9uIDgv
Mi8yMDE5IDI6NDUgQU0sIExvZ2FuIEd1bnRob3JwZSB3cm90ZToKPj4gbnZtZV9jdHJsX2dldF9i
eV9wYXRoKCkgaXMgYW5hbGFnb3VzIHRvIGJsa2Rldl9nZXRfYnlfcGF0aCgpIGV4Y2VwdCBpdAo+
PiBnZXRzIGEgc3RydWN0IG52bWVfY3RybCBmcm9tIHRoZSBwYXRoIHRvIGl0cyBjaGFyIGRldiAo
L2Rldi9udm1lMCkuCj4+IEl0IG1ha2VzIHVzZSBvZiBmaWxwX29wZW4oKSB0byBvcGVuIHRoZSBm
aWxlIGFuZCB1c2VzIHRoZSBwcml2YXRlCj4+IGRhdGEgdG8gb2J0YWluIGEgcG9pbnRlciB0byB0
aGUgc3RydWN0IG52bWVfY3RybC4gSWYgdGhlIGZvcHMgb2YgdGhlCj4+IGZpbGUgZG8gbm90IG1h
dGNoLCAtRUlOVkFMIGlzIHJldHVybmVkLgo+Pgo+PiBUaGUgcHVycG9zZSBvZiB0aGlzIGZ1bmN0
aW9uIGlzIHRvIHN1cHBvcnQgTlZNZS1PRiB0YXJnZXQgcGFzc3RocnUuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4KPj4gLS0tCj4+IMKg
IGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+
PiDCoCBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggfMKgIDIgKysKPj4gwqAgMiBmaWxlcyBjaGFu
Z2VkLCAyNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gaW5kZXggZTZlZTZmMmEzZGE2
Li5mNzIzMzRmMzRhMzAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gQEAgLTI4MTcsNiArMjgxNywzMCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucwo+PiBudm1lX2Rldl9mb3BzID0g
ewo+PiDCoMKgwqDCoMKgIC5jb21wYXRfaW9jdGzCoMKgwqAgPSBudm1lX2Rldl9pb2N0bCwKPj4g
wqAgfTsKPj4gwqAgK3N0cnVjdCBudm1lX2N0cmwgKm52bWVfY3RybF9nZXRfYnlfcGF0aChjb25z
dCBjaGFyICpwYXRoKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBudm1lX2N0cmwgKmN0cmw7Cj4+
ICvCoMKgwqAgc3RydWN0IGZpbGUgKmY7Cj4+ICsKPj4gK8KgwqDCoCBmID0gZmlscF9vcGVuKHBh
dGgsIE9fUkRXUiwgMCk7Cj4+ICvCoMKgwqAgaWYgKElTX0VSUihmKSkKPj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiBFUlJfQ0FTVChmKTsKPj4gKwo+PiArwqDCoMKgIGlmIChmLT5mX29wICE9ICZu
dm1lX2Rldl9mb3BzKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjdHJsID0gRVJSX1BUUigtRUlOVkFM
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X2Nsb3NlOwo+PiArwqDCoMKgIH0KPiAKPiBM
b2dhbiwKPiAKPiB0aGlzIG1lYW5zIHRoYXQgdGhlIFBUIGlzIGZvciBudm1lLXBjaSBhbmQgYWxz
byBudm1lLWZhYnJpY3MgYXMgd2VsbC4KPiAKPiBJcyB0aGlzIHRoZSBpbnRlbnRpb24gPyBvciB3
ZSB3YW50IHRvIHJlc3RyaWN0IGl0IHRvIHBjaSBvbmx5LgoKWWVzLCBpbiB0aGVvcnksIHNvbWVv
bmUgY291bGQgcGFzc3RocnUgYW4gbnZtZS1mYWJyaWNzIGNvbnRyb2xsZXIgb3IKdGhleSBjb3Vs
ZCBwYXNzdGhydSBhIHBhc3N0aHJ1J2QgcGFzc3RocnUnZCBudm1lLWZhYnJpY3MgY29udHJvbGxl
ci4KVGhpcyBwcm9iYWJseSBpc24ndCBhIGdvb2QgaWRlYSBidXQgSSBkb24ndCBrbm93IHRoYXQg
d2UgbmVlZCB0bwpzcGVjaWZpY2FsbHkgcmVqZWN0IGl0LiBJZiB5b3UgdGhpbmsgd2Ugc2hvdWxk
IEkgY291bGQgZmlndXJlIG91dCBhIHdheQp0byBmaWx0ZXIgYnkgcGNpIGNvbnRyb2xsZXJzIG9u
bHkuCgpMb2dhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
