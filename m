Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C05E3066
	for <lists+linux-nvme@lfdr.de>; Thu, 24 Oct 2019 13:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIX2frDaaK1LGpJ8dp/8JLafeNF4RIOD+TBgniBVLbc=; b=hntDtaf8GgjJd3
	mw5R5Po39pxHqHGxjk+ffeFvSw6l1QdBAlY+6rVaLFex+2IvDoMFhA3TexBNWaw+pKaYtY1FeG92y
	a4TzYtGAQdtSVJzitsUy6+jbIBzE1mBBVmeWthjoSTLo63OylK27O+bt8EsB0qqvHR3xOGfCXsDpJ
	bQIEnSdcVqofDRkkJBetnK/OlqCvWxDc8mDudAABQdctFwCLuug4rJtWWZJKv3r3wUwGsqLM56SuM
	g5lKST45cm1KlSnzy423J9PjnNOJ02B8ijuGlcDEZbaXLmUi5Z8JsN7f2XMI0IF7n3Rug8WzFfhOY
	ftZDg+QHS8hmqCaoS6Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbK0-00039j-7m; Thu, 24 Oct 2019 11:30:28 +0000
Received: from cox.onestopsystems.com ([98.187.250.34]
 helo=osserver.onestopsystems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbJw-00038r-Ax
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 11:30:25 +0000
Received: from OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203]) by
 OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203%10]) with mapi id
 14.03.0468.000; Thu, 24 Oct 2019 04:30:19 -0700
From: Mark Ruijter <MRuijter@onestopsystems.com>
To: Keith Busch <kbusch@kernel.org>, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Thread-Topic: [PATCH] nvmet: introduce use_vfs ns-attr
Thread-Index: AQHVid7lEGozSmO4UUiQP6G5ZvB8eadpfxqAgADA2AA=
Date: Thu, 24 Oct 2019 11:30:18 +0000
Message-ID: <FA6B6A9F-649B-4B58-99D0-2D09076E2482@onestopsystems.com>
References: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
 <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.f.191014
x-originating-ip: [166.70.167.105]
Content-ID: <354204B729ACCE42A3583A8DC29DEAD1@onestopsystems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_043024_404274_4A896053 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgS2VpdGgsDQoNCllvdSBhcmUgcmlnaHQsIHRoYXQgY2hlY2sgYW5kIHRoZSBnb3RvIHNob3Vs
ZCBiZSBpbmNsdWRlZC4NCg0KTm90ZSB0aGF0IEkgd3JvdGUgdGhpcyBwYXRjaCB0byBwcm92ZSB0
aGF0IGEgcGVyZm9ybWFuY2UgcHJvYmxlbSBleGlzdHMgd2hlbiB1c2luZyByYWlkMS4NCkVpdGhl
ciB0aGUgbWQgcmFpZDEgZHJpdmVyIG9yIHRoZSBpby1jbWQtYmRldi5jIGNvZGUgaGFzIGlzc3Vl
cy4NCldoZW4geW91IGFkZCBhbiBhZGRpdGlvbmFsIGxheWVyIGxpa2UgdGhlIFZGUyB0aGUgcGVy
Zm9ybWFuY2Ugc2hvdWxkIHR5cGljYWxseSBkcm9wIHdpdGggNX4xMCUuDQpIb3dldmVyIGluIHRo
aXMgY2FzZSB0aGUgcGVyZm9ybWFuY2UgaW5jcmVhc2VzIGV2ZW4gdGhvdWdoIHRoZSBudm1lIHRh
cmdldCB1c2VzIGRpcmVjdC1pbyBhbmQgdGhlIHJhbmRvbSB3cml0ZXMgZG8gbm90IGdldCBtZXJn
ZWQgYnkgdGhlIFZGUy4NCg0KVGhhbmtzLA0KDQpNYXJrIFJ1aWp0ZXINCiANCu+7v09wIDI0LTEw
LTE5IDA0OjAwIGhlZWZ0IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4gZ2VzY2hyZXZl
bjoNCg0KICAgIE9uIFdlZCwgT2N0IDIzLCAyMDE5IGF0IDAxOjE3OjE1UE0gLTA3MDAsIENoYWl0
YW55YSBLdWxrYXJuaSB3cm90ZToNCiAgICA+IEBAIC00NSwxNyArNDYsMjcgQEAgaW50IG52bWV0
X2ZpbGVfbnNfZW5hYmxlKHN0cnVjdCBudm1ldF9ucyAqbnMpDQogICAgPiAgDQogICAgPiAgCXJl
dCA9IHZmc19nZXRhdHRyKCZucy0+ZmlsZS0+Zl9wYXRoLA0KICAgID4gIAkJCSZzdGF0LCBTVEFU
WF9TSVpFLCBBVF9TVEFUWF9GT1JDRV9TWU5DKTsNCiAgICA+IC0JaWYgKHJldCkNCiAgICA+IC0J
CWdvdG8gZXJyOw0KICAgID4gLQ0KICAgID4gLQlucy0+c2l6ZSA9IHN0YXQuc2l6ZTsNCiAgICA+
IC0JLyoNCiAgICA+IC0JICogaV9ibGtiaXRzIGNhbiBiZSBncmVhdGVyIHRoYW4gdGhlIHVuaXZl
cnNhbGx5IGFjY2VwdGVkIHVwcGVyIGJvdW5kLA0KICAgID4gLQkgKiBzbyBtYWtlIHN1cmUgd2Ug
ZXhwb3J0IGEgc2FuZSBuYW1lc3BhY2UgbGJhX3NoaWZ0Lg0KICAgID4gLQkgKi8NCiAgICA+IC0J
bnMtPmJsa3NpemVfc2hpZnQgPSBtaW5fdCh1OCwNCiAgICA+IC0JCQlmaWxlX2lub2RlKG5zLT5m
aWxlKS0+aV9ibGtiaXRzLCAxMik7DQogICAgPiArCWlmIChyZXQpIHsNCiAgICA+ICsJCXByX2Vy
cigiZmFpbGVkIHRvIHN0YXQgZGV2aWNlIGZpbGUgJXNcbiIsDQogICAgPiArCQkJbnMtPmRldmlj
ZV9wYXRoKTsNCiAgICANCiAgICANCiAgICBXaHkgcmVtb3ZlIHRoZSAnZ290byBlcnInIGZyb20g
dGhpcyBjb25kaXRpb24/IFRoZSBjb2RlIHRoYXQgcHJvY2VlZHMNCiAgICBtYXkgYmUgdXNpbmcg
YW4gdW5pbml0aWFsaXplZCAnc3RhdCcgd2l0aG91dCBpdC4NCiAgICANCiAgICANCiAgICA+ICsJ
fQ0KICAgID4gIA0KICAgID4gKwlpZiAoc3RhdC5zaXplID09IDAgJiYgbnMtPnVzZV92ZnMpIHsN
CiAgICA+ICsJCWJkZXYgPSBibGtkZXZfZ2V0X2J5X3BhdGgobnMtPmRldmljZV9wYXRoLA0KICAg
ID4gKwkJCQkJICBGTU9ERV9SRUFEIHwgRk1PREVfV1JJVEUsIE5VTEwpOw0KICAgID4gKwkJaWYg
KElTX0VSUihiZGV2KSkNCiAgICA+ICsJCQlnb3RvIGVycjsNCiAgICA+ICsJCW5zLT5zaXplID0g
aV9zaXplX3JlYWQoYmRldi0+YmRfaW5vZGUpOw0KICAgID4gKwkJbnMtPmJsa3NpemVfc2hpZnQg
PSBibGtzaXplX2JpdHMoYmRldl9sb2dpY2FsX2Jsb2NrX3NpemUoYmRldikpOw0KICAgID4gKwl9
IGVsc2Ugew0KICAgID4gKwkJLyoNCiAgICA+ICsJCSAqIGlfYmxrYml0cyBjYW4gYmUgZ3JlYXRl
ciB0aGFuIHRoZSB1bml2ZXJzYWxseSBhY2NlcHRlZCB1cHBlcg0KICAgID4gKwkJICogYm91bmQs
IHNvIG1ha2Ugc3VyZSB3ZSBleHBvcnQgYSBzYW5lIG5hbWVzcGFjZSBsYmFfc2hpZnQuDQogICAg
PiArCQkgKi8NCiAgICA+ICsJCW5zLT5zaXplID0gc3RhdC5zaXplOw0KICAgID4gKwkJbnMtPmJs
a3NpemVfc2hpZnQgPSBtaW5fdCh1OCwNCiAgICA+ICsJCQkJZmlsZV9pbm9kZShucy0+ZmlsZSkt
PmlfYmxrYml0cywgMTIpOw0KICAgID4gKwl9DQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
