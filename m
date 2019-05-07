Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F77416877
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uQEn5h9TqfRdbIuNNJelt+cLw/Ls9rXx8Z3/6KiQ4U0=; b=OqLArONIItrFvxKXRMNemfQ43
	jPqUUL4HoJ7NRPQIF0XKAFA/kz34uo1s1Tkzp08mOEsEig9iup2kepH9pSXQI2oQ1f+wNFmVSqEvk
	KGVytCv0v07ys+4YuIHnL1k/baZPWHIqC3vJnWUp2jYkIlV9dXweY32LtJjALBXmIKLAnml5tXMWK
	VzRol9YZrlzjGPPccswSFgWbEGSNf5owK5EPteKWi9N/oiObaWtMtAkBQ8Dh/awHqhQhedIqo95og
	abrRxP2rkKrKxss/c4PKIpJu2c3rBFqJxqmeut0GyARDUWFQaainFlRzJpU0bT8utbaCurz3YHaCu
	do4B/7MKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Oe-00070H-Bi; Tue, 07 May 2019 16:56:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3OZ-0006zy-3h
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:56:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id n8so8472824plp.10
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=VB0JvX/VkIccfIIeklAV3Ln+PvHtrJDxIQEoVXE9r7Q=;
 b=GHepTT4G0D1CULntBRpCBtD0hNi5mhc4nk4+STUzKskk536ituZLJepMlai2qJJ73u
 EsrHRgsOLw15ARUxGNySCiaPGeShWh/I9oZA7yBJ53Ep9OC3ioHg7KbPvf40X4evGnI9
 CIeyRDMGaQzhIm9/MmutqcVyz+0O6G2woexaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VB0JvX/VkIccfIIeklAV3Ln+PvHtrJDxIQEoVXE9r7Q=;
 b=tR9n2cSMVPv5T2ZwDbpjUpPMunbbZ1PoLJp1ksHu0YKEt9jROGhq+/arSNTurptr0x
 nqdDjuG7TdILaBBKRSzrmRNYxnBTO3MGHzcb7pd6SKcLmCXDUFkAzo2EefpS7IF3Nf+t
 AMKLNwPmzMizKJl0tCyX5Lh85bYVnIuBIv1cvYCbV4tBwa3/hJuSmIe4vpjAjb0Fhdmi
 8B06eVj2TL6CtIISpVPMQM8Jtj0Aa59rX54/uwbH0Xzud4+dJnshc1bgg6jy7psX8uVP
 sEVV8vfoH/0y+BBOZ6RHzc75wWPIpxCCJ0hW/MjAHaakjOFvEOHrY/u4bFH02mpYLva3
 u99Q==
X-Gm-Message-State: APjAAAX6SUpvYjf6AoEJq4BYz4zh675jPkVHDz152A5b29vtjM6N76+S
 QGwuH0g0L7L7eJoAQjdnUCx/jA==
X-Google-Smtp-Source: APXvYqy0vp+f1iREEeSpD8wAeqAHv/1fE2NZn2CIOiQFanN888xdcsAf/KbIJFENSGj/qOc3Lirfhw==
X-Received: by 2002:a17:902:363:: with SMTP id
 90mr34168116pld.131.1557248206599; 
 Tue, 07 May 2019 09:56:46 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id v12sm17472047pfm.186.2019.05.07.09.56.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 09:56:46 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: Hannes Reinecke <hare@suse.de>, James Smart <jsmart2021@gmail.com>,
 linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
Date: Tue, 7 May 2019 09:56:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095647_151888_6962AA7C 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS83LzIwMTkgMTI6MTMgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPiBPbiA1LzQvMTkg
MjowNCBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4+IFRvIHN1cHBvcnQgZGlzY292ZXJ5IChjb25u
ZWN0L2Nvbm5lY3QtYWxsKSB0byBvcGVyYXRlIGFnYWluc3QgYQo+PiBwZXJzaXN0ZW50IGRpc2Nv
dmVyeSBjb250cm9sbGVyLCBsZXQgdGhlIGRpc2NvdmVyeSBjb250cm9sbGVyIHRvCj4+IGJlIHNw
ZWNpZmllZCBieSBpdHMgZGV2aWNlIG5vZGUgbmFtZSByYXRoZXIgdGhhbiBuZXcgY29ubmVjdGlv
bgo+PiBhdHRyaWJ1dGVzLgo+Pgo+PiBBbHNvIGNlbnRyYWxpemUgZXh0cmFjdGlvbiBvZiBjb250
cm9sbGVyIGluc3RhbmNlIGZyb20gdGhlIGNvbnRyb2xsZXIKPj4gbmFtZSB0byBhIGNvbW1vbiBo
ZWxwZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcu
bWU+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4K
Pj4gLS0tCj4+IFBhdGNoIG9yaWdpbmF0ZWQgZnJvbSBTYWdpIGluIGFuIFJGQwo+PiBmaXggbWVy
Z2UgaXNzdWUKPj4gZml4IGNvbnRvbGxlci0+Y29udHJvbGxlcgo+PiBhZGQgY2ZnLmRldmljZSBj
aGVjayBmb3IgIm5vbmUiCj4+IC0tLQo+PiDCoCBmYWJyaWNzLmMgfCAzNSArKysrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Cj4gQWN0dWFsbHksIEkgd291bGQgcmF0aGVyIHNjYW4g
ZXhpc3RpbmcgY29udHJvbGxlcnMsIGFuZCB1c2UgdGhlIGZpcnN0IAo+IG9uZSB0aGF0IG1hdGNo
ZXMgdGhlIGFyZ3VtZW50cy4KPiBXaXRoIHRoZSBjdXJyZW50IGRlc2lnbiB3ZSB3b3VsZCBoYXZl
IGRpZmZlcmVudCBjYWxsaW5nIHNlcXVlbmNlcywgCj4gZGVwZW5kaW5nIG9uIHdoZXRoZXIgaXQn
cyB0aGUgZmlyc3QgY2FsbCAod2hpY2ggY3JlYXRlIHRoZSAKPiBjb250cm9sbGVyKSwgb3IgYW55
IHN1YnNlcXVlbnQgY2FsbC4KPiBJZiB3ZSB3ZXJlIGxvb2tpbmcgdXAgdGhlIGV4aXN0aW5nIGNv
bnRyb2xsZXIgZnJvbSB0aGUgYXJndW1lbnRzIHdlIAo+IGNvdWxkIGJlIHVzaW5nIHRoZSBzYW1l
IGNvbW1hbmRsaW5lIHRocm91Z2hvdXQuCj4KCldlbGwsIHRoaXMgaXMgd2hlcmUgd2UncmUgYXQg
b2Rkcy7CoCBXZSBuZWVkIHRvIGRlY2lkZSBpZiB3ZSBzaG91bGQgCmNyZWF0ZSBhbm90aGVyIGZ1
bGwgY29udHJvbGxlciBpbnN0YW5jZSB3aGVuIHRoZSBldmVudCBvY2N1cnMsIHdoaWNoIGlzIAp3
aGF0IEZDIGRvZXMgdG9kYXkgKGNhbiBoYXZlIG11bHRpcGxlIHJ1bm5pbmcgY29uY3VycmVudGx5
KSwgb3Igd2hldGhlciAKd2Ugd2FudCB0byByZXVzZSB0aGUgcGVyc2lzdGVudCBvbmUuIEkgd291
bGQgdGhpbmsgaW1wbGVtZW50ZXJzIG9mIHRoZSAKcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJv
bGxlciB3b3VsZCB3YW50IHlvdSB0byByZXVzZSBpdCBhbmQgbm90IGhhdmUgCnRvIHN1cHBvcnQg
bW9yZSBjb25jdXJyZW50IGRpc2NvdmVyeSBjb250cm9sbGVyIGluc3RhbmNlcy7CoCBUaGUgInJl
dXNlIiAKY2FzZSBpcyB3aHkgcGFzc2luZyB0aGUgLS1kZXZpY2UgYXJnIG1ha2VzIGl0IHZlcnkg
c3RyYWlnaHQgZm9yd2FyZC7CoCBXZSAKY291bGQgYWx3YXlzIGhhdmUgdGhlIHV0aWxpdHkgZ2V0
IHRoZSBhZGRyZXNzaW5nIGluZm8gYW5kIGxvb2sgYXQgCmV4aXN0aW5nIGNvbnRyb2xsZXIgYW5k
IGRlY2lkZSB0byB1c2UgYW4gZXhpc3Rpbmcgb25lIC0gSSBhc3N1bWUgd2UgCndvdWxkIG9ubHkg
c2VsZWN0IHBlcnNpc3RlbnQgb25lcyBpbiBvcmRlciB0byBhdm9pZCBkZWxldGUgcmFjZSAKY29u
ZGl0aW9ucywgYnV0IHNlZW1zIGxpa2UgYSBsb3Qgb2Ygd29yayBmb3Igd2hhdCB0aGUgQUVOIGFs
cmVhZHkgCmtub3dzLsKgIEkgZG8gaGF2ZSBhIGxpdHRsZSBjb25jZXJuIHRoYXQgdGhlcmUncyBh
bHdheXMgYSB3aW5kb3cgZnJvbSAKd2hlbiB0aGUgZXZlbnQgaXMgcG9zdGVkIHRvIHdoZW4gdGhl
IC9kZXYgZGV2aWNlbmFtZSBpcyBvcGVuZWQsIHdoaWNoIAphbGxvd3MgZm9yIHRoZSBkZXZpY2Ug
bmFtZSB0byBiZSB0ZXJtaW5hdGVkIGFuZCBwb3NzaWJseSByZXVzZWQgZm9yIApzb21ldGhpbmcg
ZWxzZSwgYnV0IEkgZ3Vlc3Mgd2UncmUgd2lsbGluZyB0byBsaXZlIHdpdGggdGhpcy4KCkFuZCBh
cyBmb3IgIm5vdCBzY2FubmluZyIgd2hlbiB5b3UgY29ubmVjdCB0byB0aGUgcGVyc2lzdGVudCBk
aXNjb3ZlcnkgCmNvbnRyb2xsZXIsIGFuZCBpbnN0ZWFkIGFjdGluZyBvZmYgb2YgYSBwc2V1ZG8t
QUVOIHBvc3RlZCB0byB1ZGV2IC0gaXQncyAKSSBuaWNlIHByZW1pc2UsIGJ1dCBJJ20gbm90IHN1
cmUgd2hhdCBpdCBidXlzIHlvdS4gQXQgYmVzdCwgaXQncyBhIApkaWZmZXJlbmNlIGluIGhvdyB5
b3UgY29ubmVjdCB0byB0aGUgcGVyc2lzdGVudCBjb250cm9sbGVyIC0gZS5nLiAKIi0tY29ubmVj
dCIgdnMgIi0tY29ubmVjdC1hbGwiLiBHaXZlbiBhbGwgdGhlIGxvZ2ljIGlzIHRoZXJlIGFuZCBw
cmVzZW50IAp3aXRoIGNvbm5lY3QtYWxsLCBJIGRvbid0IGtub3cgd2h5IHlvdSB3b3VsZG4ndCBq
dXN0IHVzZSBpdC7CoCBXZSBjYW4gCmFsd2F5cyBkZWNpZGUgdG8gcG9zdCBhZGRpdGlvbmFsIEFF
TnMgaW4gdGhlIGtlcm5lbCBpZiBuZWVkZWQgKGFuZCB0aGVyZSAKd2lsbCBhbHdheXMgYmUgcmFj
ZXMgb2YgbXVsdGlwbGUgQUVOJ3Mga2lja2luZyBvZmYgbXVsdGlwbGUgcmVzY2FucyAKY29uY3Vy
cmVudGx5KS4KCi0tIGphbWVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
