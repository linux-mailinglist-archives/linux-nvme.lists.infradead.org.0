Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E667E5A1
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 00:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKnRh51h0wEtoveq42igSz2adr/qCc+K4RRJx0lX7d0=; b=f9m9C9y+d7Jto2
	zm1QTOMUTaMRLJHBf35m2EuinGFfHU/fA2b5Nbl6iJS7FaiIKOQUfgTOvvYAvwAofNkXyQgUhr7Jy
	1hXNpFjXnbS849RKH4jpPs4mZyHupLKLk7elcuf27tTfLa0dWsia6fsdekQl3l1FP9iRDg7dTLM5n
	uA0Ggc6bZwAFDrbcP5TM87L/dqRDd5FMAWD6w0RvCysCArFJ/KC6l7yq1YXfxdRztCsaNpyGYPWNq
	62B4S8uiXvBM0BMdn6Q+uhNqbj/GrrkrEHKoD0RbEkx8QZEMdfgHU1XojmgUCe9Wl2/ApAwjpHS5/
	JX+Evy33t0m27PluEUCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htJXD-0007zt-PV; Thu, 01 Aug 2019 22:26:55 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htJX9-0007zQ-8Z
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 22:26:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id x21so10563965otq.12
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 15:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/U68io9MXJcCtneF4Dy5Tc9iiZd2lS4WQ/pQsjjPPUk=;
 b=JEKy16oXtDfKrC8Jc2RBlSFgJTyAh7oNRWTnv8hJ3PZlny1NyQJGwT/rfFULzuFyQ4
 QqXDIYsKjmNXMWfm4xyR8w0OneINtoGPp/ZBNBX9EXwLpcqESQ/7BDabOitEPV2xv8av
 qqf0OFCZrACsFAW9N/9iOwa/Oc0ljhR5hIotK+B6UHiYxbykqMg1mUq6k+n/53D4TFv/
 Z8fMAkIcZ7d6WKdDgW51sHQcbvAkscfnY/RZnhKkwqV/fWyqSBeWd8gotdUEufniJ1Gw
 ihiEEN8Wcj5WTnJcLx7evxxg3NoUbwlLi8ZsL1HTm/HhjrALprA4UkDnRFE0d/PDhfmD
 vSbg==
X-Gm-Message-State: APjAAAVSY+Sn2Vp5337rwJIujl+z6JJ31GnTzsOJlHPTPjuGq04Zehnz
 2ppNJhOl5lph85UU3sOCxrzpY/iZulABLF73Keg=
X-Google-Smtp-Source: APXvYqwKfesq/lJ1QntLf/AywPMU7Xu149eenGp4PQUGX59bTgHgEKrVLwwsYDzS+tBP1TtegSkQ3C2oL7ye7dFTbo4=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr15307951oto.118.1564698409151; 
 Thu, 01 Aug 2019 15:26:49 -0700 (PDT)
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
 <CAJZ5v0hFYEv_+vFkrxaCn_pNAbyqmO_cLb5GOLNn_xxRRwjh2g@mail.gmail.com>
 <38d4b4b107154454a932781acde0fa5a@AUSX13MPC105.AMER.DELL.COM>
In-Reply-To: <38d4b4b107154454a932781acde0fa5a@AUSX13MPC105.AMER.DELL.COM>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 2 Aug 2019 00:26:37 +0200
Message-ID: <CAJZ5v0jmO4FMOVYs62wkvPrUW81scD2H7cJyRc+tfoj+vODVbQ@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Mario Limonciello <Mario.Limonciello@dell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_152651_306862_0A7743AD 
X-CRM114-Status: GOOD (  31.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCA5OjA1IFBNIDxNYXJpby5MaW1vbmNpZWxsb0BkZWxsLmNv
bT4gd3JvdGU6Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBSYWZh
ZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+Cj4gPiBTZW50OiBUaHVyc2RheSwgQXVn
dXN0IDEsIDIwMTkgMTI6MzAgUE0KPiA+IFRvOiBLYWktSGVuZyBGZW5nOyBLZWl0aCBCdXNjaDsg
TGltb25jaWVsbG8sIE1hcmlvCj4gPiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2ln
OyBTYWdpIEdyaW1iZXJnOyBsaW51eC1udm1lOyBMaW51eCBQTTsgTGludXgKPiA+IEtlcm5lbCBN
YWlsaW5nIExpc3Q7IFJhamF0IEphaW4KPiA+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gQ29t
bWl0ICJudm1lL3BjaTogVXNlIGhvc3QgbWFuYWdlZCBwb3dlciBzdGF0ZSBmb3IKPiA+IHN1c3Bl
bmQiIGhhcyBwcm9ibGVtcwo+ID4KPiA+Cj4gPiBbRVhURVJOQUwgRU1BSUxdCj4gPgo+ID4gT24g
VGh1LCBBdWcgMSwgMjAxOSBhdCAxMTowNiBBTSBLYWktSGVuZyBGZW5nCj4gPiA8a2FpLmhlbmcu
ZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gYXQgMDY6MzMsIFJhZmFlbCBK
LiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gT24gVGh1
LCBBdWcgMSwgMjAxOSBhdCAxMjoyMiBBTSBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+
IHdyb3RlOgo+ID4gPiA+PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAxMToyNTo1MVBNICswMjAw
LCBSYWZhZWwgSi4gV3lzb2NraSB3cm90ZToKPiA+ID4gPj4+IEEgY291cGxlIG9mIHJlbWFya3Mg
aWYgeW91IHdpbGwuCj4gPiA+ID4+Pgo+ID4gPiA+Pj4gRmlyc3QsIHdlIGRvbid0IGtub3cgd2hp
Y2ggY2FzZSBpcyB0aGUgbWFqb3JpdHkgYXQgdGhpcyBwb2ludC4gIEZvcgo+ID4gPiA+Pj4gbm93
LCB0aGVyZSBpcyBvbmUgZXhhbXBsZSBvZiBlYWNoLCBidXQgaXQgbWF5IHZlcnkgd2VsbCB0dXJu
IG91dCB0aGF0Cj4gPiA+ID4+PiB0aGUgU0sgSHluaXggQkM1MDEgYWJvdmUgbmVlZHMgdG8gYmUg
cXVpcmtlZC4KPiA+ID4gPj4+Cj4gPiA+ID4+PiBTZWNvbmQsIHRoZSByZWZlcmVuY2UgaGVyZSBy
ZWFsbHkgaXMgNS4yLCBzbyBpZiB0aGVyZSBhcmUgYW55IHN5c3RlbXMKPiA+ID4gPj4+IHRoYXQg
YXJlIG5vdCBiZXR0ZXIgb2ZmIHdpdGggNS4zLXJjIHRoYW4gdGhleSB3ZXJlIHdpdGggNS4yLCB3
ZWxsLCB3ZQo+ID4gPiA+Pj4gaGF2ZSBub3QgbWFkZSBwcm9ncmVzcy4gIEhvd2V2ZXIsIGlmIHRo
ZXJlIGFyZSBzeXN0ZW1zIHRoYXQgYXJlIHdvcnNlCj4gPiA+ID4+PiBvZmYgd2l0aCA1LjMsIHRo
YXQncyBiYWQuICBJbiB0aGUgZmFjZSBvZiB0aGUgbGF0ZXN0IGZpbmRpbmdzIHRoZSBvbmx5Cj4g
PiA+ID4+PiB3YXkgdG8gYXZvaWQgdGhhdCBpcyB0byBiZSBiYWNrd2FyZHMgY29tcGF0aWJsZSB3
aXRoIDUuMiBhbmQgdGhhdCdzCj4gPiA+ID4+PiB3aGVyZSBteSBwYXRjaCBpcyBnb2luZy4gIFRo
YXQgY2Fubm90IGJlIGFjaGlldmVkIGJ5IHF1aXJraW5nIGFsbAo+ID4gPiA+Pj4gY2FzZXMgdGhh
dCBhcmUgcmVwb3J0ZWQgYXMgImJhZCIsIGJlY2F1c2UgdGhlcmUgc3RpbGwgbWF5IGJlCj4gPiA+
ID4+PiB1bnJlcG9ydGVkIG9uZXMuCj4gPiA+ID4+Cj4gPiA+ID4+IEkgaGF2ZSB0byBhZ3JlZS4g
SSB0aGluayB5b3VyIHByb3Bvc2FsIG1heSBhbGxvdyBQQ0kgRDNjb2xkLAo+ID4gPiA+Cj4gPiA+
ID4gWWVzLCBpdCBtYXkuCj4gPiA+Cj4gPiA+IFNvbWVob3cgdGhlIDkzODAgd2l0aCBUb3NoaWJh
IE5WTWUgbmV2ZXIgaGl0cyBTTFBfUzAgd2l0aCBvciB3aXRob3V0Cj4gPiA+IFJhZmFlbOKAmXMg
cGF0Y2guCj4gPiA+IEJ1dCB0aGUg4oCccmVhbOKAnSBzMmlkbGUgcG93ZXIgY29uc3VtcHRpb24g
ZG9lcyBpbXByb3ZlIHdpdGggdGhlIHBhdGNoLgo+ID4KPiA+IERvIHlvdSBtZWFuIHRoaXMgcGF0
Y2g6Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcG0vNzBENTM2QkUtOERD
Ny00Q0EyLTg0QTktCj4gPiBBRkIwNjdCQTUyMEVAY2Fub25pY2FsLmNvbS9ULyNtNDU2YWE1YzY5
OTczYTNiNjhmMmNkZDQ3MTNhMWNlODNiZTUxNDUKPiA+IDhmCj4gPgo+ID4gb3IgdGhlICRzdWJq
ZWN0IG9uZSB3aXRob3V0IHRoZSBhYm92ZT8KPiA+Cj4gPiA+IENhbiB3ZSB1c2UgYSBETUkgYmFz
ZWQgcXVpcmsgZm9yIHRoaXMgcGxhdGZvcm0/IEl0IHNlZW1zIGxpa2UgYSBwbGF0Zm9ybQo+ID4g
PiBzcGVjaWZpYyBpc3N1ZS4KPiA+Cj4gPiBXZSBzZWVtIHRvIHNlZSB0b28gbWFueSAicGxhdGZv
cm0tc3BlY2lmaWMgaXNzdWVzIiBoZXJlLiA6LSkKPiA+Cj4gPiBUbyBtZSwgdGhlIHN0YXR1cyBx
dW8gKGllLiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikgaXMgbm90IGRlZmVuc2libGUuCj4gPiBT
b21ldGhpbmcgbmVlZHMgdG8gYmUgZG9uZSB0byBpbXByb3ZlIHRoZSBzaXR1YXRpb24uCj4KPiBS
YWZhZWwsIHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIHRyeSBwb3BwaW5nIG91dCBQQzQwMSBmcm9t
IHRoZSA5MzgwIGFuZCBpbnRvIGEgOTM2MCB0bwo+IGNvbmZpcm0gdGhlcmUgYWN0dWFsbHkgYmVp
bmcgYSBwbGF0Zm9ybSBpbXBhY3Qgb3Igbm90PwoKTm90IHJlYWxseSwgc29ycnkuCgo+IEkgd2Fz
IGhvcGluZyB0byBoYXZlIHNvbWV0aGluZyB1c2VmdWwgZnJvbSBIeW5peCBieSBub3cgYmVmb3Jl
IHJlc3BvbmRpbmcsIGJ1dCBvaCB3ZWxsLgo+Cj4gSW4gdGVybXMgb2Ygd2hhdCBpcyB0aGUgbWFq
b3JpdHksIEkgZG8ga25vdyB0aGF0IGJldHdlZW4gZm9sa3MgYXQgRGVsbCwgR29vZ2xlLCBDb21w
YWwsCj4gV2lzdHJvbiwgQ2Fub25pY2FsLCBNaWNyb24sIEh5bml4LCBUb3NoaWJhLCBMaXRlT24s
IGFuZCBXZXN0ZXJuIERpZ2l0YWwgd2UgdGVzdGVkIGEgd2lkZQo+IHZhcmlldHkgb2YgU1NEcyB3
aXRoIHRoaXMgcGF0Y2ggc2VyaWVzLiAgSSB3b3VsZCBsaWtlIHRvIHRoaW5rIHRoYXQgdGhleSBh
cmUgcmVwcmVzZW50YXRpdmUgb2YKPiB3aGF0J3MgYmVpbmcgbWFudWZhY3R1cmVkIGludG8gbWFj
aGluZXMgbm93LgoKV2VsbCwgd2hhdCBhYm91dCBkcml2ZXMgYWxyZWFkeSBpbiB0aGUgZmllbGQ/
ICBNeSBjb25jZXJuIGlzIG1vc3RseQphYm91dCB0aG9zZSBvbmVzLgoKPiBOb3RhYmx5IHRoZSBM
aXRlT24gQ0wxIHdhcyB0ZXN0ZWQgd2l0aCB0aGUgSE1CIGZsdXNoaW5nIHN1cHBvcnQgYW5kCj4g
YW5kIEh5bml4IFBDNDAxIHdhcyB0ZXN0ZWQgd2l0aCBvbGRlciBmaXJtd2FyZSB0aG91Z2guCj4K
PiA+Cj4gPiA+ID4KPiA+ID4gPj4gSW4gd2hpY2ggY2FzZSB3ZSBkbyBuZWVkIHRvIHJlaW50cm9k
dWNlIHRoZSBITUIgaGFuZGxpbmcuCj4gPiA+ID4KPiA+ID4gPiBSaWdodC4KPiA+ID4KPiA+ID4g
VGhlIHBhdGNoIGFsb25lIGRvZXNu4oCZdCBicmVhayBITUIgVG9zaGliYSBOVk1lIEkgdGVzdGVk
LiBCdXQgSSB0aGluayBpdOKAmXMKPiA+ID4gc3RpbGwgc2FmZXIgdG8gZG8gcHJvcGVyIEhNQiBo
YW5kbGluZy4KPiA+Cj4gPiBXZWxsLCBzbyBjYW4gYW55b25lIHBsZWFzZSBwcm9wb3NlIHNvbWV0
aGluZyBzcGVjaWZpYz8gIExpa2UgYW4KPiA+IGFsdGVybmF0aXZlIHBhdGNoPwo+Cj4gVGhpcyB3
YXMgcHJvcG9zZWQgYSBmZXcgZGF5cyBhZ286Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
cGlwZXJtYWlsL2xpbnV4LW52bWUvMjAxOS1KdWx5LzAyNjA1Ni5odG1sCj4KPiBIb3dldmVyIHdl
J3JlIHN0aWxsIG5vdCBzdXJlIHdoeSBpdCBpcyBuZWVkZWQsIGFuZCBpdCB3aWxsIHRha2Ugc29t
ZSB0aW1lIHRvIGdldAo+IGEgcHJvcGVyIGZhaWx1cmUgYW5hbHlzaXMgZnJvbSBMaXRlT24gIHJl
Z2FyZGluZyB0aGUgQ0wxLgoKVGhhbmtzIGZvciB0aGUgdXBkYXRlLCBidXQgSU1PIHdlIHN0aWxs
IG5lZWQgdG8gZG8gc29tZXRoaW5nIGJlZm9yZQpmaW5hbCA1LjMgd2hpbGUgdGhlIGludmVzdGln
YXRpb24gY29udGludWVzLgoKSG9uZXN0bHksIGF0IHRoaXMgcG9pbnQgSSB3b3VsZCB2b3RlIGZv
ciBnb2luZyBiYWNrIHRvIHRoZSA1LjIKYmVoYXZpb3IgYXQgbGVhc3QgYnkgZGVmYXVsdCBhbmQg
b25seSBydW5uaW5nIHRoZSBuZXcgY29kZSBvbiB0aGUKZHJpdmVzIGtub3duIHRvIHJlcXVpcmUg
aXQgKGJlY2F1c2UgdGhleSB3aWxsIGJsb2NrIFBDMTAgb3RoZXJ3aXNlKS4KClBvc3NpYmx5IChp
ZGVhbGx5KSB3aXRoIGFuIG9wdGlvbiBmb3IgdXNlcnMgd2hvIGNhbid0IGdldCBiZXlvbmQgUEMz
CnRvIHRlc3Qgd2hldGhlciBvciBub3QgdGhlIG5ldyBjb2RlIGhlbHBzIHRoZW0uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
