Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C13518704F
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Mar 2020 17:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hGFAfZwUG7e63OUuz5+2nFFlHaqS9t6Cy3klA6Y/y6I=; b=H3+qW7Y5tRCIAuOydVdj8q0eC
	CTNZNRJdw/GhWymzYwGnpldsH+DGDb+Iyb/G7NZW5oLAaNbhML3FASa5GOq/YZZNoUWdfHwyz85jw
	dxSfQmNXV6PppexHTy0hHkpMxSHyZ8tTeze9HJjI8tMl2CLNTS6/XNPR+TIBtA+x4zYjTSHJ1j8/5
	fkPjDHGoFtom6flhH9dYLOKWWY30WJ4FptzrT2cGhUibtusUxw6CetnBEtTCOnZixK5UP80G2LKOo
	uk9gF+zy5XH4Du7XlstHniVZlZnoFezOguPHOdAvy0qSU4z34PGGQp/wUKUkQjO/urHFlObjco8nm
	XCLxQ3H2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsqK-0001Mf-Cr; Mon, 16 Mar 2020 16:43:56 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsqG-0001MH-A7
 for linux-nvme@lists.infradead.org; Mon, 16 Mar 2020 16:43:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so18436137oia.11
 for <linux-nvme@lists.infradead.org>; Mon, 16 Mar 2020 09:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5W5iTE9gg6Q2vcbxpLeA6NVi0vfGQCMEw/jy7IyY7js=;
 b=FobEVOprP/av37kW0g43u7OXjgrW9191wBmdLaufaAHs69I1oF0jS4QEbWJdp5zXY6
 CaMntdMS6nXP+QV3EBKSLHQ8knnAQFQkkGDNtSzufO5wfihmeQKCqctg+pKvbqyzGfk4
 sxVfxFdJ6ZGBYHSlKHQYzhTXzzUqmIeYZPUzs7GQE1NcP7b2Rmr5VKMOGWgyTHwHRyiq
 wh0bqxh2nInawHl4raAigFVai44UdiJqTvNGCWm0kkyrWRMMCq8fUMRRRXvfKBPhAeSl
 PCzlPw2htrfZDQdicsOtVjmeuIr4RrHgmwIEfYKgJveFnkXGXnMCrgL5CWzyveVyicTc
 zJkg==
X-Gm-Message-State: ANhLgQ1weTXoD2uUesjFrV7CwZ9nnZVXgMXymNSckgAKWi9g0NJfvX0a
 yR2AQM6yApXicKPGphEfdf8=
X-Google-Smtp-Source: ADFU+vvkwaii3QIMfi3bi1UtwZ94z0hfXLVOL1kRTxv9NAuxSN8eMSMjw4AuMrDviN+gxDHnjK9F4g==
X-Received: by 2002:aca:fcd8:: with SMTP id a207mr354670oii.56.1584377030180; 
 Mon, 16 Mar 2020 09:43:50 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0::21? ([2600:1700:65a0:78e0::21])
 by smtp.gmail.com with ESMTPSA id p18sm109915otl.70.2020.03.16.09.43.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Mar 2020 09:43:48 -0700 (PDT)
Subject: Re: [PATCH 1/4] nvme-rdma: Fix warning at nvme_rdma_setup_ctrl
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
 <1583938849-5787-2-git-send-email-israelr@mellanox.com>
 <974e3bd2-3282-5703-eba6-bc2675c98c8e@grimberg.me>
 <e15f12ab-bf40-423d-956a-199897a5b3f5@mellanox.com>
 <328e8c24-aadd-1a3a-0523-15dc352bd8ec@grimberg.me>
 <10b7614e-7e3f-095b-5c79-942a9d0593ba@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ce753ba5-1e7e-a25d-f584-db73397cab06@grimberg.me>
Date: Mon, 16 Mar 2020 09:43:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <10b7614e-7e3f-095b-5c79-942a9d0593ba@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_094352_352066_9CAEBC16 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Max Gurtovoy <maxg@mellanox.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9yZG1hLmMgYi9kcml2ZXJzL252
bWUvaG9zdC9yZG1hLmMKPj4+Pj4gaW5kZXggZDYwMjJmYS4uNTdmOTAzMSAxMDA2NDQKPj4+Pj4g
LS0tIGEvZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9o
b3N0L3JkbWEuYwo+Pj4+PiBAQCAtMTA4NCw4ICsxMDg0LDEyIEBAIHN0YXRpYyBpbnQgbnZtZV9y
ZG1hX3NldHVwX2N0cmwoc3RydWN0IAo+Pj4+PiBudm1lX3JkbWFfY3RybCAqY3RybCwgYm9vbCBu
ZXcpCj4+Pj4+IMKgIMKgwqDCoMKgwqAgY2hhbmdlZCA9IG52bWVfY2hhbmdlX2N0cmxfc3RhdGUo
JmN0cmwtPmN0cmwsIE5WTUVfQ1RSTF9MSVZFKTsKPj4+Pj4gwqDCoMKgwqDCoCBpZiAoIWNoYW5n
ZWQpIHsKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIC8qIHN0YXRlIGNoYW5nZSBmYWlsdXJlIGlzIG9r
IGlmIHdlJ3JlIGluIERFTEVUSU5HIHN0YXRlICovCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBXQVJO
X09OX09OQ0UoY3RybC0+Y3RybC5zdGF0ZSAhPSBOVk1FX0NUUkxfREVMRVRJTkcpOwo+Pj4+PiAr
wqDCoMKgwqDCoMKgwqAgLyoKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBzdGF0ZSBjaGFuZ2Ug
ZmFpbHVyZSBpcyBvayBpZiB3ZSdyZSBpbiBERUxFVElORyBzdGF0ZSwKPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqAgKiB1bmxlc3Mgd2UncmUgZHVyaW5nIGNyZWF0aW9uIG9mIGEgbmV3IGNvbnRyb2xs
ZXIgdG8KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBhdm9pZCB1c2UgYWZ0ZXIgZnJlZSAoY3Ry
bCByZWZjb3VudCBpcyBub3QgdGFrZW4geWV0KS4KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8K
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIFdBUk5fT05fT05DRShjdHJsLT5jdHJsLnN0YXRlICE9IE5W
TUVfQ1RSTF9ERUxFVElORyB8fCBuZXcpOwo+Pj4+Cj4+Pj4gV2hhdCBzdGF0ZSBhcmUgd2UgaW4g
aWYgbm90IERFTEVUSU5HIGluIHRoaXMgY2FzZT8KPj4+Cj4+PiBXZSBhcmUgaW4gREVMRVRJTkcg
c3RhdGUuCj4+Pgo+Pj4gV2l0aCB0aGlzIGNoYW5nZSBhbnkgc3RhdGUgZmFpbHVyZSB0cmlnZ2Vy
cyBhIHdhcm5pbmcgKGluY2x1ZGluZyAKPj4+IERFTEVUSU5HKSBpZiBuZXcgaXMgdHJ1ZS4KPj4+
Cj4+PiBJbiBteSB0ZXN0IEkgd2FzIGluIERFTEVUSU5HIHN0YXRlIGFuZCB3aXRoIG5ldyA9PSB0
cnVlCj4+Pgo+Pj4gVHJ5aW5nIHRvIGNoYW5nZSBzdGF0ZSBmcm9tIERFTEVUSU5HIHRvIExJVkUg
aXMgbm90IGFsbG93ZWQgYXQgdGhlIAo+Pj4gc3RhdGUgbWFjaGluZS4KPj4KPj4gV2h5IGRvIHdl
IG5lZWQgYSB3YXJuaW5nIG9uIHRoYXQ/Cj4gCj4gRmlyc3QsIHRoZSBjb21tZW50ICJzdGF0ZSBj
aGFuZ2UgZmFpbHVyZSBpcyBvayBpZiB3ZSdyZSBpbiBERUxFVElORyAKPiBzdGF0ZSIgaXMgd3Jv
bmcuCgpUaGUgV0FSTl9PTl9PTkNFIGlzIGRlc2lnbmVkIHRvIGluZGljYXRlIHRoYXQgd2UgZmFp
bGVkIHRvIHRyYW5zaXRpb24KdGhlIHN0YXRlIGJ1dCB3ZSBkb24ndCB1bmRlcnN0YW5kIHdoeS4g
SXMgdGhhdCB0aGUgY2FzZSBoZXJlPwoKPiBTdGF0ZSBjaGFuZ2UgZmFpbHVyZSBzaG91bGQgbm90
IGhhcHBlbiB3aGVuIGNyZWF0aW5nIGEgbmV3IGNvbnRyb2xsZXIsIAo+IGJlY2F1c2UgaXQgbWF5
IGxlYWQgdG8gY29udHJvbGxlciB1c2UgYWZ0ZXIgZnJlZS4KClNvIHdlIG5lZWQgdG8gZml4IHRo
YXQsIGJ1dCB0aGUgd2FybmluZyBzaG91bGQgYmUgcHJpbnRlZCBvbmx5IHdoZW4Kd2UgZ2V0IGFu
IHVuZXhwZWN0ZWQgYmVoYXZpb3IgZnJvbSB0aGUgZmxvdyBwZXJzcGVjdGl2ZS4KCj4gU2Vjb25k
LCB0aGUgd2FybmluZyBhbHJlYWR5IGV4aXN0cyBzbyBJIGFtIG9ubHkgZml4aW5nIGl0LgoKSSBk
b24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBpcyBmaXhpbmcuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
