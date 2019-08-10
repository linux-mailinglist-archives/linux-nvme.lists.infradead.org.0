Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26FD88B2B
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 13:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m0weVVwRNOM6W/VQw00BtDnw0ZD8jq307AI1SMqT4Sk=; b=Uop/KaRE30avhA9Jyx5hPmOaN
	67lyvHEryG4GCPRjChzdqb1k0x9iKRzt9FxiCbquLWFouEUVM0ztG/k/Q1cjzAq+y7Jqf3n+/LqTF
	kGkJLdp+pZkMBCZmwk2SI5o/Oay/Ql6RMlZuHv8cnlnwaDaRGSaRoHkcLmy9gartllK71lt2Wec/q
	JNe+gBsXsGzcJYRUh/z0MEir3s6qgHhRdCnVX/rBjRTdBFoMK5fuO7yhaqnPAlKaxfDPkg/P5pvjZ
	hmT86LVJ0xf0D0OiZgU6Ijr04QAx4HYA3COJ8ORHJzKrZVyk4IRGRIAZ6YUIniM3nXByIxD403ICh
	c6uiM2Ahw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQ1r-0006eL-TB; Sat, 10 Aug 2019 11:59:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQ1e-0006ds-UP
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 11:59:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6701EAC7F;
 Sat, 10 Aug 2019 11:59:06 +0000 (UTC)
Subject: Re: [PATCH v3 1/7] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-2-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6c97840c-0360-6503-ba5d-58d732b99a05@suse.de>
Date: Sat, 10 Aug 2019 13:59:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_045911_128302_B72397D7 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IE5WTUVfU0NfQUJPUlRf
UkVRIG1lYW5zIHRoYXQgdGhlIHJlcXVlc3Qgd2FzIGFib3J0ZWQgZHVlIHRvCj4gYW4gYWJvcnQg
Y29tbWFuZCByZWNlaXZlZC4gSW4gb3VyIGNhc2UsIHRoaXMgaXMgYSB0cmFuc3BvcnQKPiBjYW5j
ZWxsYXRpb24sIHNvIGhvc3QgcGF0aGluZyBlcnJvciBpcyBtdWNoIG1vcmUgYXBwcm9wcmlhdGUu
Cj4gCj4gUmV2aWV3ZWQtYnk6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiAg
IGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUv
aG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRleCA2OTU2MDQxMjI0
ZWMuLmQyYjRmNTdmYTY3ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMK
PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAtMjk0LDcgKzI5NCw3IEBAIGJv
b2wgbnZtZV9jYW5jZWxfcmVxdWVzdChzdHJ1Y3QgcmVxdWVzdCAqcmVxLCB2b2lkICpkYXRhLCBi
b29sIHJlc2VydmVkKQo+ICAgCWRldl9kYmdfcmF0ZWxpbWl0ZWQoKChzdHJ1Y3QgbnZtZV9jdHJs
ICopIGRhdGEpLT5kZXZpY2UsCj4gICAJCQkJIkNhbmNlbGxpbmcgSS9PICVkIiwgcmVxLT50YWcp
Owo+ICAgCj4gLQludm1lX3JlcShyZXEpLT5zdGF0dXMgPSBOVk1FX1NDX0FCT1JUX1JFUTsKPiAr
CW52bWVfcmVxKHJlcSktPnN0YXR1cyA9IE5WTUVfU0NfSE9TVF9QQVRIX0VSUk9SOwo+ICAgCWJs
a19tcV9jb21wbGV0ZV9yZXF1ZXN0X3N5bmMocmVxKTsKPiAgIAlyZXR1cm4gdHJ1ZTsKPiAgIH0K
PiAKUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywK
Ckhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0b3Jh
Z2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lh
aApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
