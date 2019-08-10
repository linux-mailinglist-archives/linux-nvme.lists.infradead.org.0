Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360F888B36
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+7IeEbT0r+SJxkTqvvSSJew02NKTTzKa+eRX+cSQbz0=; b=ZtGvERi6M3+wI6s6L5q1//LL0
	xXhi1Zv4PvbLVkBLBPCScTZ5Ui4TLAOciWh31tOyPbyg7s4k2+wnTqtNd6hieRLUkP9sjQZNhjhcN
	1kuKSxRp0IzavRhbsqatx+PHo9FqxpOkXnlb/Rpv1+VsWIezzWLJwCnv2xygjWSNxIx47V34GVMfj
	gpGuuKCrUT6zqaqQL9LhXfZW3/+8b+2sprR20TdWjpCRtggOqnzCy2eDlGZpXJiXyJyIU8avEhWqj
	s2wP3GUFbDlnbvyyeayGk9JBYDpFL+LELU6I6V67zyLKmoazQzbnjDIJd/hjeema0GEiar10Wg9BE
	zP+VQeIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQCc-00031x-F8; Sat, 10 Aug 2019 12:10:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQCQ-00031d-VA
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:10:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AD7B9ACB7;
 Sat, 10 Aug 2019 12:10:17 +0000 (UTC)
Subject: Re: [PATCH v3 4/7] nvme: make nvme_report_ns_ids propagate error back
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-5-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <272ad0ac-ec18-ff11-e691-c28485b2b3aa@suse.de>
Date: Sat, 10 Aug 2019 14:10:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-5-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_051019_145406_D8792935 
X-CRM114-Status: GOOD (  23.04  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IEFuZCBtYWtlIHRoZSBj
YWxsZXJzIGNoZWNrIHRoZSByZXR1cm4gc3RhdHVzIGFuZCBwcm9wYWdhdGUKPiBiYWNrIGFjY29y
ZGluZ2x5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcu
bWU+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCAyMiArKysrKysrKysrKysr
KysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVy
cy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggZTUwM2ZkMTRkZTgxLi40OWZmY2NkNzIwOTEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gKysrIGIvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jCj4gQEAgLTE2MDMsOSArMTYwMywxMSBAQCBzdGF0aWMgdm9pZCBudm1lX2Nv
bmZpZ193cml0ZV96ZXJvZXMoc3RydWN0IGdlbmRpc2sgKmRpc2ssIHN0cnVjdCBudm1lX25zICpu
cykKPiAgIAlibGtfcXVldWVfbWF4X3dyaXRlX3plcm9lc19zZWN0b3JzKGRpc2stPnF1ZXVlLCBt
YXhfc2VjdG9ycyk7Cj4gICB9Cj4gICAKPiAtc3RhdGljIHZvaWQgbnZtZV9yZXBvcnRfbnNfaWRz
KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsIHVuc2lnbmVkIGludCBuc2lkLAo+ICtzdGF0aWMgaW50
IG52bWVfcmVwb3J0X25zX2lkcyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBpbnQg
bnNpZCwKPiAgIAkJc3RydWN0IG52bWVfaWRfbnMgKmlkLCBzdHJ1Y3QgbnZtZV9uc19pZHMgKmlk
cykKPiAgIHsKPiArCWludCByZXQgPSAwOwo+ICsKPiAgIAltZW1zZXQoaWRzLCAwLCBzaXplb2Yo
KmlkcykpOwo+ICAgCj4gICAJaWYgKGN0cmwtPnZzID49IE5WTUVfVlMoMSwgMSwgMCkpCj4gQEAg
LTE2MTYsMTAgKzE2MTgsMTIgQEAgc3RhdGljIHZvaWQgbnZtZV9yZXBvcnRfbnNfaWRzKHN0cnVj
dCBudm1lX2N0cmwgKmN0cmwsIHVuc2lnbmVkIGludCBuc2lkLAo+ICAgCQkgLyogRG9uJ3QgdHJl
YXQgZXJyb3IgYXMgZmF0YWwgd2UgcG90ZW50aWFsbHkKPiAgIAkJICAqIGFscmVhZHkgaGF2ZSBh
IE5HVUlEIG9yIEVVSS02NAo+ICAgCQkgICovCj4gLQkJaWYgKG52bWVfaWRlbnRpZnlfbnNfZGVz
Y3MoY3RybCwgbnNpZCwgaWRzKSkKPiArCQlyZXQgPSBudm1lX2lkZW50aWZ5X25zX2Rlc2NzKGN0
cmwsIG5zaWQsIGlkcyk7Cj4gKwkJaWYgKHJldCkKPiAgIAkJCWRldl93YXJuKGN0cmwtPmRldmlj
ZSwKPiAgIAkJCQkgIiVzOiBJZGVudGlmeSBEZXNjcmlwdG9ycyBmYWlsZWRcbiIsIF9fZnVuY19f
KTsKPiAgIAl9Cj4gKwlyZXR1cm4gcmV0Owo+ICAgfQo+ICAgCj4gICBzdGF0aWMgYm9vbCBudm1l
X25zX2lkc192YWxpZChzdHJ1Y3QgbnZtZV9uc19pZHMgKmlkcykKPiBAQCAtMTc1Nyw3ICsxNzYx
LDEwIEBAIHN0YXRpYyBpbnQgbnZtZV9yZXZhbGlkYXRlX2Rpc2soc3RydWN0IGdlbmRpc2sgKmRp
c2spCj4gICAJfQo+ICAgCj4gICAJX19udm1lX3JldmFsaWRhdGVfZGlzayhkaXNrLCBpZCk7Cj4g
LQludm1lX3JlcG9ydF9uc19pZHMoY3RybCwgbnMtPmhlYWQtPm5zX2lkLCBpZCwgJmlkcyk7Cj4g
KwlyZXQgPSBudm1lX3JlcG9ydF9uc19pZHMoY3RybCwgbnMtPmhlYWQtPm5zX2lkLCBpZCwgJmlk
cyk7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gb3V0Owo+ICsKPiAgIAlpZiAoIW52bWVfbnNfaWRz
X2VxdWFsKCZucy0+aGVhZC0+aWRzLCAmaWRzKSkgewo+ICAgCQlkZXZfZXJyKGN0cmwtPmRldmlj
ZSwKPiAgIAkJCSJpZGVudGlmaWVycyBjaGFuZ2VkIGZvciBuc2lkICVkXG4iLCBucy0+aGVhZC0+
bnNfaWQpOwo+IEBAIC0zMTgyLDcgKzMxODksOSBAQCBzdGF0aWMgc3RydWN0IG52bWVfbnNfaGVh
ZCAqbnZtZV9hbGxvY19uc19oZWFkKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsCj4gICAJaGVhZC0+
bnNfaWQgPSBuc2lkOwo+ICAgCWtyZWZfaW5pdCgmaGVhZC0+cmVmKTsKPiAgIAo+IC0JbnZtZV9y
ZXBvcnRfbnNfaWRzKGN0cmwsIG5zaWQsIGlkLCAmaGVhZC0+aWRzKTsKPiArCXJldCA9IG52bWVf
cmVwb3J0X25zX2lkcyhjdHJsLCBuc2lkLCBpZCwgJmhlYWQtPmlkcyk7Cj4gKwlpZiAocmV0KQo+
ICsJCWdvdG8gb3V0X2NsZWFudXBfc3JjdTsKPiAgIAo+ICAgCXJldCA9IF9fbnZtZV9jaGVja19p
ZHMoY3RybC0+c3Vic3lzLCBoZWFkKTsKPiAgIAlpZiAocmV0KSB7Cj4gQEAgLTMyMzAsNyArMzIz
OSwxMCBAQCBzdGF0aWMgaW50IG52bWVfaW5pdF9uc19oZWFkKHN0cnVjdCBudm1lX25zICpucywg
dW5zaWduZWQgbnNpZCwKPiAgIAl9IGVsc2Ugewo+ICAgCQlzdHJ1Y3QgbnZtZV9uc19pZHMgaWRz
Owo+ICAgCj4gLQkJbnZtZV9yZXBvcnRfbnNfaWRzKGN0cmwsIG5zaWQsIGlkLCAmaWRzKTsKPiAr
CQlyZXQgPSBudm1lX3JlcG9ydF9uc19pZHMoY3RybCwgbnNpZCwgaWQsICZpZHMpOwo+ICsJCWlm
IChyZXQpCj4gKwkJCWdvdG8gb3V0X3VubG9jazsKPiArCj4gICAJCWlmICghbnZtZV9uc19pZHNf
ZXF1YWwoJmhlYWQtPmlkcywgJmlkcykpIHsKPiAgIAkJCWRldl9lcnIoY3RybC0+ZGV2aWNlLAo+
ICAgCQkJCSJJRHMgZG9uJ3QgbWF0Y2ggZm9yIHNoYXJlZCBuYW1lc3BhY2UgJWRcbiIsCj4gClJl
dmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMsCgpIYW5u
ZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYg
TmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArNDkg
OTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJC
IDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
