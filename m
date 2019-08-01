Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06547E11A
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 19:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cY2i3eLMqWlxj7AmO8TR/Tyl3GguLPcazk1njTWN4DE=; b=heSlkgbGGBYKgi
	nnGrvqAvW8Cbir911DGw3HoEhGaK26o5OpXjTfdwhS+HLNqGbKE9L8Zq5BbMctrEtZtG41LQ8zTOs
	DUal8AiYoDqWVAkPEo7Fi9D6lx78GyIc/1PZyrKVdsm0A60Kctninb5dsNKZIW2ljj2QJsdQYNDxI
	cSAtQuDaSejM7fbBmWHAaZCi4OvlY+QFRZAxutaHz+tQk1/ih9u495T563T7yv+UUQa86i6XTSCsQ
	a1szZ9Ebf2DQHzZ+JLTkH4eqgnczexG9jnj0SReKArlz7KgYxYaTtZnaWH7/G68hrerpAVwFX9CDU
	Fj89HE6Fa3h8LXd1be3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEtl-0007B2-Q0; Thu, 01 Aug 2019 17:29:53 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEth-0007A6-4P
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 17:29:50 +0000
Received: by mail-oi1-f195.google.com with SMTP id w79so54638930oif.10
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 10:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FlAECG5/+5coEo/CjVaCFJOXDP9zeTSn6ojRsQSIqyU=;
 b=NDeryJJYN+2IbKbZ3urlnGOHuqvXQm8uLarzFfLDugT1k1G6Nyy1jYiQUNiyKoOBY0
 wKknq0lzUCgIKhUiTLETjNIHkHNzygZMX4TQqFdIyHXxHwgCdImBPGZemWahimvFG3Uu
 wRNjYtMRohPhp9zMAeWM3T1XgbWH5WliNo3EV5bKG3sfW7UQz07Jx7iMF7IadjVO852g
 q2pE1lH6U39hkVeITvenWXdBt5rAKf9QZKAOa11LHSFrrC1Nnsronf4XlFitq+Ri5miP
 LdO4B8sCUecNJVEafTrZ2qroNJqd7NSx6MSGH7U2Mc1ODH+uynQQM614Pjx1JZpE/n4f
 2zZg==
X-Gm-Message-State: APjAAAV4u4ADyn0ChxLdO/qukYJEMYbsIP+tIi4DRf5W/6ZaeAr4lVBH
 MLaCTKOnRzpKTsKyCl7m30zEfzo0VZRQS461HJo=
X-Google-Smtp-Source: APXvYqxaH+sKeRvD+5hyEnyw5rpGmJLEjgUdeKjhvkwhBRYJxDnCZTNH67B7lhnbIPRo89CHiLMxfxZNitO0U7ZpdIg=
X-Received: by 2002:aca:d907:: with SMTP id q7mr62673623oig.68.1564680587738; 
 Thu, 01 Aug 2019 10:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
 <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
 <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
In-Reply-To: <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 1 Aug 2019 19:29:36 +0200
Message-ID: <CAJZ5v0hFYEv_+vFkrxaCn_pNAbyqmO_cLb5GOLNn_xxRRwjh2g@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Keith Busch <kbusch@kernel.org>, 
 Mario Limonciello <Mario.Limonciello@dell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_102949_175784_BF4B7385 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAxMTowNiBBTSBLYWktSGVuZyBGZW5nCjxrYWkuaGVuZy5m
ZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Cj4gYXQgMDY6MzMsIFJhZmFlbCBKLiBXeXNvY2tp
IDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiA+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQg
MTI6MjIgQU0gS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+PiBPbiBX
ZWQsIEp1bCAzMSwgMjAxOSBhdCAxMToyNTo1MVBNICswMjAwLCBSYWZhZWwgSi4gV3lzb2NraSB3
cm90ZToKPiA+Pj4gQSBjb3VwbGUgb2YgcmVtYXJrcyBpZiB5b3Ugd2lsbC4KPiA+Pj4KPiA+Pj4g
Rmlyc3QsIHdlIGRvbid0IGtub3cgd2hpY2ggY2FzZSBpcyB0aGUgbWFqb3JpdHkgYXQgdGhpcyBw
b2ludC4gIEZvcgo+ID4+PiBub3csIHRoZXJlIGlzIG9uZSBleGFtcGxlIG9mIGVhY2gsIGJ1dCBp
dCBtYXkgdmVyeSB3ZWxsIHR1cm4gb3V0IHRoYXQKPiA+Pj4gdGhlIFNLIEh5bml4IEJDNTAxIGFi
b3ZlIG5lZWRzIHRvIGJlIHF1aXJrZWQuCj4gPj4+Cj4gPj4+IFNlY29uZCwgdGhlIHJlZmVyZW5j
ZSBoZXJlIHJlYWxseSBpcyA1LjIsIHNvIGlmIHRoZXJlIGFyZSBhbnkgc3lzdGVtcwo+ID4+PiB0
aGF0IGFyZSBub3QgYmV0dGVyIG9mZiB3aXRoIDUuMy1yYyB0aGFuIHRoZXkgd2VyZSB3aXRoIDUu
Miwgd2VsbCwgd2UKPiA+Pj4gaGF2ZSBub3QgbWFkZSBwcm9ncmVzcy4gIEhvd2V2ZXIsIGlmIHRo
ZXJlIGFyZSBzeXN0ZW1zIHRoYXQgYXJlIHdvcnNlCj4gPj4+IG9mZiB3aXRoIDUuMywgdGhhdCdz
IGJhZC4gIEluIHRoZSBmYWNlIG9mIHRoZSBsYXRlc3QgZmluZGluZ3MgdGhlIG9ubHkKPiA+Pj4g
d2F5IHRvIGF2b2lkIHRoYXQgaXMgdG8gYmUgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCA1LjIg
YW5kIHRoYXQncwo+ID4+PiB3aGVyZSBteSBwYXRjaCBpcyBnb2luZy4gIFRoYXQgY2Fubm90IGJl
IGFjaGlldmVkIGJ5IHF1aXJraW5nIGFsbAo+ID4+PiBjYXNlcyB0aGF0IGFyZSByZXBvcnRlZCBh
cyAiYmFkIiwgYmVjYXVzZSB0aGVyZSBzdGlsbCBtYXkgYmUKPiA+Pj4gdW5yZXBvcnRlZCBvbmVz
Lgo+ID4+Cj4gPj4gSSBoYXZlIHRvIGFncmVlLiBJIHRoaW5rIHlvdXIgcHJvcG9zYWwgbWF5IGFs
bG93IFBDSSBEM2NvbGQsCj4gPgo+ID4gWWVzLCBpdCBtYXkuCj4KPiBTb21laG93IHRoZSA5Mzgw
IHdpdGggVG9zaGliYSBOVk1lIG5ldmVyIGhpdHMgU0xQX1MwIHdpdGggb3Igd2l0aG91dAo+IFJh
ZmFlbOKAmXMgcGF0Y2guCj4gQnV0IHRoZSDigJxyZWFs4oCdIHMyaWRsZSBwb3dlciBjb25zdW1w
dGlvbiBkb2VzIGltcHJvdmUgd2l0aCB0aGUgcGF0Y2guCgpEbyB5b3UgbWVhbiB0aGlzIHBhdGNo
OgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcG0vNzBENTM2QkUtOERDNy00Q0EyLTg0
QTktQUZCMDY3QkE1MjBFQGNhbm9uaWNhbC5jb20vVC8jbTQ1NmFhNWM2OTk3M2EzYjY4ZjJjZGQ0
NzEzYTFjZTgzYmU1MTQ1OGYKCm9yIHRoZSAkc3ViamVjdCBvbmUgd2l0aG91dCB0aGUgYWJvdmU/
Cgo+IENhbiB3ZSB1c2UgYSBETUkgYmFzZWQgcXVpcmsgZm9yIHRoaXMgcGxhdGZvcm0/IEl0IHNl
ZW1zIGxpa2UgYSBwbGF0Zm9ybQo+IHNwZWNpZmljIGlzc3VlLgoKV2Ugc2VlbSB0byBzZWUgdG9v
IG1hbnkgInBsYXRmb3JtLXNwZWNpZmljIGlzc3VlcyIgaGVyZS4gOi0pCgpUbyBtZSwgdGhlIHN0
YXR1cyBxdW8gKGllLiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikgaXMgbm90IGRlZmVuc2libGUu
ClNvbWV0aGluZyBuZWVkcyB0byBiZSBkb25lIHRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbi4KCj4g
Pgo+ID4+IEluIHdoaWNoIGNhc2Ugd2UgZG8gbmVlZCB0byByZWludHJvZHVjZSB0aGUgSE1CIGhh
bmRsaW5nLgo+ID4KPiA+IFJpZ2h0Lgo+Cj4gVGhlIHBhdGNoIGFsb25lIGRvZXNu4oCZdCBicmVh
ayBITUIgVG9zaGliYSBOVk1lIEkgdGVzdGVkLiBCdXQgSSB0aGluayBpdOKAmXMKPiBzdGlsbCBz
YWZlciB0byBkbyBwcm9wZXIgSE1CIGhhbmRsaW5nLgoKV2VsbCwgc28gY2FuIGFueW9uZSBwbGVh
c2UgcHJvcG9zZSBzb21ldGhpbmcgc3BlY2lmaWM/ICBMaWtlIGFuCmFsdGVybmF0aXZlIHBhdGNo
PwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
