Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A77A833AE
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 16:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oS9Tw9sZjXyj0/wHRKwZIq58Gi1wi9gug6v5gkPzwVM=; b=NS6H45tupbXTQotX4OWpbAYc4
	mO8miLlzcTAr48b1uor698Plz+wnyupKYKV39AYjqLCcInFtfCT2IFiwzaQvw8yVmlnzVa846HDdN
	x6AjhrAxVekptQd6BX2DQciHnX77dDCpJoT905/6uz2fHuh2QjiJ/VZrYS729enGcf/sS9J1ZwlKU
	Ypwu5FDTZvko01Xfaw6E80wNcx7tXCOkHAgIQwPv8L8xC6SqQkgofs3bSxDsJgzNRTXCmSViMDPxS
	X/pozZsnjvr9GnKsM2d3AvXVKASO0DxQPYGNFFVBakoy+UgKfUKzUJ+SQAk+N7X9bP8BlHy+pjPyb
	ups3uAFkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0Dl-0006O1-Om; Tue, 06 Aug 2019 14:13:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0De-0006Ni-Bc
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 14:13:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E5B57AF23;
 Tue,  6 Aug 2019 14:13:40 +0000 (UTC)
Subject: Re: [PATCH] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Keith Busch <kbusch@kernel.org>
References: <20190806111036.113233-1-hare@suse.de>
 <31aa1743-2741-7952-d620-7d4ee93d6a99@intel.com>
 <047af640-5b5b-14a1-d2ef-1509702af9c7@suse.de>
 <20190806140716.GA24030@localhost.localdomain>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <31e6f42e-2157-077c-64d4-a5a31caf0aa4@suse.de>
Date: Tue, 6 Aug 2019 16:13:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190806140716.GA24030@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_071342_539883_1B8119ED 
X-CRM114-Status: GOOD (  19.76  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>, "Nadolski,
 Edmund" <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC82LzE5IDQ6MDcgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDA2LCAy
MDE5IGF0IDAzOjUzOjI5UE0gKzAyMDAsIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gT24gOC82
LzE5IDM6NTAgUE0sIE5hZG9sc2tpLCBFZG11bmQgd3JvdGU6Cj4+PiBPbiA4LzYvMjAxOSA1OjEw
IEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+Pj4gSWYgdGhlIEROUiBiaXQgaXMgc2V0IHdl
IHNob3VsZCBub3QgcmV0cnkgdGhlIGNvbW1hbmQsIGV2ZW4gaWYKPj4+PiB0aGUgc3RhbmRhcmQg
c3RhdHVzIGV2YWx1YXRpb24gaW5kaWNhdGVzIHNvLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
SGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCBkcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMgfCA3ICsrKysrKysKPj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2Nv
cmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4+IGluZGV4IGNjMDliODFmYzdmNC4u
YzNlOTI1NGY0NzU3IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
Pj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4+IEBAIC0yNzksNiArMjc5LDEz
IEBAIHZvaWQgbnZtZV9jb21wbGV0ZV9ycShzdHJ1Y3QgcmVxdWVzdCAqcmVxKQo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCB9
Cj4+Pj4gIMKgwqDCoMKgwqAgfQo+Pj4+ICvCoMKgwqAgLyoKPj4+PiArwqDCoMKgwqAgKiBBbnkg
cGF0aGluZyBlcnJvciBtaWdodCBiZSByZXRyaWVkLCBidXQgdGhlIEROUiBiaXQgdGFrZXMKPj4+
PiArwqDCoMKgwqAgKiBwcmVjZWRlbmNlLiBTbyByZXR1cm4gQkxLX1NUU19UQVJHRVQgaWYgdGhl
IEROUiBiaXQgaXMgc2V0Cj4+Pj4gK8KgwqDCoMKgICogdG8gYXZvaWQgcmV0cnlpbmcuCj4+Pj4g
K8KgwqDCoMKgICovCj4+Pj4gK8KgwqDCoCBpZiAoYmxrX3BhdGhfZXJyb3Ioc3RhdHVzKSAmJiBu
dm1lX3JlcShyZXEpLT5zdGF0dXMgJiBOVk1FX1NDX0ROUikKPj4+PiArwqDCoMKgwqDCoMKgwqAg
c3RhdHVzID0gQkxLX1NUU19UQVJHRVQ7Cj4+Pj4gIMKgwqDCoMKgwqAgYmxrX21xX2VuZF9yZXF1
ZXN0KHJlcSwgc3RhdHVzKTsKPj4+PiAgwqAgfQo+Pj4+ICDCoCBFWFBPUlRfU1lNQk9MX0dQTChu
dm1lX2NvbXBsZXRlX3JxKTsKPj4+Pgo+Pj4KPj4+IC0gSWYgRE5SIGFsd2F5cyB0YWtlcyBwcmVj
ZWRlbmNlLCBpcyB0aGUgYmxrX3BhdGhfZXJyb3IoKSBjaGVjayBzdGlsbAo+Pj4gbmVlZGVkPwo+
Pj4KPj4gSXQgdGFrZXMgcHJlY2VkZW5jZSBpbiB0aGUgc2Vuc2UgdGhhdCBpdCBzaG91bGQgY2F1
c2UgdGhlIGNvbW1hbmQgbm90IHRvIGJlCj4+IHJldHJpZWQuIEl0IHNob3VsZCBub3Qgb3Zlcndy
aXRlIGFueSBlcnJvciBjb2RlIGluZGljYXRpbmcgYSBub24tcmV0cnlhYmxlCj4+IGVycm9yLgo+
IAo+IEJ1dCB3ZSdyZSBhbHJlYWR5IHBhc3QgdGhlIG52bWUgcmV0cnkgbG9naWMsIHdoaWNoIGFs
c28gaGFuZGxlcyB0aGUgRE5SCj4gYml0LiBXaG8gaXMgdGhpcyB0ZWxsaW5nIG5vdCB0byByZXRy
eT8KPiAKQW55dGhpbmcgbGF5ZXJlZCBvbiB0b3Agb2YgaXQsIG5hbWVseSBkbS1tdWx0aXBhdGgg
b3IgTUQuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAg
ICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZl
bGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhp
Z2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
