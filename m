Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B313344
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 19:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5UG+BplrJrcgVVfucgRkK5tfMOZoK+8nJqcULxfBKGc=; b=FFwwhsl31hOLLmxt0RZRE3TX7
	1cZ59YaLVyAT3fUIzBZScxdt3rtaj+7SFfZjpZqeSJrDZvWHeUOULgtiPsW+a2+eoE87/CZ3qdt4b
	9ZsGfvdWzTRgx+x44iIwkkH78Va8hGVU4C20QqGUiVMQwRTWKNG5jALC1P2CMHMWTt1C9U6SnqvQL
	4RRceaKgYRHVFAkga6FVGFs2ohvMe3UuKuYuv1CRM4gk4+xiBQRlIRYCnSI9NpUfhtWk1PFqpU7pK
	iok+4AJ4LfISV2WdaNagt4K+rrEfhpKcNQgSYF8Cd21vvSOUPs8Z58F/X8UUMV/kdwusV0jHCIRR9
	FZG3pvTHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcGv-00052W-Aa; Fri, 03 May 2019 17:46:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcGq-000523-GZ
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 17:46:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so3057458pgc.4
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 10:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=DkCxW0cXOS5slc/W9R7WbcabDSudGf/xWB1dXACBDfs=;
 b=XIwHi7gsGScPpLM8Tj0EtwxQAB+9OusNjrerTyfu34SH4EHlGZH5hYFEz6i7vA92d2
 waIz5nK5iBumsf4Kj9w9Lrsp6U1nsNuK+0ttvo9AHv6MDoPLBwK2UGzandJkVcPA1zVm
 TXdwmMV6iTEMZA16665wLse1cDbqcMgpQXSJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=DkCxW0cXOS5slc/W9R7WbcabDSudGf/xWB1dXACBDfs=;
 b=H7yme4JhDfvEmJB7ynHAzUKZa49Y1dAvdmGD/j9vx5iTBve/KRY/QSHtDiZQHNKAHy
 MlzUuRtf6nRt/lPk26bdI1ZlWR4xDDmWFQFoSERvEiOwP8RJLWHpmsSRnLFRliAnE2dv
 diMDmwiYgYwfdBsX+2Z/0TU8zrYJUyljBWbYig7T3c8qhJzco38nDFnRBHuN9+GSiMn4
 QcSHFaVOISSbPlbieBQVvAf8eDVz2fWTdpGKPfgrrtNXBvlxGKhHe9qaySYiQtCsCYYs
 P0NyKsB+spWB6D0maHzoYtAvhabAtpthevhypZQabBV11ix2QT1x9ndT1qqdnJ5cQz3R
 1zdg==
X-Gm-Message-State: APjAAAVzCJlRYMaKq5K38JLOdUHuzJAKzEBCy2KqJtxK75M7YqXxK7bB
 D5U+ac71w/i3tgcw5Bt2I32Y7m2ws2U=
X-Google-Smtp-Source: APXvYqyLDKiokK4tYOhuMf5hisZvDS53wu7kRN/qa1DrjwyJz7q8a2PwgWhwFT3TwjFgc+MfNrGDFQ==
X-Received: by 2002:a62:30c2:: with SMTP id
 w185mr12735099pfw.175.1556905610079; 
 Fri, 03 May 2019 10:46:50 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id q87sm4306631pfa.133.2019.05.03.10.46.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 10:46:48 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: use separate work queue to avoid warning
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190503094352.17923-1-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <456b12ed-f713-951b-feab-49fa663d7f96@broadcom.com>
Date: Fri, 3 May 2019 10:46:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503094352.17923-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_104652_555440_26123FB4 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8zLzIwMTkgMjo0MyBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IFdoZW4gdGVhcmlu
ZyBkb3duIGEgY29udHJvbGxlciB0aGUgZm9sbG93aW5nIHdhcm5pbmcgaXMgaXNzdWVkOgo+Cj4g
V0FSTklORzogQ1BVOiAwIFBJRDogMzA2ODEgYXQgLi4va2VybmVsL3dvcmtxdWV1ZS5jOjI0MTgg
Y2hlY2tfZmx1c2hfZGVwZW5kZW5jeQo+Cj4gVGhpcyBoYXBwZW5zIGFzIHRoZSBlcnJfd29yayB3
b3JrcXVldWUgaXRlbSBpcyBzY2hlZHVsZWQgb24gdGhlCj4gc3lzdGVtIHdvcmtxdWV1ZSAod2hp
Y2ggaGFzIFdRX01FTV9SRUNMQUlNIG5vdCBzZXQpLCBidXQgaXMgZmx1c2hlZAo+IGZyb20gYSB3
b3JrcXVldWUgd2hpY2ggaGFzIFdRX01FTV9SRUNMQUlNIHNldC4KPgo+IEZpeCB0aGlzIGJ5IHBy
b3ZpZGluZyBhbiBGQy1OVk1lIHNwZWNpZmljIHdvcmtxdWV1ZS4KPgo+IEZpeGVzOiA0Y2ZmMjgw
YTVmY2MgKCJudm1lLWZjOiByZXNvbHZlIGlvIGZhaWx1cmVzIGR1cmluZyBjb25uZWN0IikKPiBD
YzogSmFtZXMgU21hcnQgPGphbWVzLnNtYXJ0QGJyb2FkY29tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUv
aG9zdC9mYy5jIHwgMTQgKysrKysrKysrKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9o
b3N0L2ZjLmMgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4gaW5kZXggMTQzYzJiODFmZmM1Li5h
MTA4MGZhNGIwNDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+ICsrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPiBAQCAtMjA0LDcgKzIwNCw3IEBAIHN0YXRpYyBMSVNU
X0hFQUQobnZtZV9mY19scG9ydF9saXN0KTsKPiAgIHN0YXRpYyBERUZJTkVfSURBKG52bWVfZmNf
bG9jYWxfcG9ydF9jbnQpOwo+ICAgc3RhdGljIERFRklORV9JREEobnZtZV9mY19jdHJsX2NudCk7
Cj4gICAKPiAtCj4gK3N0YXRpYyBzdHJ1Y3Qgd29ya3F1ZXVlX3N0cnVjdCAqbnZtZV9mY193cTsK
PiAgIAo+ICAgLyoKPiAgICAqIFRoZXNlIGl0ZW1zIGFyZSBzaG9ydC10ZXJtLiBUaGV5IHdpbGwg
ZXZlbnR1YWxseSBiZSBtb3ZlZCBpbnRvCj4gQEAgLTIwNjAsNyArMjA2MCw3IEBAIG52bWVfZmNf
ZXJyb3JfcmVjb3Zlcnkoc3RydWN0IG52bWVfZmNfY3RybCAqY3RybCwgY2hhciAqZXJybXNnKQo+
ICAgCSAqLwo+ICAgCWlmIChjdHJsLT5jdHJsLnN0YXRlID09IE5WTUVfQ1RSTF9DT05ORUNUSU5H
KSB7Cj4gICAJCWFjdGl2ZSA9IGF0b21pY194Y2hnKCZjdHJsLT5lcnJfd29ya19hY3RpdmUsIDEp
Owo+IC0JCWlmICghYWN0aXZlICYmICFzY2hlZHVsZV93b3JrKCZjdHJsLT5lcnJfd29yaykpIHsK
PiArCQlpZiAoIWFjdGl2ZSAmJiAhcXVldWVfd29yayhudm1lX2ZjX3dxLCAmY3RybC0+ZXJyX3dv
cmspKSB7Cj4gICAJCQlhdG9taWNfc2V0KCZjdHJsLT5lcnJfd29ya19hY3RpdmUsIDApOwo+ICAg
CQkJV0FSTl9PTigxKTsKPiAgIAkJfQo+IEBAIC0zNDA2LDYgKzM0MDYsMTAgQEAgc3RhdGljIGlu
dCBfX2luaXQgbnZtZV9mY19pbml0X21vZHVsZSh2b2lkKQo+ICAgewo+ICAgCWludCByZXQ7Cj4g
ICAKPiArCW52bWVfZmNfd3EgPSBhbGxvY193b3JrcXVldWUoIm52bWVfZmNfd3EiLCBXUV9NRU1f
UkVDTEFJTSwgMCk7Cj4gKwlpZiAoIW52bWVfZmNfd3EpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4g
Kwo+ICAgCS8qCj4gICAJICogTk9URToKPiAgIAkgKiBJdCBpcyBleHBlY3RlZCB0aGF0IGluIHRo
ZSBmdXR1cmUgdGhlIGtlcm5lbCB3aWxsIGNvbWJpbmUKPiBAQCAtMzQyMyw3ICszNDI3LDcgQEAg
c3RhdGljIGludCBfX2luaXQgbnZtZV9mY19pbml0X21vZHVsZSh2b2lkKQo+ICAgCXJldCA9IGNs
YXNzX3JlZ2lzdGVyKCZmY19jbGFzcyk7Cj4gICAJaWYgKHJldCkgewo+ICAgCQlwcl9lcnIoImNv
dWxkbid0IHJlZ2lzdGVyIGNsYXNzIGZjXG4iKTsKPiAtCQlyZXR1cm4gcmV0Owo+ICsJCWdvdG8g
b3V0X2Rlc3Ryb3lfd3E7Cj4gICAJfQo+ICAgCj4gICAJLyoKPiBAQCAtMzQ0Nyw2ICszNDUxLDkg
QEAgc3RhdGljIGludCBfX2luaXQgbnZtZV9mY19pbml0X21vZHVsZSh2b2lkKQo+ICAgCWRldmlj
ZV9kZXN0cm95KCZmY19jbGFzcywgTUtERVYoMCwgMCkpOwo+ICAgb3V0X2Rlc3Ryb3lfY2xhc3M6
Cj4gICAJY2xhc3NfdW5yZWdpc3RlcigmZmNfY2xhc3MpOwo+ICtvdXRfZGVzdHJveV93cToKPiAr
CWRlc3Ryb3lfd29ya3F1ZXVlKG52bWVfZmNfd3EpOwo+ICsKPiAgIAlyZXR1cm4gcmV0Owo+ICAg
fQo+ICAgCj4gQEAgLTM0NjMsNiArMzQ3MCw3IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBudm1lX2Zj
X2V4aXRfbW9kdWxlKHZvaWQpCj4gICAKPiAgIAlkZXZpY2VfZGVzdHJveSgmZmNfY2xhc3MsIE1L
REVWKDAsIDApKTsKPiAgIAljbGFzc191bnJlZ2lzdGVyKCZmY19jbGFzcyk7Cj4gKwlkZXN0cm95
X3dvcmtxdWV1ZShudm1lX2ZjX3dxKTsKPiAgIH0KPiAgIAo+ICAgbW9kdWxlX2luaXQobnZtZV9m
Y19pbml0X21vZHVsZSk7CgpSZXZpZXdlZC1ieTrCoMKgIEphbWVzIFNtYXJ0IDxqYW1lcy5zbWFy
dEBicm9hZGNvbS5jb20+CgpMb29rcyBmaW5lIHRvIG1lLsKgIEFuZCB3ZSdyZSBiYWNrIHRvIHdl
cmUgd2Ugd2VyZSBpbiB0aGUgYmVnaW5uaW5nLiBBbmQgCml0IGFsc28gc2F5cyB0aGUgb3RoZXIg
dHJhbnNwb3J0cyBhcmUgbGlrZWx5IHRvIGJlIGluIHRoZSBzYW1lIGJvYXQgYXMgCnRoZSBlZmZv
cnQgdG8gbW92ZSBldmVyeXRoaW5nIG92ZXIgdG8gdGhlIHN5c3RlbSB3b3JrcXVldWUgd2FzIGEg
CmNvbW1vbml6YXRpb24gY2xlYW51cCBtYWRlIHRvIGFsbCB0cmFuc3BvcnRzLgoKLS0gamFtZXMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1u
dm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
