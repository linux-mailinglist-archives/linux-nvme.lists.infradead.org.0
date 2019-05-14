Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A191CA09
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 16:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyyDxBRRNeJiJKQWdpVo6aKmShdGHdvsIqchOU1UDnM=; b=qk2QjhyXN210hH
	Sr6pE3o+nlgrQFL38e/Ww6IedQ0iq5Hw0WzN75YJYyKlCd+GRYHj+IbsRhkHjld3ys//2oFfiWZmP
	CP3FQPEYMBknqo2ZNefeRYXzU+umEFq3w5/m5W2xdn8Q/sk4OLu+uN6F1PNnmeZdfrVr8bHry/iRm
	FK8hkvb3cB9vkEUximmMvtVO6BzfRDiS5ZaSqzHgiA+XzLyETJhnIT+htzkzVnQz7nkrkfSM2KCM6
	ZZRuibr3TtEfPITBeIGH8dpr/OKBByhii0dFn80mmHiIQVq5TYIBdeJ/3Eh5vQA6Jl/ee6frojHCS
	fY7rf4PZtiawXzl+M9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQY4k-0005nH-OA; Tue, 14 May 2019 14:06:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQY4f-0005mv-PQ
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 14:06:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id f97so3232147plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 07:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ks75yII4fjVXJ0Sia2+emZzY1vlPpVSSJvLLV+PDDdw=;
 b=CpupEWonGiNTCMxadJADqpuZsNmcH4qlx1iAzBahjQYoepVY6IB10WeFBmlzfx9gzk
 Ao8eTTo44fTCk1hSnOxivWcNggXZPbn6ncgdftQt/OVgZH6f0RB2QxUk9BZM3ShXz0mt
 78bTc5XiYvg8UVfjnOdoX+kDsmKAt73tJeLWmTZ0xDKMwIf8bGXQBgsrOp601m3/lO51
 shScBhiqorOcJ9fH0CIOoZbi59zdK1pE15PUMZg5KIHKgVsh8JKkiVLjn/i8DdxbxLWY
 qSg9qwcWCZIoEkIaj8NEJ4ZbSGMKshQWbtgtoFJoL3nP5+Jss1lu72tDD6Gsce38j+xi
 VHPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ks75yII4fjVXJ0Sia2+emZzY1vlPpVSSJvLLV+PDDdw=;
 b=fe5P4OupBJz2Ls+iopmkLCqacACRrAe/0VZ0WjxsQgk6x4Oyz1u8l1KyNAQtJedyTh
 fOKO8Y4vnfmcCE1MBgpn0LrPTP74SdfP4WoU48SAm9fEJS3pkw5nNHA5x44H6RY3AWb+
 +cNLQE7GLdw/eZamJtBmAMeB7D1V7NKlV3jA27CTFdkSXxBW2RXNTSnPxsM5KB8ZaSEZ
 x3vXGvW3+sedpWzqgDCVEbTeHwRK6xGjWDB2SeLwbzculviPl6kprUGN+l6C7+t7/Z30
 WHy1/yhNjdrvUC7msUkzjzsC+ElyT7xBVpJG8uuCXQCt1NmgZbnk8fodSeQ/vNNH3srS
 h8gA==
X-Gm-Message-State: APjAAAXXd8TVbbXzRmJ3rleXFKgctYmfyz7OZ1UonXXAidBhdYAA0W/S
 SXxSK8lwUV9YdFpDRm6YnNg20C6eB/utebF8PGQ=
X-Google-Smtp-Source: APXvYqxtYsQTBSYRBSVFSnKif0UVhYr/vayvs3lz1zFiKvJF56JCc7RUv/5pg3egcezTJpt8cAy7TIxBLah0XzPRAyI=
X-Received: by 2002:a17:902:7610:: with SMTP id
 k16mr2447988pll.177.1557842792829; 
 Tue, 14 May 2019 07:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190512155540epcas4p14c15eb86b08dcd281e9a93a4fc190800@epcms2p1>
 <20190513074601epcms2p12c0a32730a16be3b69b68e3c9d4d0b92@epcms2p1>
 <SN6PR04MB4527DFC75838C3236F5D05B2860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB4527DFC75838C3236F5D05B2860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 14 May 2019 23:06:21 +0900
Message-ID: <CAC5umyh6hdcAnTCDK=7nX8VxFz7LiFY6ttUmcBPXfmXN4r88rw@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_070633_827756_3A98AA61 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kenneth Heitke <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNOaXpSjngaspIDA6MjMgQ2hhaXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEu
S3Vsa2FybmlAd2RjLmNvbT46Cj4KPiBPbiAwNS8xMy8yMDE5IDEyOjQ2IEFNLCBNaW53b28gSW0g
d3JvdGU6Cj4gPj4gK3N0YXRpYyBpbnQgbnZtZV9nZXRfdGVsZW1ldHJ5X2xvZ19ibG9ja3Moc3Ry
dWN0IG52bWVfY3RybCAqY3RybCwgdm9pZCAqYnVmLAo+ID4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc2l6ZV90IGJ5dGVzLCBsb2ZmX3Qgb2Zmc2V0KQo+ID4+ICt7Cj4g
Pj4gKyAgICBsb2ZmX3QgcG9zID0gMDsKPiA+PiArICAgIHUzMiBjaHVua19zaXplOwo+ID4+ICsK
PiA+PiArICAgIGlmIChjaGVja19tdWxfb3ZlcmZsb3coY3RybC0+bWF4X2h3X3NlY3RvcnMsIDUx
MnUsICZjaHVua19zaXplKSkKPiA+PiArICAgICAgICAgICAgY2h1bmtfc2l6ZSA9IFVJTlRfTUFY
Owo+ID4+ICsKPiA+PiArICAgIHdoaWxlIChwb3MgPCBieXRlcykgewo+ID4+ICsgICAgICAgICAg
ICBzaXplX3Qgc2l6ZSA9IG1pbl90KHNpemVfdCwgYnl0ZXMgLSBwb3MsIGNodW5rX3NpemUpOwo+
ID4+ICsgICAgICAgICAgICBpbnQgcmV0Owo+ID4+ICsKPiA+PiArICAgICAgICAgICAgcmV0ID0g
bnZtZV9nZXRfbG9nKGN0cmwsIE5WTUVfTlNJRF9BTEwsCj4gPj4gTlZNRV9MT0dfVEVMRU1FVFJZ
X0NUUkwsCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLCBidWYgKyBwb3Ms
IHNpemUsIG9mZnNldCArIHBvcyk7Cj4gPj4gKyAgICAgICAgICAgIGlmIChyZXQpCj4gPj4gKyAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIHBv
cyArPSBzaXplOwo+ID4+ICsgICAgfQo+ID4+ICsKPiA+PiArICAgIHJldHVybiAwOwo+ID4+ICt9
Cj4gPj4gKwo+ID4+ICtzdGF0aWMgaW50IG52bWVfZ2V0X3RlbGVtZXRyeV9sb2coc3RydWN0IG52
bWVfY3RybCAqY3RybCwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IHNnX3RhYmxlICp0YWJsZSwgc2l6ZV90IGJ5dGVzKQo+ID4+ICt7Cj4gPj4gKyAgICBpbnQgbiA9
IHNnX25lbnRzKHRhYmxlLT5zZ2wpOwo+ID4+ICsgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsK
PiA+PiArICAgIHNpemVfdCBvZmZzZXQgPSAwOwo+ID4+ICsgICAgaW50IGk7Cj4gPj4gKwo+IEEg
bGl0dGxlIGNvbW1lbnQgd291bGQgYmUgbmljZSBpZiB5b3UgYXJlIHVzaW5nIHNnIG9wZXJhdGlv
bnMuCj4gPj4gKyAgICBmb3JfZWFjaF9zZyh0YWJsZS0+c2dsLCBzZywgbiwgaSkgewo+ID4+ICsg
ICAgICAgICAgICBzdHJ1Y3QgcGFnZSAqcGFnZSA9IHNnX3BhZ2Uoc2cpOwo+ID4+ICsgICAgICAg
ICAgICBzaXplX3Qgc2l6ZSA9IG1pbl90KGludCwgYnl0ZXMgLSBvZmZzZXQsIHNnLT5sZW5ndGgp
Owo+ID4+ICsgICAgICAgICAgICBpbnQgcmV0Owo+ID4+ICsKPiA+PiArICAgICAgICAgICAgcmV0
ID0gbnZtZV9nZXRfdGVsZW1ldHJ5X2xvZ19ibG9ja3MoY3RybCwKPiA+PiBwYWdlX2FkZHJlc3Mo
cGFnZSksCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNpemUsIG9mZnNldCk7Cj4gPj4gKyAgICAgICAgICAgIGlmIChyZXQpCj4gPj4gKyAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIG9mZnNl
dCArPSBzaXplOwo+ID4+ICsgICAgfQo+ID4+ICsKPiA+PiArICAgIHJldHVybiAwOwo+ID4+ICt9
Cj4gPgo+ID4gQ2FuIHdlIGhhdmUgdGhvc2UgdHdvIGluIG52bWUtY29yZSBtb2R1bGUgaW5zdGVh
ZCBvZiBiZWluZyBpbiBwY2kgbW9kdWxlPwo+Cj4gU2luY2UgdGhleSBhcmUgYmFzZWQgb24gdGhl
IGNvbnRyb2xsZXIgdGhleSBzaG91bGQgYmUgbW92ZWQgbmV4dCB0bwo+IG52bWVfZ2V0X2xvZygp
IGluIHRoZSAke0tFUk5fRElSfS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMuCgpPSy4gIEJ1dCB0
aGVzZSBmdW5jdGlvbnMgd2lsbCBiZSBjaGFuZ2VkIHRvIHVzZSBiaW9fdmVjIGluc3RlYWQgb2Yg
c2cgaW4KdGhlIG5leHQgdmVyc2lvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
