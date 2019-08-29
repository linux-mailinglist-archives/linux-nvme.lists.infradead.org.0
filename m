Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AE6A1474
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 11:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lsb7msRcnkD0bhwybTNC3gegA6+Ttth6sqRQA6yFvfA=; b=id4iyQgkA/IJmO
	fNafJ6yqm3zfXKc+wTyGqNEtntFnP8W2T6eBn7dkWh73BFQSO/8ESXhOtPIvKxR2zis7GNVnJs/lt
	lKeicoTVJQ0OGdWNiVC5odefcwrb3iiRezK1dBj1vQ948FS4mx4UralWsG4CZlq/8WzGeEQzh+dvX
	odZWel3GO2URkJjIvsWz/L6o5HtVw3bwaXTPc7edr4cIQBiCJSDrO9kaq8Yzq1g5a8Mkb8OPm2UrH
	9i4juVbxsGsFKALydRDO5lxyLD98C/n6Dti+gNH4AhqBJS8GHs00qOK/0KiL3CePE3ZqzExsa3EEI
	v6Bop5jm5Sh9yuj229Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3GU2-0004u1-OE; Thu, 29 Aug 2019 09:12:46 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3GTP-0004iM-4Q
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 09:12:10 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id A764742E7D;
 Thu, 29 Aug 2019 09:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 mime-version:content-transfer-encoding:content-id:content-type
 :content-type:content-language:accept-language:in-reply-to
 :references:message-id:date:date:subject:subject:from:from
 :received:received:received:received; s=mta-01; t=1567069920; x=
 1568884321; bh=hzlcYWJj3ZkhO/zMxKR8gcBsFRyDVngt9IPcB6KAcak=; b=a
 +BjCVxfdMq1MFhN09wze/vZmRe4/03ATuxNXdtyU0jfc/BFaW64gC3F+CWLN2frh
 uZKJfbazsvLRLP9BYfs0T5XHnZcL6ApIW8W6aFqypM6O1+/DnUHyQGfLj6ucKoBX
 cv+xwwcy4BfFItVtvx/LgS4snhMEAfFMoMviBdZa3c=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5f4wdAZac3JO; Thu, 29 Aug 2019 12:12:00 +0300 (MSK)
Received: from T-EXCH-01.corp.yadro.com (t-exch-01.corp.yadro.com
 [172.17.10.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 10744435D7;
 Thu, 29 Aug 2019 12:11:56 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (172.17.10.102) by
 T-EXCH-01.corp.yadro.com (172.17.10.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 29 Aug 2019 12:11:56 +0300
Received: from T-EXCH-02.corp.yadro.com ([fe80::4cd3:eaee:104f:8ccb]) by
 T-EXCH-02.corp.yadro.com ([fe80::4cd3:eaee:104f:8ccb%14]) with mapi id
 15.01.0669.032; Thu, 29 Aug 2019 12:11:55 +0300
From: Mikhail Malygin <m.malygin@yadro.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: read device size in identify-ns command handler
Thread-Topic: [PATCH] nvmet: read device size in identify-ns command handler
Thread-Index: AQHVUboDomwDLwaa4Em7jl8a7G5ma6b8QP6AgAEE+QCAFHfkAA==
Date: Thu, 29 Aug 2019 09:11:55 +0000
Message-ID: <5711A836-6227-4770-AB39-29AC73EF28B1@yadro.com>
References: <20190813093157.21755-1-m.malygin@yadro.com>
 <5fdce872-8e34-f34e-6ae8-e67bc2f935ac@grimberg.me>
 <A6E7616B-75C7-4C02-B93B-8FF44DE86642@yadro.com>
In-Reply-To: <A6E7616B-75C7-4C02-B93B-8FF44DE86642@yadro.com>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [10.100.1.230]
Content-ID: <685272DDDFB1A84AB5D43C1369D50A77@yadro.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_021207_792477_B9A5E835 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2UgY2FuIGFsc28gaGF2ZSDigJxyZXNjYW4iIGNvbmZpZ2ZzIG5vZGUgaW4gbmFtZXNwYWNlLCB0
aGF0IGNhbiB1cGRhdGUgbnMtPnNpemUgYW5kIGNhbGwgbnZtZXRfbnNfY2hhbmdlZCgpIGlmIG5l
ZWRlZC4gU28gYWZ0ZXIgYmxvY2sgZGV2aWNlIHJlc2l6ZSwgd2UgY2FsbCB0aGlzIG5vZGUsIGl0
IHVwZGF0ZXMgc2l6ZSBpbiBudm1ldCBhbmQgdHJpZ2dlcnMNCm5zLXJlc2NhbiBvbiBpbml0aWF0
b3Igc2lkZS4gU2hvdWxkIHRoaXMgYXBwcm9hY2ggZml0IGJldHRlciBpbiBudm1ldD8NCg0KPiBP
biAxNiBBdWcgMjAxOSwgYXQgMTE6MzcsIE1pa2hhaWwgTWFseWdpbiA8bS5tYWx5Z2luQHlhZHJv
LmNvbT4gd3JvdGU6DQo+IA0KPiBSZXNjYW4gbWF5IGJlIHRyaWdnZXJlZCBtYW51YWxseSBmcm9t
IHRoZSBpbml0aWF0b3Igc2lkZS4gSXQgd291bGQgZ29vZCB0byBoYXZlIHJlc2NhbiB0aWdnZXJl
ZCBhdXRvbWF0aWNhbGx5LCANCj4gaG93ZXZlciBJIGRpZCBub3QgZmluZCBhIHdheSB0byBub3Rp
ZnkgbnZtZXQgYWJvdXQgYmxvY2sgc2l6ZSBjaGFuZ2UuIA0KPiANCj4+IE9uIDE1IEF1ZyAyMDE5
LCBhdCAyMDowMywgU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4gd3JvdGU6DQo+PiAN
Cj4+IA0KPj4+IEN1cnJlbnRseSBkZXZpY2Ugc2l6ZSBpcyBjYWNoZWQgaW4gbnMtPnNpemUgZmll
bGQgb24gbmFtZXNwYWNlIGVuYWJsZSwgc28NCj4+PiBhbnkgZGV2aWNlIHNpemUgY2hhbmdlIGFm
dGVyIHRoYXQgY2FuJ3QgYmVlIHNlZW4gYnkgaW5pdGlhdG9yLg0KPj4+IFRoaXMgcGF0Y2ggdXBk
YXRlcyBucy0+c2l6ZSBmaWVsZCBpbiBpZGVudGlmeS1ucyBjb21tYW5kIGhhbmRsZXIsDQo+Pj4g
c28gaW5pdGlhdG9yIGNhbiBzZWUgbmV3IGRldmljZSBzaXplIGFmdGVyIG5zLXJlc2Nhbi4NCj4+
IA0KPj4gV2hhdCB3b3VsZCB0cmlnZ2VyIGEgbnMgcmVzY2FuPw0KPiANCj4gDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IExpbnV4LW52bWUgbWFp
bGluZyBsaXN0DQo+IExpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
