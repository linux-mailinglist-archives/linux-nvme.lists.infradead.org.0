Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B883F25588
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RONkqkJNWqKgdBtsKuTb3RMUjOSSJj10ZIxvqMeRUWs=; b=ZVNUkv9OT9RJvR6AR79muGTqq
	b4xw4jAJZzWUG2wildRBcZCFqrqNintX5gXs+9euSa0/6AfbmFEQVWbB+V+/NUYoXu1yPbT2dpQBv
	7BeEatv8WyPxJ14XKc3y8XQszyXlS8NMCXLpOrQvTci3SxjNJ/tt2LNsgrlxb6/HEuqSZLUV+6Tjy
	Vdl7xgaPz1UPoE2tNsX5fbvD8XDOTyV+bpg02OLijtOZD4CKTJPPC/Su/PTYq4o848CoSRvPfs5n6
	tAhVEJDoFO/XFuPGO4ceoN0LVIgLKHHQlhvVzBFC4be3JvDf6pdiX22ZlfqeFQ5ftA+hIbGRpZ3x9
	fUYKb+olQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Zh-00064x-VL; Tue, 21 May 2019 16:25:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Zc-0005mA-RD
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:25:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so9336162pfa.3
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fKLyoSwnJZDm73oldw7KQ56qfMb48Oua14jElC/0g2I=;
 b=Q2yGYLPGv38yQfLnDYjGcWMbFBdxJBm3YmvD72CBYRlNwbgzLFJFDnLokVSWpsMYK/
 tg5M41zxMHJaFigiku0uy3VKTKg3QQNCLDBl7ACHFIT67F1nRz07I2AkgD27WmnzyWl4
 cj9IkVCMWJAM6q5RR1dx3+yPNb3lPhK8bAN5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fKLyoSwnJZDm73oldw7KQ56qfMb48Oua14jElC/0g2I=;
 b=ttbVtW36jlPxSWE8gIPN0acAfWEV00foUQwwee42bC+pOm6OfJV0lTOWO+1zF4A9H7
 NOsMlXaRDWtm97MKJ3o/3pf5MVM1E4XMETfoOzUKQVZOfwcYLU6hMqsOXwYoDymIgFg/
 sVbb9FV16tjdMEOtJdC8pjq+FNEmkcjEDdEDsic82kcSyVQ6S+wvM9IPzJD7l7msQzX2
 kToetwZ1lFmIBwNe+uOy/kaDf3ZHHmWzLlVsgUGArY34sCC98vSZMv+zE75ZwUnD0DKM
 5nK3leeFCq3ekLx1zqf46MTz4f7TyXWR6N3mX+9autOMXAY9S2J94AitiurEf9RVFRmj
 kNig==
X-Gm-Message-State: APjAAAUFmfL3QW7xXx8FEcN8pc5udMM3BCfQgP7X4QFLXmsohXDq6cOQ
 HDsxdQy07KOncNo7W+46fPJnLrVR6N3RjIA6/6L++W5uz7vtz6p/im7Y+R5mkPq7S9mUwNb/8X9
 tHvVNNPU0Z7Y4mUd33RUm4mULnAhM+GvYbEPNs0AKwfoAfvMYP3JE7H3S3dli5nzyFdxWv9Xivq
 MOf8Sj4w==
X-Google-Smtp-Source: APXvYqydzwTtXaxbYSusGtqXDxtC/6Nl3KXEx3QmfJUuuIgZhGzhMeAjSZd4cQnaAURGNIMx4sAidQ==
X-Received: by 2002:a62:6585:: with SMTP id
 z127mr49058760pfb.179.1558455907077; 
 Tue, 21 May 2019 09:25:07 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x10sm31899209pfj.136.2019.05.21.09.25.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:25:05 -0700 (PDT)
Subject: Re: [PATCH 4/4] nvme-fc: align nvme_fc_delete_association() with exit
 path
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-5-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <20485830-ae6a-eae1-32f3-940ca2cc1bf3@broadcom.com>
Date: Tue, 21 May 2019 09:25:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520063624.50338-5-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_092508_896061_66F417DB 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

CgpPbiA1LzE5LzIwMTkgMTE6MzYgUE0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPiBudm1lX2Zj
X2RlbGV0ZV9hc3NvY2lhdGlvbigpIHNob3VsZCBhbGlnbiB3aXRoIHRoZSBleGl0IHBhdGggaW4K
PiBudm1lX2ZjX2NyZWF0ZV9hc3NvY2lhdGlvbigpIHRvIGVuc3VyZSB3ZSBhcmUgYWJsZSB0byBo
YW5kbGUgdGhlCj4gZmFpbHVyZSBjYXNlIHByb3Blcmx5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSGFu
bmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3Qv
ZmMuYyB8IDEwICsrKysrLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPiBpbmRleCA3MWIyMjEzOWU3OGIuLmVkOWY0YWZmYmUx
MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4gKysrIGIvZHJpdmVycy9u
dm1lL2hvc3QvZmMuYwo+IEBAIC0yODM2LDYgKzI4MzYsMTEgQEAgbnZtZV9mY19kZWxldGVfYXNz
b2NpYXRpb24oc3RydWN0IG52bWVfZmNfY3RybCAqY3RybCkKPiAgIAljdHJsLT5mbGFncyAmPSB+
RkNDVFJMX1RFUk1JTzsKPiAgIAlzcGluX3VubG9ja19pcnEoJmN0cmwtPmxvY2spOwo+ICAgCj4g
KwlpZiAoY3RybC0+Y3RybC50YWdzZXQpIHsKPiArCQludm1lX2ZjX2RlbGV0ZV9od19pb19xdWV1
ZXMoY3RybCk7Cj4gKwkJbnZtZV9mY19mcmVlX2lvX3F1ZXVlcyhjdHJsKTsKPiArCX0KPiArCj4g
ICAJbnZtZV9mY190ZXJtX2Flbl9vcHMoY3RybCk7Cj4gICAKPiAgIAkvKgo+IEBAIC0yODQ3LDEx
ICsyODUyLDYgQEAgbnZtZV9mY19kZWxldGVfYXNzb2NpYXRpb24oc3RydWN0IG52bWVfZmNfY3Ry
bCAqY3RybCkKPiAgIAlpZiAoY3RybC0+YXNzb2NpYXRpb25faWQpCj4gICAJCW52bWVfZmNfeG10
X2Rpc2Nvbm5lY3RfYXNzb2MoY3RybCk7Cj4gICAKPiAtCWlmIChjdHJsLT5jdHJsLnRhZ3NldCkg
ewo+IC0JCW52bWVfZmNfZGVsZXRlX2h3X2lvX3F1ZXVlcyhjdHJsKTsKPiAtCQludm1lX2ZjX2Zy
ZWVfaW9fcXVldWVzKGN0cmwpOwo+IC0JfQo+IC0KPiAgIAlfX252bWVfZmNfZGVsZXRlX2h3X3F1
ZXVlKGN0cmwsICZjdHJsLT5xdWV1ZXNbMF0sIDApOwo+ICAgCW52bWVfZmNfZnJlZV9xdWV1ZSgm
Y3RybC0+cXVldWVzWzBdKTsKPiAgIAoKbm8uwqAgVGhpcyBpcyByZW1vdmluZyB0aGUgdW5kZXJs
eWluZyBxdWV1ZXMgd2hpbGUgYmxrLW1xIGlzIHN0aWxsIHRyeWluZyAKdG8gc3VibWl0IHRvIHRo
ZW0gLSBjYXVzaW5nIHlldCBhIGRpZmZlcmVudCBzZXQgb2YgaXNzdWVzIGFzIHRoZSBkcml2ZXIg
CndpbGwgaGF2ZSByZWxlYXNlZCBjb250ZXh0cyBidXQgdGhlIGNhbGxkb3ducyBhcmUgc3RpbGwg
aGFwcGVuaW5nLiBZZXQgCmFub3RoZXIgZGlmZmVyZW50IHNldCBvZiBpc3N1ZXMgd291bGQgbGlr
ZWx5IGFwcGVhci7CoMKgIG5vIG5lZWQgZm9yIHRoaXMgCnJlb3JnLgoKLS0gamFtZXMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
