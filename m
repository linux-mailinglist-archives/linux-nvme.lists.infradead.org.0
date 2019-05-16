Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF7F20CC5
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsChg4ESLau+DqnL+widHHacQFeGyR8dvBDKZkwTeTo=; b=iZLUKiuM4OwqsA
	IAnAzBVOoWPzCo37/8Tf6frmTHdMCLqYWkXt5uRsbuy6D4tFSBhwKQWutKGyhkTaJZuWubp1RKLxt
	Kvzb74ocWNscFFrJbjvOOVs4dzgzCUSgLCcyVtVd4ZiUBYkZmfdfZi/9B/1hAifrcUBgzO7NhdWUD
	Yqfi6MaVahA4wQ7wwFN16jK/eDIHfop5HmfS2GZb9AES2i26koGxSaq5bmphZcM+0YJBrGEYu4XP5
	oSf42enT0vVWLOKx7+0mSWq68eC1nBv7/uipW1kDprpZ2hFuiLzVZeqZukeOGONXHm+s3DL6Ou0LD
	M2Mlr7ErDAeoHlSRCbbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJ4m-0003lG-PL; Thu, 16 May 2019 16:17:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJ4h-0003kn-N3
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:17:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id r18so1843998pls.13
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iaFOYIFbVpbw+6XUgU61OzgNPZLuP3GZi6S4US8gUZo=;
 b=U9SJfZKAwgBiuX6ynF0cX7Ztrz4uQd60V16j6+t6o2XZMFmJmxEHfcqW7MkAbzkvam
 lwmOpr663XB8tdqjdgoUqM+kv1z7Yjiz983/noNMd9Y8nnEAnZGgioC6pxbt5Qu16btG
 xDUdZBMlxAj2xUfHztYg89vjqW5UV+T0rW9TV/pVkhRoU7aJ2o0AFtfgGYve/n8/FeiQ
 UKSmXfBlHkSFXk5bsyRxeTCfpKTJugdnDG11EvMbKPm9AUfL99pprQ0Q1lLCk4AqIM2Z
 JnTQ9aXK4SwMzxEz5ChubuCk+TyAm/qRvXk1WblMeemCqTrbZdC4aOiJ1dvBhj32QDFP
 w12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iaFOYIFbVpbw+6XUgU61OzgNPZLuP3GZi6S4US8gUZo=;
 b=PDbItF3GdODZHDQ7Jr3YiHswZsUgEMNdlvgb9zQpZLGNp5z/JG5DAQwksYbAAvZlFP
 8uAcP+hAtMJbCKV2gdOwd5FnbPIZ0TXx3Viji5B+uI5qXLkC/S8QoMBKLMRjO5kLVp3G
 uz4CeS9wS9ps2r1ts1/mo8jq3/XW1L4i+hIZdnUPNOs/ayykoHCXcWSZWP0zX1X/Hafe
 dV86HgexK0qtFtuOw7iZcs1QxwAyf1L3BzelZZr0QJ62IWkcV1tyZSksGpbUN5yMdE/Q
 Assi1wdKo4zcpBtxmf+DA2SL3aoBIO2ETNC6gtB0L43xyCDvIm/KVb8l3jlGprZoy7i8
 F1yw==
X-Gm-Message-State: APjAAAVEZoA/f8ggUE7I+Z7a+Lu4qSqDN1AQv6Go1nT9Pi0EVuFjCgnc
 mcgK1sJd9T2Lg1uB0qEDBYGK8A0EUXrQ0TVBAuuB6Xum
X-Google-Smtp-Source: APXvYqx4BUpxgzgmHT9qlLYlac1CzS27MBcn84Mbe8OWzM0OWDiRVuA2zBw5YKsL5biCSNVqcsxJwCkptSUb1wMJvTo=
X-Received: by 2002:a17:902:b094:: with SMTP id
 p20mr29122022plr.164.1558023463210; 
 Thu, 16 May 2019 09:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <20190516143212.GE24001@minwooim-desktop>
In-Reply-To: <20190516143212.GE24001@minwooim-desktop>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Fri, 17 May 2019 01:17:31 +0900
Message-ID: <CAC5umyjxxWzCgyMOS=Q7BBBJY+n6xD1dg49fQ0W5okPh58Z1Kw@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_091743_755854_A6BD63EF 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNuaXpSjmnKgpIDIzOjMyIE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFp
bC5jb20+Ogo+Cj4gPiArICAgICBpZiAoc2Vuc29yIDwgMCB8fCBzZW5zb3IgPiA4KQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPgo+IERvZXMgd2UgcmVhbGx5IG5lZWQgdG8gY2hl
Y2sgdGhlIG5lZ2F0aXZlIGNhc2UgaGVyZSA/ICBBbSBJIG1pc3NpbmcKPiBzb21ldGhpbmcgaW4g
dGhpcyBjb250ZXh0ID8gIElmIHdlIHJlYWxseSB3YW50IHRvIGNoZWNrIGl0IGluIHRoaXMKPiBs
ZXZlbCwgY2FuIHdlIGNoZWNrIHRoZSBpbnZhbGlkIGNhc2UgaW4gdGhlIGZvbGxvd2luZyBmdW5j
dGlvbj8KClRoZSBuZWdhdGl2ZSBjYXNlIHNob3VsZCBuZXZlciBoYXBwZW4sIHNvIGl0IGNhbiBi
ZSBqdXN0IHJlbW92ZWQuCgo+ID4gK3N0YXRpYyBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAq
Cj4gPiArbnZtZV90aGVybWFsX3pvbmVfcmVnaXN0ZXIoc3RydWN0IG52bWVfY3RybCAqY3RybCwg
aW50IHNlbnNvcikKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAq
dHpkZXY7Cj4gPiArICAgICBjaGFyIHR5cGVbVEhFUk1BTF9OQU1FX0xFTkdUSF07Cj4gPiArICAg
ICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgc25wcmludGYodHlwZSwgc2l6ZW9mKHR5cGUpLCAi
bnZtZV90ZW1wJWQiLCBzZW5zb3IpOwo+Cj4gQmVmb3JlIHByZXBhcmluZyAibnZtZV90ZW1wJWQi
LCBtYXliZSB3ZSBjYW4gbWFrZSBpdCBzdXJlIGhlcmUuIDopCj4gV2hhdCBkbyB5b3Ugc2F5PwoK
VGhlIG52bWVfdGhlcm1hbF96b25lX3JlZ2lzdGVyKCkgaXMgb25seSBjYWxsZWQgZnJvbQpudm1l
X3RoZXJtYWxfem9uZXNfcmVnaXN0ZXIoKSB3aGljaCBpcyBkZWZpbmVkIGp1c3QgYmVsb3csIGFu
ZCBpdCdzIHZlcnkKY2xlYXIgdGhhdCB0aGUgdmFsdWUgb2YgJ3NlbnNvcicgaXMgZnJvbSAwIHRv
IEFSUkFZX1NJWkUoY3RybC0+dHpkZXYpIC0gMS4KCj4gPiAraW50IG52bWVfdGhlcm1hbF96b25l
c19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVj
dCBudm1lX3NtYXJ0X2xvZyAqbG9nOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsgICAgIGludCBp
Owo+ID4gKwo+ID4gKyAgICAgbG9nID0ga3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwp
Owo+ID4gKyAgICAgaWYgKCFsb2cpCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+
ID4gKwo+ID4gKyAgICAgcmV0ID0gbnZtZV9nZXRfbG9nKGN0cmwsIE5WTUVfTlNJRF9BTEwsIE5W
TUVfTE9HX1NNQVJULCAwLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIGxvZywgc2l6ZW9m
KCpsb2cpLCAwKTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgcmV0ID0g
cmV0ID4gMCA/IC1FSU5WQUwgOiByZXQ7Cj4gPiArICAgICAgICAgICAgIGdvdG8gZnJlZV9sb2c7
Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShj
dHJsLT50emRldik7IGkrKykgewo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgdGhlcm1hbF96b25l
X2RldmljZSAqdHpkZXY7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmIChpICYmICFsZTE2X3Rv
X2NwdShsb2ctPnRlbXBfc2Vuc29yW2kgLSAxXSkpCj4gPiArICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7Cj4gPiArICAgICAgICAgICAgIGlmIChjdHJsLT50emRldltpXSkKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgdHpkZXYg
PSBudm1lX3RoZXJtYWxfem9uZV9yZWdpc3RlcihjdHJsLCBpKTsKPiA+ICsgICAgICAgICAgICAg
aWYgKCFJU19FUlIodHpkZXYpKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGN0cmwtPnR6ZGV2
W2ldID0gdHpkZXY7Cj4KPiBRdWVuc3Rpb24gaGVyZS4gQXJlIHdlIG9rYXkgbm90IHRvIHByaW50
IHNvbWUgd2FybmluZ3MgaGVyZSBpbiBjYXNlCj4gb2YgZXJyb3IgcmV0dXJuZWQ/CgpJJ20gZ29p
bmcgdG8gcHJpbnQgd2FybmluZyBpbiBjYXNlIG9mIHRoZXJtYWxfem9uZV9kZXZpY2VfcmVnaXN0
ZXIoKSBlcnJvci4KRm9yIHN5c2ZzX2NyZWF0ZV9saW5rKCkgZXJyb3IsIHRoZSB3YXJuaW5nIGlz
IHByaW50ZWQgYnkgdGhlIGZ1bmN0aW9uCml0c2VsZi4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
