Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E62D1D1FA9
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 21:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRutKYDyBVhjgzphjmk3pA2Joh7QIkZxQ/zwZR9+wek=; b=EZmju8dRO6pJWb6zQ8aEJgpxW
	BSO4JHYPql5eBIDt/ilDmOnwm4k8ht7GhFPThkbrYe3klC3I8FVY9AbsYBhqWFnC73yFtzmalWaZo
	fS0L+ju+pGCgNacJRDS0eRBFplii9ZTMrhZUt565wANdyJ0tnzL9LBr+JX09USPTgFZShBlDxV24/
	xDtAsvEMDmGk0oduKugVADtLnFaU6XS4tUWjOAIlR7jasaNSsye9Bg6pHI3PmyYY6uc50HvgXksQr
	vXttFfs5HuouurDwh8WiEcK5l4m9nh4qfB5K2R1E2JAVghpRGALHwoSyz/E5EtypoYNrws7ig6cTN
	bJKg+S45w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxPY-0004Pf-Cq; Wed, 13 May 2020 19:51:24 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxPS-0004Ob-2U
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 19:51:21 +0000
Received: by mail-pj1-x1042.google.com with SMTP id n15so18211pjt.4
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 12:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=GSmmtu3tjHKQtrGzEeG71aWN/3XvlkS1BWKqZkOfrJI=;
 b=RtRJ330EY5igO6NTWsU+KTg/G28KoRf8f2eSeYfYBm8pV+xvzWS2ICEYxFv8WFoaZu
 R7N52+lejKkS+OoY5sE7quMD3I7PohpQdORIvt7JLfi0rZySKLqyAuWsuCRQ6dbgOMB0
 4sSa34Z/yOvsirVbTBThf4mUpbQZj2H1gTZNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GSmmtu3tjHKQtrGzEeG71aWN/3XvlkS1BWKqZkOfrJI=;
 b=K/fmev/88gWp78Cu4lXwf7iWAqL2kxGRea0FJc5vr/ofH9PUO4fsj0xwsPaShqFhGi
 G0L36yZJLiAGZHnZEZb7u0ArNXLsnkEXXOyEkmwyiqvkNA1oWbXim58i4t9UGOpyLG0w
 zsFT76s+d4EyikJ0q60T+f2nKfLKxjL6f8tN7sMIapdSbwkXuL1rRUXvhtfaLQfwWNpl
 kILj5Yj6No6r35AgHoRvvLqkDF7tNSRBdtVn+juFPifwFv2e5e54ltmQtv1RRyG5X/zG
 ToYJ0j3aUxqRfyL7fJm9GG9yi//rQloMX7EjYEwEDKgKLfhtJBj3byYK9juI1XU3GHYE
 NtJg==
X-Gm-Message-State: AGi0PubzhsCRqwKH4k3EH3NSCkap3ihdEHVJEaQycXaGzAaF5sGudXSj
 zDZWkw4ummfR2WuUpN5B1uoiEA==
X-Google-Smtp-Source: APiQypKn5SwGU0F8hV6/PNaoI3bdjazLk6xoImqGJOe196918gvfVeI0CyvWabQEYNl6fNs9yHD1ug==
X-Received: by 2002:a17:90a:138c:: with SMTP id
 i12mr35369454pja.36.1589399476511; 
 Wed, 13 May 2020 12:51:16 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g10sm316627pfk.103.2020.05.13.12.51.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:51:15 -0700 (PDT)
Subject: Re: [PATCH 14/16] nvmet: add metadata/T10-PI support
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-15-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <0599e55c-a9bf-75f6-5df3-9558029712b8@broadcom.com>
Date: Wed, 13 May 2020 12:51:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-15-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_125118_118142_A4D45F40 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzQvMjAyMCA4OjU3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4gRnJvbTogSXNyYWVs
IFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+Cj4gRXhwb3NlIHRoZSBuYW1lc3BhY2Ug
bWV0YWRhdGEgZm9ybWF0IHdoZW4gUEkgaXMgZW5hYmxlZC4gVGhlIHVzZXIgbmVlZHMKPiB0byBl
bmFibGUgdGhlIGNhcGFiaWxpdHkgcGVyIHN1YnN5c3RlbSBhbmQgcGVyIHBvcnQuIFRoZSBvdGhl
ciBtZXRhZGF0YQo+IHByb3BlcnRpZXMgYXJlIHRha2VuIGZyb20gdGhlIG5hbWVzcGFjZS9iZGV2
Lgo+Cj4gVXNhZ2UgZXhhbXBsZToKPiBlY2hvIDEgPiAvY29uZmlnL252bWV0L3N1YnN5c3RlbXMv
JHtOQU1FfS9hdHRyX3BpX2VuYWJsZQo+IGVjaG8gMSA+IC9jb25maWcvbnZtZXQvcG9ydHMvJHtQ
T1JUX05VTX0vcGFyYW1fcGlfZW5hYmxlCj4KPiBTaWduZWQtb2ZmLWJ5OiBJc3JhZWwgUnVrc2hp
biA8aXNyYWVsckBtZWxsYW5veC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF4IEd1cnRvdm95IDxt
YXhnQG1lbGxhbm94LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS90YXJnZXQvYWRtaW4tY21k
LmMgICB8IDI2ICsrKysrKysrKysrKysrKy0tLQo+ICAgZHJpdmVycy9udm1lL3RhcmdldC9jb25m
aWdmcy5jICAgIHwgNTggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
ICBkcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYyAgICAgICAgfCAyMSArKysrKysrKysrKy0tLQo+
ICAgZHJpdmVycy9udm1lL3RhcmdldC9mYWJyaWNzLWNtZC5jIHwgIDcgKysrLS0KPiAgIGRyaXZl
cnMvbnZtZS90YXJnZXQvbnZtZXQuaCAgICAgICB8IDE5ICsrKysrKysrKysrKysKPiAgIDUgZmls
ZXMgY2hhbmdlZCwgMTIxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvYWRtaW4tY21kLmMgYi9kcml2ZXJzL252bWUvdGFy
Z2V0L2FkbWluLWNtZC5jCj4gaW5kZXggOTA1YWJhOC4uOWM4YTAwZCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL252bWUvdGFyZ2V0L2FkbWluLWNtZC5jCj4gKysrIGIvZHJpdmVycy9udm1lL3Rhcmdl
dC9hZG1pbi1jbWQuYwo+IEBAIC0zNDEsNiArMzQxLDcgQEAgc3RhdGljIHZvaWQgbnZtZXRfZXhl
Y3V0ZV9pZGVudGlmeV9jdHJsKHN0cnVjdCBudm1ldF9yZXEgKnJlcSkKPiAgIHsKPiAgIAlzdHJ1
Y3QgbnZtZXRfY3RybCAqY3RybCA9IHJlcS0+c3EtPmN0cmw7Cj4gICAJc3RydWN0IG52bWVfaWRf
Y3RybCAqaWQ7Cj4gKwl1MzIgY21kX2NhcHN1bGVfc2l6ZTsKPiAgIAl1MTYgc3RhdHVzID0gMDsK
PiAgIAo+ICAgCWlkID0ga3phbGxvYyhzaXplb2YoKmlkKSwgR0ZQX0tFUk5FTCk7Cj4gQEAgLTQz
Myw5ICs0MzQsMTUgQEAgc3RhdGljIHZvaWQgbnZtZXRfZXhlY3V0ZV9pZGVudGlmeV9jdHJsKHN0
cnVjdCBudm1ldF9yZXEgKnJlcSkKPiAgIAo+ICAgCXN0cmxjcHkoaWQtPnN1Ym5xbiwgY3RybC0+
c3Vic3lzLT5zdWJzeXNucW4sIHNpemVvZihpZC0+c3VibnFuKSk7Cj4gICAKPiAtCS8qIE1heCBj
b21tYW5kIGNhcHN1bGUgc2l6ZSBpcyBzcWUgKyBzaW5nbGUgcGFnZSBvZiBpbi1jYXBzdWxlIGRh
dGEgKi8KPiAtCWlkLT5pb2Njc3ogPSBjcHVfdG9fbGUzMigoc2l6ZW9mKHN0cnVjdCBudm1lX2Nv
bW1hbmQpICsKPiAtCQkJCSAgcmVxLT5wb3J0LT5pbmxpbmVfZGF0YV9zaXplKSAvIDE2KTsKPiAr
CS8qCj4gKwkgKiBNYXggY29tbWFuZCBjYXBzdWxlIHNpemUgaXMgc3FlICsgaW4tY2Fwc3VsZSBk
YXRhIHNpemUuCj4gKwkgKiBEaXNhYmxlIGluLWNhcHN1bGUgZGF0YSBmb3IgTWV0YWRhdGEgY2Fw
YWJsZSBjb250cm9sbGVycy4KPiArCSAqLwo+ICsJY21kX2NhcHN1bGVfc2l6ZSA9IHNpemVvZihz
dHJ1Y3QgbnZtZV9jb21tYW5kKTsKPiArCWlmICghY3RybC0+cGlfc3VwcG9ydCkKPiArCQljbWRf
Y2Fwc3VsZV9zaXplICs9IHJlcS0+cG9ydC0+aW5saW5lX2RhdGFfc2l6ZTsKPiArCWlkLT5pb2Nj
c3ogPSBjcHVfdG9fbGUzMihjbWRfY2Fwc3VsZV9zaXplIC8gMTYpOwo+ICsKClRoaXMgc2VlbXMg
b2RkIHRvIG1lLCBhbmQgc2hvdWxkIHByb2JhYmx5IGJlIHJlZmVyZW5jaW5nIGF0dHJpYnV0ZXMg
b2YgCnRoZSBhIHRyYW5zcG9ydCwgd2hpY2ggc2hvdWxkIHByb2JhYmx5IGJlIHNldCBiYXNlZCBv
biB3aGF0IHRyYW5zcG9ydCAKcG9ydCB0aGUgY29tbWFuZCB3YXMgcmVjZWl2ZWQgb24uCgoKPiAg
IAkvKiBNYXggcmVzcG9uc2UgY2Fwc3VsZSBzaXplIGlzIGNxZSAqLwo+ICAgCWlkLT5pb3Jjc3og
PSBjcHVfdG9fbGUzMihzaXplb2Yoc3RydWN0IG52bWVfY29tcGxldGlvbikgLyAxNik7Cj4gICAK
PiBAQCAtNDY1LDYgKzQ3Miw3IEBAIHN0YXRpYyB2b2lkIG52bWV0X2V4ZWN1dGVfaWRlbnRpZnlf
Y3RybChzdHJ1Y3QgbnZtZXRfcmVxICpyZXEpCj4gICAKPiAgIHN0YXRpYyB2b2lkIG52bWV0X2V4
ZWN1dGVfaWRlbnRpZnlfbnMoc3RydWN0IG52bWV0X3JlcSAqcmVxKQo+ICAgewo+ICsJc3RydWN0
IG52bWV0X2N0cmwgKmN0cmwgPSByZXEtPnNxLT5jdHJsOwo+ICAgCXN0cnVjdCBudm1ldF9ucyAq
bnM7Cj4gICAJc3RydWN0IG52bWVfaWRfbnMgKmlkOwo+ICAgCXUxNiBzdGF0dXMgPSAwOwo+IEBA
IC00ODIsNyArNDkwLDcgQEAgc3RhdGljIHZvaWQgbnZtZXRfZXhlY3V0ZV9pZGVudGlmeV9ucyhz
dHJ1Y3QgbnZtZXRfcmVxICpyZXEpCj4gICAJfQo+ICAgCj4gICAJLyogcmV0dXJuIGFuIGFsbCB6
ZXJvZWQgYnVmZmVyIGlmIHdlIGNhbid0IGZpbmQgYW4gYWN0aXZlIG5hbWVzcGFjZSAqLwo+IC0J
bnMgPSBudm1ldF9maW5kX25hbWVzcGFjZShyZXEtPnNxLT5jdHJsLCByZXEtPmNtZC0+aWRlbnRp
ZnkubnNpZCk7Cj4gKwlucyA9IG52bWV0X2ZpbmRfbmFtZXNwYWNlKGN0cmwsIHJlcS0+Y21kLT5p
ZGVudGlmeS5uc2lkKTsKPiAgIAlpZiAoIW5zKQo+ICAgCQlnb3RvIGRvbmU7Cj4gICAKPiBAQCAt
NTI2LDYgKzUzNCwxNiBAQCBzdGF0aWMgdm9pZCBudm1ldF9leGVjdXRlX2lkZW50aWZ5X25zKHN0
cnVjdCBudm1ldF9yZXEgKnJlcSkKPiAgIAo+ICAgCWlkLT5sYmFmWzBdLmRzID0gbnMtPmJsa3Np
emVfc2hpZnQ7Cj4gICAKPiArCWlmIChjdHJsLT5waV9zdXBwb3J0ICYmIG52bWV0X25zX2hhc19w
aShucykpIHsKPiArCQlpZC0+ZHBjID0gTlZNRV9OU19EUENfUElfRklSU1QgfCBOVk1FX05TX0RQ
Q19QSV9MQVNUIHwKPiArCQkJICBOVk1FX05TX0RQQ19QSV9UWVBFMSB8IE5WTUVfTlNfRFBDX1BJ
X1RZUEUyIHwKPiArCQkJICBOVk1FX05TX0RQQ19QSV9UWVBFMzsKCldoeSBpcyBQSV9UWVBFMiBn
ZXR0aW5nIHNldCBpZiBudm1ldF9iZGV2X25zX2VuYWJsZV9pbnRlZ3JpdHkoKSB3b24ndCAKc2V0
IGEgbWV0YWRhdGEgc2l6ZSA/Cgo+ICsJCWlkLT5tYyA9IE5WTUVfTUNfRVhURU5ERURfTEJBOwo+
ICsJCWlkLT5kcHMgPSBucy0+cGlfdHlwZTsKPiArCQlpZC0+ZmxiYXMgPSBOVk1FX05TX0ZMQkFT
X01FVEFfRVhUOwoKSSBndWVzcyB0aGlzIGlzIG9rIC0gYWx3YXlzIHJlcXVpcmluZyBleHRlbmRl
ZCBsYmFzLiBXaWxsIHRoaXMgZXZlciAKY2hhbmdlIG92ZXIgdGltZSA/Cgo+ICsJCWlkLT5sYmFm
WzBdLm1zID0gbnMtPm1ldGFkYXRhX3NpemU7Cj4gKwl9Cj4gKwo+ICAgCWlmIChucy0+cmVhZG9u
bHkpCj4gICAJCWlkLT5uc2F0dHIgfD0gKDEgPDwgMCk7Cj4gICAJbnZtZXRfcHV0X25hbWVzcGFj
ZShucyk7Ci4uLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYyBiL2Ry
aXZlcnMvbnZtZS90YXJnZXQvY29yZS5jCj4gaW5kZXggNTBkZmM2MC4uOWY2YjBmOSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS90
YXJnZXQvY29yZS5jCj4gQEAgLTMyMiwxMiArMzIyLDIxIEBAIGludCBudm1ldF9lbmFibGVfcG9y
dChzdHJ1Y3QgbnZtZXRfcG9ydCAqcG9ydCkKPiAgIAlpZiAoIXRyeV9tb2R1bGVfZ2V0KG9wcy0+
b3duZXIpKQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAo+IC0JcmV0ID0gb3BzLT5hZGRfcG9y
dChwb3J0KTsKPiAtCWlmIChyZXQpIHsKPiAtCQltb2R1bGVfcHV0KG9wcy0+b3duZXIpOwo+IC0J
CXJldHVybiByZXQ7Cj4gKwkvKgo+ICsJICogSWYgdGhlIHVzZXIgcmVxdWVzdGVkIFBJIHN1cHBv
cnQgYW5kIHRoZSB0cmFuc3BvcnQgaXNuJ3QgcGkgY2FwYWJsZSwKPiArCSAqIGRvbid0IGVuYWJs
ZSB0aGUgcG9ydC4KPiArCSAqLwo+ICsJaWYgKHBvcnQtPnBpX2VuYWJsZSAmJiAhb3BzLT5tZXRh
ZGF0YV9zdXBwb3J0KSB7Cj4gKwkJcHJfZXJyKCJUMTAtUEkgaXMgbm90IHN1cHBvcnRlZCBieSB0
cmFuc3BvcnQgdHlwZSAlZFxuIiwKPiArCQkgICAgICAgcG9ydC0+ZGlzY19hZGRyLnRydHlwZSk7
Cj4gKwkJcmV0ID0gLUVJTlZBTDsKPiArCQlnb3RvIG91dF9wdXQ7Cj4gICAJfQo+ICAgCj4gKwly
ZXQgPSBvcHMtPmFkZF9wb3J0KHBvcnQpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIG91dF9wdXQ7
Cj4gKwoKb2sgZm9yIG5vdyAtIGJ1dCBpdCdzIGdvaW5nIHRvIGhhdmUgdG8gYmUgY2hhbmdlZCBs
YXRlciB0byBjaGVjayB0aGUgCnBvcnQgYXR0cmlidXRlcywgbm90IHRoZSB0cmFuc3BvcnQgb3Bz
LsKgIFNvIGl0J2xsIGdvIGJhY2sgdG8gYWRkX3BvcnQsIAp0aGVuIHZhbGlkYXRpb24gdy8gZGVs
ZXRlX3BvcnQgaWYgZmFpbHMuCgo+ICAgCS8qIElmIHRoZSB0cmFuc3BvcnQgZGlkbid0IHNldCBp
bmxpbmVfZGF0YV9zaXplLCB0aGVuIGRpc2FibGUgaXQuICovCj4gICAJaWYgKHBvcnQtPmlubGlu
ZV9kYXRhX3NpemUgPCAwKQo+ICAgCQlwb3J0LT5pbmxpbmVfZGF0YV9zaXplID0gMDsKPiBAQCAt
MzM1LDYgKzM0NCwxMCBAQCBpbnQgbnZtZXRfZW5hYmxlX3BvcnQoc3RydWN0IG52bWV0X3BvcnQg
KnBvcnQpCj4gICAJcG9ydC0+ZW5hYmxlZCA9IHRydWU7Cj4gICAJcG9ydC0+dHJfb3BzID0gb3Bz
Owo+ICAgCXJldHVybiAwOwo+ICsKPiArb3V0X3B1dDoKPiArCW1vZHVsZV9wdXQob3BzLT5vd25l
cik7Cj4gKwlyZXR1cm4gcmV0Owo+ICAgfQo+ICAgCj4gICB2b2lkIG52bWV0X2Rpc2FibGVfcG9y
dChzdHJ1Y3QgbnZtZXRfcG9ydCAqcG9ydCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3Rh
cmdldC9mYWJyaWNzLWNtZC5jIGIvZHJpdmVycy9udm1lL3RhcmdldC9mYWJyaWNzLWNtZC5jCj4g
aW5kZXggNTJhNmY3MC4uNDJiZDEyYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0
L2ZhYnJpY3MtY21kLmMKPiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2ZhYnJpY3MtY21kLmMK
PiBAQCAtMTk3LDYgKzE5Nyw4IEBAIHN0YXRpYyB2b2lkIG52bWV0X2V4ZWN1dGVfYWRtaW5fY29u
bmVjdChzdHJ1Y3QgbnZtZXRfcmVxICpyZXEpCj4gICAJCWdvdG8gb3V0Owo+ICAgCX0KPiAgIAo+
ICsJY3RybC0+cGlfc3VwcG9ydCA9IGN0cmwtPnBvcnQtPnBpX2VuYWJsZSAmJiBjdHJsLT5zdWJz
eXMtPnBpX3N1cHBvcnQ7Cj4gKwo+ICAgCXV1aWRfY29weSgmY3RybC0+aG9zdGlkLCAmZC0+aG9z
dGlkKTsKPiAgIAo+ICAgCXN0YXR1cyA9IG52bWV0X2luc3RhbGxfcXVldWUoY3RybCwgcmVxKTsK
PiBAQCAtMjA1LDggKzIwNyw5IEBAIHN0YXRpYyB2b2lkIG52bWV0X2V4ZWN1dGVfYWRtaW5fY29u
bmVjdChzdHJ1Y3QgbnZtZXRfcmVxICpyZXEpCj4gICAJCWdvdG8gb3V0Owo+ICAgCX0KPiAgIAo+
IC0JcHJfaW5mbygiY3JlYXRpbmcgY29udHJvbGxlciAlZCBmb3Igc3Vic3lzdGVtICVzIGZvciBO
UU4gJXMuXG4iLAo+IC0JCWN0cmwtPmNudGxpZCwgY3RybC0+c3Vic3lzLT5zdWJzeXNucW4sIGN0
cmwtPmhvc3RucW4pOwo+ICsJcHJfaW5mbygiY3JlYXRpbmcgY29udHJvbGxlciAlZCBmb3Igc3Vi
c3lzdGVtICVzIGZvciBOUU4gJXMlcy5cbiIsCj4gKwkJY3RybC0+Y250bGlkLCBjdHJsLT5zdWJz
eXMtPnN1YnN5c25xbiwgY3RybC0+aG9zdG5xbiwKPiArCQljdHJsLT5waV9zdXBwb3J0ID8gIiBU
MTAtUEkgaXMgZW5hYmxlZCIgOiAiIik7Cj4gICAJcmVxLT5jcWUtPnJlc3VsdC51MTYgPSBjcHVf
dG9fbGUxNihjdHJsLT5jbnRsaWQpOwo+ICAgCj4gICBvdXQ6Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbnZtZS90YXJnZXQvbnZtZXQuaCBiL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaAo+IGlu
ZGV4IGNlZWRhYWYuLjI5ODZlMmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9u
dm1ldC5oCj4gKysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9udm1ldC5oCj4gQEAgLTE0NSw2ICsx
NDUsNyBAQCBzdHJ1Y3QgbnZtZXRfcG9ydCB7Cj4gICAJYm9vbAkJCQllbmFibGVkOwo+ICAgCWlu
dAkJCQlpbmxpbmVfZGF0YV9zaXplOwo+ICAgCWNvbnN0IHN0cnVjdCBudm1ldF9mYWJyaWNzX29w
cwkqdHJfb3BzOwo+ICsJYm9vbAkJCQlwaV9lbmFibGU7CgpvayAtIGJ1dCB3b3VsZCBoYXZlIGxp
a2VkIHRvIGhhdmUgc2VlbiB0aGlzIGdlbmVyaWMtaXplZCBmb3IgbWV0YWRhdGEgCnN1cHBvcnQs
IHRoZW4gUEkgaW4gdGhlIG1ldGFkYXRhLgoKCi0tIGphbWVzCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdAps
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
