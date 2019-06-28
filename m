Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711BD5A7A6
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 01:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z7p9MvhKYq/UFN5TIBFy2i8RNAkmZuWItaS8rvmPsHg=; b=focN5TyTx/wTgXsVBQevgsNnl
	fxEWUenM8rSgVmForq32YPDP+NRGsyRnRfHfUviWRZ8XsKaZWBodI5+nFSNkgtF8lbOUs2oTpx8pz
	vTiDOgrywdO+nmY9nK5xTUrTi+RmJfEg2yGgdypL7m8Wc1vS7mWH7yVkyT/BjoLGpdjnF7pQ4CWUH
	sRJqe0eCgXljnbsdWpZgmgHu28E/j2Qe0upFKoYJqS/wFCPcZPCKX6qTOjtQcSRHQ4nN2i3tCiecm
	yMQlrhBaHU58g0+ZQ8zlG3IbGmp/+jKZc9DjyfN1bKISc6dQlPYlN3iL7cxO3iwijGhb19VlKqies
	en9KkLh6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0MW-00010a-6s; Fri, 28 Jun 2019 23:33:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0MO-0000zs-45
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 23:32:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so3246087pgg.3
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 16:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=xbq4XMHNMqUgFtgU18AMXRBNiSkOQ/ec1QSVXfzhhyI=;
 b=HVgxImCjdHIk6lmWpcPHbXcL7J7C0vLtzD5/BdRvNccj35eaclYoePWDJRZj7/wSlW
 HLm7WAU8GSyzpGxHgD3r3NTS359IESMYXfycd83P9h0WKztGLc7OvBSOAf/zp4jjgCej
 ERUY68/6ym/zZL98+TruVH/hSeJ6U6JzXH7vI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xbq4XMHNMqUgFtgU18AMXRBNiSkOQ/ec1QSVXfzhhyI=;
 b=Wh5T4VA3Dv9DL9awt+tOPDTqRXK28pETY8EM1kfab8mKsBHIL4GV7YGb/ltpvjpcn8
 oHJJ1ZYIK6aCwtq2aMOEQiI729S9Ekb+8WtemEvAnk3wxPv3XXOtlcfx2fWP6CRO2z1z
 WWexNpHynmB2ttKroSwbkGEDJ/luBrRJRchRnVhcHWRpPOXPj88jhOz5K4yY/BQcpOut
 JVe6GBKkLvYiW0k+4RYxi2rBydak43XO+7d7KZv9Axd/Lz6qleN/c7r6oz4qzRF/+4Gp
 yWm7rrvGlncsqMUiFk1GQV+fC+xyNyQEnliLvwdAqxCflnh3TJecNLWhmCvxxLsEVk/o
 oD+Q==
X-Gm-Message-State: APjAAAVh1nirMhLM3/VXXYb+8klaF2Ghg7G0CQW6sRVhuPh5EZpm2L9W
 z9lw0nXrPdy+r1HjR4vdw2Ds4FttDViA1JPp5+/zWXF6lVAsRLimdQSTcyDw3Qw+jdbPGUBBmYu
 rz+SscUAPSPIfHb8bk8Up2+Fy2RF1iDFCleR3VR5myPYCxTT4QZDTzPPGPIqzoIsEbYzhqxdgJP
 AgW0vCaA==
X-Google-Smtp-Source: APXvYqzrsZdWL2BOgwFSghaePuqArg8dQ+yScAVeictCfyByowyOG8QeZjNTjbC0vhjWOlcavOXmyA==
X-Received: by 2002:a63:b22:: with SMTP id 34mr8654691pgl.38.1561764770729;
 Fri, 28 Jun 2019 16:32:50 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r15sm3162587pfh.121.2019.06.28.16.32.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 16:32:49 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: fix module unloads while lports still pending
To: Bart Van Assche <bvanassche@acm.org>, James Smart <jsmart2021@gmail.com>, 
 linux-nvme@lists.infradead.org
References: <20190628231621.15867-1-jsmart2021@gmail.com>
 <b07da70f-770c-db0d-bf4e-7997c890c67b@acm.org>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1cfc9504-45d5-2ba3-55d9-949e5a301889@broadcom.com>
Date: Fri, 28 Jun 2019 16:32:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <b07da70f-770c-db0d-bf4e-7997c890c67b@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_163252_181866_2B3CC2CC 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

CgpPbiA2LzI4LzIwMTkgNDoyNiBQTSwgQmFydCBWYW4gQXNzY2hlIHdyb3RlOgo+IE9uIDYvMjgv
MTkgNDoxNiBQTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4+IEBAIC0yMzcsNiArMjQyLDcgQEAgbnZt
ZV9mY19mcmVlX2xwb3J0KHN0cnVjdCBrcmVmICpyZWYpCj4+IMKgwqDCoMKgwqAgcHV0X2Rldmlj
ZShscG9ydC0+ZGV2KTsKPj4gwqAgwqDCoMKgwqDCoCBrZnJlZShscG9ydCk7Cj4+ICsKPj4gwqAg
fQo+Cj4gU3B1cmlvdXMgd2hpdGVzcGFjZT8KCnllcwoKPgo+PiArc3RhdGljIHZvaWQKPj4gK252
bWVfZmNfY2xlYW51cF9mb3JfdW5sb2FkKHZvaWQpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IG52
bWVfZmNfbHBvcnQgKmxwb3J0Owo+PiArwqDCoMKgIHN0cnVjdCBudm1lX2ZjX3Jwb3J0ICpycG9y
dDsKPj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+PiArCj4+ICvCoMKgwqAgc3Bpbl9s
b2NrX2lycXNhdmUoJm52bWVfZmNfbG9jaywgZmxhZ3MpOwo+PiArwqDCoMKgIGxpc3RfZm9yX2Vh
Y2hfZW50cnkobHBvcnQsICZudm1lX2ZjX2xwb3J0X2xpc3QsIHBvcnRfbGlzdCkgewo+PiArwqDC
oMKgwqDCoMKgwqAgbGlzdF9mb3JfZWFjaF9lbnRyeShycG9ydCwgJmxwb3J0LT5lbmRwX2xpc3Qs
IGVuZHBfbGlzdCkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2ZjX2RlbGV0ZV9j
b250cm9sbGVycyhycG9ydCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqAgfQo+PiAr
wqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJm52bWVfZmNfbG9jaywgZmxhZ3MpOwo+PiAr
Cj4+ICvCoMKgwqAgcHJfaW5mbygiJXM6IHdhaXRpbmcgZm9yIGN0bHIgZGVsZXRlc1xuIiwgX19m
dW5jX18pOwo+PiArwqDCoMKgIHdhaXRfZm9yX2NvbXBsZXRpb24oJm52bWVfZmNfdW5sb2FkX3By
b2NlZWQpOwo+PiArwqDCoMKgIHByX2luZm8oIiVzOiBjdHJsIGRlbGV0ZXMgY29tcGxldGVcbiIs
IF9fZnVuY19fKTsKPj4gK30KPj4gKwo+PiDCoCBzdGF0aWMgdm9pZCBfX2V4aXQgbnZtZV9mY19l
eGl0X21vZHVsZSh2b2lkKQo+PiDCoCB7Cj4+IC3CoMKgwqAgLyogc2FuaXR5IGNoZWNrIC0gYWxs
IGxwb3J0cyBzaG91bGQgYmUgcmVtb3ZlZCAqLwo+PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxh
Z3M7Cj4+ICvCoMKgwqAgYm9vbCBuZWVkX2NsZWFudXAgPSBmYWxzZTsKPj4gKwo+PiArwqDCoMKg
IHNwaW5fbG9ja19pcnFzYXZlKCZudm1lX2ZjX2xvY2ssIGZsYWdzKTsKPj4gK8KgwqDCoCBudm1l
X2ZjX3dhaXRpbmdfdG9fdW5sb2FkID0gdHJ1ZTsKPj4gK8KgwqDCoCBpbml0X2NvbXBsZXRpb24o
Jm52bWVfZmNfdW5sb2FkX3Byb2NlZWQpOwo+PiDCoMKgwqDCoMKgIGlmICghbGlzdF9lbXB0eSgm
bnZtZV9mY19scG9ydF9saXN0KSkKPj4gLcKgwqDCoMKgwqDCoMKgIHByX3dhcm4oIiVzOiBsb2Nh
bHBvcnQgbGlzdCBub3QgZW1wdHlcbiIsIF9fZnVuY19fKTsKPj4gK8KgwqDCoMKgwqDCoMKgIG5l
ZWRfY2xlYW51cCA9IHRydWU7Cj4+ICvCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmbnZt
ZV9mY19sb2NrLCBmbGFncyk7Cj4+ICvCoMKgwqAgaWYgKG5lZWRfY2xlYW51cCkKPj4gK8KgwqDC
oMKgwqDCoMKgIG52bWVfZmNfY2xlYW51cF9mb3JfdW5sb2FkKCk7Cj4KPiBDYW4gdGhlIG52bWVf
ZmNfbHBvcnRfbGlzdCBsaXN0IGJlY29tZSBlbXB0eSBhZnRlciAKPiBudm1lX2ZjX2V4aXRfbW9k
dWxlKCkgaGFzIHVubG9ja2VkIG52bWVfZmNfbG9jayBhbmQgYmVmb3JlIAo+IG52bWVfZmNfY2xl
YW51cF9mb3JfdW5sb2FkKCkgaXMgY2FsbGVkPyBJZiBzbywgc2hvdWxkbid0IAo+IG52bWVfZmNf
Y2xlYW51cF9mb3JfdW5sb2FkKCkgYmUgY2FsbGVkIHVuY29uZGl0aW9uYWxseSBhbmQgc2hvdWxk
bid0IAo+IHRoZSB3YWl0X2Zvcl9jb21wbGV0aW9uKCZudm1lX2ZjX3VubG9hZF9wcm9jZWVkKSBj
YWxsIGRlcGVuZCBvbiAKPiB3aGV0aGVyIG9yIG5vdCBudm1lX2ZjX2NsZWFudXBfZm9yX3VubG9h
ZCgpIGhhcyBkZWxldGVkIGFueSBjb250cm9sbGVycz8KCkl0J3MgcG9zc2libGUgd2hpY2ggaXMg
d2h5IEkgaW5pdCdkIHRoZSBjb21wbGV0aW9uIHdoaWxlIHVuZGVyIHRoZSAKbG9jay7CoMKgIFRo
ZXJlZm9yZSwgdGhlIHJlbW92YWwgdGhhdCB3b3VsZCBtYWtlIGl0IGVtcHR5LCB3aGljaCBpcyBh
bHNvIAp1bmRlciBsb2NrLCB3aWxsIHRyaWdnZXIgdGhlIGNvbXBsZXRpb24uIEluIHRoaXMgc2Nl
bmFyaW8sIHRoZSBjbGVhbnVwIApyb3V0aW5lIHdvdWxkIGJlIGFuIGVtcHR5IGxpc3QsIGZhbGwg
aW50byB0aGUgd2FpdCBmb3IgY29tcGxldGlvbiwgd2hpY2ggCmltbWVkaWF0ZWx5IHN1Y2NlZWRz
LgoKLS0gamFtZXMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
