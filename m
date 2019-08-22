Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473D998F3
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 18:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w636YKrWATNXRZTmp7mySHswevDzO8Yo/sPOzQ5TDqU=; b=ocWsDzx8lcOfS/bFKtrOiNRqGD
	P6jeVeHkOqmS9qv+JqGWxMj3W9RzLRyQzsaCiX/fZHoX47Cl36xvuqbnvDL9WMkRii2PVEd9qk4A8
	Qup1TaW6pRLHp1EywRMaj8veGZUZzKDa8qD7K5NGm1VLRTBRsw/Qzu/m63GvYzlzi7BCQ7RicVxOW
	/FEY2c/dwATviwxEneYTU2cj0sdyezqlY4mTPykWao7HyrMVxK1rQ5DN06vpvz0m8Dp1dQovJR3Ki
	wreKFnWZdm5x806Wu+2+/M5jrAMCpZLFdrpX4PqlljRPz1SXFayc+bbSOx6ttlLvj0/FjuDYg+emt
	xit8T08w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pk0-0005V4-Of; Thu, 22 Aug 2019 16:15:12 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pjp-0004lr-Ts
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 16:15:04 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CF1A6800064;
 Thu, 22 Aug 2019 16:14:58 +0000 (UTC)
Received: from linux-m89u (213.152.162.99) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 22 Aug
 2019 17:14:53 +0100
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
 <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
User-agent: mu4e 1.3.3; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
In-Reply-To: <bf77e846-b319-0d6e-ece6-812257f33d57@suse.de>
Date: Thu, 22 Aug 2019 18:14:38 +0200
Message-ID: <877e75b2j5.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [213.152.162.99]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24862.003
X-TM-AS-Result: No-10.151200-8.000000-10
X-TMASE-MatchedRID: vEvJ7Rh1lGj/CzUA+zbGoX4neC0h7SADui/Hcpfcv4RNEl8XeFvcyARj
 Z4/TzBlySqdra4WWujyPQi9XuOWoOHsC/8Evf2rH3uJKJF9BC8Hbjtx2Oq4XgxEqDoFrIK+yBRJ
 xFlc4Hm6ceOSXXTgbyzFb7uNzVxse56XkomU2m5X805SSvoAPNwRryDXHx6oXbjk25GcDBTydJY
 S4rHLiE33F7VdAUmCxm3v9ylNOkXfmLzc6AOD8DRlJRfzNw8afQZpQRfyCdHwlGJOB7ohzXgTs3
 gCe8NQ12DG51ViG2DMFTm8V5bDmCWG/iPOyVtTisyNb+yeIRAqm8MsuWwAf/bgVXMjBNuBVPJS1
 u+pP82yLsgzFbV1LOjSmO/5/XWpThCRKR4G8ioyrm7DrUlmNkF+24nCsUSFNjaPj0W1qn0TKayT
 /BQTiGrkHm4uaNBC1cnv9dWpRf1YRqcrgsLJFLF0k8ytFFxC8UFAHXQGuWpE=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.151200-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24862.003
X-MDID: 1566490499-liVUPrIk20Ty
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_091502_124209_B4242EBA 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T0sgdGhlbiBJIHdpbGwgbm90IGJvdGhlciBteXNlbGYgd2l0aCB0aGlzLiBJIGhhdmUgYSBwYXRj
aCBidXQgSSBkaWQgbm90CmhhdmUgdGltZSB0byB0ZXN0IGl0IHlldC4KCkF0dGFjaGluZyBpdCB0
byB0aGUgbGV0dGVyIGluIGNhc2UgaXQgaXMgaGVscGZ1bC4KCmRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKaW5kZXggZGFiMzJk
OTJlOTg4Li45OGNjNDU3ZDE0NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUu
YworKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKQEAgLTIyLDEyICsyMiwxMiBAQAogI2lu
Y2x1ZGUgPGxpbnV4L3BtX3Fvcy5oPgogI2luY2x1ZGUgPGFzbS91bmFsaWduZWQuaD4KCi0jZGVm
aW5lIENSRUFURV9UUkFDRV9QT0lOVFMKLSNpbmNsdWRlICJ0cmFjZS5oIgotCiAjaW5jbHVkZSAi
bnZtZS5oIgogI2luY2x1ZGUgImZhYnJpY3MuaCIKCisjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lO
VFMKKyNpbmNsdWRlICJ0cmFjZS5oIgorCiAjZGVmaW5lIE5WTUVfTUlOT1JTCQkoMVUgPDwgTUlO
T1JCSVRTKQoKIHVuc2lnbmVkIGludCBhZG1pbl90aW1lb3V0ID0gNjA7CkBAIC0yODEsNiArMjgx
LDggQEAgdm9pZCBudm1lX2NvbXBsZXRlX3JxKHN0cnVjdCByZXF1ZXN0ICpyZXEpCiAJCQlyZXR1
cm47CiAJCX0KIAl9CisKKwludm1lX3RyYWNlX2Jpb19jb21wbGV0ZShyZXEsIHN0YXR1cyk7CiAJ
YmxrX21xX2VuZF9yZXF1ZXN0KHJlcSwgc3RhdHVzKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKG52
bWVfY29tcGxldGVfcnEpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oIGIv
ZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oCmluZGV4IGViNWZiZWU2YjQxMy4uNGZiNDc3ZmNlYzMz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLmgKKysrIGIvZHJpdmVycy9udm1l
L2hvc3QvbnZtZS5oCkBAIC0xNiw2ICsxNiw4IEBACiAjaW5jbHVkZSA8bGludXgvZmF1bHQtaW5q
ZWN0Lmg+CiAjaW5jbHVkZSA8bGludXgvcmN1cGRhdGUuaD4KCisjaW5jbHVkZSA8dHJhY2UvZXZl
bnRzL2Jsb2NrLmg+CisKIGV4dGVybiB1bnNpZ25lZCBpbnQgbnZtZV9pb190aW1lb3V0OwogI2Rl
ZmluZSBOVk1FX0lPX1RJTUVPVVQJKG52bWVfaW9fdGltZW91dCAqIEhaKQoKQEAgLTUzNSw2ICs1
MzcsMTYgQEAgc3RhdGljIGlubGluZSB2b2lkIG52bWVfbXBhdGhfY2hlY2tfbGFzdF9wYXRoKHN0
cnVjdCBudm1lX25zICpucykKIAkJa2Jsb2NrZF9zY2hlZHVsZV93b3JrKCZoZWFkLT5yZXF1ZXVl
X3dvcmspOwogfQoKK3N0YXRpYyBpbmxpbmUgdm9pZCBudm1lX3RyYWNlX2Jpb19jb21wbGV0ZShz
dHJ1Y3QgcmVxdWVzdCAqcmVxLAorCQkJCQkgICBibGtfc3RhdHVzX3Qgc3RhdHVzKQoreworCXN0
cnVjdCBudm1lX25zICpucyA9IHJlcS0+cS0+cXVldWVkYXRhOworCisJaWYgKHJlcS0+YmlvICYm
IHJlcS0+Y21kX2ZsYWdzICYgUkVRX05WTUVfTVBBVEgpCisJCXRyYWNlX2Jsb2NrX2Jpb19jb21w
bGV0ZShucy0+aGVhZC0+ZGlzay0+cXVldWUsCisJCQkJCSByZXEtPmJpbywgc3RhdHVzKTsKK30K
KwogZXh0ZXJuIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlIGRldl9hdHRyX2FuYV9ncnBpZDsKIGV4
dGVybiBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBkZXZfYXR0cl9hbmFfc3RhdGU7CiBleHRlcm4g
c3RydWN0IGRldmljZV9hdHRyaWJ1dGUgc3Vic3lzX2F0dHJfaW9wb2xpY3k7CkBAIC02MDUsNiAr
NjE3LDEwIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBudm1lX21wYXRoX3dhaXRfZnJlZXplKHN0cnVj
dCBudm1lX3N1YnN5c3RlbSAqc3Vic3lzKQogc3RhdGljIGlubGluZSB2b2lkIG52bWVfbXBhdGhf
c3RhcnRfZnJlZXplKHN0cnVjdCBudm1lX3N1YnN5c3RlbSAqc3Vic3lzKQogewogfQorc3RhdGlj
IGlubGluZSB2b2lkIG52bWVfdHJhY2VfYmlvX2NvbXBsZXRlKHN0cnVjdCByZXF1ZXN0ICpyZXEs
CisJCQkJCSAgIGJsa19zdGF0dXNfdCBzdGF0dXMpCit7Cit9CiAjZW5kaWYgLyogQ09ORklHX05W
TUVfTVVMVElQQVRIICovCgogI2lmZGVmIENPTkZJR19OVk0KCgpIYW5uZXMgUmVpbmVja2UgPGhh
cmVAc3VzZS5kZT4gd3JpdGVzOgoKID4gT24gOC8yMi8xOSAzOjA1IEFNLCBTYWdpIEdyaW1iZXJn
IHdyb3RlOgogPiA+CiA+ID4+Pj4gQnR3LCBJIGFsc28gdGhpbmsgd2Ugc2hvdWxkIHByb2JhYmx5
IHB1bGwgdGhlIG9yaWdpbmFsIHBhdGNoCiA+ID4+Pj4gZnJvbSBIYW5uZXMgYW5kIGp1c3QgYXBw
bHkgYSBjbGVhbiBvbmUgZ2l2ZW4gdGhhdCB0aGlzIGlzIGp1c3QgcXVldWVkCiA+ID4+Pj4gdXAg
aW4gbnZtZS01LjQuCiA+ID4+PgogPiA+Pj4gVGhvdWdodCBhYm91dCBpdCB0b28uLi4gSSBjYW4g
Zm9sZCBpdCBpbnRvIEhhbm5lcyBwYXRjaC4KID4gPj4KID4gPj4gSSdkIHNheSBsZXQgTWlraGFp
bCBvciBIYW5uZXMgcmVzZW5kIGEgbmV3IG9uZSBhZ2FpbnN0IGEgY2xlYW4gc3RhdGUKID4gPj4g
d2l0aCBhbGwgdGhlIHJlcXVlc3RlZCBpbXByb3ZlbWVudHMuCiA+ID4KID4gPiBNaWtoYWlsL0hh
bm5lcywgY2FyZSB0byBzZW5kIG9uZSBwYXRjaCB0byByZXBsYWNlIGJvdGg/CiA+CiA+IFllcywg
SSdsbCBiZSBzZW5kaW5nIGEgcmVwbGFjZW1lbnQuCiA+CiA+IENoZWVycywKID4KID4gSGFubmVz
CiA+IC0tCiA+IERyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3
b3JraW5nCiA+IGhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4
CiA+IFNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCiA+IEdG
OiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaAogPiBIUkIgMjEy
ODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
