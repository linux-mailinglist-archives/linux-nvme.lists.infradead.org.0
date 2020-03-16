Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A89F18705A
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Mar 2020 17:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3hKu/aVDFmKCkh0IByaz748hB4woqfBPFp5W0FGZFI=; b=Id89yvYR8EZfbViN2cOhPAaJT
	EKUZmOh3rjfEkwtIHN2OreTwvghb3o+C15cTikM8a60o0gIuOS7vfwy8tPgfhoyMmnjDT73LFfGdA
	z5Q4xWtRJbklcQMDnKw2SxCT9/nXKDzsA3nZLYez06OsiWqxKQYVtFlH9OCQqP4WgPPlnaDJ0PgGL
	qjzZUL3tvH/SwqKFz1xUYcCs3+SIi/OoEk3Iqy/lmkCQiBr6TEhlAhpQ+CN26LIeQtJSJ2OvlLMGA
	yUOQNdND1EGIR4Mhzoum154sBq/eRJ1TtMhlt8jK9Qn4+ri1+Y8q1RKr5OrNi1HgW6WjBPJPWaHh3
	AfOqZDyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsth-0003MI-70; Mon, 16 Mar 2020 16:47:25 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDstc-0003Ls-7h
 for linux-nvme@lists.infradead.org; Mon, 16 Mar 2020 16:47:21 +0000
Received: by mail-ot1-f67.google.com with SMTP id 111so18463367oth.13
 for <linux-nvme@lists.infradead.org>; Mon, 16 Mar 2020 09:47:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5M8YirHEPLpiCGPF0lqU/Xs4O8nC7dN0ZPpySp5qyKY=;
 b=BbyJhKKy0Qd9f0fzuqdgZmqVaUl5oct8g+pqHzX3mEc+MSMmp3CqCGsU0LNnJKR641
 XppQiZoJgcwt9m9cdbjvfKncMfsUzLSmUy/loUxgjsYIfH41ClGF3/sLWnujWVg5OAxO
 /qajBnof8aRAhIBCfuyTvnedMdwfLK6+yrEYnaT5Q4ZzQXKX3GlnnwPhgzQvQpr9uTIF
 6uBQMJvBIjX3sZeNWUS5pzzPGuO3bCQpVLiF/MU6guoTvYUTs4MlWUyFrwpazulOjNp9
 5EzHtl3x6FQuJCIL2aTATKyjQjDEBju55Y6mgumyKRftb9K59WXwerQgoT03CcOy2lR9
 TVDQ==
X-Gm-Message-State: ANhLgQ3/Nzuxtax2ezMbWp/BNOuOvjqAUpBqzrB47nN8bCaPrGngODVg
 JxC0R9YrkdF524JyhIBncmA=
X-Google-Smtp-Source: ADFU+vtmOEyCpepuWgeXJ4DgPPntOpufwLNi++wR9NSnz/6haH/HCxHD/ZSIhYUqlZLSqNWDYxo+3g==
X-Received: by 2002:a9d:6452:: with SMTP id m18mr136010otl.366.1584377237114; 
 Mon, 16 Mar 2020 09:47:17 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0::21? ([2600:1700:65a0:78e0::21])
 by smtp.gmail.com with ESMTPSA id e206sm128845oia.24.2020.03.16.09.47.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Mar 2020 09:47:16 -0700 (PDT)
Subject: Re: [PATCH 4/4] nvme: Fix controller use after free at create_ctrl
 callback
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
 <1583938849-5787-5-git-send-email-israelr@mellanox.com>
 <8d294ef5-ca01-4458-441c-b987a173d39c@grimberg.me>
 <e12ed56f-6bfe-dcee-9967-f6f58f06a9f0@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7710cc5f-850a-f260-fb02-423a46867534@grimberg.me>
Date: Mon, 16 Mar 2020 09:47:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e12ed56f-6bfe-dcee-9967-f6f58f06a9f0@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_094720_277164_2D2086CE 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jCj4+PiBpbmRleCBjMGQ5YjE5Li43OTc2OTU1IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3Jl
LmMKPj4+IEBAIC0zMjI0LDYgKzMyMjQsMTAgQEAgc3RhdGljIHNzaXplX3QgbnZtZV9zeXNmc19k
ZWxldGUoc3RydWN0IGRldmljZSAKPj4+ICpkZXYsCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0
cnVjdCBudm1lX2N0cmwgKmN0cmwgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4+IMKgICvCoMKg
wqAgLyogQ2FuJ3QgZGVsZXRlIG5vbi1jcmVhdGVkIGNvbnRyb2xsZXJzICovCj4+PiArwqDCoMKg
IGlmICghY3RybC0+Y3JlYXRlZCkKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVCVVNZOwo+
Pj4gKwo+Pgo+PiBOb3QgaWRlYWwgdGhhdCBjb3JlIGNoZWNrcyBhdHRyaWJ1dGUgdGhhdCBmYWJy
aWNzIGlzIHNldHRpbmcuIE1heWJlCj4+IG1vdmUgdGhpcyB0byBudm1lX3N0YXJ0X2N0cmw/Cj4g
Cj4gSSBjYW4ndCBtb3ZlIHRoaXMgdG8gbnZtZV9zdGFydF9jdHJsKCksIGJlY2F1c2UgcmRtYS90
Y3AgaGF2ZSBub3QgdGFrZW4gCj4gY3RybCByZWZjb3VudCB5ZXQuCgpDYW4geW91IGV4cGxhaW4g
d2hhdCBpcyB0aGUgaXNzdWUgd2l0aCB0aGUgcmVmIGNvdW50aW5nIGZvciBzZXR0aW5nIHRoaXMK
ZmxhZz8KCj4gQmVzaWRlIHRoYXQsIG52bWVfc3lzZnNfZGVsZXRlIGZ1bmN0aW9uIGlzIG9ubHkg
dXNlZCBieSBmYWJyaWNzIG1vZHVsZXMuCj4gCj4gUENJIG1vZHVsZSBkb2Vzbid0IHNldCBkZWxl
dGVfY3RybCBvcHMuCgpUaGF0IGNhbiBjaGFuZ2UgdGhvdWdoLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGlu
dXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
