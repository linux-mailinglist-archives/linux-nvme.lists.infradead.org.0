Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ABD10E95
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 23:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y7yEb/Duo5cweb4OlN8dz/77Q/4GE76SU9PARC/NczA=; b=KKv9jaLVcrX8JzdWpTYgMPf2U
	s8+5MkGmrl020nKOMxE84jxqjURJTafgHnfhDeTaH95CatFZB69cCFFRcE2YrLDXQmzLhywL1qqLV
	ioGF0fIkN+sXRITzoGeSn7cxNBBjNIBUg3wQ5t6aatDh6DVOzM6igznGvTxsN4qALNUUbQOglB2EE
	dr8iIOQNrQeflZO8mKjhRACIHJ4zFxKvRvacEKa1ntf/GyzqoLdywfPPYgRJNLIVzpawt9MAQNiZD
	xjj+i6wcVHtkYhFrif02kOlecU3l2iEyRpQGTxBr83KeaPHdKGzDC8OtFL6Zf9LIgiktszo0vKFYY
	lwerCAT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwpL-0007Zs-Ji; Wed, 01 May 2019 21:31:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwpH-0007ZP-0s
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 21:31:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id w20so19908plq.3
 for <linux-nvme@lists.infradead.org>; Wed, 01 May 2019 14:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=IULvJHFFpOO+Q5heBM7q0RdaMUPazdrlh71vn7sPUnw=;
 b=A/lRky+kGFosJ13fVVsr1OpZqOZSd7g0a/cYk7e9LhVfU39DvSmdCHvVbHuDte9kBB
 iC4uwHkqEBIaPolONI1Ca3UAYTFF1PuJnKanlXpqtYp5G99sFP7LJLTyNwCAOSzRja8C
 cRQPmnXrevEH1OHtpgKeynEa92SYzwm5lK+MA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=IULvJHFFpOO+Q5heBM7q0RdaMUPazdrlh71vn7sPUnw=;
 b=XRSb2ZNN/g6Hy7uocVpBWY/FaP35bYrbCnDd5jY8Jl5P3yPp2gVbbhThZy+/ppXdLT
 IATZg4d5YHL19Dp2khZS6h2bphN9gUu6RdbaexK9M4S6t07EAoPd9697A8C74y4uUz3V
 HLsbmhWtcj9XaxAcN3NMOia5bSb2wxPNOY9d/n5ZYe9pSfO8VLJMnCbvllWhc1L+me/e
 OMSgKFsOfWe9qagKR0Ov/c1ECZ3AQji2v/3E0zlssOpG6m0n/cFAYf387GVN8B1428S8
 Jeb4Dicm2xz6e54dTSSrwOFPpjV5EdwKCEhtcEDq31eFO3cTjLFQAZI8b0OyClIluJVn
 EJDA==
X-Gm-Message-State: APjAAAXoT3EnmwBIV5NGU7W/vHTwzICBgKbDuChs/FKdPhr1vlx8mR/F
 YbN90SdR0gD2yPMERm82Y+/ZoaVSM4c=
X-Google-Smtp-Source: APXvYqyOHIQJRlUHXXSeI1nG6dCIlnLhR8Vhapd0qxA0+6uXi66uzpQ058yMswlzHqlCta5bwQZg9w==
X-Received: by 2002:a17:902:2:: with SMTP id 2mr80155224pla.61.1556746296808; 
 Wed, 01 May 2019 14:31:36 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id z124sm44510111pfz.116.2019.05.01.14.31.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 14:31:35 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
From: James Smart <james.smart@broadcom.com>
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <b9363689-6c3e-da34-8b17-f1f320cfbd70@broadcom.com>
Message-ID: <6ff91824-3772-c2f8-3548-766f91041bf1@broadcom.com>
Date: Wed, 1 May 2019 14:31:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b9363689-6c3e-da34-8b17-f1f320cfbd70@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_143139_074961_7D67F9AE 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzEvMjAxOSAyOjIzIFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPgo+Cj4gT24gNC8yOS8y
MDE5IDM6NTMgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4+IEludHJvZHVjZSAvZXRjL252bWUv
ZGVmYXJncy5jb25mIHdoZXJlIHdlIGFsbG93IHRoZSB1c2VyIHRvCj4+IHNwZWNpZnkgY29ubmVj
dC9kaXNjb3ZlciBwYXJhbWV0ZXJzIG9uY2UgYW5kIG5vdCBmb3IgZXZlcnkKPj4gY29udHJvbGxl
ci4gVGhlIGNsaSB3aWxsIGFsd2F5cyBpbmdlc3QgdGhlIGNvbnRlbnQgb2YgdGhpcwo+PiBmaWxl
IGJlZm9yZSBwYXJzaW5nIGNtZGxpbmUgYXJncyBzdWNoIHRoYXQgdGhlIHVzZXIgY2FuCj4+IG92
ZXJyaWRlIHRoZW0uCj4+Cj4+IFRoZSBmb3JtYXQgaXMgc2ltcGx5IHdyaXRpbmcgdGhlIGFyZ3Vt
ZW50cyBpbnRvIHRoZSBmaWxlIGFzCj4+IGlmIHRoZXkgd2VyZSBhcHBlbmRlZCB0byB0aGUgZXhl
Y3V0aW9uIGNvbW1hbmQuCj4+Cj4+IEFsc28sIHByb3Blcmx5IGluc3RhbGwgdGhpcyBmaWxlIHdp
dGggc29tZSBtaW5pbWFsIGRvY3VtZW50YXRpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhZ2kg
R3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4+IC0tLQo+PiBUaGlzIHdhcyByYWlzZWQgYmVm
b3JlIGluIHRoZSBwYXN0IHRoYXQgd2UgZG9uJ3QgaGF2ZSBzb21lIHBsYWNlCj4+IHRvIHN0b3Jl
IGRlZmF1bHQgY29ubmVjdCBhcmdzLgo+Pgo+PiBGb3IgZXhhbXBsZSwgd2hlbiBoYW5kbGluZyBh
dXRvbWF0aWMgZGlzY292ZXJ5IGNoYW5nZSBsb2cgZXZlbnRzCj4+IHRoaXMgY2FuIGJlIGEgd2F5
IGZvciB0aGUgdXNlciB0byBzZXQgZ2xvYmFsIGRlZmF1bHQgYXJndW1lbnRzLgo+Pgo+PiBGZWVk
YmFjayBpcyB3ZWxjb21lLgo+Pgo+PiDCoCBNYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDMgKysrCj4+IMKgIGV0Yy9kZWZhcmdzLmNvbmYuaW4gfMKgIDUgKysrKwo+PiDCoCBmYWJy
aWNzLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDYzICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+PiDCoCBudm1lLnNwZWMuaW7CoMKgwqDCoMKgwqDCoCB8wqAg
MSArCj4+IMKgIDQgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVhdGUg
bW9kZSAxMDA2NDQgZXRjL2RlZmFyZ3MuY29uZi5pbgo+Pgo+Pgo+PiBkaWZmIC0tZ2l0IGEvZXRj
L2RlZmFyZ3MuY29uZi5pbiBiL2V0Yy9kZWZhcmdzLmNvbmYuaW4KPj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lOTExMDZiZjViYmYKPj4gLS0tIC9kZXYvbnVs
bAo+PiArKysgYi9ldGMvZGVmYXJncy5jb25mLmluCj4+IEBAIC0wLDAgKzEsNSBAQAo+PiArIyBV
c2VkIGZvciBleHRyYWN0aW5nIGRlZmF1bHQgY29udHJvbGxlciBjb25uZWN0IHBhcmFtZXRlcnMK
Pj4gKyMKPj4gKyMgRXhhbXBsZToKPj4gKyMgLS1rZWVwLWFsaXZlLXRtbz08eD4gLS1yZWNvbm5l
Y3QtZGVsYXk9PHk+IC0tY3RybC1sb3NzLXRtbz08ej4gCj4+IC0tbnItaW8tcXVldWVzPTx1Pgo+
PiArIyAtLXF1ZXVlLXNpemU9PHY+Cj4+Cj4KPiBXaGF0IEknZCBsaWtlIHRvIHNlZSBpcyBhIGZp
bGXCoCAobWF5YmUgImNvbm5lY3RhcmdzLmNvbmYiKSB0aGF0IGhhcyBhIAo+IHN5bnRheCBtb3Jl
IGxpa2U6Cj4gPHN1Ym5xbj7CoCA8dHJ0eXBlPsKgIDx0cmFkZHI+wqAgPHRyc3ZjaWQ+IDxob3N0
LXRyYWRkcj7CoCA6wqAgPGFyZyBsaXN0Pgo+Cj4gd2hlcmUgdGhlIGZpcnN0IDUgdGhpbmdzLCBh
bGwgYWRkcmVzc2luZyBjb21wb25lbnRzIGZvciB0aGUgY29ubmVjdCwgCj4gY2FuIHNwZWNpZnkg
YSBtYXRjaGluZyBwb2xpY3ksIGFuZCBpZiBtYXRjaGVkLCAiYXJnIGxpc3QiIGlzIHRoZW4gCj4g
YXBwbGllZC4gQW4gYWRkcmVzc2luZyBjb21wb25lbnQgY291bGQgYmUgd2lsZGNhcmRlZCwgdGh1
cyBtYXRjaCAKPiBhbnl0aGluZy4KPgo+IFdoZW4gYSBjb25uZWN0IG9yIGNvbm5lY3QtYWxsIHJl
cXVlc3QgaXMgbWFkZSzCoCB0aGUgY2xpIHdvdWxkIHRyeSB0byAKPiBtYXRjaCBlYWNoIGxpbmUs
IGFuZCBpZiBtYXRjaGVkLCBhcHBseSB0aGUgYXJnIGxpc3QuIElmIGFuIGFyZ3VtZW50IAo+IHdh
cyBzZXQgcHJpb3IsIGl0IHdvdWxkIGJlIG92ZXJyaWRkZW4uIFRoZW4sIGNvbW1hbmQgbGluZSBh
cmdzIGNhbiAKPiBvdmVycmlkZSB0aGUgYXJnIGxpc3QgYnVpbHQgdXAgYnkgdGhlIG1hdGNoIGxp
c3QuCj4KPiBUaHVzLCBmb3IgZ2xvYmFsIGRlZmF1bHRzLCB0aGUgb3BlbmluZyBsaW5lIGluIHRo
ZSBmaWxlIGNhbiBiZcKgwqAgIiAqICogCj4gKiAqICogLS1rZWVwLWFsaXZlLXRtbz08eD4gLS1y
ZWNvbm5lY3QtZGVsYXk9PHk+IiBhbmQgYWxsIGNvbm5lY3Rpb24gCj4gYXR0ZW1wdHMgd291bGQg
cmVjZWl2ZSB0aG9zZSBhcmdzLgo+Cj4gV2Ugd291bGQgcHJvYmFibHkgZG8gc29tZSBzcGVjaWFs
IHN5bnRheGVzIG92ZXIgdGltZToKPiBSYXRoZXIgdGhhbiB0aGUgbG9uZyBzdHJpbmcgZm9yIGEg
ZGlzY292ZXJ5IGNvbnRyb2xsZXIgaGF2ZSBhIAo+IHNob3J0aGFuZCBzdHJpbmcgdGhhdCBtZWFu
cyB0aGUgc2FtZS4KPiBEZXZpc2UgYSBzdWJucW4gc3ludGF4IHRoYXQgYWxsb3dzIGEgPHByZWZp
eD4qIC0gc28gdGhhdCBhbGwgbnFucyBmcm9tIAo+IHZlbmRvciB4IHRoYXQgaGFzIHRoZSBwcmVm
aXggY291bGQgYmUgYXBwbGllZCwgYW5kIHNvIG9uLgo+Cj4gLS0gamFtZXMKPgoKSSBkbyByZWFs
aXplIHRoaXMgd291bGQgbWFrZSB1cyBkbyBhIGZpcnN0IHBhc3MgdGhyb3VnaCB0aGUgY21kIGxp
bmUgCmFyZ3MgdG8gZ2V0IHRoZSBhZGRyZXNzaW5nIGNvbXBvbmVudHMuCgotLSBqYW1lcwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
