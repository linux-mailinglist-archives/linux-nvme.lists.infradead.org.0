Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7834820B07
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 17:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlWjryquRfegNxTQDz1z0dl/hNp1wJ3UDyC94XZ81ag=; b=g0R1TmOoQk2KWn
	NK9yuUZB0DxcBcNHidLGnecQylQEwc/I9aK8aE46isiBaZgecc2aN8qwI2+ql7vpZMhUXYP/l2Qsa
	S8lLCAv70oqv6TZnNcdpGt2r7e4cjOEQAHLuGXCCFckxee2wH87Y2EP2ozadzhRb7AjQ18KEZihPa
	wcmRqWcv6Xk1lwQwe7qGjdOxszWGGlITCi2OtdFO12Cd78hMVQMI/uFD8W7pm1ZJJyd08btr1FK5U
	vqOZ9KOIlUqy7CKFiuFQgiyXAr9oyfajYeGsCm3T/qRTOAS9PEw03YaiubkGD5Rlb5n/K8x8Vnj4M
	r9aaVlLVbWKALnoqf/5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIDy-0001cf-LK; Thu, 16 May 2019 15:23:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIDn-0001Ue-3k
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 15:23:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so1730173pgl.5
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RatfLeFW1W1PAQOYZjHmZ1EvB3m/ZFWDsSmlE4eB5TA=;
 b=k6skFBX8Cz5Py454S2p2l8dOkOmY/q+Csr4dBPw3M35zGWyLwJSvFgS11iKH3C6V3M
 MTr9CqQc6IhCwwA1J4q3YTUqxBSJZThn4yBYEPQfnL4ytBBRnCdovLJikDvx/Ndkm2b2
 8ej1YfDXFyLJVuw22aUHlaM4ctgPSA88mKGNLjlzmLan1Q7uT0Ez/76NkSJ3ZURJCyq8
 38IxfMxxFLQkE4ydHQHz0l49uxgbicTUjRU2WyKIOBZqqZzKsx1cB9a6+iqyDXW4rSvI
 Nsz4VpwQozesX4/tBzIB0pJIaqKZv/cM8jDxKUHbSB7ks60/IXbzrxv58RfRQkF62Tes
 Kh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RatfLeFW1W1PAQOYZjHmZ1EvB3m/ZFWDsSmlE4eB5TA=;
 b=mcXR8hZmEXBrATfgmTpLipVl7d6pJ5tCa4lwbqsm2VoTxKE61VR9+Xwkq9ITAAUPEN
 KY2eV6Yh8QaZZgfT4rWH7RnMXIXg0ayKboRpWVlDt09v0O/Zz+BU46/orDqaCI/x5lFu
 GQZQ9RuXVxiM30bWOUMboZpp/EbW/I/FGt9kCI4lpXGCeKLBWuweVE8NW4IEtFetx+TN
 aRsJ6cHstTnadS7WzA18Ca0Q9BQAy+KQzeIBzmGdYHErcJvLTVGE0rE9x1LiRf3C+z26
 ROMole0KKBOtrv/3gMKqrgPuc6pjK12xtA5oL69XKV9zQZtGmarHa742o0mWiwPOcZiy
 88Sw==
X-Gm-Message-State: APjAAAWxnBpAu6VMVYU0YgPns4mPdHbUvM7+7Uedj+fzGuVgqIWdl9sQ
 fOJnj7fe1UTa7B/k+uoh8v3tWtSP5/rmqWloDi0=
X-Google-Smtp-Source: APXvYqxeNr+MdDWiWuHTWTqqy3z5Ly9hhk2u0giMF6RLyo/pDNLlpteGewSk5DyowpxZ2mKTpmRyXPff/IrbrkKM7No=
X-Received: by 2002:a62:1a51:: with SMTP id a78mr53460390pfa.133.1558020182082; 
 Thu, 16 May 2019 08:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <20190515191518.GA21916@localhost.localdomain>
In-Reply-To: <20190515191518.GA21916@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Fri, 17 May 2019 00:22:51 +0900
Message-ID: <CAC5umyhh7eNHa4D9sndsoB7EgTJZTEL9OTd=a+7x817XvPZ_eQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_082303_150238_259DF2A4 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 linux-nvme@lists.infradead.org, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNuaXpSjmnKgpIDQ6MjAgS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVs
LmNvbT46Cj4KPiBPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCAxMjoxNzoxNkFNICswOTAwLCBBa2lu
b2J1IE1pdGEgd3JvdGU6Cj4gPiAraW50IG52bWVfdGhlcm1hbF96b25lc19yZWdpc3RlcihzdHJ1
Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBudm1lX3NtYXJ0X2xv
ZyAqbG9nOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsgICAgIGludCBpOwo+ID4gKwo+ID4gKyAg
ICAgbG9nID0ga3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwpOwo+ID4gKyAgICAgaWYg
KCFsb2cpCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gKwo+ID4gKyAgICAg
cmV0ID0gbnZtZV9nZXRfbG9nKGN0cmwsIE5WTUVfTlNJRF9BTEwsIE5WTUVfTE9HX1NNQVJULCAw
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIGxvZywgc2l6ZW9mKCpsb2cpLCAwKTsKPiA+
ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgcmV0ID0gcmV0ID4gMCA/IC1FSU5W
QUwgOiByZXQ7Cj4gPiArICAgICAgICAgICAgIGdvdG8gZnJlZV9sb2c7Cj4gPiArICAgICB9Cj4g
PiArCj4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShjdHJsLT50emRldik7IGkr
Kykgewo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqdHpkZXY7
Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmIChpICYmICFsZTE2X3RvX2NwdShsb2ctPnRlbXBf
c2Vuc29yW2kgLSAxXSkpCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAr
ICAgICAgICAgICAgIGlmIChjdHJsLT50emRldltpXSkKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgdHpkZXYgPSBudm1lX3RoZXJtYWxf
em9uZV9yZWdpc3RlcihjdHJsLCBpKTsKPiA+ICsgICAgICAgICAgICAgaWYgKCFJU19FUlIodHpk
ZXYpKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGN0cmwtPnR6ZGV2W2ldID0gdHpkZXY7Cj4g
PiArICAgICB9Cj4gPiArCj4gPiArZnJlZV9sb2c6Cj4gPiArICAgICBrZnJlZShsb2cpOwo+ID4g
Kwo+ID4gKyAgICAgcmV0dXJuIHJldDsKPiA+ICt9Cj4KPiBTaW5jZSB0aGlzIHJvdXRpbmUgaXMg
aW50ZW5kZWQgZm9yIHVzZSBpbiB0aGUgZGV2aWNlIGluaXRpYWxpemF0aW9uIHBhdGgsCj4gdGhl
IGVycm9yIHJldHVybnMgYXJlIGV4dHJhIGltcG9ydGFudC4gV2UgaGF2ZSB1c2VkIDwgMCB0byBp
bmRpY2F0ZSB3ZQo+IG5lZWQgdG8gYWJhbmRvbiBpbml0aWFsaXphdGlvbiBiZWNhdXNlIHdlIHdv
bid0IGJlIGFibGUgY29tbXVuaWNhdGUgd2l0aAo+IHRoZSBkZXZpY2UgaWYgd2UgcHJvY2VlZC4g
U2luY2UgdGhlcm1hbCByZXBvcnRpbmcgaXMgbm90IG1hbmRhdG9yeSB0bwo+IG1hbmFnZSBvdXIg
Y29udHJvbGxlcnMsIG91dC1vZi1tZW1vcnkgb3IgYSBkZXZpY2UgdGhhdCBkb2Vzbid0IHN1cHBv
cnQKPiBTTUFSVCBzaG91bGQganVzdCByZXR1cm4gMC4gV2Ugc2hvdWxkIG9ubHkgaGFsdCBpbml0
IGlmIHRoZSBjb250cm9sbGVyCj4gaXMgdW5yZXNwb25zaXZlIGhlcmUuCgpNYWtlIHNlbnNlLiAg
SSdsbCBjaGFuZ2UgdGhlIHJldHVybiB0eXBlIHRvIHZvaWQsIGFuZCBwcmludCB3YXJuaW5nIGlu
CmNhc2Ugb2Ygc29tZSBlcnJvcnMgYXMgTWlud29vIHNhaWQgaW4gb3RoZXIgcmVwbHkuCgo+IElu
IGdlbmVyYWwsIEknbSBva2F5IHdpdGggdGhpcyBmZWF0dXJlLgoKT0suICBJJ2xsIHByZXBhcmUg
dGhlIG5leHQgdmVyc2lvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
