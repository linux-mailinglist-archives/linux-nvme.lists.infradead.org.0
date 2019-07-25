Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C3B74FF8
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lY68ZsQ1Kifexq4fO91wg4cOtqNeXUykP+Skw8y12M=; b=sDAovEisrzv8Q0
	Ft+hI6O2BbjIKyf7MvI0CHxKi5sMPuykVnl4geye11mdH1ksDGy9KHv/MpSSYr0Hjtc39iRD0EoSY
	StCSze5PhECJ90gZH7tGA6rrhuOsrDSW93NVfLatYltf1iAsgbhDnD5ZcXWAXEZm/EKyr1O4JH6zT
	wq+TkKEE3vfLSrmu7fPHGSsblrbIjF+QexeLItfaC7aX26Rv7V8A6CGe+8J5GOXB989s/7bSHhdsR
	OaH4rjpXOM4roALu2z1htIMtDQMXP7BB9vlmGX3ZUBPitecP9vGesLFZmoXfja2bDbxoHW9LfSK2e
	5+1RRkB3MoE0tiY7hJNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqe4b-0003FY-H8; Thu, 25 Jul 2019 13:46:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqe4S-0003FD-JK
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:46:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so23064367pgp.12
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/oA5bfcDUO9szxdQwATowzn0/JOyrlcqbX2EW5yDYBA=;
 b=hbb7Moiv1RVTeQz1Go3elc9/SAFA4uK6nCh/mQY3BNNKPMZ6oWABjNXFuc4tE53R6W
 GlWEBc5yD8CpPAndnEHai0YXsA71eUcrKrnUUITEqsoyJ2MyH80zg6f6aTcWBbw7JDOC
 odWolqytMhLkETEhabjWxMVUgP7bq842kq6XAJ2KbwBBT7uXCem5dJSYSYhLKla+NZhL
 bUJxjTRl/ATrw5/Dl3Hlf2sKiczYr5N7y2viG9nzioVrgVJW3mKoJBwbUmXdjVq3MvwX
 GA7CfXPowwvFRoO6mEZkwZqpQFvtTOFRFpp898ENABLpkFnY+40TlRRSuJ9fnWy1vYEv
 +uOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/oA5bfcDUO9szxdQwATowzn0/JOyrlcqbX2EW5yDYBA=;
 b=GiPOLllNemWatKMBtuj53n7F33d/kjL52N/RAix3ucwQJGMhThdMHpsdzCl1wsg3P3
 2rN9uRDOfajGGiSIwq5ujsOTZq+E+ZbWEtmw9isj4x0T/WEXFOj3+BGJIDkKR1rAPWG0
 28CkJl4j/+d2PIoNlbLq47PqfDWDZfhq91imSEfPmoZ9MqRc60UnvGIBTkDIPx0evAt2
 wnZWXTPKr8Xn5MH5kXQWWddjA5A/AKK3L6IMnZW1OhaqBRjGOljMHSpxygqj68xFava7
 XBDEqp9ZrkFitn3OZwgRah4Pw6w9R+LebAyA5XNEOy+TkwvJdo7+T5MlSTjM+jFwFz6p
 H9sA==
X-Gm-Message-State: APjAAAWpj584wZGQBiKKJ42PwnVzELL1lHqXU7jewOQhfwEMQSIJwpY+
 k8Z5Djqv1ugBDOFpkiEjek8=
X-Google-Smtp-Source: APXvYqwodT7bv4wB4aL6zul6/C47bEbbx/xMv4gVLKdAwH0Fk1tAvcQ00+hdgj0eInitxbNVS1TSwQ==
X-Received: by 2002:a63:904:: with SMTP id 4mr15210540pgj.19.1564062372073;
 Thu, 25 Jul 2019 06:46:12 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j12sm41520352pff.4.2019.07.25.06.46.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:46:11 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:46:09 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 1/5] lnvm: make data_len to sizeof() instead of magic
 number
Message-ID: <20190725134609.GD3018@minwoo-desktop>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-2-minwoo.im.dev@gmail.com>
 <80d59219-12b7-47da-d37e-9fd9941260de@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80d59219-12b7-47da-d37e-9fd9941260de@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_064612_642324_8621522D 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 Klaus Birkelund <birkelund.eu@minwoo-desktop>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTWF0aWFzLAoKT24gMTktMDctMjQgMTQ6MzM6MzksIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6
Cj4gT24gMjMvMDcvMjAxOSAyMC4zNSwgTWlud29vIEltIHdyb3RlOgo+ID4gV2UgY2FuIGhhdmUg
aXQgYXMgYSBzaXplb2YoKSBpbnN0ZWFkIG9mIHRoZSBoYXJkLWNvZGVkIHZhbHVlIGZvciB0aGUK
PiA+IGRhdGEgc3RydWN0dXJlLgo+ID4gCj4gPiBDYzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJu
ZWwub3JnPgo+ID4gQ2M6IE1hdGlhcyBCam9ybGluZyA8bWJAbGlnaHRudm0uaW8+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+ID4gLS0tCj4g
PiAgIG52bWUtbGlnaHRudm0uYyB8IDIgKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9udm1lLWxpZ2h0bnZt
LmMgYi9udm1lLWxpZ2h0bnZtLmMKPiA+IGluZGV4IDBiOTk3ODYuLmU4Y2RjY2QgMTAwNjQ0Cj4g
PiAtLS0gYS9udm1lLWxpZ2h0bnZtLmMKPiA+ICsrKyBiL252bWUtbGlnaHRudm0uYwo+ID4gQEAg
LTQ0Miw3ICs0NDIsNyBAQCBzdGF0aWMgaW50IGxudm1fZ2V0X2lkZW50aXR5KGludCBmZCwgaW50
IG5zaWQsIHN0cnVjdCBudm1lX252bV9pZCAqbnZtX2lkKQo+ID4gICAJCS5vcGNvZGUJCT0gbnZt
ZV9udm1fYWRtaW5faWRlbnRpdHksCj4gPiAgIAkJLm5zaWQJCT0gbnNpZCwKPiA+ICAgCQkuYWRk
cgkJPSAoX191NjQpKHVpbnRwdHJfdCludm1faWQsCj4gPiAtCQkuZGF0YV9sZW4JPSAweDEwMDAs
Cj4gPiArCQkuZGF0YV9sZW4JPSBzaXplb2Yoc3RydWN0IG52bWVfbnZtX2lkKSwKPiA+ICAgCX07
Cj4gPiAgIAlyZXR1cm4gbnZtZV9zdWJtaXRfcGFzc3RocnUoZmQsIE5WTUVfSU9DVExfQURNSU5f
Q01ELCAmY21kKTsKPiAKPiBXb3JrcyBmb3IgbWUuCj4gCj4gUGxlYXNlIHVzZSB1c2UgbXkgU2ln
bmVkLW9mZi1ieSBpbnN0ZWFkIG9mIFJldmlld2VkLWJ5IC0gdHJhZGl0aW9uYWxseSBLZWl0aAo+
IGhhcyBiZWVuIGtpbmQgdG8gd2FpdCB0byBwdWxsIGluIHBhdGNoZXMgdW50aWwgSSBnb3QgYSBj
aGFuY2UgdG8gbG9vayBhdAo+IHRoZW0gb24gR2l0aHViLiBIYXZpbmcgdGhlIHJldmlldyBoZXJl
IG9uIHRoZSBtYWlsaW5nIGxpc3QgYW5kIGxhdGVyIGFzIGEKPiBwdWxsIHJlcXVlc3Qgb24gZ2l0
aHViIG1ha2VzIGl0IGV4cGxpY2l0IHRoYXQgSSBzaWduZWQgb2ZmIG9uIGl0LgoKT2ggb2theS4g
IEknbGwga2VlcCB0aGF0IGluIG1pbmQuICBCdXQgbm93IEknbGwgcHJlcGFyZSBhIFYyIHNlcmll
cyBzbwp0aGF0IGlmIHlvdSByZXZpZXcgdGhhdCBvbmUgYWxzbywgSSdsbCBwdXQgeW91ciB0YWcg
YmVsb3cgaW50byB0aGUKY29tbWl0IGFuZCBwb3N0IGFzIGEgUFIgb24gR2l0aHViIG9uY2UgSmF2
aWVyIGdpdmVzIHNvbWUgY29tbWVudHMgb24gdGhlCnByZXZpb3VzIHBhdGNoIHJldmlldy4KClRo
YW5rcyEKCj4gU2lnbmVkLW9mZi1ieTogTWF0aWFzIEJqw7hybGluZyA8bWF0aWFzLmJqb3JsaW5n
QHdkYy5jb20+Cj4gCj4gVGhhbmsgeW91IQo+IAo+IC0gTWF0aWFzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
