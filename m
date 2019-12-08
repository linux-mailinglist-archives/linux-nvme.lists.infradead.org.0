Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AF4116184
	for <lists+linux-nvme@lfdr.de>; Sun,  8 Dec 2019 13:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WELkPkI9jN1XZEq7Qh/zjYMTiwOzW2Yt8Fk+nwPZf/Q=; b=McX4/6iqZ00gdmeKPB2q8flD6
	OlqZq4FHToO/s3aTlAGfQ1a1VbMWbdCpmsjDlwfgjtlU00ncvTugzYLClGimPXxdeY4GsXqc4XRSc
	JiqbXTwcLPKXi0uaTh7vmgigw2FDgKqbj8ekLU7kgDPMIgFdUzEuyd+KAnUVvBRIC5xgFOOI1NKIT
	3bx3v70fWShDqNlBfNkJVdnsY206pXbW7rv1Q0fDL/6g83HYuCW2VUwrbZeijx6iwo555eWyHPcIq
	pajYJx8saMRWpPQeDkPDx1Ef0Va8c5tws9g2iyiTurA0tJ+2EY7hRThQayW1nOTEfF4mRpD5shKug
	dOqr7OGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idvj3-0004Hj-F6; Sun, 08 Dec 2019 12:31:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idvix-0004H5-Fa
 for linux-nvme@lists.infradead.org; Sun, 08 Dec 2019 12:31:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D934EB1A5;
 Sun,  8 Dec 2019 12:31:36 +0000 (UTC)
Subject: Re: [PATCH] nvme-fabrics: reject I/O to offline device
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, 
 Victor Gladkov <Victor.Gladkov@kioxia.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <2caa40133c444771b706406b928ad88a@kioxia.com>
 <78d980de-b2b8-bd47-fc3f-20314653598e@broadcom.com>
 <c625b332ee124b038da1ae59b02f4e21@kioxia.com>
 <9a73a895-7d6b-21e9-9008-816117be1ff4@broadcom.com>
 <ac9b5d7192fb49ac9bdf19dd35be0ab2@kioxia.com>
 <4963e813-0d99-4890-804a-cd4c9c660607@broadcom.com>
 <ae027c0c-45ab-d412-11f3-39dcf3217434@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <e009d8fe-74ec-8c87-30ec-b1ac657b2aa8@suse.de>
Date: Sun, 8 Dec 2019 13:31:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <ae027c0c-45ab-d412-11f3-39dcf3217434@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_043143_665547_BA6BAECE 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTIvNi8xOSAxMToxOCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiAKPj4+IC0tLQo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZhYnJpY3MuYyBiL2RyaXZlcnMvbnZtZS9o
b3N0L2ZhYnJpY3MuYwo+Pj4gaW5kZXggNzRiODgxOC4uYjU4YWJjMSAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L2ZhYnJpY3MuYwo+Pj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3Qv
ZmFicmljcy5jCj4+PiBAQCAtNTQ5LDYgKzU0OSw4IEBAIGJsa19zdGF0dXNfdCBudm1mX2ZhaWxf
bm9ucmVhZHlfY29tbWFuZChzdHJ1Y3QgCj4+PiBudm1lX2N0cmwgKmN0cmwsCj4+PiDCoCB7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChjdHJsLT5zdGF0ZSAhPSBOVk1FX0NUUkxfREVMRVRJTkcg
JiYKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5zdGF0ZSAhPSBOVk1FX0NUUkxf
REVBRCAmJgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgICEoY3RybC0+c3RhdGUgPT0gTlZNRV9D
VFJMX0NPTk5FQ1RJTkcgJiYKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgoa3RpbWVfZ2V0
X25zKCkgLSBycS0+c3RhcnRfdGltZV9ucykgPiAKPj4+IGppZmZpZXNfdG9fbnNlY3MocnEtPnRp
bWVvdXQpKSkgJiYKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhYmxrX25vcmV0cnlfcmVx
dWVzdChycSkgJiYgIShycS0+Y21kX2ZsYWdzICYgCj4+PiBSRVFfTlZNRV9NUEFUSCkpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gQkxLX1NUU19SRVNPVVJDRTsK
Pj4+Cj4+Cj4+IERpZCB5b3UgdGVzdCB0aGlzIHRvIGVuc3VyZSBpdCdzIGRvaW5nIHdoYXQgeW91
IGV4cGVjdC4gSSdtIG5vdCBzdXJlIAo+PiB0aGF0IGFsbCB0aGUgdGltZXJzIGFyZSBzZXQgcmln
aHQgYXQgdGhpcyBwb2ludC4gTW9zdCBJL08ncyB0aW1lb3V0IAo+PiBmcm9tIGEgZGVhZGxpbmUg
dGltZSBzdGFtcGVkIGF0IGJsa19tcV9zdGFydF9yZXF1ZXN0KCkuIEJ1dCB0aGF0IAo+PiByb3V0
aW5lIGlzIGFjdHVhbGx5IGNhbGxlZCBieSB0aGUgdHJhbnNwb3J0cyBwb3N0IHRoZSAKPj4gbnZt
Zl9jaGVja19yZWFkeS9mYWlsX25vbnJlYWR5IGNhbGxzLsKgIEUuZy4gdGhlIGlvIGlzIG5vdCB5
ZXQgaW4gCj4+IGZsaWdodCwgdGh1cyBxdWV1ZWQsIGFuZCB0aGUgYmxrLW1xIGludGVybmFsIHF1
ZXVpbmcgZG9lc24ndCBjb3VudCAKPj4gYWdhaW5zdCB0aGUgaW8gdGltZW91dC7CoCBJIGNhbid0
IHNlZSBhbnl0aGluZyB0aGF0IGd1YXJhbnRlZXMgCj4+IHN0YXJ0X3RpbWVfbnMgaXMgc2V0Lgo+
IAo+IEknbSBub3Qgc3VyZSB0aGlzIGJlaGF2aW9yIGZvciBmYWlsaW5nIEkvTyBhbHdheXMgZGVz
aXJlZD8gc29tZQo+IGNvbnN1bWVycyB3b3VsZCBhY3R1YWxseSBub3Qgd2FudCB0aGUgSS9PIHRv
IGZhaWwgcHJlbWF0dXJlbHkgaWYgd2UKPiBhcmUgbm90IG11bHRpcGF0aGluZy4uLgo+IAo+IEkg
dGhpbmsgd2UgbmVlZCBhIGZhaWxfZmFzdF90bW8gc2V0IGluIHdoZW4gZXN0YWJsaXNoaW5nIHRo
ZSBjb250cm9sbGVyCj4gdG8gZ2V0IGl0IHJpZ2h0Lgo+IApBZ3JlZWQuIFRoaXMgd2hvbGUgcGF0
Y2ggbG9va3MgbGlrZSBzb21lb25lIGlzIHRyeWluZyB0byByZWltcGxlbWVudCAKZmFzdF9pb19m
YWlsX3RtbyAvIGRldl9sb3NzX3Rtby4KQXMgd2UncmUgbW92aW5nIGludG8gdW5yZWxpYWJsZSBm
YWJyaWNzIEkgZ3Vlc3Mgd2UnbGwgbmVlZCBhIHNpbWlsYXIgCm1lY2hhbmlzbS4KCkNoZWVycywK
Ckhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0b3Jh
Z2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICArNDkgOTExIDc0MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHbWJILCBNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpLCBHZXNjaMOk
ZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
