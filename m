Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861FC1C6B2
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kL2FWbrPQNIv4tvC16mtbzUSO0yBw9IQBWvsF1APWpc=; b=EFhMhK5ydb1cuG7QX9BhU9eGo
	vaArIt7iJSrmh5g1EwikcrI0PngAiCQ0DWfeFDVqqjxx2C6c0R5ve76vNpsFWwzCeXYRBXm5VxQMW
	6NNrdVLlFJtDepO7QZzcuVra5l+2G/UW6IwdrfN/CV6ReiBQv06edazus6Ona75FxgxR56kVouvoi
	BLWk9J/P69onsQ5+cd5a2ZS1/yG4TZEiHxqiN1hXi7tr+u6zcsFBiq81XjlC7ZaQPG3pVI1XjNUj+
	9aFym7aDxrAs5SJaNkcuIR4oiJNRvlgbnOgj05jbcVoynxH2hbmDpfwZLyvg9d+LCLro3shTn2BP/
	+7oKDDMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUPw-0002qy-9b; Tue, 14 May 2019 10:12:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUPr-0002qS-S2
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:12:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 00691AFA1;
 Tue, 14 May 2019 10:12:07 +0000 (UTC)
Subject: Re: [PATCH 1/7] nvmet: add transport discovery change op
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-2-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <3ea977e2-0b26-6b8f-63b4-c54fbe801dc2@suse.de>
Date: Tue, 14 May 2019 12:12:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-2-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_031212_053441_22AF6C67 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gU29tZSB0cmFuc3BvcnRz
LCBzdWNoIGFzIEZDLU5WTUUsIHN1cHBvcnQgZGlzY292ZXJ5IGNvbnRyb2xsZXIgY2hhbmdlCj4g
ZXZlbnRzIHdpdGhvdXQgdGhlIHVzZSBvZiBhIHBlcnNpc3RlbnQgZGlzY292ZXJ5IGNvbnRyb2xs
ZXIuIEZDIHJlY2VpdmVzCj4gZXZlbnRzIHZpYSBSU0NOIGZyb20gdGhlIEZDIEZhYnJpYyBDb250
cm9sbGVyIG9yIHN1YnN5c3RlbSBGQyBwb3J0Lgo+IAo+IFRoaXMgcGF0Y2ggYWRkcyBhIG52bWV0
IHRyYW5zcG9ydCBvcCB0aGF0IGlzIGNhbGxlZCB3aGVuZXZlciBhCj4gZGlzY292ZXJ5IGNoYW5n
ZSBldmVudCBvY2N1cnMgaW4gdGhlIG52bWV0IGxheWVyLgo+IAo+IFRvIGZhY2lsaXRhdGUgdGhl
IGNhbGxiYWNrIHdpdGhvdXQgYWRkaW5nIGFub3RoZXIgbGF5ZXIgdG8gY3Jvc3MgaW50bwo+IGNv
cmUuYyB0byByZWZlcmVuY2UgdGhlIHRyYW5zcG9ydCBvcHMsIHRoZSBwb3J0IHN0cnVjdHVyZSBz
bmFwc2hvdHMKPiB0aGUgdHJhbnNwb3J0IG9wcyB3aGVuIHRoZSBwb3J0IGlzIGVuYWJsZWQgYW5k
IGNsZWFycyB0aGVtIHdoZW4gZGlzYWJsZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgU21h
cnQgPGpzbWFydDIwMjFAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL3RhcmdldC9j
b3JlLmMgICAgICB8IDIgKysKPiAgIGRyaXZlcnMvbnZtZS90YXJnZXQvZGlzY292ZXJ5LmMgfCA0
ICsrKysKPiAgIGRyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaCAgICAgfCAyICsrCj4gICAzIGZp
bGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+IApJIGxpa2UgdGhlIGlkZWEsIGFuZCBzb21l
dGhpbmcgbGlrZSB0aGlzIGlzIGluIGZhY3QgcmVxdWlyZWQgd2hlbiAKcmVzdGFydGluZyBudm1l
dGNsaS4KClJldmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVl
cnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2Ug
JiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMg
Njg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFH
IE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
