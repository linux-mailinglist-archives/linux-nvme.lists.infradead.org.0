Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E508F009
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 18:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Am3P+y54x686RYz8QBp43oL7QuCNaQbpySsLWBGAIio=; b=QSDgDEr0w9phYL
	8JvNSf+AUHh81VmlqqECuD+njz4y2CgXYv3kh4umCZKDturKwJpVz57eQX3JVt2Td00n4W49PAeTF
	gO//577Xwo8ES4/k9rqNhmjVaUPp2Lw1w1kOH1ydl1ilEBPYMEX4AqVRZYsU0sbMFPCAsWvhzaIwU
	x8oznQnUgyQZHvbPhohq/Yx1AUHYlyPI35uFWFxXpNkDQzZLrbkpNl5udLfAUF/jmS2qCSUuUcSX7
	hV6TgLKeQ2N9+wnKcVTqq1bAa7U/iLDIFVZK1v/JEIpPJ+cxCcf4HRcLX2oJseizZY6F2bpa/cPTI
	0caVZ1kL1MQUrbHmovvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyIDT-0002VD-9M; Thu, 15 Aug 2019 16:03:07 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIDI-0002Ua-DB
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 16:03:01 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hyIDB-00010b-ON; Thu, 15 Aug 2019 10:02:50 -0600
To: Max Gurtovoy <maxg@mellanox.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-8-logang@deltatee.com>
 <e0323600-c4e8-00e7-d8cc-ff8d31b4ed10@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <90e7402f-bd2b-1e3b-1f15-53eff50a1abd@deltatee.com>
Date: Thu, 15 Aug 2019 10:02:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e0323600-c4e8-00e7-d8cc-ff8d31b4ed10@mellanox.com>
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
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v7 07/14] nvmet-passthru: add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_090256_497606_B959D4E8 
X-CRM114-Status: GOOD (  17.29  )
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

CgpPbiAyMDE5LTA4LTE1IDY6MjAgYS5tLiwgTWF4IEd1cnRvdm95IHdyb3RlOgo+IAo+IE9uIDgv
Mi8yMDE5IDI6NDUgQU0sIExvZ2FuIEd1bnRob3JwZSB3cm90ZToKPj4gVGhpcyBwYXRjaCBhZGRz
IGhlbHBlciBmdW5jdGlvbnMgd2hpY2ggYXJlIHVzZWQgaW4gdGhlIE5WTWVPRiBjb25maWdmcwo+
PiB3aGVuIHRoZSB1c2VyIGlzIGNvbmZpZ3VyaW5nIHRoZSBwYXNzdGhydSBzdWJzeXN0ZW0uIEhl
cmUgd2UgZW5zdXJlCj4+IHRoYXQgb25seSBvbmUgc3Vic3lzIGlzIGFzc2lnbmVkIHRvIGVhY2gg
bnZtZV9jdHJsIGJ5IHVzaW5nIGFuIHhhcnJheQo+PiBvbiB0aGUgY250bGlkLgo+Pgo+PiBbY2hh
aXRhbnlhLmt1bGthcm5pQHdkYy5jb206IHRoaXMgcGF0Y2ggaXMgdmVyeSByb3VnaGx5IGJhc2Vk
Cj4+IMKgIG9uIGEgc2ltaWxhciBvbmUgYnkgQ2hhaXRhbnlhXQo+PiBTaWduZWQtb2ZmLWJ5OiBD
aGFpdGFueWEgS3Vsa2FybmkgPGNoYWl0YW55YS5rdWxrYXJuaUB3ZGMuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+Cj4+IC0tLQo+PiDC
oCBkcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDgg
KysrCj4+IMKgIGRyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLXBhc3N0aHJ1LmMgfCA3NyArKysr
KysrKysrKysrKysrKysrKysrKysrKysKPj4gwqAgZHJpdmVycy9udm1lL3RhcmdldC9udm1ldC5o
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMCArKysrCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgOTUg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3Jl
LmMgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwo+PiBpbmRleCA1MGMwMWIyZGE1NjguLjJl
NzU5NjhhZjdmNCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKPj4g
KysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKPj4gQEAgLTUxOSw2ICs1MTksMTIgQEAg
aW50IG52bWV0X25zX2VuYWJsZShzdHJ1Y3QgbnZtZXRfbnMgKm5zKQo+PiDCoCDCoMKgwqDCoMKg
IG11dGV4X2xvY2soJnN1YnN5cy0+bG9jayk7Cj4+IMKgwqDCoMKgwqAgcmV0ID0gMDsKPj4gKwo+
PiArwqDCoMKgIGlmIChudm1ldF9wYXNzdGhydV9jdHJsKHN1YnN5cykpIHsKPj4gK8KgwqDCoMKg
wqDCoMKgIHByX2luZm8oImNhbm5vdCBlbmFibGUgYm90aCBwYXNzdGhydSBhbmQgcmVndWxhciBu
YW1lc3BhY2VzCj4+IGZvciBhIHNpbmdsZSBzdWJzeXN0ZW0iKTsKPj4gK8KgwqDCoMKgwqDCoMKg
IGdvdG8gb3V0X3VubG9jazsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gwqDCoMKgwqDCoCBpZiAobnMt
PmVuYWJsZWQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF91bmxvY2s7Cj4+IMKgIEBA
IC0xNDM5LDYgKzE0NDUsOCBAQCBzdGF0aWMgdm9pZCBudm1ldF9zdWJzeXNfZnJlZShzdHJ1Y3Qg
a3JlZiAqcmVmKQo+PiDCoCDCoMKgwqDCoMKgIFdBUk5fT05fT05DRSghbGlzdF9lbXB0eSgmc3Vi
c3lzLT5uYW1lc3BhY2VzKSk7Cj4+IMKgICvCoMKgwqAgbnZtZXRfcGFzc3RocnVfc3Vic3lzX2Zy
ZWUoc3Vic3lzKTsKPj4gKwo+PiDCoMKgwqDCoMKgIGtmcmVlKHN1YnN5cy0+c3Vic3lzbnFuKTsK
Pj4gwqDCoMKgwqDCoCBrZnJlZShzdWJzeXMpOwo+PiDCoCB9Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL252bWUvdGFyZ2V0L2lvLWNtZC1wYXNzdGhydS5jCj4+IGIvZHJpdmVycy9udm1lL3Rhcmdl
dC9pby1jbWQtcGFzc3RocnUuYwo+PiBpbmRleCA0NmM1OGZlYzU2MDguLmIxOTk3ODU1MDBhZCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9pby1jbWQtcGFzc3RocnUuYwo+PiAr
KysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2lvLWNtZC1wYXNzdGhydS5jCj4+IEBAIC0xMSw2ICsx
MSwxMSBAQAo+PiDCoCAjaW5jbHVkZSAiLi4vaG9zdC9udm1lLmgiCj4+IMKgICNpbmNsdWRlICJu
dm1ldC5oIgo+PiDCoCArLyoKPj4gKyAqIHhhcnJheSB0byBtYWludGFpbiBvbmUgcGFzc3RocnUg
c3Vic3lzdGVtIHBlciBudm1lIGNvbnRyb2xsZXIuCj4+ICsgKi8KPj4gK3N0YXRpYyBERUZJTkVf
WEFSUkFZKHBhc3N0aHJ1X3N1YnN5c3RlbXMpOwo+PiArCj4+IMKgIHN0YXRpYyBzdHJ1Y3Qgd29y
a3F1ZXVlX3N0cnVjdCAqcGFzc3RocnVfd3E7Cj4+IMKgIMKgIGludCBudm1ldF9wYXNzdGhydV9p
bml0KHZvaWQpCj4+IEBAIC0yNyw2ICszMiw3OCBAQCB2b2lkIG52bWV0X3Bhc3N0aHJ1X2Rlc3Ry
b3kodm9pZCkKPj4gwqDCoMKgwqDCoCBkZXN0cm95X3dvcmtxdWV1ZShwYXNzdGhydV93cSk7Cj4+
IMKgIH0KPj4gwqAgK2ludCBudm1ldF9wYXNzdGhydV9jdHJsX2VuYWJsZShzdHJ1Y3QgbnZtZXRf
c3Vic3lzICpzdWJzeXMpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IG52bWVfY3RybCAqY3RybDsK
Pj4gK8KgwqDCoCBpbnQgcmV0ID0gLUVJTlZBTDsKPj4gK8KgwqDCoCB2b2lkICpvbGQ7Cj4+ICsK
Pj4gK8KgwqDCoCBtdXRleF9sb2NrKCZzdWJzeXMtPmxvY2spOwo+PiArwqDCoMKgIGlmICghc3Vi
c3lzLT5wYXNzdGhydV9jdHJsX3BhdGgpCj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF91bmxv
Y2s7Cj4+ICvCoMKgwqAgaWYgKHN1YnN5cy0+cGFzc3RocnVfY3RybCkKPj4gK8KgwqDCoMKgwqDC
oMKgIGdvdG8gb3V0X3VubG9jazsKPj4gKwo+PiArwqDCoMKgIGlmIChzdWJzeXMtPm5yX25hbWVz
cGFjZXMpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHByX2luZm8oImNhbm5vdCBlbmFibGUgYm90aCBw
YXNzdGhydSBhbmQgcmVndWxhciBuYW1lc3BhY2VzCj4+IGZvciBhIHNpbmdsZSBzdWJzeXN0ZW0i
KTsKPj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3VubG9jazsKPj4gK8KgwqDCoCB9Cj4+ICsK
Pj4gK8KgwqDCoCBjdHJsID0gbnZtZV9jdHJsX2dldF9ieV9wYXRoKHN1YnN5cy0+cGFzc3RocnVf
Y3RybF9wYXRoKTsKPj4gK8KgwqDCoCBpZiAoSVNfRVJSKGN0cmwpKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCByZXQgPSBQVFJfRVJSKGN0cmwpOwo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJmYWls
ZWQgdG8gb3BlbiBudm1lIGNvbnRyb2xsZXIgJXNcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN1YnN5cy0+cGFzc3RocnVfY3RybF9wYXRoKTsKPj4gKwo+PiArwqDCoMKgwqDC
oMKgwqAgZ290byBvdXRfdW5sb2NrOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIG9sZCA9
IHhhX2NtcHhjaGcoJnBhc3N0aHJ1X3N1YnN5c3RlbXMsIGN0cmwtPmNudGxpZCwgTlVMTCwKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdWJzeXMsIEdGUF9LRVJORUwpOwo+PiArwqDCoMKg
IGlmICh4YV9pc19lcnIob2xkKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0geGFfZXJyKG9s
ZCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF9wdXRfY3RybDsKPj4gK8KgwqDCoCB9Cj4+
ICsKPj4gK8KgwqDCoCBpZiAob2xkKQo+PiArwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfcHV0X2N0
cmw7Cj4+ICsKPj4gK8KgwqDCoCBzdWJzeXMtPnBhc3N0aHJ1X2N0cmwgPSBjdHJsOwo+PiArwqDC
oMKgIHJldCA9IDA7Cj4+ICsKPj4gK8KgwqDCoCBnb3RvIG91dF91bmxvY2s7Cj4gCj4gY2FuIHdl
IHJlLWFycmFuZ2UgdGhlIGNvZGUgaGVyZSA/Cj4gCj4gaXQncyBub3Qgc28gY29tbW9uIHRvIHNl
ZSBnb3RvIGluIGEgZ29vZCBmbG93Lgo+IAo+IG1heWJlIGhhdmUgMSBnb29kIGZsb3cgdGhlIGdv
dG8ncyB3aWxsIGdvIGJlbGxvdyBpdCBhcyB3ZSB1c3VhbGx5IGRvIGluCj4gdGhpcyBzdWJzeXN0
ZW0uCgpPSywgcXVldWVkIHVwIGZvciB2OC4KClRoYW5rcywKCkxvZ2FuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
