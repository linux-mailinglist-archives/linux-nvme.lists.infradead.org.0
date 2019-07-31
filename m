Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261087BA0C
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 08:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DT+cqMypuKYRmH45YEYZudDDpV3NKzDb5Pu63zWiauw=; b=CR1zVqYED/1Zpo
	o8oKWVT8f0ITwwwqz5FgvWVFO2TYe32gUOH0qpgVCY6GxNBN/5vzd+Ii4SxYrC3MAvj2fxssoCyFO
	nulJJ6+RALJQo/c72chGo5f6fWtQgEHn2nBmnBGnI6SXoUinYjV1hZA5xtyUfPVaWFWEdoy6jXBnE
	xUPvg0lWCsVAL1MCBufQ2+q3PnPw1t5YfH/3VyeMhawOOmyjtUCSLiMtfWqDmmgbVed76d/BlOrnO
	HJv4jgS4zHwIgTlyfnqYOO5ahzmnLjiQglo3jdvKUvKtU+KugmTnwFnZ8xIPoMqHJtDiCXP+meTvf
	zdjBRManwmNZYW3D/0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiZu-00068S-Ev; Wed, 31 Jul 2019 06:59:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiZg-00067b-61
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 06:59:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B40B2AF5D;
 Wed, 31 Jul 2019 06:58:54 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <0e103ae2-b0b5-28e5-bfea-35d8f683809a@suse.de>
Date: Wed, 31 Jul 2019 08:58:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_235900_514770_949AD6CF 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMC8xOSA3OjEyIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gWWVzLCBhbmQg
YWdhaW4sIGFkZHJlc3NlcyB0aGUgY2FzZSB0aGF0IHRoZSBuYW1lc3BhY2UgaXMgZ29pbmcgYXdh
eS4KPj4+Cj4+PiBTbyBJIHRoaW5rIHdlIGFyZSBpbiBhZ3JlZW1lbnQ/IEkgb25seSBuZWVkIHRv
IGNoYW5nZSB0aGUgY29tbWl0Cj4+PiBtZXNzYWdlIGZyb206ICJ0aGUgcmV2YWxpZGF0aW9uIEkv
TyIgdG8gInRoZSBhZG1pbiBJL08iID8KPj4KPj4gVGhhdCB3b3JkcyBvZiAnYWRtaW4gSS9PJyBp
c24ndCByZWxhdGVkIHdpdGggdGhlIHBhdGNoIG9yIGlzc3VlLgo+IAo+IEJ1dCBpdCBpcywgdGhl
IG9yaWdpbmFsIGlzc3VlIHdhcyBkdWUgdG8gdGhlIGZhY3QgdGhhdAo+IG52bWVfcmV2YWxpZGF0
ZV9kaXNrKCkgSS9PcyBzdWNoIGFzIG52bWVfaWRlbnRpZnlfbnMoKSBvcgo+IG52bWVfaWRlbnRp
ZnlfbnNfZGVzY3MoKS4gVGhpcyB3YXMgdGhlIG9yaWdpbmFsIGlzc3VlLgo+IAo+Pj4gWWVhLCB0
aGlzIHNob3VsZCBkbyB0aGUgdHJpY2sgSSBndWVzczoKPj4+IC0tIAo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4g
aW5kZXggZmEzMWRhMDc2MmI5Li5kMDE5NzZjOTMxNjAgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMKPj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4g
QEAgLTM0MjgsNyArMzQyOCw4IEBAIHN0YXRpYyB2b2lkIG52bWVfdmFsaWRhdGVfbnMoc3RydWN0
IG52bWVfY3RybAo+Pj4gKmN0cmwsIHVuc2lnbmVkIG5zaWQpCj4+Pgo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgIG5zID0gbnZtZV9maW5kX2dldF9ucyhjdHJsLCBuc2lkKTsKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAobnMpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChu
cy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spKQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgKG5zLT5kaXNrICYmIGN0cmwtPnN0YXRlID09IE5WTUVfQ1RSTF9M
SVZFICYmCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldmFsaWRh
dGVfZGlzayhucy0+ZGlzaykKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIG52bWVfbnNfcmVtb3ZlKG5zKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbnZtZV9wdXRfbnMobnMpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IH0gZWxzZQo+Pgo+PiBJZiBSRVNFVCBpcyB0cmlnZ2VyZWQganVzdCBpbnNpZGUgcmV2YWxpZGF0
ZV9kaXNrKCksIGFuZCBub3QgZG9uZSBhZnRlcgo+PiByZXZhbGlkYXRlX2Rpc2soKSByZXR1cm5z
LMKgIHRoZXJlIGlzIHN0aWxsIHJhY2UgYmV0d2VlbiByZXNldCBhbmQgc2Nhbgo+PiB3b3JrLgo+
Pgo+IAo+IFlvdSBhcmUgY29ycmVjdCwgdGhpcyB3YXMgd2h5IEkgaGFkIHRoZSBjdHJsLT5zdGF0
ZSBjaGVjayBhZnRlcgo+IHJldmFsaWRhdGVfZGlzayBzbyBpZiBpdCBmYWlsZWQgYmVjYXVzZSB3
ZSBhcmUgaW4gYSByZXNldCB3ZSBzaG91bGQKPiBub3QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UuCj4g
Cj4gV2UgbmVlZCBhIHJlbGlhYmxlIHdheSB0byBOT1QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UgaWYg
cmV2YWxpZGF0ZV9kaXNrCj4gZmFpbGVkIGJlY2F1c2UgdGhlIGNvbnRyb2xsZXIgaXMgcmVzZXR0
aW5nIGFuZCB3ZSBkb24ndCBoYXZlIGEgY2hhbm5lbAo+IHRvIHRoZSBjb250cm9sbGVyIGF0IHRo
aXMgdmVyeSBtb21lbnQuLi4KPiAKQSBzaW1pbGFyIHRoaW5nIGlzIHRydWUgZm9yIHRoZSAnbnNf
aGVhZCcgc3RydWN0dXJlOyBJIGNvdWxkIGVhc2lseQplbnZpc2lvbiBhIHNjZW5hcmlvIHdoZXJl
IGFsbCBwYXRocyBhcmUgZHJvcHBlZCAoZHVlIHRvIHJldmFsaWRhdGUKZmFpbHVyZXMgb3Igd2hh
dG5vdCkgd2l0aCBhbGwgY29udHJvbGxlcnMgaW4gcmVzZXQuCkJ1dCBhcyBhbGwgcGF0aHMgYXJl
IGRyb3BwZWQgc3RydWN0IG5zX2hlYWQgZG9lc24ndCBoYXZlIGFueSByZWZlcmVuY2UKdG8gYW55
IG5hbWVzcGFjZXMgKGFuZCBjb25zZXF1ZW50bHksIHRvIGFueSBjb250cm9sbGVyKSwgYW5kIHdp
bGwgYmUKZmFpbGluZyBhbGwgSS9PIGJlZm9yZSBpdHNlbGYgYmVpbmcgcmVtb3ZlZC4KSXQgd2ls
bCBiZSByZS1jcmVhdGVkIGFmdGVyIHJlc2V0dGluZyBjb21wbGV0ZXMgYW5kIGFsbCBuYW1lc3Bh
Y2VzIGFyZQpyZS1hdHRhY2hlZCwgZm9yIHN1cmUsIGJ1dCBpdCBzdGlsbCBtZWFucyB0aGF0IHdl
J3JlIGdldHRpbmcgSS9PIGVycm9ycwp3aGVyZSB3ZSByZWFsbHkgc2hvdWxkbid0LgpPbmUgaXMg
dGVtcHRlZCB0byBzYXkgJ3F1ZXVlX2lmX25vX3BhdGgnIGhlcmUgLi4uCgpDaGVlcnMsCgpIYW5u
ZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3Jr
aW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0Ug
TElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVu
ZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVy
ZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
