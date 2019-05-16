Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713BE20CE0
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HljHOv36o9mnHeD3FclDRvKCeClbjdM599no/UXda7g=; b=AY/TnmLgNeB6rCPOGD7GP+bXv
	yWgGIrjR+P+bLKPBVwN+tApid1vGYCseUDvlr34wKMHD1ITpPLvyqPTLjNeeCWVVB4+W8/Ivq2JrK
	kSDN6GhwjRs6EDZUboc/y377SPKqmhbKy+nydF5nmwt9Llpba5bUotUGBm4e2X5y7DzXo22dSLEH2
	qDC0DdEm5shEbmJKo8wQniW0Mt3msI6mAFuwiMGe904pSzXgZqq8AY/lFNyAVB/wYR2uRa5vTlMyG
	F+99TOURjixeXZlkpuJ0Dl57QLskzxscS/9tgMFbjh4p83ySxkV1IFNyB9/zC8j55AXmkujsPDyIh
	qvuBwLKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJBu-0006wW-F7; Thu, 16 May 2019 16:25:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJBo-0006S5-P4
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:25:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so2106232pfn.7
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9chZIbIxeDDmWL0C2HSSHL6Ai31ZinXEhmEgrUhdz7k=;
 b=HnyumAC6KcNjQFnBmaFalwYfYUReLxV4kMVE6y9qZzyy8dcXd1mKvnl0T2M65QSCcD
 Hg7Z7D9WMHC7DxlXmaVrCyHxvhGVoxN7RQ25rUfWkSZ0XFCWXWsxDvv/wETW3zgEF+KP
 NICsqv/t81T7uvP3DK1pRxb+gQ7zQuw2G+EEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9chZIbIxeDDmWL0C2HSSHL6Ai31ZinXEhmEgrUhdz7k=;
 b=qiu03EXrTUr/jTG/Z0R4IZDkAU+AkJ43jF/+odJH5Mu3GE94wa5J0QNDUWmdnIZaJL
 MeSNLcoZrpR1E9l/FVgrGtbESGR5j0VlkGlVJPU56BOUWKpdryvz6MB6B2os7g3Sbita
 5kANZfbxTccagImqWsISD9XUi8Y8hPm+ckSMZZEltymK9huAIfPzT+MRkjHFIwbTgCwx
 AG1F4g/XgeXnuC8K2c7xNM6UvSqyjYDFm+dtsnsXpu870ns7XY80L4Q7IRkpqOPdRc8w
 UUTIDdyod/FleJj7fu/FuV8wRbGnOzMF1p47ImKeqIfVd2+OmYRGhPqdNxbEfarlahf5
 LmQA==
X-Gm-Message-State: APjAAAUz1FqlNb/NU9YBsWyvcWvIv6JWbgjN69D0QEeqbmLLBN/8W1d6
 W6Xrst3u7FlkP5jq69NNST3VfdP6TUU=
X-Google-Smtp-Source: APXvYqw6hyLoQh7/iaYzgRmMleqq2xWNLgiksmkYU0qYiud5Ote9LXSkSsj6S8l+u8VbqUKHocb0vA==
X-Received: by 2002:a63:b70f:: with SMTP id t15mr49052195pgf.351.1558023904248; 
 Thu, 16 May 2019 09:25:04 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id 127sm8055931pfc.159.2019.05.16.09.25.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:25:03 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-4-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <9f09edd0-bf71-61ed-7bcb-3c9e87d454a5@broadcom.com>
Date: Thu, 16 May 2019 09:25:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516083740.95894-4-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092504_824904_AEFCA15A 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

CgpPbiA1LzE2LzIwMTkgMTozNyBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IElmIHRoZSBm
aW5hbCBzdGF0ZSBjaGFuZ2UgdG8gTElWRSBpbiBudm1lX2ZjX2NyZWF0ZV9hc3NvY2lhdGlvbigp
Cj4gZmFpbHMgdGhlIGNvbnRyb2xsZXIgaXMgbm90IG9wZXJhdGlvbmFsIGFzIG5vIEkvTyBpcyBw
b3NzaWJsZS4KPiBTbyB3ZSBzaG91bGQgYmUgcmV0dXJuaW5nIGFuIGVycm9yIGhlcmUgdG8gcmVz
Y2hlZHVsZSByZWNvbm5lY3QuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhh
cmVAc3VzZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9mYy5jIHwgMTQgKysrKysr
KysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgYi9kcml2ZXJzL252
bWUvaG9zdC9mYy5jCj4gaW5kZXggZTVjODFiYTJiN2ExLi45ZjkzMDBjYmRiNjIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2Zj
LmMKPiBAQCAtMjYyMCw3ICsyNjIwLDYgQEAgbnZtZV9mY19jcmVhdGVfYXNzb2NpYXRpb24oc3Ry
dWN0IG52bWVfZmNfY3RybCAqY3RybCkKPiAgIHsKPiAgIAlzdHJ1Y3QgbnZtZl9jdHJsX29wdGlv
bnMgKm9wdHMgPSBjdHJsLT5jdHJsLm9wdHM7Cj4gICAJaW50IHJldDsKPiAtCWJvb2wgY2hhbmdl
ZDsKPiAgIAo+ICAgCSsrY3RybC0+Y3RybC5ucl9yZWNvbm5lY3RzOwo+ICAgCj4gQEAgLTI3MjUs
MTIgKzI3MjQsMTkgQEAgbnZtZV9mY19jcmVhdGVfYXNzb2NpYXRpb24oc3RydWN0IG52bWVfZmNf
Y3RybCAqY3RybCkKPiAgIAkJCWdvdG8gb3V0X3Rlcm1fYWVuX29wczsKPiAgIAl9Cj4gICAKPiAt
CWNoYW5nZWQgPSBudm1lX2NoYW5nZV9jdHJsX3N0YXRlKCZjdHJsLT5jdHJsLCBOVk1FX0NUUkxf
TElWRSk7Cj4gKwlpZiAobnZtZV9jaGFuZ2VfY3RybF9zdGF0ZSgmY3RybC0+Y3RybCwgTlZNRV9D
VFJMX0xJVkUpKSB7Cj4gKwkJaWYgKGN0cmwtPmN0cmwuc3RhdGUgIT0gTlZNRV9DVFJMX0RFTEVU
SU5HKSB7CmlzIHRoaXMgZWFzaWVyIHRvIGFycmFuZ2UgYXM6CiDCoMKgwqAgaWYgKG52bWVfY2hh
bmdlX2N0cmxfc3RhdGUoLi4uKSAmJgogwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5jdHJsLnN0YXRl
ICE9IE5WTUVfQ1RSTF9ERUxFVElORykgewoKPiArCQkJZGV2X2VycihjdHJsLT5jdHJsLmRldmlj
ZSwKPiArCQkJCSJOVk1FLUZDeyVkfTogZXJyb3JfcmVjb3Zlcnk6IENvdWxkbid0IGNoYW5nZSAi
Cj4gKwkJCQkic3RhdGUgZnJvbSAlcyB0byBMSVZFXG4iLCBjdHJsLT5jbnVtLAo+ICsJCQkJbnZt
ZV9jdHJsX3N0YXRlX25hbWUoJmN0cmwtPmN0cmwpKTsKPiArCQkJcmV0dXJuIC1FQUdBSU47Cj4g
KwkJfQo+ICsJfQo+ICAgCj4gICAJY3RybC0+Y3RybC5ucl9yZWNvbm5lY3RzID0gMDsKPiAgIAo+
IC0JaWYgKGNoYW5nZWQpCj4gLQkJbnZtZV9zdGFydF9jdHJsKCZjdHJsLT5jdHJsKTsKPiArCW52
bWVfc3RhcnRfY3RybCgmY3RybC0+Y3RybCk7CgpJIGRvbid0IHRoaW5rIHlvdSB3YW50IHRvIGVs
aW1pbmF0ZSB0aGlzIGNoZWNrIC0geW91IGRvbid0IHdhbnQgdG8gY2FsbCAKbnZtZV9zdGFydF9j
dHJsKCkgaWYgc3RhdGUgZGlkIHRyYW5zaXRpb24gdG8gREVMRVRJTkcuIFlvdSB3YW50IHRvIApj
b250aW51ZSBvdXQgdG8gcmVsZWFzZSB0aGUgY3JlYXRlIHRocmVhZCwgYnV0IHRoZSBkZWxldGUg
d29yayB3aWxsIGJlIApjb21pbmcgYWxvbmcgc2hvcnRseS4KCi0tIGphbWVzCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
