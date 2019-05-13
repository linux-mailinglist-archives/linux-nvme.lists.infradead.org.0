Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C31B027
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=On19xuJhBDZXD35zUQrHmKNiBr+xINJbEWCevojYDTo=; b=cDhPI6tkA9u0iD68WJDsJv1XJ
	0qx1KEeS4JezRV3LgA66LcJBqjLANeT2NRCiV7kYTxPTKr6egVgKNTMGEubEngws0d2YT4ARXX/zf
	bk//ES4WIxjZMamBUKVSE2ehqEyQVxMr/ia+Dn+6+jm2tSpKCnj8flKIYevDezgy/DJVK3ZHK3/VK
	4HE84glLlea59xrnE2J8SCltuXNo0jBDGTlwpmrtC6ogGHZVcHeGguiCzxUNt2H97bMk8Kg9pda5D
	z9qffYUbjFVptUlBQvXbiEEmbKs5Ty5fNtdnMbLlvecMbzTN6oJ4rxfpRKjcWyLvEsAU+Kyac5A45
	AWhUSKlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4Ey-0007dD-Gv; Mon, 13 May 2019 06:15:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4Es-0006Yg-Id
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 06:15:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EAE71AC3F;
 Mon, 13 May 2019 06:15:01 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, 
 James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
 <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
 <3f84d637-4d04-45e1-ce49-59238c2aaea8@broadcom.com>
 <c3bf6edd-91fc-74d5-29a3-093fa57d561f@suse.de>
 <689b9665-5f93-1ccc-3e6b-41436b769b09@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <e29ecf45-4b14-22a1-e161-df37e4166301@suse.de>
Date: Mon, 13 May 2019 08:15:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <689b9665-5f93-1ccc-3e6b-41436b769b09@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_231506_818393_C0D02A1E 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xMi8xOSA1OjA4IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBZb3UncmUgdGFs
a2luZyBhYm91dCBkaXNjb3ZlcnkgcmVmZXJyYWxzLCByaWdodD8KPj4gSW4gdGhpcyBjYXNlIEkn
ZCBnbyB3aXRoIGNhc2UgYSksIGFuZCBzaW1wbHkgY3JlYXRlIG5vbi1wZXJzaXN0ZW50IAo+PiBj
b25uZWN0aW9uLgo+PiBSZWFzb25pbmcgaXMgdGhhdCBpZiB0aGUgYWRtaW4gd2FudHMgdG8gaGF2
ZSBhIHBlcnNpc3RlbnQgZGlzY292ZXJ5IGhlIAo+PiBzaG91bGQgYmUgZW5zdXJpbmcgdGhhdCB0
aGlzIHNlY29uZGFyeSBjb250cm9sbGVyIGlzIGZvdW5kIGR1cmluZyAKPj4gaW5pdGFsIGRpc2Nv
dmVyeSAoaWUgd2l0aCB0aGUgYWJvdmVtZW50aW9uZWQgc3lzdGVtZCBib290IHNlcnZpY2UpLgo+
Pgo+PiAoQW5kIGRpc2NvdmVyeSByZWZlcnJhbHMgYXJlIHRyaWNreSBhbnl3YXk7IEkndmUgY3Jl
YXRlZCB0d28gZGlzY292ZXJ5IAo+PiBjb250cm9sbGVycyBlYWNoIGhhdmluZyBhIHJlZmVyZW5j
ZSB0byB0aGUgb3RoZXIgbmljZSBpbiBvcmRlciB0byBoYXZlIAo+PiBhIGZhaWxvdmVyIHNjZW5h
cmlvLCBidXQgZW5kZWQgdXAgd2l0aCBhIGxvb3BpbmcgbnZtZSBjb25uZWN0LWFsbCAuLi4gCj4+
IG5lZWQgdG8gc2VuZCBhIHBhdGNoIGZvciB0aGF0LikKPiAKPiBIbW0uLi4KPiAKPiBJIHNlZSB0
d28gb3B0aW9ucyBoZXJlOgo+IDEuIGNyZWF0ZSBuZXcgdHJhbnNpZW50IGRpc2NvdmVyeSBjb250
cm9sbGVyIGZvciBlYWNoIHJlZmVycmFsIGFzIHdlIGRvCj4gdG9kYXkuCj4gMi4gbWFrZSAtLXBl
cnNpc3RlbnQgZm9sbG93IHJlZmVycmFscyBzdWNoIHRoYXQgd2UgaGF2ZSBwZXJzaXN0ZW50Cj4g
ZGV2aWNlIGZvciBlYWNoIGFuZCB0aGVuIHdlIHNraXAgcmVmZXJyYWxzIGFzIHdlIHdpbGwgZXhw
ZWN0IGV2ZW50cwo+IGNvbWluZyBmcm9tIHRoZW0uLi4KPiAKPiBJIHdvdWxkIHN1Z2dlc3QgKDEp
IGFzIGl0cyBzaW1wbGVyLgoKU2FtZSBoZXJlLgpBIHBlcnNpc3RlbnQgY29ubmVjdGlvbiBpcyBw
cmV0dHkgbXVjaCBhbiBhZG1pbiBjaG9pY2UsIGFuZCB3ZSBjYW5ub3QgCmFuZCBzaG91bGQgbm90
IG91dC1ndWVzcyB0aGUgYWRtaW4gaGVyZS4KSWYgdGhlIGFkbWluIHdhbnRzIHRvIHVzZSBwZXJz
aXN0ZW50IGNvbm5lY3Rpb25zIGhlIHNob3VsZCBiZSBjcmVhdGluZyBvbmUuCgpDaGVlcnMsCgpI
YW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3
b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNV
U0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJ
bWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJu
YmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
