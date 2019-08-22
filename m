Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C049A23D
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 23:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ut5Z3BFDcRYZsxlRJRDagsWulavH64ToEA/3BFm2do=; b=krdV7rw+jFarLi
	wtuyVgr0H/hCdPQAAtvNldZ3YkyZhZTgn2a0ipIyRZm/NQxoZAJI677htNOW1pL2L8gQrL/SUiy7I
	mLuvygesjtktqLtkykIsV4dcioOMNq3ZfyblKKHftEQ7lQ8lGtJRpHfeIqYqA6TGVsGEAUCevMQ5O
	CmYUarA6ADmv6Pj7JXT77ZBGSO1UXt8i1oHJlzvqaTV624PSkl7EDZtQztc9IlRU9fWOyJJrmIXF3
	0CEEgWcUs9lKFqhUyZ3fFuVrkbFJUn0tHprN45sYK2rEXTUjbNvCBU3G3/XP9XALjWeLBGQY5Efe+
	vqA+glcTXWZ+mAk27Dvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uk8-0006eS-Jc; Thu, 22 Aug 2019 21:35:40 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ujz-0006da-KA
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 21:35:34 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 14:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="262990734"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2019 14:35:18 -0700
Date: Thu, 22 Aug 2019 15:33:22 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: fix compilation error
Message-ID: <20190822213321.GA16001@localhost.localdomain>
References: <20190822213132.32762-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822213132.32762-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_143531_714402_3190C2A8 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDI6MzE6MzJQTSAtMDcwMCwgU2FnaSBHcmltYmVyZyB3
cm90ZToKPiBnY2MgNy40LjAuCj4gCj4gbnZtZS5jOiBJbiBmdW5jdGlvbiDigJhwcmludF9yZWxh
dGl2ZXPigJk6Cj4gbnZtZS5jOjM1MDU6MzogZXJyb3I6IGlnbm9yaW5nIHJldHVybiB2YWx1ZSBv
ZiDigJhhc3ByaW50ZuKAmSwgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgd2Fybl91bnVzZWRfcmVz
dWx0IFstV2Vycm9yPXVudXNlZC1yZXN1bHRdCj4gICAgYXNwcmludGYoJnBhdGgsICIvc3lzL2Ns
YXNzL252bWUvJXMiLCBkZXZpY2VuYW1lKTsKPiAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gbnZtZS5jOjM1MDk6MzogZXJyb3I6IGlnbm9yaW5n
IHJldHVybiB2YWx1ZSBvZiDigJhhc3ByaW50ZuKAmSwgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUg
d2Fybl91bnVzZWRfcmVzdWx0IFstV2Vycm9yPXVudXNlZC1yZXN1bHRdCj4gICAgYXNwcmludGYo
JnBhdGgsICIvc3lzL2Jsb2NrLyVzL2RldmljZSIsIGRldmljZW5hbWUpOwo+ICAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGNjMTogYWxsIHdh
cm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCj4gTWFrZWZpbGU6NTc6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdudm1lJyBmYWlsZWQKPiBtYWtlOiAqKiogW252bWVdIEVycm9yIDEKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgoKT29wcywgdGhhbmtz
IGZvciB0aGUgcXVpY2sgZml4LiBBcHBsaWVkLgoKPiAgbnZtZS5jIHwgMTIgKysrKysrKysrKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9udm1lLmMgYi9udm1lLmMKPiBpbmRleCA0OWM1N2VlMThiODEuLjgyNWZi
ZDg3MjkyOSAxMDA2NDQKPiAtLS0gYS9udm1lLmMKPiArKysgYi9udm1lLmMKPiBAQCAtMzUwMiwx
MSArMzUwMiwxOSBAQCBzdGF0aWMgdm9pZCBwcmludF9yZWxhdGl2ZXMoKQo+ICAJcmV0ID0gc3Nj
YW5mKGRldmljZW5hbWUsICJudm1lJWRuJWQiLCAmaWQsICZuc2lkKTsKPiAgCXN3aXRjaCAocmV0
KSB7Cj4gIAljYXNlIDE6Cj4gLQkJYXNwcmludGYoJnBhdGgsICIvc3lzL2NsYXNzL252bWUvJXMi
LCBkZXZpY2VuYW1lKTsKPiArCQlyZXQgPSBhc3ByaW50ZigmcGF0aCwgIi9zeXMvY2xhc3MvbnZt
ZS8lcyIsIGRldmljZW5hbWUpOwo+ICsJCWlmIChyZXQgPCAwKSB7Cj4gKwkJCXBlcnJvcigiYXNw
cmludGYiKTsKPiArCQkJcmV0dXJuOwo+ICsJCX0KPiAgCQlibG9jayA9IGZhbHNlOwo+ICAJCWJy
ZWFrOwo+ICAJY2FzZSAyOgo+IC0JCWFzcHJpbnRmKCZwYXRoLCAiL3N5cy9ibG9jay8lcy9kZXZp
Y2UiLCBkZXZpY2VuYW1lKTsKPiArCQlyZXQgPSBhc3ByaW50ZigmcGF0aCwgIi9zeXMvYmxvY2sv
JXMvZGV2aWNlIiwgZGV2aWNlbmFtZSk7Cj4gKwkJaWYgKHJldCA8IDApIHsKPiArCQkJcGVycm9y
KCJhc3ByaW50ZiIpOwo+ICsJCQlyZXR1cm47Cj4gKwkJfQo+ICAJCWJyZWFrOwo+ICAJZGVmYXVs
dDoKPiAgCQlyZXR1cm47Cj4gLS0gCj4gMi4xNy4xCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
