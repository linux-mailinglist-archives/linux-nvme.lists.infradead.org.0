Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE8567F83
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 17:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eHskxcD4id+1ipWTd8ynbakC8Ekj/ANhCDEw86/Orqo=; b=uP21nH81Fcya8jC/AqF2RVnyR
	a1hVbOEEeXNRKmhVlrWV2mT12U3GC0nnQOel4m6Nc+gMkHEKSrujxTA1q0ORFmPinovpex0pcowmL
	mysRrm3DyG20KFhjDnIBUDZ+AZdKGItia/w+AtYMCGPUfu7JTjahGOq+LoWR5DQrv57e0SEx1fQxd
	Y89a0yrTj5UyR6YWJ0WMCNVtEgSuyumlD+H6cx8DhMjmF7imhuBvu5k8vYA0G0bQ5wshso12hxUVQ
	PUlaum6VwUvKdDxV3BHmFjXvpKJPsJuaZETOesi1Ltor1ix3Jgj0lTydeeJfm5Axo1MT1W2YTntgR
	AYVHmDUtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmg3K-0001uG-Bz; Sun, 14 Jul 2019 15:04:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmg3B-0001tw-HF
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 15:04:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so6278283pff.8
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 08:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=t7OEcMb/h51ln8u6FQ+NHUpQ5ktvJZouoEvAzBqr410=;
 b=KfvIsx+Uao3wd9seq3xwegP0H2mG3u4QxUNFKk3VWjXortSpwHjXpBMKGkj1UMjYbX
 Tm9LxjUlMdi7F61IDBGx2DpaIW06v5uUa1TIVVa5RJSAssVDr7G8qW9x4nkrQXdKvoOs
 +DfKnEzm/YVmh96CL5efqEmK3bGH9PsodK8ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=t7OEcMb/h51ln8u6FQ+NHUpQ5ktvJZouoEvAzBqr410=;
 b=HYXv0vTI2q1zUNzj3NwjoefcZs589i4haRoLA4nDqfcjkUuruj/v99FRFjzRrnvgra
 yX3J8ZsTEW/D1TD0xpQUCXQnLkQJQERIJYAzp1NovBiWkg25QRdlU+ZxzPw0Jb47aK5/
 B6Z6+Uk+ovwcPc/9hI3R7o7XiT8/kyHW0zQYxJ6qPTJ7mnuFgZOWllfK1osE1OqCrmc7
 WURlt7IZBBFjAgXqs2fjoZITXXtFt28qtoGZozX8DTwCYhdslb7Ipxk4vW43QRVx/X2J
 UF6jpws8wsVFLsEcq+F1UpXnZBjdXCLs6fFucZSMM1xso0q5mhF8yB2faPIgPJwPVtEB
 DEzA==
X-Gm-Message-State: APjAAAVc+xOPkSeu9skDquwqdDFzjsJogdZXZalCig49UwyO+1oIznS5
 Bej4h43u6rNPPn0IzYWZSdmufw==
X-Google-Smtp-Source: APXvYqxH2NJGGJ81dTmnzlVr/VxHfUG4UyNrF+Y0Z+SUjKpHfjYsqkbM//3QJPLn8GQhTXN6Yy/zCg==
X-Received: by 2002:a17:90a:8d86:: with SMTP id
 d6mr23920200pjo.94.1563116668757; 
 Sun, 14 Jul 2019 08:04:28 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e10sm14581767pfi.173.2019.07.14.08.04.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 08:04:28 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] nvme: enable aen also for discovery controllers
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-3-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <52f3e8f8-434c-0f89-31ee-515740d1ba33@broadcom.com>
Date: Sun, 14 Jul 2019 08:04:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712180211.26333-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_080429_582153_51965F20 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzEyLzIwMTkgMTE6MDIgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gSWYgdGhlIGNv
bnRyb2xsZXIgc3VwcG9ydHMgZGlzY292ZXJ5IGxvZyBwYWdlIGNoYW5nZSBldmVudHMsCj4gd2Ug
d2FudCB0byBlbmFibGUgaXQgb24gdGhlIGhvc3Qgc2lkZSBhcyB3ZWxsLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiAgIGRyaXZlcnMv
bnZtZS9ob3N0L2NvcmUuYyB8IDkgKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9o
b3N0L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IGluZGV4IDMwNzdjZDRkNzVi
Zi4uMTE2YzIxMDgyNmMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IEBAIC0xMTkwLDYgKzExOTAsOCBAQCBz
dGF0aWMgdm9pZCBudm1lX2VuYWJsZV9hZW4oc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiAgIAlp
ZiAoIXN1cHBvcnRlZF9hZW5zKQo+ICAgCQlyZXR1cm47Cj4gICAKPiArCXF1ZXVlX3dvcmsobnZt
ZV93cSwgJmN0cmwtPmFzeW5jX2V2ZW50X3dvcmspOwo+ICsKPiAgIAlzdGF0dXMgPSBudm1lX3Nl
dF9mZWF0dXJlcyhjdHJsLCBOVk1FX0ZFQVRfQVNZTkNfRVZFTlQsIHN1cHBvcnRlZF9hZW5zLAo+
ICAgCQkJTlVMTCwgMCwgJnJlc3VsdCk7Cj4gICAJaWYgKHN0YXR1cykKPiBAQCAtMzc0NiwxMCAr
Mzc0OCwxMyBAQCB2b2lkIG52bWVfc3RhcnRfY3RybChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+
ICAgCWlmIChjdHJsLT5rYXRvKQo+ICAgCQludm1lX3N0YXJ0X2tlZXBfYWxpdmUoY3RybCk7Cj4g
ICAKPiArCWlmIChjdHJsLT5xdWV1ZV9jb3VudCA+IDEgfHwKPiArCSAgICAoY3RybC0+b3BzLT5m
bGFncyAmIE5WTUVfRl9GQUJSSUNTICYmCj4gKwkgICAgIGN0cmwtPm9wdHMtPmRpc2NvdmVyeV9u
cW4pKQo+ICsJCW52bWVfZW5hYmxlX2FlbihjdHJsKTsKPiArCj4gICAJaWYgKGN0cmwtPnF1ZXVl
X2NvdW50ID4gMSkgewo+ICAgCQludm1lX3F1ZXVlX3NjYW4oY3RybCk7Cj4gLQkJbnZtZV9lbmFi
bGVfYWVuKGN0cmwpOwo+IC0JCXF1ZXVlX3dvcmsobnZtZV93cSwgJmN0cmwtPmFzeW5jX2V2ZW50
X3dvcmspOwo+ICAgCQludm1lX3N0YXJ0X3F1ZXVlcyhjdHJsKTsKPiAgIAl9Cj4gICB9CgpMb29r
cyBmaW5lLCBidXQgY3VyaW91cyB3aHkgeW91IG5lZWRlZCB0byBxdWFsaWZ5IHRoZSBkaXNjb3Zl
cnlfbnFuIHdpdGggCnRoZSBGQUJSSUNTIGZsYWcuwqAgSSB3b3VsZCBoYXZlIGFzc3VtZWQgZGlz
Y292ZXJ5X25xbiB3b3VsZCBoYXZlIGJlZW4gCnN1ZmZpY2llbnQuCgpSZXZpZXdlZC1ieTogSmFt
ZXMgU21hcnQgPGphbWVzLnNtYXJ0QGJyb2FkY29tLmNvbT4KCi0tIGphbWVzCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
