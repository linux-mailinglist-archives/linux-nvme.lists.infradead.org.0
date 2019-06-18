Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0849800
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 06:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpTD8hD/2X2L2Kt1CdJgJuqRx4u6Gzdrw0bpjOmIDu4=; b=LmMcVWRUXyizLt
	CPL9xmOzCB/jrck8RhVC/CFyH03mWwrBBdDP2mVDJPuUevKt0ix0bQJiShtb87FoiCEtn3knMqxik
	5DqAjsv7ofcJip4ZbFoZwi10Lk4y6pbJ2Emvo/1+MKSB++B7EdwVjlMIx/63cJHPTGY4m8NC7p7tG
	bTwN65sR/m8sex3gHUBcDFhK+6c2B9aOGJ+dIhq/1u7hBakt2pzyTc+u0cuNcByhwMTwu9hoDUhRl
	Z/7Txk4SKDku7gBZBUQn4I8uoW6uKbSyjYFnhBMOGJU7URb/RdrbyRvOHy4e5HYs4Q3R+PdM1FpAh
	gjS0CU9rz0+SfOhgve9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd5ZH-0006Oe-FW; Tue, 18 Jun 2019 04:17:59 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd5ZB-0006OC-Fn
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 04:17:55 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190618041749epoutp0359a6b05179e585904ceaff0f2cdc0dd7~pL-PFI0C-1732217322epoutp037
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 04:17:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190618041749epoutp0359a6b05179e585904ceaff0f2cdc0dd7~pL-PFI0C-1732217322epoutp037
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560831469;
 bh=++U1Ysodx08ZO840JO6lnWqdeupw/ubrChSvntMhenM=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=VoN0nOgGjQGTn6KPPu9tqWDWLD3RsmdeL/E+uAQjWuWMggvFOGQzrUfSf8RXMbX1n
 LuQcnkHCBvqLo1lB0eQf/1zJv6JBs7hZcOLcl+2hSEGIxXPuI0zaNeqMw46Txekifs
 hngv2dwt9K134WbT29vcoyL2PiZ+EOxqsAQa1K3s=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.182]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190618041747epcas2p20d2f0a1c9813ef0e1411fd9d3cbb05c6~pL-M7dJ5q0121901219epcas2p2e;
 Tue, 18 Jun 2019 04:17:47 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-60-5d0865ebab43
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 63.F5.04207.BE5680D5; Tue, 18 Jun 2019 13:17:47 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <4a7a6044-3de6-c099-bdbd-02065c9ef6cb@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190618041746epcms2p346345ac13203860fbff64b50f3a90da0@epcms2p3>
Date: Tue, 18 Jun 2019 13:17:46 +0900
X-CMS-MailID: 20190618041746epcms2p346345ac13203860fbff64b50f3a90da0
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXdO5xyt1eu0erIPrSMj1MxtNTtFml2ISQZCFBGJnfRlSru1
 s0VFpWVls5tKUi0yxStFSla2LlKcQorufojWxQq6LzOjm4XUtqPUtx9//s/zf57nfTlKc4CJ
 54rsbuKyi1aeiaY7riWaUoKEy9UfPcYKvidBWvDeuq8SquSHSDje9JoVfnlHCq3BPjqTMV/w
 PWPN93pO0+bS2qe0uf2ElzGfaSg2l13do8phVlrnFBKxgLi0xJ7vKCiyW9L5xUvzFuSZ0vSG
 FMMsYSavtYs2ks4vzM5JWVRkDU3Ba9eLVk9IyhEliU/NmONyeNxEW+iQ3Ok8cRZYnQaDc5ok
 2iSP3TIt32GbbdDrjaaQc7W1sLOsVOU8hDcEa5NLkDymHEVxgGdA7/ubqBxFcxrsR1BZ/ZUq
 RxynxjEw6I8Ne2LxUvB+7o7IGjwJfn7QK3IifLp0e0SYGTwFSqo/0GFLHM6CwBVduCOFHyHY
 9aeFVqLUcLjs9RBPhPPN51CYo/BckP37VIo+FgIne9lh7us6jhSOg509dyiFY+DFwCUUzgIM
 0PMpQ8FiONsihGMB70Dw6OOpodJU2Pa2PxKrxkvgcd9ApA2NdXC2/4FKqV0IXfVbwzKFk6Gp
 LhhZlgpt2HYxVXEkwPXHtOIYDbuvDbLDO/lrXg3NngD9sjw04wRo7g4yCpvhS1ULo5xYpuF3
 xRtVBdL6/l3Z91+w719wLaJOoHHEKdksRDI6Z/z/ru0o8hmTzH509W62jDCH+FFq5042VzNC
 XC9ttMkIOIqPU1dP53I16gJx4ybicuS5PFYiycgUWr+Sih+b7wh9bbs7z2AypqXpZ5kEU5pR
 4Mer20cGVmmwRXSTtYQ4iWu4TsVFxZeg9J8duhi2RnukrWeFcXynI+ut8Vjmos7JfYvnNbgT
 Y6Wy6CZdYPPybWus2fvXVS7LmPpgUjLbnfF9MGlLvT73cnvt9StTn/cnrSDE+/XLaE0Oq2Ne
 ClEasarxRmlz5rO2QPGSrvl1lsG4H3UHE2oqWnv33hrwNG5/t6u1cfmojm9dPC0VioYkyiWJ
 fwFpNv0rogMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988
References: <4a7a6044-3de6-c099-bdbd-02065c9ef6cb@grimberg.me>
 <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
 <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
 <667f4f9e-9356-44fb-d7fd-14d00b5393ea@grimberg.me>
 <20190612122646.GA32660@minwooim-desktop>
 <CGME20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_211753_854519_972F3BD1 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?B?SmF2aWVyIEdvbnrDoWxleg==?= <javier@javigon.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IExpbnV4LW52bWUgPGxpbnV4LW52
bWUtYm91bmNlc0BsaXN0cy5pbmZyYWRlYWQub3JnPiBPbiBCZWhhbGYgT2YKPiBTYWdpIEdyaW1i
ZXJnCj4gU2VudDogVHVlc2RheSwgSnVuZSAxOCwgMjAxOSAyOjQwIEFNCj4gVG86IE1pbndvbyBJ
bSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2Vy
bmVsLm9yZz47IEphdmllciBHb256w6FsZXogPGphdmllckBqYXZpZ29uLmNvbT47DQo+IGxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZzsgQ2hhaXRhbnlhIEt1bGthcm5pDQo+IDxDaGFpdGFu
eWEuS3Vsa2FybmlAd2RjLmNvbT47IG1pbndvby5pbUBzYW1zdW5nLmNvbQ0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIFY2IDYvNl0gZmFicmljczogUmV0dXJuIGVycm5vIG1hcHBlZCBmb3IgZmFicmlj
cyBlcnJvcg0KPiBzdGF0dXMNCj4gDQo+IA0KPiA+PiBRdWVzdGlvbiwgdGhpcyBpcyBhIGNhc2Ug
d2hlcmUgdGhlIG51bXJlYyBpcyBkaWZmZXJlbnQgYnV0IHRoZSBnZW5jdHINCj4gaXMNCj4gPj4g
dGhlIHNhbWU/IEkgdGhpbmsgd2UgbmVlZCB0byBmYWlsIGlmIHRoZSBnZW5jdHIgaXMgdGhlIHNh
bWUsIGJ1dCB3ZQ0KPiBuZWVkDQo+ID4+IHRvIHN0YXJ0IG92ZXIgaWYgdGhlIGdlbmN0ciBpcyBk
aWZmZXJlbnQuDQo+ID4NCj4gPiBUaGlzIGlzIHRoZSBjYXNlIHdoZXJlIHlvdSBwb2ludGVkIGl0
IG91dC4gIEJ1dCB3ZSBkb24ndCBrbm93IGlmDQo+ID4gZ2VuY3RyIGlzIGRpZmZlcmVudCBvciBu
b3QgYmVjYXVzZSB3ZSBkb24ndCBoYXZlIGFueSBub3RpZnlpbmcgY29kZQ0KPiA+IGluIG52bWZf
Z2V0X2xvZ19wYWdlX2Rpc2NvdmVyeSgpLiAgRXZlbiBnZW5jdHIgaXMgZGlmZmVyZW50IGJ1dCB0
aGUNCj4gPiByZXRyaWVzIGNvdW50IGlzIGV4aGF1c3RlZCB0byBtYXhfcmV0cmllcywgaXQgZG9l
cyBub3Qgbm90aWZ5IHRoaXMNCj4gPiBzaXR1YXRpb24gdG8gdGhlIGNhbGxlciB0byByZXRyeSBp
dC4NCj4gPg0KPiA+IFdvdWxkIHlvdSBtaW5kIGlmIHRoZSBmb2xsb3dpbmcgcGF0Y2ggaXMgYWRk
ZWQgdG8gdGhpcyBzZXJpZXM/ICBJZiBub3QsDQo+IHdlDQo+ID4gbmVlZCB0byBjaGFuZ2UgdGhl
IGRlc2lnbiBjb25jZXB0IHdoaWNoIHRyaWVzIHRvIGF2b2lkIGluZmluaXRlIGxvb3ANCj4gdGhh
dA0KPiA+IGhhZCBiZWVuIGludHJvZHVjZWQgYnkgSGFubmVzJ3MgY29tbWl0IDNjYmNkMTY1YjQ3
Lg0KPiANCj4gVGhhdHMgZmluZSwgYWxzbyBpZiB0aGUgbnVtcmVjIGlzIGRpZmZlcmVudCB0aGVu
IGl0IHNob3VsZCBiZSBhbiBlcnJvcg0KPiBpbiB0aGlzIGNhc2UgSSB0aGluay4NCg0KSSdsbCBw
cmVwYXJlIFY3IHNlcmllcyB3aXRoIGVycm9yIHJldHVybmluZyBmb3IgdGhlIGNhc2UgbnVtcmVj
IGlzIG5vdA0KTWF0Y2hlZC4NCg0KVGhhbmtzLA0KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
