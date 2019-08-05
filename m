Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB724824BE
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 20:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=evXGh0qHs5L+jq+alasF3kVA0pj9yeLcaH6W6cicZFU=; b=B1MkqBJOYyrfshVxZBPOAVO2f
	QUr6TKs1IHqw3f0TveG+s9POtJzUFuod+g35gVT7gpQt4awPvq+wL5BF2pwpaOCmfeZvrD5fsseVT
	cCDWythd9xVMppvo/Md21J7q9yQtyebLTDhLZo/m3ANVpCrVI3SXotezpnDr2dqcQdSaIuoHB9Tgb
	z/uB2vJFbnHj1PGkiFvKTOxF5dVqxlI+EZo5nTyBJ21dc2e6VY0fydaz/NaWLvmJPLAq5/EL6KyL0
	/b1ePG3C2fz1AQF6Nz4+IYdwmGk6RaoZcfZuBKxhZw3gWhefeGOvHUq4zWtvL3PeAqZKQUEIXeTez
	FbOX745+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhY3-0003BO-7z; Mon, 05 Aug 2019 18:17:31 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhXw-0003B1-7q
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 18:17:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id w79so62787061oif.10
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 11:17:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B/AfNvu9lQPP/A73k4ZOvKlbc2DNWWMqaVPLv3lVn9E=;
 b=h3ddAko0UYTNYyL9Wp7qU2Ch+ZkKMKuo+ZqZhDAxnDlJaSPNwsHESkdOvAcyS9ARPy
 1XAB4G9qW2+p90+/s8eis1caEze3CS3r4QdR6fne8vuMAOK4SeGmOdCVi0W49ZLh/HNr
 Fv8Kw2pw/rSimCC2rI/9UXyLt2ZwVfAzruKfh1uteyZU4xmJtpfo1Hs+wlk/sTJYyx3G
 Q/5SApUPqon2CpiVisxD0618DZBkx/xtKwaBSL+vq1GbYLHHSv/S4SQJ2uvX0t9YSbb4
 LGZrLOBuvjwI7TWsp3LivCL8iCt0qxkUx0ZLKyqTxdFesr5xZWPt+sJj/A7i1ij8DUqB
 /m+w==
X-Gm-Message-State: APjAAAX0Z6zzGZW8uGFU6j/SWkn+A4/2OTdaO9il+yd6lJXS6NZUXIDh
 AIpVokXhhZc8WDYdWm9Sg3w=
X-Google-Smtp-Source: APXvYqztFqYm24/5+bXnNWODWpyYlYfWhF5bUmhFbSoIljjBeKbP314lZLEYQvB37mdQwjtbYcTVLQ==
X-Received: by 2002:a54:4f89:: with SMTP id g9mr12918037oiy.110.1565029042485; 
 Mon, 05 Aug 2019 11:17:22 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id k3sm28519201otr.1.2019.08.05.11.17.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:17:21 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: James Smart <james.smart@broadcom.com>,
 Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <0fb2cf8c-3657-31bf-0df5-ee2495282f57@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a934378c-af6a-6c31-7d72-58f4295ad5b5@grimberg.me>
Date: Mon, 5 Aug 2019 11:17:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0fb2cf8c-3657-31bf-0df5-ee2495282f57@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_111724_284311_7C1C3B02 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gT24gOC80LzIwMTkgMjo1NSBBTSwgSXNyYWVsIFJ1a3NoaW4gd3JvdGU6Cj4+IFRPUyBpcyB1
c2VyLWRlZmluZWQgYW5kIG5lZWRzIHRvIGJlIGNvbmZpZ3VyZWQgdmlhIG52bWUtY2xpLgo+PiBJ
dCBtdXN0IGJlIHNldCBiZWZvcmUgaW5pdGlhdGluZyBhbnkgdHJhZmZpYyBhbmQgb25jZSBzZXQg
dGhlIFRPUwo+PiBjYW5ub3QgYmUgY2hhbmdlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSXNyYWVs
IFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9udm1l
L2hvc3QvZmFicmljcy5jIHwgMTYgKysrKysrKysrKysrKysrLQo+PiDCoCBkcml2ZXJzL252bWUv
aG9zdC9mYWJyaWNzLmggfMKgIDMgKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hv
c3QvZmFicmljcy5jIGIvZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4+IGluZGV4IDU4Mzhm
N2NkNTNhYy4uZGJjZTdmZmU2YzJjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9m
YWJyaWNzLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4+IEBAIC02MTEs
NiArNjExLDcgQEAgc3RhdGljIGNvbnN0IG1hdGNoX3RhYmxlX3Qgb3B0X3Rva2VucyA9IHsKPj4g
wqDCoMKgwqDCoCB7IE5WTUZfT1BUX0RBVEFfRElHRVNULMKgwqDCoMKgwqDCoMKgICJkYXRhX2Rp
Z2VzdCLCoMKgwqDCoMKgwqDCoCB9LAo+PiDCoMKgwqDCoMKgIHsgTlZNRl9PUFRfTlJfV1JJVEVf
UVVFVUVTLMKgwqDCoCAibnJfd3JpdGVfcXVldWVzPSVkIsKgwqDCoCB9LAo+PiDCoMKgwqDCoMKg
IHsgTlZNRl9PUFRfTlJfUE9MTF9RVUVVRVMswqDCoMKgICJucl9wb2xsX3F1ZXVlcz0lZCLCoMKg
wqAgfSwKPj4gK8KgwqDCoCB7IE5WTUZfT1BUX1RPUyzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJ0
b3M9JWQiwqDCoMKgwqDCoMKgwqAgfSwKPj4gwqDCoMKgwqDCoCB7IE5WTUZfT1BUX0VSUizCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIE5VTEzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gwqAgfTsK
Pj4KPiAKPiBJIHRoaW5rIHdlIG5lZWQgdG8gY3JlYXRlIGEgZnJhbWV3b3JrIGZvciB0cmFuc3Bv
cnQtc3BlY2lmaWMgb3B0aW9ucy4gCj4gS2VlcGluZyB0aGVtIGF0IHRoZSBzYW1lIGZsYXQgbGV2
ZWwgYXMgdGhlIGdlbmVyaWMgb3B0aW9ucyBpc24ndCBhIGdyZWF0IAo+IGlkZWEgYXMgdGhleSBz
dGFydCB0byBncm93IGFuZCBhbHdheXMgbW9kaWZ5aW5nIGNvcmUgZm9yIGEgdHJhbnNwb3J0IAo+
IG9wdGlvbiBpc24ndCBnb29kIGVpdGhlci4KCldlbGwsIG5vdCBkaXNhZ3JlZWluZywgYnV0IEkg
cGVyc29uYWxseSB0aGluayB0aGF0IHRoaXMgY2FuIGJlCmFwcGxpY2FibGUgdG8gYWxsIHRyYW5z
cG9ydHMgYXMgdGhpcyBpcyBhIGdlbmVyaWMgdGVybSB0aGF0IGhhcHBlbnMKdG8gbWFwIHRvIGEg
c3BlY2lmaWMgbWFya2luZyBpbiBpcCB0cmFuc3BvcnRzLgoKQWxzbywgSSBhY3R1YWxseSB0aGlu
ayB0aGF0IGtlZXBpbmcgYSBzaW5nbGUgcGFyc2VyIHNpbXBsaWZpZXMgdGhpbmdzLgpVbmxlc3Mg
d2UgbWF5IHJ1biBvdXQgb2Ygc2hvcnQgYXJnIG9wdGlvbnMsIHdoaWNoIGluIHRoYXQgY2FzZSBp
dCBpcwpiZW5lZmljaWFsLi4uCgo+IEhvdyBhYm91dCB3ZSBzdGFydCB0aGUgY29udmVudGlvbiAi
PHRyYW5zcG9ydF9uYW1lPjo8b3B0aW9uPiIgZm9yIGFuIAo+IG9wdGlvbi7CoCBUaGUgb3B0cyBz
dHJ1Y3QgY2FuIGhhdmUgYSBwb2ludGVyIHRoYXQgaXMgb3duZWQgYnkgdGhlIAo+IHRyYW5zcG9y
dC7CoCBUaGUgdHJhbnNwb3J0IGNhbiBzdXBwbHkgYSBwYXJzaW5nIGZ1bmN0aW9uIGZvciBhbiBv
cHRpb24uIAo+IFRoZSBjb3JlIGxheWVyIGNhbiBtYXRjaCB0aGUgdHJhbnNwb3J0IG5hbWUgaW4g
dGhlIHByZWZpeCwgdGhlbiBpbnZva2UgCj4gdGhlIHRyYW5zcG9ydCBoYW5kbGVyIGluc3RlYWQg
b2YgdGhlIGdlbmVyaWMgcGFyc2luZy4gVHJhbnNwb3J0IGhhbmRsZXIgCj4gY2FuIHBhcnNlIGFu
ZCBzZXQgaXQncyBvd24gdmFsdWUgaW4gaXRzIG93biBvcHRzIHN0cnVjdC4gVHJhbnNwb3J0IGNh
biAKPiB2YWxpZGF0ZSBpdCBoYXMgdGhlIG5lY2Vzc2FyeSB0cmFuc3BvcnQgb3B0cyBhcyB0aGUg
Zmlyc3QgdGhpbmcgaXQgZG9lcyAKPiBpbiBpdCdzIGNyZWF0ZV9jdHJsIHJvdXRpbmUuCgpUaGF0
IGlzIG9uZSB3YXkgdG8gZ28uLi4KCkkgZG9uJ3QgaGF2ZSBhIHN0cm9uZyBzdGFuZCBoZXJlLCB3
aGF0IGRvIG90aGVycyB0aGluaz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK
