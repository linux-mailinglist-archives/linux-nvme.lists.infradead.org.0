Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F9D71C5F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5ZRtFJYKLqZVUsl1KUG693+uGUZejXBk03TKVzw/FpU=; b=uivKTYfaPofhx+hsQg0S6h2Jq
	8ZjBWwx5gULNIXz9Xe7GcoyVhoaKejsnoG86mBKDw5mxrhEvTzD/RqkblvKIagtC8FNfGT4NzjFkg
	seIS4a3AIHamcTstk/5i+/BGx6QtERd9smGwD6SdGYgjEycZh4Gb99O37WshK4wScKNgy3UM6oOF9
	1w7HSvRrzEycVcqHnrWGvKW8oVRZADE8H576j1OMwh5XaboWhsZr9ZbKS3gR/pcpQkhhFoGU4cfs6
	5LA/mi0QuBP8DziBW+2peKCLKAKRVkJNP0Q630feZx2nk6VXtapZnpxg66CMLyoZ7vbp/qfrNvASZ
	KkIXKLE9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxES-0003X1-4o; Tue, 23 Jul 2019 16:01:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxEF-0003Wi-Fo
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:01:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id f17so15371565pfn.6
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 09:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4b8kdDJdU4z76MphtVU/XlnpllNSKmHYN3S5H0UAXew=;
 b=Ahwgzot6d82tFTMitd1Ns8wTyYWuBz8UvJqm1TxbhjZMZPOGXVmz/QpGHoFV2MOPhZ
 kAeE2syuBNtUIYoiVqOT54tleOKi1SYGQ98v+CxFB2OhYDerwo+Rs9tTVPM9DIU8Vri4
 qkmC9aXQjcJXxdBdHYy54rRC+/FD8r9fy2DvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4b8kdDJdU4z76MphtVU/XlnpllNSKmHYN3S5H0UAXew=;
 b=dAH5l9VKQNAMJ+qe+INNlF3WhUDkeWfZmPC6DnGmgalF+lf9PjBGZFcRIaiBni2gKX
 nd4s5FOTnUAZk2ONaXuB/W4271OGfBSxcUH77+CJxdtM2dnJm1P1JBiYY+D0TZwwDfAZ
 dF068LFoyJjeFtz8HcahLWYjtUh70p4joOy+U1/tTYcZ19RKfC7En6q3RUIUFvGogp3b
 V+uSnkKYJFL7RDkdLDEegqy2W6VXa7+f2kEJwjCpzodCykRpaZcaK2w0f5czfWjEm4zS
 A4EV+GNW3WcpI63b8xMz+N/6haIyDW8rMCZ5nhstxZKWIod+kMomoHmIgb3+P+H1Llu+
 MEOA==
X-Gm-Message-State: APjAAAUUb5eU8sbzxlHp7+vl31X3jBmjASSoW3gMyQPgyN9CJv3QRx1g
 9JEvw5i00lvnYMZ7ztV5A6szbw==
X-Google-Smtp-Source: APXvYqx6xUF6h+Gd+Ftn/BA/Ezmx3PYLc6nc3pfl/9Wag06Tr9GBBIlj48X0S4AAva46cVCXtLEpXg==
X-Received: by 2002:aa7:9210:: with SMTP id 16mr6678046pfo.11.1563897686947;
 Tue, 23 Jul 2019 09:01:26 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w197sm55872547pfd.41.2019.07.23.09.01.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 09:01:26 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <27688d4f-49b1-9fcd-d315-d0a33ecd248d@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <ec775906-4e87-9455-6989-0152cdcabfd7@broadcom.com>
Date: Tue, 23 Jul 2019 09:01:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <27688d4f-49b1-9fcd-d315-d0a33ecd248d@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_090127_532020_0E887EB0 
X-CRM114-Status: GOOD (  11.20  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzIyLzIwMTkgNzo1MiBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPgo+PiBNYWtlZmls
ZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMjIgCj4+ICsrKysrKysrKysrKysrKysrKystLS0K
Pj4gwqAgbnZtZS5zcGVjLmluwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA5ICsrKysrKysrKwo+PiDCoCBu
dm1mLWF1dG9jb25uZWN0LzcwLW52bWYtYXV0b2Nvbm5lY3QuY29uZsKgwqDCoMKgwqDCoMKgIHzC
oCAxICsKPj4gwqAgbnZtZi1hdXRvY29ubmVjdC83MC1udm1mLWF1dG9jb25uZWN0LnJ1bGVzwqDC
oMKgwqDCoMKgIHwgMTggCj4+ICsrKysrKysrKysrKysrKysrKwo+PiDCoCBudm1mLWF1dG9jb25u
ZWN0L252bWVmYy1ib290LWNvbm5lY3Rpb25zLnNlcnZpY2UgfMKgIDkgKysrKysrKysrCj4+IMKg
IG52bWYtYXV0b2Nvbm5lY3QvbnZtZi1jb25uZWN0LnRhcmdldMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgMiArKwo+PiDCoCBudm1mLWF1dG9jb25uZWN0L252bWYtY29ubmVjdEAuc2Vydmlj
ZcKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTQgKysrKysrKysrKysrKysKPj4gwqAgNyBmaWxlcyBj
aGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+PiDCoCBjcmVhdGUgbW9k
ZSAxMDA2NDQgbnZtZi1hdXRvY29ubmVjdC83MC1udm1mLWF1dG9jb25uZWN0LmNvbmYKPj4gwqAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IG52bWYtYXV0b2Nvbm5lY3QvNzAtbnZtZi1hdXRvY29ubmVjdC5y
dWxlcwo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgbnZtZi1hdXRvY29ubmVjdC9udm1lZmMtYm9v
dC1jb25uZWN0aW9ucy5zZXJ2aWNlCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBudm1mLWF1dG9j
b25uZWN0L252bWYtY29ubmVjdC50YXJnZXQKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IG52bWYt
YXV0b2Nvbm5lY3QvbnZtZi1jb25uZWN0QC5zZXJ2aWNlCj4KPiBKYW1lcywgZGlkbid0IHdlIGFn
cmVlIHdlIGFyZSBnb2luZyB0byBzcGxpdCB0aGVzZSBpbnRvIGxvY2FsCj4gZGlyZWN0b3JpZXM6
IHN5c3RlbWQvIHJ1bGVzLyBkcmFjdXQvID8KPgo+IEkgYXNrZWQgdGhpcyBmb3IgdXMgdG8gYmUg
YWJsZSB0byBhZGQgbW9yZSBzY3JpcHRzIGVhc2lseSB0aGF0Cj4gd291bGQgbm90IG5lY2Vzc2Fy
aWx5IGJlIHJlbGF0ZWQgdG8gYXV0b2Nvbm5lY3QuLi4KCkkgZ3Vlc3MgSSBkaWRuJ3QgdW5kZXJz
dGFuZCB5b3UuwqAgSSBjcmVhdGVkIHNlcGFyYXRlIE1ha2UgaW5zdGFsbCAKdGFyZ2V0cyBmb3Ig
ZWFjaCBvZiB0aG9zZS4KCi0tIGphbWVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
