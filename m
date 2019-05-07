Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B09915DF1
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 09:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pw3H0Hu/fBG4K626Uym3LNoOGk8SOoUYh67mlK7N3GA=; b=HdCzCaCSTWKfkdhn8stU5DlRa
	opgdG8zRJw+Zb5DacGeqUAUMpYxIw8c1Bq3ypn2s6t2WTxHHsQ+kuFp/a3NWDP417kHnX2icBNHiO
	sJF/gszCROZFi2cwEAZHRD1Tkz5h2PGcXIlcf/gaYuLH63MBY4PjnwAYxyNhM2tVu2s+SpbNdZB2y
	njslgCGdnkuNlOMWTnbrkvokkRLY0SeNXEibTQ1sU+QfWmq4y1J0RtrHgqX3IC2mMp9F8+Z54VB8x
	esFAUJfbtiVhksz+zm+De8kQR1eEvUycmQBj/CURQX41yGAq7pWdrX7q5F1LWZyxz4VIcKjr9Ujmx
	r1T7OowLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuIR-0000Qx-VK; Tue, 07 May 2019 07:13:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuIM-0000Qa-AY
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 07:13:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 13EBDAD93;
 Tue,  7 May 2019 07:13:45 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
Date: Tue, 7 May 2019 09:13:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-4-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001346_512889_6C8E1F70 
X-CRM114-Status: GOOD (  17.71  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS80LzE5IDI6MDQgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IFRvIHN1cHBvcnQgZGlzY292
ZXJ5IChjb25uZWN0L2Nvbm5lY3QtYWxsKSB0byBvcGVyYXRlIGFnYWluc3QgYQo+IHBlcnNpc3Rl
bnQgZGlzY292ZXJ5IGNvbnRyb2xsZXIsIGxldCB0aGUgZGlzY292ZXJ5IGNvbnRyb2xsZXIgdG8K
PiBiZSBzcGVjaWZpZWQgYnkgaXRzIGRldmljZSBub2RlIG5hbWUgcmF0aGVyIHRoYW4gbmV3IGNv
bm5lY3Rpb24KPiBhdHRyaWJ1dGVzLgo+IAo+IEFsc28gY2VudHJhbGl6ZSBleHRyYWN0aW9uIG9m
IGNvbnRyb2xsZXIgaW5zdGFuY2UgZnJvbSB0aGUgY29udHJvbGxlcgo+IG5hbWUgdG8gYSBjb21t
b24gaGVscGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJl
cmcubWU+Cj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgU21hcnQgPGpzbWFydDIwMjFAZ21haWwuY29t
Pgo+IC0tLQo+IFBhdGNoIG9yaWdpbmF0ZWQgZnJvbSBTYWdpIGluIGFuIFJGQwo+IGZpeCBtZXJn
ZSBpc3N1ZQo+IGZpeCBjb250b2xsZXItPmNvbnRyb2xsZXIKPiBhZGQgY2ZnLmRldmljZSBjaGVj
ayBmb3IgIm5vbmUiCj4gLS0tCj4gICBmYWJyaWNzLmMgfCAzNSArKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQo+IApBY3R1YWxseSwgSSB3b3VsZCByYXRoZXIgc2NhbiBleGlzdGluZyBj
b250cm9sbGVycywgYW5kIHVzZSB0aGUgZmlyc3QgCm9uZSB0aGF0IG1hdGNoZXMgdGhlIGFyZ3Vt
ZW50cy4KV2l0aCB0aGUgY3VycmVudCBkZXNpZ24gd2Ugd291bGQgaGF2ZSBkaWZmZXJlbnQgY2Fs
bGluZyBzZXF1ZW5jZXMsIApkZXBlbmRpbmcgb24gd2hldGhlciBpdCdzIHRoZSBmaXJzdCBjYWxs
ICh3aGljaCBjcmVhdGUgdGhlIGNvbnRyb2xsZXIpLCAKb3IgYW55IHN1YnNlcXVlbnQgY2FsbC4K
SWYgd2Ugd2VyZSBsb29raW5nIHVwIHRoZSBleGlzdGluZyBjb250cm9sbGVyIGZyb20gdGhlIGFy
Z3VtZW50cyB3ZSAKY291bGQgYmUgdXNpbmcgdGhlIHNhbWUgY29tbWFuZGxpbmUgdGhyb3VnaG91
dC4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQg
U3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkx
MSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJl
cmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAy
MTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
