Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCF483358
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 15:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tpohYgEuSUISwSelRuwHKQnZ14fglONO4BwquT1LDZ8=; b=PGc9QJ/uA+6NTvnxFdwrPFGPE
	yAR17kfarwlYSsnqjwx8A6YTsfCaGyFLE8QoR7kbjMUN1NGbBlEff6dPxHY78aOIgXxTAlaKGkfHq
	RERAWFuCJIW9ZMqhKoyO0iEDYOJgZfUCRTAM2NhLc8rWu/1xCX/TAGixAhlZVziyFSQGrlnkGQBNb
	o1OA9ZrSVhqVlr8YOooPOEmHc49NAjXA6zsZEpdk+hgGxHhrfHa+zSye5GsEf8DrlFiQq7eMtwY4e
	x0YxjNuflyyAR3qrShqCvsr8P7miUWzibmkwwrne0fb5GwrpfX9rzMcidrIAVhdTL4QnKRHA14KQE
	c1XR1yxyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzuF-00059s-S8; Tue, 06 Aug 2019 13:53:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzu8-00059J-Il
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 13:53:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 82C1CB63C;
 Tue,  6 Aug 2019 13:53:29 +0000 (UTC)
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190806111036.113233-1-hare@suse.de>
 <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
Date: Tue, 6 Aug 2019 15:53:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_065332_772132_D653F6EA 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC82LzE5IDM6NTAgUE0sIE5hZG9sc2tpLCBFZG11bmQgd3JvdGU6Cj4gT24gOC82LzIwMTkg
NToxMCBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+PiBJZiB0aGUgRE5SIGJpdCBpcyBzZXQg
d2Ugc2hvdWxkIG5vdCByZXRyeSB0aGUgY29tbWFuZCwgZXZlbiBpZgo+PiB0aGUgc3RhbmRhcmQg
c3RhdHVzIGV2YWx1YXRpb24gaW5kaWNhdGVzIHNvLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIYW5u
ZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgfCA3ICsrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9u
dm1lL2hvc3QvY29yZS5jCj4+IGluZGV4IGNjMDliODFmYzdmNC4uYzNlOTI1NGY0NzU3IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jCj4+IEBAIC0yNzksNiArMjc5LDEzIEBAIHZvaWQgbnZtZV9jb21wbGV0ZV9y
cShzdHJ1Y3QgcmVxdWVzdCAqcmVxKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIC8q
Cj4+ICvCoMKgwqDCoCAqIEFueSBwYXRoaW5nIGVycm9yIG1pZ2h0IGJlIHJldHJpZWQsIGJ1dCB0
aGUgRE5SIGJpdCB0YWtlcwo+PiArwqDCoMKgwqAgKiBwcmVjZWRlbmNlLiBTbyByZXR1cm4gQkxL
X1NUU19UQVJHRVQgaWYgdGhlIEROUiBiaXQgaXMgc2V0Cj4+ICvCoMKgwqDCoCAqIHRvIGF2b2lk
IHJldHJ5aW5nLgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBpZiAoYmxrX3BhdGhfZXJyb3Io
c3RhdHVzKSAmJiBudm1lX3JlcShyZXEpLT5zdGF0dXMgJiBOVk1FX1NDX0ROUikKPj4gK8KgwqDC
oMKgwqDCoMKgIHN0YXR1cyA9IEJMS19TVFNfVEFSR0VUOwo+PiDCoMKgwqDCoMKgIGJsa19tcV9l
bmRfcmVxdWVzdChyZXEsIHN0YXR1cyk7Cj4+IMKgIH0KPj4gwqAgRVhQT1JUX1NZTUJPTF9HUEwo
bnZtZV9jb21wbGV0ZV9ycSk7Cj4+Cj4gCj4gLSBJZiBETlIgYWx3YXlzIHRha2VzIHByZWNlZGVu
Y2UsIGlzIHRoZSBibGtfcGF0aF9lcnJvcigpIGNoZWNrIHN0aWxsIAo+IG5lZWRlZD8KPiAKSXQg
dGFrZXMgcHJlY2VkZW5jZSBpbiB0aGUgc2Vuc2UgdGhhdCBpdCBzaG91bGQgY2F1c2UgdGhlIGNv
bW1hbmQgbm90IHRvIApiZSByZXRyaWVkLiBJdCBzaG91bGQgbm90IG92ZXJ3cml0ZSBhbnkgZXJy
b3IgY29kZSBpbmRpY2F0aW5nIGEgCm5vbi1yZXRyeWFibGUgZXJyb3IuCgo+IC0gQ2FuL1Nob3Vs
ZCB0aGlzIGJlIGRvbmUgaW4gbnZtZV9lcnJvcl9zdGF0dXMoKT8KPiAKUG9zc2libHk7IEkgZG9u
J3QgbWluZC4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAg
ICAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4
ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkg
SGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
