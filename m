Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9492E1EBC11
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 14:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qHUg0Jz+ORWzzQM6T/ZDc6lLVQwkvBUS9uFDiXc21ow=; b=ixizZSxrUJlYhBtb1Eyyp56Fs
	H3apJybKQX0eV+0Xy6XtWXtvrzT7HKDlNUL6bdT/iV/c7unA06vJojK5Pfw/AGjr5ns8bCLLInIkd
	IftiMXPcPmjmwFEaP8V3ocufjU16H3XWBURVbd94jFIqYtWyBO8gEgID5odWzL9Adb3zIlVJlnfsL
	0gs6RaH/Mq5pxsPlEZFbnElj2RRFxZ7LQscCAi+j8ToeVxs/j0Zx/o+4rIqQAObfNRKDIHmMErJAM
	gcXlwJkCvawMCLKL2AzItlzx1qdkbmdtIPW5J8mZoYhZse5jB1QNuIccj7hkHg4Ij+2QOQ5ibl4UD
	RaBZJDHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6N5-0003WD-Dw; Tue, 02 Jun 2020 12:50:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6N1-0003Uu-9t
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 12:50:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B7DC0AE72;
 Tue,  2 Jun 2020 12:50:18 +0000 (UTC)
Subject: Re: [PATCH] nvme-fc: Only call nvme_cleanup_cmd() for normal
 operations
To: Daniel Wagner <dwagner@suse.de>, linux-nvme@lists.infradead.org
References: <20200529113740.31269-1-dwagner@suse.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <44abf3e4-3a81-9c75-980c-41d396034000@suse.de>
Date: Tue, 2 Jun 2020 14:50:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529113740.31269-1-dwagner@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_055019_490972_CE17087E 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 linux-kernel@vger.kernel.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yOS8yMCAxOjM3IFBNLCBEYW5pZWwgV2FnbmVyIHdyb3RlOgo+IEFzeW5jaHJvbm91cyBl
dmVudCBub3RpZmljYXRpb25zIGRvIG5vdCBoYXZlIGFuIHJlcXVlc3QKPiBhc3NvY2lhdGVkLiBX
aGVuIGZjcF9pbygpIGZhaWxzIHdlIHVuY29uZGl0aW9uYWxseSBjYWxsCj4gbnZtZV9jbGVhbnVw
X2NtZCgpIHdoaWNoIGxlYWRzIHRvIGEgY3Jhc2guCj4gCj4gRml4ZXM6IDE2Njg2ZjNhNmMzYyAo
Im52bWU6IG1vdmUgY29tbW9uIGNhbGwgdG8gbnZtZV9jbGVhbnVwX2NtZCB0byBjb3JlIGxheWVy
IikKPiBDYzogTWF4IEd1cnRvdm95IDxtYXhnQG1lbGxhbm94LmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgV2FnbmVyIDxkd2FnbmVyQHN1c2UuZGU+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUv
aG9zdC9mYy5jIHwgNSArKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPiBpbmRleCA3ZGZjNGEyZWNmMWUuLjI4N2EzZThlYTMx
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4gKysrIGIvZHJpdmVycy9u
dm1lL2hvc3QvZmMuYwo+IEBAIC0yMzAwLDEwICsyMzAwLDExIEBAIG52bWVfZmNfc3RhcnRfZmNw
X29wKHN0cnVjdCBudm1lX2ZjX2N0cmwgKmN0cmwsIHN0cnVjdCBudm1lX2ZjX3F1ZXVlICpxdWV1
ZSwKPiAgIAkJb3BzdGF0ZSA9IGF0b21pY194Y2hnKCZvcC0+c3RhdGUsIEZDUE9QX1NUQVRFX0NP
TVBMRVRFKTsKPiAgIAkJX19udm1lX2ZjX2ZjcG9wX2Noa190ZWFyZG93bnMoY3RybCwgb3AsIG9w
c3RhdGUpOwo+ICAgCj4gLQkJaWYgKCEob3AtPmZsYWdzICYgRkNPUF9GTEFHU19BRU4pKQo+ICsJ
CWlmICghKG9wLT5mbGFncyAmIEZDT1BfRkxBR1NfQUVOKSkgewo+ICAgCQkJbnZtZV9mY191bm1h
cF9kYXRhKGN0cmwsIG9wLT5ycSwgb3ApOwo+ICsJCQludm1lX2NsZWFudXBfY21kKG9wLT5ycSk7
Cj4gKwkJfQo+ICAgCj4gLQkJbnZtZV9jbGVhbnVwX2NtZChvcC0+cnEpOwo+ICAgCQludm1lX2Zj
X2N0cmxfcHV0KGN0cmwpOwo+ICAgCj4gICAJCWlmIChjdHJsLT5ycG9ydC0+cmVtb3RlcG9ydC5w
b3J0X3N0YXRlID09IEZDX09CSlNUQVRFX09OTElORSAmJgo+IAoKUmV2aWV3ZWQtYnk6IEhhbm5l
cyBSZWluZWNrZSA8aGFyZUBzdXNlLmRlPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVz
IFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBz
dXNlLmRlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVy
ZwpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZyksIEdlc2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVu
ZMO2cmZmZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
