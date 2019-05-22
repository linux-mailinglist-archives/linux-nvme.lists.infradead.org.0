Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C863A267B4
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNPEIq4NgiLtfF4eA36s/0i5+BhixWWc2ZFsklj7d0Y=; b=tqbaEkKmll/3DP
	fW9k8rCtjGtPeHyUt/ZGkuv+RxAskhMiYvjCLBuK7mkrSzXc7rwy5sKjdlJHyf7pKD+bzlloX/NhU
	D3S+n41P6VzyAuzWWY1qXDM0sxPgFsDZogrTqD54haKtMd/Er5AsgL8TLCvZfoiOtIzvFBel/2/C5
	uBzFoxICNmuohA6EsL8772yzMZA5rgDUy+NOEEgkyVe1ua6qFz5ApqAqbpQB+5DWofp5c16aO0bMB
	TcO0W9cus76YdZz6gFqmh+wW6GN4Vdfedwd/onWwGnrXxR5YSVYa/GN/lA8aMtD4DntZwY20v07Me
	Vfze7ygb9yZeEoYYsXTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTm8-0003of-L0; Wed, 22 May 2019 16:07:32 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTm3-0003oI-3u
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:07:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 09:07:25 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2019 09:07:24 -0700
Date: Wed, 22 May 2019 10:02:21 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190522160221.GB5393@localhost.localdomain>
References: <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
 <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
 <20190522155253.GA29827@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522155253.GA29827@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_090727_166787_60F66842 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDU6NTI6NTNQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDI6NDc6NTdQTSArMDgwMCwgS2Fp
IEhlbmcgRmVuZyB3cm90ZToKPiA+IEkndmUgZ290IGNvbmZpcm1hdGlvbiBmcm9tIFZlbmRvciwg
ZGlzYWJsaW5nIEhNQiBpc27igJl0IG5lY2Vzc2FyeSB3aGVuIHRoZSAKPiA+IGhvc3Qgc3RheXMg
YXQgRDAsIHdoaWNoIGlzIHdoYXQgd2UgdXNlIGluIFMySS4KPiA+IEnigJl2ZSBkb25lIHNvbWUg
dGVzdGluZyBhbmQgSSBjYW4gY29uZmlybSBTMkkgc3VzcGVuZC9yZXN1bWUgY2FuIHdvcmsgCj4g
PiB3aXRob3V0IGRpc2FibGluZyBITUIuCj4gCj4gR3JlYXQuICBXaG8gaXMgZ29pbmcgdG8gY29v
ayB1cCBhIG5ldyBwYXRjaCB0YWtpbmcgYWxsIHRoZSByZWNlbnQKPiBmaW5kaW5ncyBpbnRvIGFj
Y291bnQ/CgpJJ3ZlIGEgYnJhbmNoIGhlcmUgdGhhdCBJJ2xsIHNlbmQgdG8gdGhlIG1haWxpbmcg
bGlzdCBhZnRlciBzb21lIHRlc3RpbmcKdGhpcyBhZnRlcm5vb24KCiAgaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQva2J1c2NoL2xpbnV4LmdpdC9sb2cvP2g9
bnZtZS1wb3dlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
