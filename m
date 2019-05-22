Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A086B266D8
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6h5m9YhZ3bc9wsTI//5XTQdoe4M58Pu0gfcUczOqFE=; b=fU5NaPk5yDf7tg
	Ye6ayc4huRqowYUF5Pq93STyuYVVjiF5sEgKf87/FE0Zykxh3RxEKYRZ0lqwt2jOTDzqazmZfzoa2
	T3QJ2rOeb/tjm0xPunM7wXLhTpEUJMIrJfdp0s3lfwLe2W6tSiofRjDEuMzDwnFOCOTzpNOb2oeUo
	nUGPmC/fv6uJDQA6AvcHH0WLrNxwfiuuZ14w7LcBvyc3rkBdWzl1lVL0WYgAnIYmpwzTrYGAPCvkQ
	F7WgQmRnS1x/QNFG3Edn9yPP+07aD0p7vbyxWLi1+pZtN93Dvi6UPX6LVWjJbsiZ9RGr1/GFMm+MI
	yZdmSfrUkHMao4NPUqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTT6h-0001aA-IF; Wed, 22 May 2019 15:24:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTT6c-0001Zj-Ha
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:24:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id h17so1512322pgv.0
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 08:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SURayyOYonfMQF3p+qt0LNX59Tqnf3GP1uPSpa/EBis=;
 b=Qr8Q2vLkgtEVbeVeIsJZbM3cdgh5VU0oITbm/ztMyPP+VS7kYsjgFkIIxRFPUZbHIZ
 1QB6lYKXLiUVt60HC7XHZRho4moOISJMLlwkBZ6oLduDNg4qx2IZa5m+Wx+YYKjuJ1Ox
 KfXTmR1ldgvWtYkzAdVM7wxFMOyGIv6p2oI/ql/jE1eN+oGCGADdusxmfZs9wyFalzqo
 bjSMcLfx0NWdCcPm7I9avDWH/DA7LnApGoeeKHrNxtDQJwxio1rjaMBi31MbLG6Qtdyd
 EW0lhwA4YJjA2vKT6ndVGwqYjwGxpoj2hw4jn0raqgGncx0MZnsInk/Vrg7UTjgkjPEZ
 Fypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SURayyOYonfMQF3p+qt0LNX59Tqnf3GP1uPSpa/EBis=;
 b=mmaPbNm2EjLYPpwmMDLAHbBP8HXCtSTBdpLvRC7i/tNcic1R0qjiMsa8TuFUNgyGDC
 R2XdQ1bh10Ixy2tULWsRVDrh234OUPToAccWcQAXovGSHHioNbznX9BGNDgI6YTIKt2U
 clKI1amcZKIPORqErwD5fLuS901p0kaaNV1Bge7X8mFKEEL0GfVjPvr6GLzOt6b50juc
 dhWu0/ZtGNPSbOUl7zMB1a4UUwMf4cFYkI5vkg+GKksMaiZKDcmjCl/EfrdbNtHuVWnR
 fLI7Sg6H+NNQx6GaWs1+HAEaSxHh7eTCNi8M1ePNHZ3qGR/qjb0xJl/0qkwf/mzGW7hl
 A6Og==
X-Gm-Message-State: APjAAAVUHAK/VXDg51qugtB9WNxxx7Pmxbvkb+B4erfMaIhRAZsYoU90
 9H7mrhubYWDqXw7fMMvhn4J2ZGbU+Vs74w1S96Y=
X-Google-Smtp-Source: APXvYqzfc8bnKzStaA4lhtXR/bYP+SGWLUVkwwXrb5a1uPIjjrbEbr/yUMGMjoXNuecVLjRo9VVNTjJEn4xwQBH5nu8=
X-Received: by 2002:a63:d150:: with SMTP id c16mr90506891pgj.439.1558538677765; 
 Wed, 22 May 2019 08:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-2-git-send-email-akinobu.mita@gmail.com>
 <DM6PR04MB57543310310DD72F98E361AD86070@DM6PR04MB5754.namprd04.prod.outlook.com>
In-Reply-To: <DM6PR04MB57543310310DD72F98E361AD86070@DM6PR04MB5754.namprd04.prod.outlook.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 23 May 2019 00:24:27 +0900
Message-ID: <CAC5umyg9_46ckKXnZG54ZyJxdpZSQm+yA9FXdW16bQW-qFkT4Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] nvme: Export get and set features
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082438_581318_548AC4E7 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyMuaXpSjmsLQpIDI6MjMgQ2hhaXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEu
S3Vsa2FybmlAd2RjLmNvbT46Cj4KPiBPbiA1LzIxLzE5IDk6MDUgQU0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+IEZyb206IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNjaEBpbnRlbC5jb20+Cj4gPgo+
ID4gRnV0dXJlIHVzZSBpbnRlbmRzIHRvIG1ha2UgdXNlIG9mIGZlYXR1cmVzLCBzbyBleHBvcnQg
dGhlc2UgZnVuY3Rpb25zLiBBbmQKPiA+IHNpbmNlIHRoZWlyIGltcGxlbWVudGF0aW9uIGlzIGlk
ZW50aWNhbCBleGNlcHQgZm9yIHRoZSBvcGNvZGUsIHByb3ZpZGUKPiA+IGEgbmV3IGNvbnZlbmll
bmNlIGZ1bmN0aW9uIHRoYXQgaW1wbGVtZW50IGVhY2guCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
S2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
bnZtZS9ob3N0L2NvcmUuYyB8IDIyICsrKysrKysrKysrKysrKysrKystLS0KPiA+ICBkcml2ZXJz
L252bWUvaG9zdC9udm1lLmggfCAgNCArKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252
bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiA+IGluZGV4IGQzNTIx
NDUuLmMwNGRmODAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiA+
ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gQEAgLTExMTMsMTUgKzExMTMsMTUg
QEAgc3RhdGljIHN0cnVjdCBudm1lX2lkX25zICpudm1lX2lkZW50aWZ5X25zKHN0cnVjdCBudm1l
X2N0cmwgKmN0cmwsCj4gPiAgICAgICByZXR1cm4gaWQ7Cj4gPiAgfQo+ID4KPiA+IC1zdGF0aWMg
aW50IG52bWVfc2V0X2ZlYXR1cmVzKHN0cnVjdCBudm1lX2N0cmwgKmRldiwgdW5zaWduZWQgZmlk
LCB1bnNpZ25lZCBkd29yZDExLAo+ID4gLSAgICAgICAgICAgICAgICAgICB2b2lkICpidWZmZXIs
IHNpemVfdCBidWZsZW4sIHUzMiAqcmVzdWx0KQo+ID4gK3N0YXRpYyBpbnQgbnZtZV9mZWF0dXJl
cyhzdHJ1Y3QgbnZtZV9jdHJsICpkZXYsIHU4IG9wLCB1bnNpZ25lZCBmaWQsCj4gPiArICAgICAg
ICAgICAgIHVuc2lnbmVkIGR3b3JkMTEsIHZvaWQgKmJ1ZmZlciwgc2l6ZV90IGJ1ZmxlbiwgdTMy
ICpyZXN1bHQpCj4KPiBZb3VyIHBhdGNoIGlzIGdlbmVyYXRpbmcgd2FybmluZ3MsIGNhbiB3ZSBw
bGVhc2UgYXZvaWQgdGhlc2Ugd2FybmluZ3MgPwo+Cj4gV0FSTklORzogUHJlZmVyICd1bnNpZ25l
ZCBpbnQnIHRvIGJhcmUgdXNlIG9mICd1bnNpZ25lZCcKPiAjMjg6IEZJTEU6IGRyaXZlcnMvbnZt
ZS9ob3N0L2NvcmUuYzoxMTE2Ogo+ICtzdGF0aWMgaW50IG52bWVfZmVhdHVyZXMoc3RydWN0IG52
bWVfY3RybCAqZGV2LCB1OCBvcCwgdW5zaWduZWQgZmlkLAoKT0suICBJJ2xsIGNvbnZlcnQgYWxs
ICd1bnNpZ25lZCcgdG8gJ3Vuc2lnbmVkIGludCcgaW4gdGhpcyBwYXRjaC4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
