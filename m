Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4278EF09AB
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 23:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zeb0tjrNGqyGnnt+M0KDNTFq6exnwmHesVDZ1NK3JsQ=; b=SQ2JKSJiDu2jlAB++eGm3SLCW
	/0RoHT9wj9NSI3v0VHhKok5gZOglZ42GCunDrXk/po565i58DbiONoN00ZJXcBUMIzmWdsbNvtm0i
	klBCTXUdYgtSR1SMpI2uXavlfDqub+da47SLthVFqMVcO26xlfJQPkEY8ClB+vgSm77QH2Ngh3L3a
	LpP0n6sEBQpZl/BUfletMu2AmYWFwgWgW9r6SEgvCX6G/NzDAKv1DYMYyYS/OBNtHn6+1k2Fml5GM
	1Ovt3a3GC7lvORBn/+NpcTCdVFQW21jEbHn3NSNZEjWLnan05vus67a3QFvUoWsn4yD/ScPxL1Y2i
	5rkqY9zUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7TK-00021W-FG; Tue, 05 Nov 2019 22:38:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7TE-00021A-M4
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 22:38:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id q130so1155754wme.2
 for <linux-nvme@lists.infradead.org>; Tue, 05 Nov 2019 14:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=/zWYNBX0/L2ymKFAkn8/AjsXKR0Kc7yiZN2iarWn5UY=;
 b=alTFhu5X6m10Bs1HulbSVCuh76ZMuK1btpsBu3hFtc7FjGyX/KBl+bS6J+8whzWDVI
 UVscmYJBGbWRN7JpyGR3vMZDgmMzmLutB1AWZ03DFxRDniSZB2d42oizvdpeiY/uUaHe
 qU7nTomBdDs7qRe3UAzjB05l9kP8QyTNZsZVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/zWYNBX0/L2ymKFAkn8/AjsXKR0Kc7yiZN2iarWn5UY=;
 b=CI9hX0/T3Q7M/n3iGuCAWbh9aJL/cBu6S4Td7Ocp0NvXGb93+2H7x7lh8q/cW+nv+6
 pNDMYn/v9hH0LP7pDBVbKHlchI+sjHPX64Q5nC5g8jk5+hBgGiyG9t84lDLQ8nemqBHz
 H7n2hBbf0ZXQ6K87+aFb8HYVFBe2GZa4N1W1CEH0YB2JHZWc9wW+qb17X2pI3Nxj6SID
 xkoMqCyssMcxk47J30DCsf1++/qY0XMafvTWVZezY5uSqDj92SS1AeldkQzHKqMDKwfs
 dkx6PP2hPfU25qQrqSdX5pi5cByiiv5Z51yTWtqN1LjKpcgVcxRBBqopkEzLaTfg/ciY
 INYw==
X-Gm-Message-State: APjAAAXUPBL6Ibl+987rug7xvEKYMxduZE5+CjVB+ieqSJ6fBh216Z1d
 noTElc1aSLOuY2oUYDOx9FhZQ5edXT/mCBNQg031YS3Yzgj5oeJVVWJ55RJcdqsBZR0hDySkFk3
 arkzDOH/C+dSiEDkK2oCQdBXVcvOd2D0VJzrJIZo6j03hv2J6HHtXGncBZJPt2B6Cylrhf6Z7WP
 7Jc3W+9A==
X-Google-Smtp-Source: APXvYqzy1k+GokA81sId74kdzhmRQEKgQBOqnmulj7kEwc9kCoiAhmtNXsVsmCVzQ3Lo/xJLKxSotg==
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr282419wmj.106.1572993518096; 
 Tue, 05 Nov 2019 14:38:38 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 6sm1126893wmd.36.2019.11.05.14.38.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 14:38:37 -0800 (PST)
Subject: Re: [PATCH] nvmet: make ctrl-id configurable
To: Mark Ruijter <MRuijter@onestopsystems.com>,
 Max Gurtovoy <maxg@mellanox.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20191103181343.3011-1-chaitanya.kulkarni@wdc.com>
 <409804f3-158b-cc3e-9b04-6499bfe1638d@mellanox.com>
 <3381ACB3-3ACC-4124-8925-09CED68BA11E@onestopsystems.com>
 <b79e612f-4b49-a80f-bc34-e672ae98c1af@mellanox.com>
 <B500B4ED-DF25-41F3-83F8-6E239718564A@onestopsystems.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <c8472575-1041-c44e-e26a-1201161c22c6@broadcom.com>
Date: Tue, 5 Nov 2019 14:38:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <B500B4ED-DF25-41F3-83F8-6E239718564A@onestopsystems.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_143840_729280_6E2902DF 
X-CRM114-Status: GOOD (  29.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAxMS80LzIwMTkgODozNiBBTSwgTWFyayBSdWlqdGVyIHdyb3RlOgo+IEhpIE1heCAmIENo
YWl0YW55YSwKPgo+IERvZXMgdGhlIE5WTUUgc3BlY2lmaWNhdGlvbiBldmVuIGFsbG93IGR1cGxp
Y2F0ZSBjb250cm9sbGVyIGlkJ3M/Ck5vdCB3aXRoaW4gYSBzaW5nbGUgc3Vic3lzdGVtLgpCdXQg
YWNyb3NzIG11bHRpcGxlIHN1YnN5c3RlbXMgdGhlcmUgY2FuIGJlLgoKRGlzY292ZXJ5IGNvbnRy
b2xsZXJzIChha2Egc3Vic3lzdGVtIGlzIHRoZSBkaXNjb3ZlcnkgTlFOKSBhcmUgc2VlbiBhcyAK
aW5kZXBlbmRlbnQgc3Vic3lzdGVtcy7CoCBHcmFudGVkIEkgZG9uJ3Qga25vdyBpZiB0aGUgc3Bl
YyBhY3R1YWxseSBzYXlzIAp0aGF0IGJ1dCBpdCBoYXMgdG8gd29yayB0aGF0IHdheS4KCi0tIGph
bWVzCgo+IEkgZG9uJ3QgbWluZCBhZGRpbmcgbG9naWMgdG8gdGVzdCBjdHJsLT5vcHRzLT50cmFk
ZHIgaG93ZXZlciBteSBmaXJzdCB0aG91Z2h0IHdvdWxkIGJlIHRoYXQgaGF2aW5nIGR1cGxpY2F0
ZSBjb250cm9sbGVyIGlkcyBwb3NlcyBhIHJpc2s/Cj4gRXZlbiBpZiBpdCB3b3JrcyBmb3IgTGlu
dXggaXQgY291bGQgYmUgcG90ZW50aWFsbHkgYmUgcHJvYmxlbWF0aWMgZm9yIGFub3RoZXIgT1Ms
IHVubGVzcyBOVk1FIHNwZWMgY2xlYXJseSBzYXlzIGl0IGlzIGFsbG93ZWQuCj4gSSdsbCBzdGFy
dCByZWFkaW5nIHRoZSBudm1lIHNwZWNpZmljYXRpb24gdG8gc2VlIGlmIGl0IGNvbnRhaW5zIGFu
eSBpbmZvcm1hdGlvbiBhYm91dCB0aGlzLgo+Cj4gQENoYWl0YW55YSB3aGVuIGl0IGNvbWVzIHRv
IHRoZSBwYXRjaCB5b3UgcHJvdmlkZWQgZWFybGllcjoKPiBJIGNoYW5nZWQgdGhhdCBwYXRjaCBz
byB0aGF0IGl0IHNvbHZlcyB0aGUgdHdvIHByb2JsZW1zIHRoYXQgSSByZXBvcnRlZCBlYXJsaWVy
Lgo+IEl0IG5vdyBfYWx3YXlzXyB1c2VzIGlkYV9zaW1wbGVfZ2V0KCkuCj4KPiBBIHRoaXJkIGZp
eCBpcyB0aGF0IGl0IG5vdyBjaGVja3MgaWYgdGhlIHJlcXVlc3RlZCBjb250cm9sbGVyIElEIGlz
IGFsbG93ZWQuCj4+PiBlY2hvIDY1NTM0ID4gYXR0cl9pZAo+IC1iYXNoOiBlY2hvOiB3cml0ZSBl
cnJvcjogSW52YWxpZCBhcmd1bWVudAo+Cj4gVGhhbmtzLAo+Cj4gTWFyawo+Cj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvY29u
ZmlnZnMuYyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvY29uZmlnZnMuYwo+IGluZGV4IDgzZDExMjQu
LmZhMWEwYjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jCj4g
KysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jCj4gQEAgLTkzMSw2ICs5MzEsMzUg
QEAgc3RhdGljIHNzaXplX3QgbnZtZXRfc3Vic3lzX2F0dHJfc2VyaWFsX3N0b3JlKHN0cnVjdCBj
b25maWdfaXRlbSAqaXRlbSwKPiAgIH0KPiAgIENPTkZJR0ZTX0FUVFIobnZtZXRfc3Vic3lzXywg
YXR0cl9zZXJpYWwpOwo+ICAgCj4gK3N0YXRpYyBzc2l6ZV90IG52bWV0X3N1YnN5c19hdHRyX2lk
X3Nob3coc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNoYXIgKnBhZ2UpCj4gK3sKPiArICAgICAgIHN0cnVjdCBu
dm1ldF9zdWJzeXMgKnN1YnN5cyA9IHRvX3N1YnN5cyhpdGVtKTsKPiArCj4gKyAgICAgICByZXR1
cm4gc25wcmludGYocGFnZSwgUEFHRV9TSVpFLCAiJWRcbiIsIHN1YnN5cy0+aWQpOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgc3NpemVfdCBudm1ldF9zdWJzeXNfYXR0cl9pZF9zdG9yZShzdHJ1Y3QgY29u
ZmlnX2l0ZW0gKml0ZW0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3QgY2hhciAqcGFnZSwgc2l6ZV90IGNvdW50KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3Qg
bnZtZXRfc3Vic3lzICpzdWJzeXMgPSB0b19zdWJzeXMoaXRlbSk7Cj4gKyAgICAgICB1MTYgc2lk
Owo+ICsgICAgICAgaW50IHJldCA9IDA7Cj4gKwo+ICsgICAgICAgZG93bl93cml0ZSgmbnZtZXRf
Y29uZmlnX3NlbSk7Cj4gKyAgICAgICAvKiBzaG91bGQgdGhpcyBiZSAleCA/ICovCj4gKyAgICAg
ICBzc2NhbmYocGFnZSwgIiVodVxuIiwgJnNpZCk7Cj4gKwo+ICsgICAgICAgaWYgKHNpZCA+PSBO
Vk1FX0NOVExJRF9NSU4gJiYgc2lkIDw9IE5WTUVfQ05UTElEX01BWCkKPiArICAgICAgICAgICAg
ICAgc3Vic3lzLT5pZCA9IHNpZDsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgcmV0
ID0gLUVJTlZBTDsKPiArICAgICAgIHVwX3dyaXRlKCZudm1ldF9jb25maWdfc2VtKTsKPiArCj4g
KyAgICAgICByZXR1cm4gcmV0ID8gcmV0IDogY291bnQ7Cj4gK30KPiArQ09ORklHRlNfQVRUUihu
dm1ldF9zdWJzeXNfLCBhdHRyX2lkKTsKPiArCj4gICBzdGF0aWMgc3NpemVfdCBudm1ldF9zdWJz
eXNfYXR0cl9tb2RlbF9zaG93KHN0cnVjdCBjb25maWdfaXRlbSAqaXRlbSwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNoYXIgKnBhZ2UpCj4gICB7Cj4g
QEAgLTk4MSw2ICsxMDEwLDcgQEAgc3RhdGljIHN0cnVjdCBjb25maWdmc19hdHRyaWJ1dGUgKm52
bWV0X3N1YnN5c19hdHRyc1tdID0gewo+ICAgICAgICAgICZudm1ldF9zdWJzeXNfYXR0cl9hdHRy
X3ZlcnNpb24sCj4gICAgICAgICAgJm52bWV0X3N1YnN5c19hdHRyX2F0dHJfc2VyaWFsLAo+ICsg
ICAgICAgJm52bWV0X3N1YnN5c19hdHRyX2F0dHJfaWQsCj4gICAgICAgICAgTlVMTCwKPiAgIH07
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMgYi9kcml2ZXJzL252
bWUvdGFyZ2V0L2NvcmUuYwo+IGluZGV4IGZjNjNiMjIuLjBkYzVlZGUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2Nv
cmUuYwo+IEBAIC0xMjEwLDYgKzEyMTAsOCBAQCB1MTYgbnZtZXRfYWxsb2NfY3RybChjb25zdCBj
aGFyICpzdWJzeXNucW4sIGNvbnN0IGNoYXIgKmhvc3RucW4sCj4gICAgICAgICAgc3RydWN0IG52
bWV0X2N0cmwgKmN0cmw7Cj4gICAgICAgICAgaW50IHJldDsKPiAgICAgICAgICB1MTYgc3RhdHVz
Owo+ICsgICAgICAgdTE2IGlkX21pbiA9IE5WTUVfQ05UTElEX01JTjsKPiArICAgICAgIHUxNiBp
ZF9tYXggPSBOVk1FX0NOVExJRF9NQVg7Cj4gICAKPiAgICAgICAgICBzdGF0dXMgPSBOVk1FX1ND
X0NPTk5FQ1RfSU5WQUxJRF9QQVJBTSB8IE5WTUVfU0NfRE5SOwo+ICAgICAgICAgIHN1YnN5cyA9
IG52bWV0X2ZpbmRfZ2V0X3N1YnN5cyhyZXEtPnBvcnQsIHN1YnN5c25xbik7Cj4gQEAgLTEyNzEs
MTMgKzEyNzMsMjMgQEAgdTE2IG52bWV0X2FsbG9jX2N0cmwoY29uc3QgY2hhciAqc3Vic3lzbnFu
LCBjb25zdCBjaGFyICpob3N0bnFuLAo+ICAgICAgICAgIGlmICghY3RybC0+c3FzKQo+ICAgICAg
ICAgICAgICAgICAgZ290byBvdXRfZnJlZV9jcXM7Cj4gICAKPiArICAgICAgIGlmIChzdWJzeXMt
PmlkKSB7Cj4gKyAgICAgICAgICAgICAgIGlkX21pbiA9IHN1YnN5cy0+aWQ7Cj4gKyAgICAgICAg
ICAgICAgIGlkX21heCA9IHN1YnN5cy0+aWQgKyAxOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAg
IGlmIChjdHJsLT5jbnRsaWQpCj4gKyAgICAgICAgICAgICAgIGlkYV9zaW1wbGVfcmVtb3ZlKCZj
bnRsaWRfaWRhLCBjdHJsLT5jbnRsaWQpOwo+ICsKPiAgICAgICAgICByZXQgPSBpZGFfc2ltcGxl
X2dldCgmY250bGlkX2lkYSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5WTUVfQ05U
TElEX01JTiwgTlZNRV9DTlRMSURfTUFYLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
R0ZQX0tFUk5FTCk7Cj4gKyAgICAgICAgICAgICAgIGlkX21pbiwgaWRfbWF4LCBHRlBfS0VSTkVM
KTsKPiAgICAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAgICAgICBwcl9lcnIoImlk
YV9zaW1wbGVfZ2V0OiBmYWlsZWQgdG8gZ2V0IGNvbnRyb2xsZXIgaWRcbiIpOwo+ICAgICAgICAg
ICAgICAgICAgc3RhdHVzID0gTlZNRV9TQ19DT05ORUNUX0NUUkxfQlVTWSB8IE5WTUVfU0NfRE5S
Owo+ICAgICAgICAgICAgICAgICAgZ290byBvdXRfZnJlZV9zcXM7Cj4gICAgICAgICAgfQo+ICsK
PiArICAgICAgIHN1YnN5cy0+aWQgPSByZXQ7Cj4gICAgICAgICAgY3RybC0+Y250bGlkID0gcmV0
Owo+ICAgCj4gICAgICAgICAgY3RybC0+b3BzID0gcmVxLT5vcHM7Cj4gQEAgLTE0MjcsNiArMTQz
OSw3IEBAIHN0cnVjdCBudm1ldF9zdWJzeXMgKm52bWV0X3N1YnN5c19hbGxvYyhjb25zdCBjaGFy
ICpzdWJzeXNucW4sCj4gICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsK
PiAgICAgICAgICB9Cj4gICAKPiArICAgICAgIHN1YnN5cy0+aWQgPSAwOwo+ICAgICAgICAgIGty
ZWZfaW5pdCgmc3Vic3lzLT5yZWYpOwo+ICAgCj4gICAgICAgICAgbXV0ZXhfaW5pdCgmc3Vic3lz
LT5sb2NrKTsKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmggYi9k
cml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgKPiBpbmRleCBlMTczMjFmLi5mYzUyZTQyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaAo+ICsrKyBiL2RyaXZlcnMvbnZt
ZS90YXJnZXQvbnZtZXQuaAo+IEBAIC0yMTMsNiArMjEzLDcgQEAgc3RydWN0IG52bWV0X3N1YnN5
cyB7Cj4gICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICAgbmFtZXNwYWNlczsKPiAgICAg
ICAgICB1bnNpZ25lZCBpbnQgICAgICAgICAgICBucl9uYW1lc3BhY2VzOwo+ICAgICAgICAgIHVu
c2lnbmVkIGludCAgICAgICAgICAgIG1heF9uc2lkOwo+ICsgICAgICAgdTE2ICAgICAgICAgICAg
ICAgICAgICAgaWQ7Cj4gICAKPiAgICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICAgICAgICBjdHJs
czsKPgo+Cj4g77u/T3AgMDQtMTEtMTkgMTU6MDUgaGVlZnQgTWF4IEd1cnRvdm95IDxtYXhnQG1l
bGxhbm94LmNvbT4gZ2VzY2hyZXZlbjoKPgo+ICAgICAgCj4gICAgICBPbiAxMS80LzIwMTkgMTI6
NDUgUE0sIE1hcmsgUnVpanRlciB3cm90ZToKPiAgICAgID4gSGkgTWF4LAo+ICAgICAgPgo+ICAg
ICAgPiBXaGVuIHlvdSBjcmVhdGUgYSBIQSBjbHVzdGVyIHVzaW5nIHR3byBub2RlcyBleHBvcnRp
bmcgdGhlIHNhbWUgdm9sdW1lIHRoZSBjb250cm9sbGVyIElEcyBjYW4gY29sbGlkZS4KPiAgICAg
ID4+PiBbMTEyMjc4OS4wNTQ2NzddIG52bWUgbnZtZTE6IER1cGxpY2F0ZSBjbnRsaWQgNCB3aXRo
IG52bWUwLCByZWplY3RpbmcKPiAgICAgID4gU28gdGhlIHVzZSBjYXNlIGZvciB0aGlzIGNoYW5n
ZSBpcyByZWxhdGVkIHRvIEhBIHNldHVwcy4KPiAgICAgID4KPiAgICAgID4gQXJlIHlvdSBzYXlp
bmcgdGhhdCB0aGUgc3VnZ2VzdGVkIHNvbHV0aW9uIHRvIHRoaXMgcHJvYmxlbSB3b3VsZCBiZSB0
byBmb3JjZSB0aGUgdXNlciB0byB1c2UgdGhlIC1EIG9wdGlvbj8KPiAgICAgIAo+ICAgICAgY2Fu
IHlvdSB0cnkgYWRkaW5nIGFuIGFkZHJlc3MgY2hlY2sgdG8gdGhlIGNvbmRpdGlvbiAoY3RybC0+
b3B0cy0+dHJhZGRyKT8KPiAgICAgIAo+ICAgICAgbGV0IG1lIGtub3cgaWYgdGhhdCBoZWxwcy4K
PiAgICAgIAo+ICAgICAgCj4gICAgICAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKPiBMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
