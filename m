Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0893B17CCE5
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Mar 2020 09:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1MLMZi7UJqeoEka1QdMGaDZBUnfuVrryTWZOxzTVgAc=; b=BvVFmIzPhkx/2UwwWM6Vnxyyk
	41aslhL+OQnKxHyej56dTG2v0RXMBzM3LJCuMJG6K2FnWi8R6F9+T1L81CZ7n+SvlocJiKDCWDi18
	4g0kvBOGRyfwA4RrOUmNoENfsd2/nS8+UnAXTkSpRS77n0tnQvVAp2UI7tb8JoSsHrRTL7xhIdeWJ
	Tw/owKW1lUNObJjlclkx4f8o+tg35ZR7eM10tNrPWR+iiFzBbjwx4kn/c1iczNUKrhFrQIjKnLfHF
	VPhPy77VPgBryl432ttfyXpDnqJtftP0orBoudbjyHhv3+8IY4cfcV3dRAZI74hWND8W+ysZEhXYF
	Mwav9ISlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAV1B-0002xq-T8; Sat, 07 Mar 2020 08:41:09 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAV16-0002xV-WC
 for linux-nvme@lists.infradead.org; Sat, 07 Mar 2020 08:41:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BA5A0AD20;
 Sat,  7 Mar 2020 08:41:03 +0000 (UTC)
Subject: Re: [PATCH 3/3] nvme/fcloop: flush workqueue before calling
 nvme_fc_unregister_remoteport()
To: James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
References: <20200306130440.16864-1-hare@suse.de>
 <20200306130440.16864-4-hare@suse.de>
 <c228ff0f-f596-ba0c-a8cc-e5281c268483@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <97032197-19d1-342c-dac0-6e0397e91d09@suse.de>
Date: Sat, 7 Mar 2020 09:41:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c228ff0f-f596-ba0c-a8cc-e5281c268483@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_004105_180209_A8351097 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMy83LzIwIDI6MTIgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IAo+IAo+IE9uIDMvNi8yMDIw
IDU6MDQgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gbnZtZV9mY191bnJlZ2lzdGVyX3Jl
bW90ZXBvcnQoKSB3aWxsIGJlIHNlbmRpbmcgTFMgcmVxdWVzdHMsIHdoaWNoIHRoZW4KPj4gd291
bGQgZW5kIHVwIG9uIGEgd29ya3F1ZXVlIGZvciBwcm9jZXNzaW5nLiBUaGlzIHdpbGwgZGVhZGxv
Y2sgd2l0aAo+PiBmY2xvb3BfcmVtb3RlcG9ydF9kZWxldGUoKSB3aGljaCB3b3VsZCB0cnkgdG8g
Zmx1c2ggdGhlIHZlcnkgc2FtZSBxdWV1ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSGFubmVzIFJl
aW5lY2tlIDxoYXJlQHN1c2UuZGU+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL252bWUvdGFyZ2V0L2Zj
bG9vcC5jIHwgMiArLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvZmNsb29wLmMg
Yi9kcml2ZXJzL252bWUvdGFyZ2V0L2ZjbG9vcC5jCj4+IGluZGV4IDRmOTQzNWQ5ZmE2MS4uMDIw
OWRhOWJjYjY3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L2ZjbG9vcC5jCj4+
ICsrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvZmNsb29wLmMKPj4gQEAgLTk0Myw3ICs5NDMsNiBA
QCBmY2xvb3BfcmVtb3RlcG9ydF9kZWxldGUoc3RydWN0IAo+PiBudm1lX2ZjX3JlbW90ZV9wb3J0
ICpyZW1vdGVwb3J0KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGZjbG9vcF9ycG9ydCAq
cnBvcnQgPSByZW1vdGVwb3J0LT5wcml2YXRlOwo+PiAtwqDCoMKgIGZsdXNoX3dvcmsoJnJwb3J0
LT5sc193b3JrKTsKPj4gwqDCoMKgwqDCoCBmY2xvb3BfbnBvcnRfcHV0KHJwb3J0LT5ucG9ydCk7
Cj4+IMKgIH0KPj4gQEAgLTEyNzgsNiArMTI3Nyw3IEBAIF9fcmVtb3RlcG9ydF91bnJlZyhzdHJ1
Y3QgZmNsb29wX25wb3J0ICpucG9ydCwgCj4+IHN0cnVjdCBmY2xvb3BfcnBvcnQgKnJwb3J0KQo+
PiDCoMKgwqDCoMKgIGlmICghcnBvcnQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVB
TFJFQURZOwo+PiArwqDCoMKgIGZsdXNoX3dvcmsoJnJwb3J0LT5sc193b3JrKTsKPj4gwqDCoMKg
wqDCoCByZXR1cm4gbnZtZV9mY191bnJlZ2lzdGVyX3JlbW90ZXBvcnQocnBvcnQtPnJlbW90ZXBv
cnQpOwo+PiDCoCB9Cj4gCj4gQW5kIHRoaXMgaXMgd2hhdCB3ZSByZWFsbHkgbmVlZGVkLCBhbHRo
b3VnaCB0aGVyZSdzIHByb2JhYmx5IGEgbGlrZSAKPiB0aGluZyB0aGF0IHNob3VsZCBiZSBkb25l
IG9uIHRoZSB0YXJnZXRwb3J0IGFzIHdlbGwuCj4gCkFzIG1lbnRpb25lZCBpbiB0aGUgcHJldmlv
dXMgbWFpbDogSSB0cmllZCwgYnV0IHRoYXQgY3Jhc2hlZCBldmVuIG1vcmUgCmhvcnJpYmx5LgpN
aWdodCd2ZSBiZWVuIHRvIHN0dXBpZCB0byBkbyBpdCBjb3JyZWN0bHksIHRob3VnaC4KCkNoZWVy
cywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0
b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHbWJILCBNYXhm
ZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpLCBHZXNj
aMOkZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
