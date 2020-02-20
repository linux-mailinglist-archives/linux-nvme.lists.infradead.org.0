Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28A8166515
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 18:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U8BZhz3InjuxQvmdByK73XpLDmg+o+CFw1NNPj5z0aM=; b=M1k3cORZXj6KVVY1hM6H/XN0Z
	yk4UtUqIy7HgWxQ8MdrTQxJkxiWR/g0k4pqmNtwcW8/irrUZU3HH7CQGFSSRwFICyeLoNFXs78bpL
	1Flm6v/G9xwC5GVmLg6BVyLzx9+/InqDNykoIZ8x1e1nm3yOo5EGYzh10xAlpBQJPYffZu5/ubLK5
	hFbnQDxfzbBZ7SwVzNCPRHLYxpfdj6/SGabvfeN7cR9krAjrwiEwR3uThUp3SOxzkqESTzljJmm27
	7KiLixnVqo2lhOit6jjUCOrhNPtXCcrzHWHOm3MUxApl+q6AIxAdytohiO6E2w0yrGJ9NAcNJughv
	wwIUg2L3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pp9-0007Cd-Ng; Thu, 20 Feb 2020 17:41:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pp6-0007CK-Ku
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 17:41:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so2261113pfc.5
 for <linux-nvme@lists.infradead.org>; Thu, 20 Feb 2020 09:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Wodw456ejIrfJkRjf0MQxtsMUWx0NjJODOLMswGTCvs=;
 b=NLfMqBOSaRJSnSW/GE6xXhY/+AWLtc6diE0cR9qTJG+4I1oO4OXtayhTkW6TFQVxAF
 i5AaJNXbYPMk6691YEcxS1HPrRrB1idaM3fNQCe/eTbKd0qOYAO3QS05hPTfTuMTn13C
 5Jjfc6F+gFko0AKYBWut7t7nAPu9IwD3U1kco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Wodw456ejIrfJkRjf0MQxtsMUWx0NjJODOLMswGTCvs=;
 b=YH/2T4El1jX/BviNtXxVswdNW8tpGd6Vc9YugH7wJcIywesCJde+Wx3j8R2HUbwvE5
 tCLbVkRIZAq4TqpryXBoZvzrZUXbj/oru9BopdzprSxsh+sjza7KpBqH9t574KpgdQKi
 vHqgUvkNJ5w/wzvhqchi7HuaOJO42FsRDzZyChQCSIECDSRy+p/mub3cDnG2NNDOFl4F
 D99vg49pIBixVUHMdTwAfL03yhvnRuwyUj3i6TZyBS+VkAw0LZro1qJzaD9pigQXCMwH
 rpMiBqeC5JDL1rm5QcdGKxiWhBBQCT3C4B3tEeECCwprym6WxwYzFZZll05++cxY3hw1
 j26A==
X-Gm-Message-State: APjAAAUSS3Nr420R2i7ZkJ+uSnaYYo6oDgiH/CVXFEHC0Sr6TrTX7H6N
 2qU5ZwHR1FivZ+5M4qztoOYp9w==
X-Google-Smtp-Source: APXvYqwAXw/IykK10+ew8RS84KOicqrCKY9PBz6/920VkzDy8qWk/SUXse8YVA9JIGzfzRNdp0v15w==
X-Received: by 2002:aa7:9546:: with SMTP id w6mr32634879pfq.66.1582220475690; 
 Thu, 20 Feb 2020 09:41:15 -0800 (PST)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u126sm191718pfu.182.2020.02.20.09.41.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 09:41:15 -0800 (PST)
Subject: Re: [PATCH v3] nvme-fabrics: reject I/O to offline device
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@infradead.org>,
 Victor Gladkov <Victor.Gladkov@kioxia.com>
References: <2d77d20698b14aa6ae261a71d239c50b@kioxia.com>
 <20200219152849.GB13942@infradead.org>
 <7ac74c23-db96-56e0-ad6e-24bb4df1934b@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <f1d99912-d177-85ce-7ebd-4863cdcb2a36@broadcom.com>
Date: Thu, 20 Feb 2020 09:41:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7ac74c23-db96-56e0-ad6e-24bb4df1934b@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_094116_688926_6396B772 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Mike Snitzer <snitzer@redhat.com>, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMi8yMC8yMDIwIDEyOjM0IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+PiArc3RhdGlj
IHZvaWQgbnZtZV9mYWlsZmFzdF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPj4+ICt7
Cj4+PiArwqDCoMKgIHN0cnVjdCBudm1lX2N0cmwgKmN0cmwgPSBjb250YWluZXJfb2YodG9fZGVs
YXllZF93b3JrKHdvcmspLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG52bWVf
Y3RybCwgZmFpbGZhc3Rfd29yayk7Cj4+PiArCj4+PiArwqDCoMKgIHNwaW5fbG9ja19pcnEoJmN0
cmwtPmxvY2spOwo+Pj4gK8KgwqDCoCBpZiAoY3RybC0+c3RhdGUgPT0gTlZNRV9DVFJMX0NPTk5F
Q1RJTkcpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBzZXRfYml0KE5WTUVfQ1RSTF9GQUlMRkFTVF9F
WFBJUkVELCAmY3RybC0+ZmxhZ3MpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9pbmZvKGN0cmwt
PmRldmljZSwgImZhaWxmYXN0IGV4cGlyZWQgc2V0IGZvciBjb250cm9sbGVyIAo+Pj4gJXNcbiIs
IGN0cmwtPm9wdHMtPnN1YnN5c25xbik7Cj4+Cj4+IFBsZWFzZSBicmVhayB1cCB0aGUgbGluZS4K
Pj4KPj4gQnV0IGxvb2tpbmcgYXQgdGhlIHVzZSBvZiBOVk1FX0NUUkxfRkFJTEZBU1RfRVhQSVJF
RCwgaXQgYWxtb3N0IHNlZW1zCj4+IGxpa2UgdGhpcyBpcyBhbm90aGVyIGNvbnRyb2xsZXIgc3Rh
dGU/Cj4KPiBJdCBhY3R1YWxseSBpcyBhIGNvbnRyb2xsZXIgc3RhdGUuIHRoaXMgaXMganVzdCBh
ZGRpbmcgYW5vdGhlciBzdGF0ZQo+IHdpdGhvdXQgcmVhbGx5IGZpdHRpbmcgaXQgaW50byB0aGUg
c3RhdGUgbWFjaGluZS4gSSdkIHBlcnNvbmFsbHkKPiB3b3VsZCB3YW50IHRoYXQgdG8gaGFwcGVu
LCBidXQgSSBrbm93IEphbWVzIGhhZCBzb21lIHJlamVjdHMgb24KPiB0aGlzLgoKSSBkb24ndCBi
ZWxpZXZlIGl0cyBhIGNvbnRyb2xsZXIgc3RhdGUgLSByYXRoZXIgYW4gYXR0cmlidXRlLCByZWxh
dGl2ZSAKdG8gd2l0aGluIHRoZSBDb25uZWN0aW5nIHN0YXRlICh3aGljaCBtYXkgYmUgaW4gdGhl
IHByb2Nlc3Mgb2YgCnJldHJ5aW5nKSwgd2hlcmUgaW5zdGVhZCBvZiBidXN5aW5nIGFueSBpbyBy
ZXF1ZXN0IHRoYXQgbWF5IGJlIHJlY2VpdmVkLCAKd2Ugc3RhcnQgdG8gZmFpbCB0aGVtLsKgwqDC
oCBJIGRvbid0IHNlZSB0aGlzIHRpbWUgd2luZG93IGFzIHNvbWV0aGluZyB0aGUgCmNvbnRyb2xs
ZXIgaGFzIHRvIGFjdHVhbGx5IHRyYW5zaXRpb24gdGhyb3VnaCAtIG1lYW5pbmcgd2UgYXJlbid0
IApyZWNvbm5lY3Rpbmcgd2hpbGUgaW4gdGhpcyBzdGF0ZS4KCgo+Cj4gQWxzbywgSSBzdGlsbCBz
YXkgdGhhdCBpdHMgZGVmYXVsdCBjaGFuZ2VzIHRoZSBleGlzdGluZyBiZWhhdmlvciB3aGljaAo+
IGlzIHNvbWV0aGluZyB3ZSB3YW50IHRvIGF2b2lkLgoKSSB0aG91Z2h0IHRoZSBsYXN0IHBhdGNo
IHdhcyB0aGUgc2FtZSBhcyBleGlzdGluZyBiZWhhdmlvciAoZS5nLiBkZWZhdWx0IAp0bW8gaXMg
MCwgYW5kIGlmIDAsIHRoZSB0aW1lciwgd2hpY2ggc2V0cyB0aGUgbm93LWZhaWwgZmxhZywgbmV2
ZXIgZ2V0cyAKc2NoZWR1bGVkKS4KCmluIHRoZSBsYXN0IHJldmlldywgSSB3YXMgZXhwbG9yaW5n
IHRoZSBvcHRpb24gaWYgd2UgZGlkIHdhbnQgdG8gY2hhbmdlIAp0aGUgZGVmYXVsdCwgYXMgdGhl
IGRlZmF1bHQgaXMgYSByYXRoZXIgbG9uZyB3YWl0IChJIGRpZCB2YWNpbGF0ZSkuwqAgQnV0IApJ
J20gZmluZSB3aXRoIGtlZXBpbmcgdGhpbmdzIHRoZSBzYW1lLgoKLS0gamFtZXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxp
bmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
