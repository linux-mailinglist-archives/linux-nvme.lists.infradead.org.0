Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD810FB5F
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 11:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/OaYKo61F7iVF2Co8OIIxJ8iF2dzwqH2Jqw9fr2tAM=; b=CIlpTSwIW0Uzo0
	Mqi3OB7HgxnlSp6ITa8yqchRWM7PEWR3qRlYza1aH/hxtMYxbJvl+KNWxO5bLqYj66ZIHe4VFhuFm
	D9whz/O/6vlB+z5f6vXcRAafs/Q9sNDQuFq+8x8+6Cf3EoZWOxoUaYpnPp12e1Wtd66RDCK04NfxY
	Nnf1zzuupEEdTbGb0qcNGgKkAPrCNKJRQpEAeRqJqShwmybKu+hFNXbvjLjVNcJn1WKlqrqKzKhvC
	uXNq9ErKm5DaHy+t57SrUBB/GskiTcGOjPKIsQQ/g6UwTtK/CBeJbI0Vc4z1xfynMQJC5tqE1I9MU
	OCFChVGu2ThdskH4ve+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic53S-0003fo-CB; Tue, 03 Dec 2019 10:05:14 +0000
Received: from ip-12-0-68-226-us.kioxia.com ([12.0.68.226]
 helo=SJSMAIL01.us.kioxia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic53D-0003eN-K9
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 10:05:01 +0000
Received: from SJSMAIL01.us.kioxia.com (10.90.133.90) by
 SJSMAIL01.us.kioxia.com (10.90.133.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 3 Dec 2019 02:04:55 -0800
Received: from SJSMAIL01.us.kioxia.com ([fe80::8056:cf5f:fb1f:e123]) by
 SJSMAIL01.us.kioxia.com ([fe80::8056:cf5f:fb1f:e123%3]) with mapi id
 15.01.1779.004; Tue, 3 Dec 2019 02:04:55 -0800
From: Victor Gladkov <Victor.Gladkov@kioxia.com>
To: James Smart <james.smart@broadcom.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] nvme-fabrics: reject I/O to offline device
Thread-Topic: [PATCH] nvme-fabrics: reject I/O to offline device
Thread-Index: AdWoHEM2hZCp1trGT5CqiIXVszcBJgBiTd2AAAZbKjA=
Date: Tue, 3 Dec 2019 10:04:55 +0000
Message-ID: <c625b332ee124b038da1ae59b02f4e21@kioxia.com>
References: <2caa40133c444771b706406b928ad88a@kioxia.com>
 <78d980de-b2b8-bd47-fc3f-20314653598e@broadcom.com>
In-Reply-To: <78d980de-b2b8-bd47-fc3f-20314653598e@broadcom.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.66.127]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_020459_657628_406BEB9C 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQpPbiAxMi8wMy8yMDE5IDAwOjQ3IEFNLCBKYW1lcyBTbWFydCB3cm90ZToNCj4gT24gMTEvMzAv
MjAxOSAxMTo1OSBQTSwgVmljdG9yIEdsYWRrb3Ygd3JvdGU6DQo+ID4gSXNzdWUgRGVzY3JpcHRp
b246DQo+ID4gQ29tbWFuZHMgZ2V0IHN0dWNrIHdoaWxlIEhvc3QgTlZNZSBjb250cm9sbGVyIChU
Q1Agb3IgUkRNQSkgaXMgaW4NCj4gcmVjb25uZWN0IHN0YXRlLg0KPiA+IE5WTWUgY29udHJvbGxl
ciBlbnRlcnMgaW50byByZWNvbm5lY3Qgc3RhdGUgd2hlbiBpdCBsb3NlcyBjb25uZWN0aW9uIHdp
dGgNCj4gdGhlIHRhcmdldC4gSXQgdHJpZXMgdG8gcmVjb25uZWN0IGV2ZXJ5IDEwIHNlY29uZHMg
KGRlZmF1bHQpIHVudGlsIHN1Y2Nlc3NmdWwNCj4gcmVjb25uZWN0aW9uIG9yIHVudGlsIHJlY29u
bmVjdCB0aW1lLW91dCBpcyByZWFjaGVkLiBUaGUgZGVmYXVsdCByZWNvbm5lY3QNCj4gdGltZSBv
dXQgaXMgMTAgbWludXRlcy4NCj4gPiBUaGlzIGJlaGF2aW9yIGlzIGRpZmZlcmVudCB0aGFuIElT
Q1NJIHdoZXJlIENvbW1hbmRzIGR1cmluZyByZWNvbm5lY3QNCj4gc3RhdGUgcmV0dXJucyB3aXRo
IHRoZSBmb2xsb3dpbmcgZXJyb3I6ICJyZWplY3RpbmcgSS9PIHRvIG9mZmxpbmUgZGV2aWNlIg0K
PiA+DQo+ID4gRml4IERlc2NyaXB0aW9uOg0KPiA+IEFkZGVkIGEga2VybmVsIG1vZHVsZSBwYXJh
bWV0ZXIgIm52bWVmX3JlY29ubmVjdF9mYWlsZmFzdCIgZm9yIG52bWUtDQo+IGZhYnJpY3MgbW9k
dWxlIChkZWZhdWx0IGlzIHRydWUpLg0KPiA+IEludGVyZmVyZSBpbiB0aGUgZGVjaXNpb24gd2hl
dGhlciB0byBxdWV1ZSBJTyBjb21tYW5kIG9yIHJldHJ5IElPDQo+IGNvbW1hbmQuIFRoZSBpbnRl
cmZhY2UgdGFrZXMgaW50byBhY2NvdW50IHRoZSBjb250cm9sbGVyIHJlY29ubmVjdCBzdGF0ZSwg
aW4NCj4gYSB3YXkgdGhhdCBkdXJpbmcgcmVjb25uZWN0IHN0YXRlLCBJTyBjb21tYW5kcyBzaGFs
bCBmYWlsIGltbWVkaWFjeSAoZGVmYXVsdCkNCj4gb3IgYWNjb3JkaW5nIHRvIElPIGNvbW1hbmQg
dGltZW91dCAoZGVwZW5kcyBvbiB0aGUgbW9kdWxlIHBhcmFtZXRlcg0KPiB2YWx1ZSksIGFuZCBJ
TyByZXRyeSBpcyBwcmV2ZW50ZWQuIEFzIGEgcmVzdWx0LCBjb21tYW5kcyBkbyBub3QgZ2V0IHN0
dWNrIGluIGluDQo+IHJlY29ubmVjdCBzdGF0ZS4NCj4gDQo+IFRoaXMgdGhlIHBhdGNoIHNlZW1z
IGluY29ycmVjdCBhdCBsZWFzdCBhcyBkZXNjcmliZWQuIE11bHRpcGF0aGluZyBpbmhlcmVudGx5
DQo+IHdpbGwgImZhc3RmYWlsIiBhbmQgc2VuZCB0byBvdGhlciBwYXRocy4gU28gdGhlIG9ubHkg
d2F5IHNvbWV0aGluZyBpcyAic3R1Y2siIGlzDQo+IGlmIGl0J3MgbGFzdCBwYXRoLiBJZiBsYXN0
IHBhdGgsIHdlIGRlZmluaXRlbHkgZG9uJ3Qgd2FudCB0byBwcmVtYXR1cmVseSByZWxlYXNlDQo+
IGkvbyBiZWZvcmUgd2UndmUgZ2l2ZW4gdGhlIHN1YnN5c3RlbSBldmVyeSBvcHBvcnR1bml0eSB0
byByZWNvbm5lY3QuDQo+IA0KPiBXaGF0IEkgaGVhciB5b3Ugc2F5aW5nIGlzIHlvdSBkb24ndCBs
aWtlIHRoZSBrZXJuZWwgZGVmYXVsdCBjb250cm9sbGVyLWxvc3MtDQo+IHRpbWVvdXQgb2YgNjAw
cy4gV2hhdCB3YXMgZGVzaWduZWQsIGlmIHlvdSBkaWRuJ3QgbGlrZSB0aGUga2VybmVsIGRlZmF1
bHQsIHdhcw0KPiB0byB1c2UgdGhlIHBlci1jb25uZWN0aW9uICItLWNsdHItbG9zcy10bW8iDQo+
IG9wdGlvbiBmb3IgIm52bWUgY29ubmVjdCIuwqAgVGhlIGF1dG8tY29ubmVjdCBzY3JpcHRzIG9y
IHRoZSBhZG1pbiBzY3JpcHQgdGhhdA0KPiBzcGVjaWZpZXMgdGhlIGNvbm5lY3Rpb24gY2FuIHNl
dCB3aGF0ZXZlciB2YWx1ZSBpdCBsaWtlcy4NCj4gDQo+IElmIHRoYXQgc2VlbXMgaGFyZCB0byBk
bywgcGVyaGFwcyBpdCdzIHRpbWUgdG8gaW1wbGVtZW50IHRoZSBvcHRpb25zIHRoYXQNCj4gYWxs
b3cgZm9yIGEgY29uZmlnIGZpbGUgdG8gc3BlY2lmeSBuZXcgdmFsdWVzIHRvIGJlIHVzZWQgb24g
YWxsIGNvbm5lY3Rpb25zLCBvcg0KPiBvbiBjb25uZWN0aW9ucyB0byBzcGVjaWZpYyBzdWJzeXN0
ZW1zLCBhbmQgc28gb24uIEJ1dCBJIGRvbid0IHRoaW5rIHRoZSBrZXJuZWwNCj4gbmVlZHMgdG8g
Y2hhbmdlLg0KPiANCj4gLS0gamFtZXMNCg0KSmFtZXMsIHRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dl
c3Rpb24uDQpCdXQgbGV0IG1lIGV4cGxhaW4gaXQgZGlmZmVyZW50bHkuDQoNCkFwcGxpY2F0aW9u
cyBhcmUgZXhwZWN0aW5nIGNvbW1hbmRzIHRvIGNvbXBsZXRlIHdpdGggc3VjY2VzcyBvciBlcnJv
cg0Kd2l0aGluIGEgY2VydGFpbiB0aW1lb3V0ICgzMCBzZWNvbmRzIGJ5IGRlZmF1bHQpLiANClRo
ZSBOVk1lIGhvc3QgaXMgZW5mb3JjaW5nIHRoYXQgdGltZW91dCB3aGlsZSBpdCBpcyBjb25uZWN0
ZWQsIG5ldmVyIHRoZSBsZXNzLCANCmR1cmluZyByZWNvbm5lY3Rpb24sIHRoZSB0aW1lb3V0IGlz
IG5vdCBlbmZvcmNlZCBhbmQgY29tbWFuZHMgbWF5IGdldCBzdHVjayBmb3IgYSBsb25nIHBlcmlv
ZCBvciBldmVuIGZvcmV2ZXIuDQoNClRoZSBjb250cm9sbGVyLWxvc3MtdGltZW91dCBzaG91bGQg
bm90IGFmZmVjdCBJTyB0aW1lb3V0IHBvbGljeSwgdGhlc2UgYXJlIHR3byBkaWZmZXJlbnQgcG9s
aWNpZXMuDQoNClJlZ2FyZHMsDQpWaWN0b3INCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
