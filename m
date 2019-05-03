Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE7E13371
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 19:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOmc1okhOG7sR2Y1cHrRjq93a6dM8O6JoRLy+CrPO4U=; b=alZlqvq9nIVw8jxxmz6CzFYEP
	7iJu67KlSYdvInyHO3Lx81x9W3ROMwlohhpzmOzJgljQupcsMpWkIelXjWI5uhBdjAB0fMLc06mF+
	AFtf5amcT6VVjrfRKAoQxKPJW/Ozzw5O7IYeHD9uOlwg1cAdfsKZmnT1klwGPoZseChkROo2XJ/uB
	zLjzxkxCmmuVRzvVHY2crlKWR5ibgMMvwZcSKrgigf6OuqcyfsmZAsOOMNNU1jvN5u/ZWBi1RoBOv
	OHXHQ9wPuyvcEVVmlsST9P4yWnXb6j5l8PICpSXn2qdtdpP3s18EwnKysUe66JHy87lcpKk/uGtgR
	bW5pbQvCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcSh-0000tS-Gx; Fri, 03 May 2019 17:59:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcSc-0000pn-0A
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 17:59:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so2933694pfw.9
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 10:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tjASBUien9GMPwFsiuhdvHBGJUawn8sTup5sUD0NuJ8=;
 b=a0DtPT3Tkf4HsEAbpFCIQrBvwDKcsQj7tlpprX30kLAzMZggYA57bHa/qFkgOJN/Zo
 /lXvghtLPDSMHk8YOxskYB5OLfTJPW3g/up72dLG0oW5o+wmygMH0uxoW5dpAtou9oo1
 K5cVXkQo27AwMYbkwq5xP2FxtplV7fqrqDNOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tjASBUien9GMPwFsiuhdvHBGJUawn8sTup5sUD0NuJ8=;
 b=NO5qQNigR+DaylJT85X4DV0/MG1a1nsScWCs5p7LS7MzXpjp21AJ/6Et2UnvhBRMHi
 ZZld+Q5jyl3BXbGbahoofRiskPZTGooRsBhmgkrq2O+h3HR1IawVDb5AaBWbIdKerfg0
 9fufnVhbiXrFVYrum0HFxymLN42DVfwZ1y5vLvlXCAT5Yr7Ex4hkLg0U9RhEICGANtpM
 nGY1/G9JWfZSLGq03gyNrSy01GwexXL7yzfrq2pmrJsLQvcpTJXaOfM+Kn4KQwCrehWT
 UrZyRh1HkQXa0mtuX3L6AAJ8cstYyoyMk93QSJKZ6AYoOOs6a592YyPGfMQtWLLczfFc
 +Mig==
X-Gm-Message-State: APjAAAUDiHbJH4Jm3he/mOgm1RiIHDx98H0uDYgmM+O7NksVMYufZTR8
 IQNjjD0+bMQLUW36LSZISys0XA==
X-Google-Smtp-Source: APXvYqyMxkMHhxPiwePSoLVRqNeHYSIihfxDO1J+/aqJuidc9iLl0WApIplrIf+8NjDywr09X1ihZQ==
X-Received: by 2002:a63:318b:: with SMTP id
 x133mr12260218pgx.297.1556906341339; 
 Fri, 03 May 2019 10:59:01 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id a4sm3576291pfj.36.2019.05.03.10.58.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 10:59:00 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: trace sq head updates
To: Hannes Reinecke <hare@suse.de>
References: <20190503141459.111641-1-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <d72fb9fe-f142-7e29-8de5-72a471cfc43e@broadcom.com>
Date: Fri, 3 May 2019 10:58:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503141459.111641-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_105902_056536_A5DA500F 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzMvMjAxOSA3OjE0IEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4gRkMtTlZNZSBo
YXMgc29tZSBkZXRhaWxlZCBydWxlcyBpZiBhbmQgd2hlbiBTUSBoZWFkIHBvaW50ZXIgdXBkYXRl
cwo+IHNob3VsZCBiZSBzZW5kLCBidXQgdGhlIHNwZWMgaXMgYSB0YWQgdW5jbGVhciBhYm91dCB0
aGUgdmFsdWVzLgo+IFNvIGFkZCB0cmFjaW5nIHRvIHRoZSBGQy1OVk1lIGRyaXZlciB0byB0cmFj
ayB0aGlzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3QvZmMuYyB8IDggKysrKysrKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL252bWUvaG9zdC9mYy5jIGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+IGluZGV4
IDZkODQ1MTM1NmVhYy4uNzU1YzkzYTBjNjY0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9o
b3N0L2ZjLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4gQEAgLTEyLDYgKzEyLDcg
QEAKPiAgIAo+ICAgI2luY2x1ZGUgIm52bWUuaCIKPiAgICNpbmNsdWRlICJmYWJyaWNzLmgiCj4g
KyNpbmNsdWRlICJ0cmFjZS5oIgo+ICAgI2luY2x1ZGUgPGxpbnV4L252bWUtZmMtZHJpdmVyLmg+
Cj4gICAjaW5jbHVkZSA8bGludXgvbnZtZS1mYy5oPgo+ICAgCj4gQEAgLTM1LDcgKzM2LDggQEAg
c3RydWN0IG52bWVfZmNfcXVldWUgewo+ICAgCXUzMgkJCXFudW07Cj4gICAJdTMyCQkJcnFjbnQ7
Cj4gICAJdTMyCQkJc2Vxbm87Cj4gLQo+ICsJdTE2CQkJc3FfaGVhZDsKPiArCXUxNgkJCXNxX3Rh
aWw7Cj4gICAJdTY0CQkJY29ubmVjdGlvbl9pZDsKPiAgIAlhdG9taWNfdAkJY3NuOwo+ICAgCj4g
QEAgLTE2NTMsNiArMTY1NSw3IEBAIG52bWVfZmNfZmNwaW9fZG9uZShzdHJ1Y3QgbnZtZWZjX2Zj
cF9yZXEgKnJlcSkKPiAgIAkJCXN0YXR1cyA9IGNwdV90b19sZTE2KE5WTUVfU0NfSU5URVJOQUwg
PDwgMSk7Cj4gICAJCQlnb3RvIGRvbmU7Cj4gICAJCX0KPiArCQlxdWV1ZS0+c3FfaGVhZCA9IGNw
dV90b19sZTE2KGNxZS0+c3FfaGVhZCk7Cj4gICAJCXJlc3VsdCA9IGNxZS0+cmVzdWx0Owo+ICAg
CQlzdGF0dXMgPSBjcWUtPnN0YXR1czsKPiAgIAkJYnJlYWs7Cj4gQEAgLTE2NzUsNiArMTY3OCw4
IEBAIG52bWVfZmNfZmNwaW9fZG9uZShzdHJ1Y3QgbnZtZWZjX2ZjcF9yZXEgKnJlcSkKPiAgIAl9
Cj4gICAKPiAgIAlfX252bWVfZmNfZmNwb3BfY2hrX3RlYXJkb3ducyhjdHJsLCBvcCwgb3BzdGF0
ZSk7Cj4gKwl0cmFjZV9udm1lX3NxKHJxLCBxdWV1ZS0+c3FfaGVhZCwKPiArCQkgICAgICBxdWV1
ZS0+c3FfdGFpbCAlIGN0cmwtPmN0cmwuc3FzaXplKTsKPiAgIAludm1lX2VuZF9yZXF1ZXN0KHJx
LCBzdGF0dXMsIHJlc3VsdCk7Cj4gICAKPiAgIGNoZWNrX2Vycm9yOgo+IEBAIC0yMjE1LDYgKzIy
MjAsNyBAQCBudm1lX2ZjX3N0YXJ0X2ZjcF9vcChzdHJ1Y3QgbnZtZV9mY19jdHJsICpjdHJsLCBz
dHJ1Y3QgbnZtZV9mY19xdWV1ZSAqcXVldWUsCj4gICAJb3AtPmZjcF9yZXEucmN2X3JzcGxlbiA9
IDA7Cj4gICAJb3AtPmZjcF9yZXEuc3RhdHVzID0gTlZNRV9TQ19TVUNDRVNTOwo+ICAgCW9wLT5m
Y3BfcmVxLnNxaWQgPSBjcHVfdG9fbGUxNihxdWV1ZS0+cW51bSk7Cj4gKwlxdWV1ZS0+c3FfdGFp
bCsrOwo+ICAgCj4gICAJLyoKPiAgIAkgKiB2YWxpZGF0ZSBwZXIgZmFicmljIHJ1bGVzLCBzZXQg
ZmllbGRzIG1hbmRhdGVkIGJ5IGZhYnJpYyBzcGVjCgp0aGlzIGlzIGZpbmUsIGJ1dC4uLi7CoMKg
IHRvIG1ha2UgdGhpcyBiZSBtZWFuaW5nZnVsL3dvcmssIHlvdSdyZSBnb2luZyB0byAKbmVlZCB0
byBxdWV1ZS9zZXJpYWxpemUgdGhlIHByb2Nlc3Npbmcgb2YgRVJTUCBJVSdzIGJhc2VkIG9uIHRo
ZSAKcmVzcG9uc2Ugc2VxdWVuY2UgbnVtYmVyIChyc24pLsKgIE90aGVyd2lzZSwgdGhlcmUncyBu
byBndWFyYW50ZWUgdGhhdCAKc3FoZCBjb21lcyBiYWNrIGluIHRoZSBwcm9wZXIgc2VxdWVudGlh
bCBvcmRlci7CoMKgIEFuZCBJJ2QgcmVjb21tZW5kLCBhcyAKdGhlcmUncyBubyBvdGhlciByZWFz
b24gZm9yIEVSU1Agc2VyaWFsaXphdGlvbiwgdGhhdCB5b3UgZG9uJ3QgaG9sZCB1cCAKdGhlIGNv
bXBsZXRpb24gYnV0IG1vdmUgdGhlIHJzbi9zcWhkIHZhbHVlcyB0byBzaWRlYmFuZCB0cmFja2lu
ZyB3aXRoIAp0aGUgdHJhY2tpbmcgZG9pbmcgdGhlIHNlcmlhbGl6aW5nIGFuZCB1cGRhdGluZyBv
ZiBzcWhkLgoKLS0gamFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1udm1lCg==
