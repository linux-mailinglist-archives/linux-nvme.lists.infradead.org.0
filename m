Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F2B7F596
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 12:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VfzaouivRwvcDzYkz/z+R4WimWxOQTpCfQh0VL7Y+ew=; b=fxk2oWHAL/m4+n6GxfTFA/0iA
	yEykGsOGqqpqnhlERPEUVaaEVVbJ0aUHaapgwKF3Jxja65Icn08PAbyptZha2+OacMpYSOQHKWeo1
	a6QEuRtNrnvBkpf1sxcKm/nCx4FPic/ixEEG4gVjyjAOvfj5BUPb9zTxTm4WOvGBM3Mt1BnkXn+et
	u1auDvn3ZwCe1PFuHa/I30HQyTJEDeGJwEAgTO0kk2vI0pGBeKwuXPdPd75kSbiXIH+uQbehw5aXc
	HsdYCoY9+LHYlTW3VfSuRxi0TJHVvdFRgQ/F7sahS8xggb1jLLF7iZVUjNNeKwqrPaliC3KhTXYdl
	P3oH9+WqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVEC-0003jj-M6; Fri, 02 Aug 2019 10:56:04 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVE7-0003j9-N3
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 10:56:01 +0000
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1htVE4-0003x1-F7
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 10:55:56 +0000
Received: by mail-pg1-f198.google.com with SMTP id m19so32731048pgv.7
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 03:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1MPznmuXeG7wCRYVL9MHILhgoOzlyVy2wYj+zJGGdEc=;
 b=tZZtBCjo0Az2waTfeX6uvtZqhtbW1GhprMI2MzB1nAkDJnbJ4kbqo2LU/la0lGlnoc
 8XToeDSN8ZpgGBKtrj3rmIS0ovBJ1/lwrZGgU0pWq6vGdsXuGpxx06R7KooYu/OX0S3Y
 YFNrKrEjER5A7rLxKRnxemkDJKAO2xk1RSINgqW93/v9ATSOngoTAkRbnswU8Ptk++mD
 /mEheeeUyEP3GiZl21Ih4FoO5j6RChzdRZsA8gKKo11dVbhkl45Mp0lnHyLxH66wlucj
 AtQDs3MiDMGcrmdaFAaaxhDYTP9my/6gl2jiJwbkgHwaZFbQH8RhC2vQk4MYGEC2vTWh
 QVAA==
X-Gm-Message-State: APjAAAVEnGO2c2riDc+dYVwAdUbkhAUUn75hWhRfOcvXJfTjUKnvTp/I
 xeV00ye5nFAW8TewIL5lFezM35gtrTvZ6QTKjWyF2ZbXJqgMB/C+peILO3mHBs5MJbuwbKWp9cC
 2QzbgZOdhBsqC+ml/v+uaGKjY3DB79ByQiNJ0oP6eD6Nc
X-Received: by 2002:a17:902:b415:: with SMTP id
 x21mr46500523plr.287.1564743355153; 
 Fri, 02 Aug 2019 03:55:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz40WleeKjga141ojL+U69MyrTCqdDvHMDjXpmuv2NM4hZXbSrFoVIxplxH0ns0fxO+M+bimQ==
X-Received: by 2002:a17:902:b415:: with SMTP id
 x21mr46500507plr.287.1564743354817; 
 Fri, 02 Aug 2019 03:55:54 -0700 (PDT)
Received: from 2001-b011-380f-37d3-19b3-1f99-e436-6e66.dynamic-ip6.hinet.net
 (2001-b011-380f-37d3-19b3-1f99-e436-6e66.dynamic-ip6.hinet.net.
 [2001:b011:380f:37d3:19b3:1f99:e436:6e66])
 by smtp.gmail.com with ESMTPSA id j5sm89942159pfi.104.2019.08.02.03.55.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 03:55:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0jmO4FMOVYs62wkvPrUW81scD2H7cJyRc+tfoj+vODVbQ@mail.gmail.com>
Date: Fri, 2 Aug 2019 18:55:51 +0800
Message-Id: <43A8DF53-8463-4314-9E8E-47A7D3C5A709@canonical.com>
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
 <CAJZ5v0jmO4FMOVYs62wkvPrUW81scD2H7cJyRc+tfoj+vODVbQ@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_035559_882045_1C61DA69 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMDY6MjYsIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+
IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgOTowNSBQTSA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5j
b20+IHdyb3RlOgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IEZyb206IFJhZmFl
bCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4KPj4+IFNlbnQ6IFRodXJzZGF5LCBBdWd1
c3QgMSwgMjAxOSAxMjozMCBQTQo+Pj4gVG86IEthaS1IZW5nIEZlbmc7IEtlaXRoIEJ1c2NoOyBM
aW1vbmNpZWxsbywgTWFyaW8KPj4+IENjOiBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7
IFNhZ2kgR3JpbWJlcmc7IGxpbnV4LW52bWU7IExpbnV4ICAKPj4+IFBNOyBMaW51eAo+Pj4gS2Vy
bmVsIE1haWxpbmcgTGlzdDsgUmFqYXQgSmFpbgo+Pj4gU3ViamVjdDogUmU6IFtSZWdyZXNzaW9u
XSBDb21taXQgIm52bWUvcGNpOiBVc2UgaG9zdCBtYW5hZ2VkIHBvd2VyICAKPj4+IHN0YXRlIGZv
cgo+Pj4gc3VzcGVuZCIgaGFzIHByb2JsZW1zCj4+Pgo+Pj4KPj4+IFtFWFRFUk5BTCBFTUFJTF0K
Pj4+Cj4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDExOjA2IEFNIEthaS1IZW5nIEZlbmcKPj4+
IDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Pj4+IGF0IDA2OjMzLCBSYWZh
ZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4+Cj4+Pj4+IE9uIFRo
dSwgQXVnIDEsIDIwMTkgYXQgMTI6MjIgQU0gS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3Jn
PiB3cm90ZToKPj4+Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDExOjI1OjUxUE0gKzAyMDAs
IFJhZmFlbCBKLiBXeXNvY2tpIHdyb3RlOgo+Pj4+Pj4+IEEgY291cGxlIG9mIHJlbWFya3MgaWYg
eW91IHdpbGwuCj4+Pj4+Pj4KPj4+Pj4+PiBGaXJzdCwgd2UgZG9uJ3Qga25vdyB3aGljaCBjYXNl
IGlzIHRoZSBtYWpvcml0eSBhdCB0aGlzIHBvaW50LiAgRm9yCj4+Pj4+Pj4gbm93LCB0aGVyZSBp
cyBvbmUgZXhhbXBsZSBvZiBlYWNoLCBidXQgaXQgbWF5IHZlcnkgd2VsbCB0dXJuIG91dCB0aGF0
Cj4+Pj4+Pj4gdGhlIFNLIEh5bml4IEJDNTAxIGFib3ZlIG5lZWRzIHRvIGJlIHF1aXJrZWQuCj4+
Pj4+Pj4KPj4+Pj4+PiBTZWNvbmQsIHRoZSByZWZlcmVuY2UgaGVyZSByZWFsbHkgaXMgNS4yLCBz
byBpZiB0aGVyZSBhcmUgYW55IHN5c3RlbXMKPj4+Pj4+PiB0aGF0IGFyZSBub3QgYmV0dGVyIG9m
ZiB3aXRoIDUuMy1yYyB0aGFuIHRoZXkgd2VyZSB3aXRoIDUuMiwgd2VsbCwgd2UKPj4+Pj4+PiBo
YXZlIG5vdCBtYWRlIHByb2dyZXNzLiAgSG93ZXZlciwgaWYgdGhlcmUgYXJlIHN5c3RlbXMgdGhh
dCBhcmUgd29yc2UKPj4+Pj4+PiBvZmYgd2l0aCA1LjMsIHRoYXQncyBiYWQuICBJbiB0aGUgZmFj
ZSBvZiB0aGUgbGF0ZXN0IGZpbmRpbmdzIHRoZSAgCj4+Pj4+Pj4gb25seQo+Pj4+Pj4+IHdheSB0
byBhdm9pZCB0aGF0IGlzIHRvIGJlIGJhY2t3YXJkcyBjb21wYXRpYmxlIHdpdGggNS4yIGFuZCB0
aGF0J3MKPj4+Pj4+PiB3aGVyZSBteSBwYXRjaCBpcyBnb2luZy4gIFRoYXQgY2Fubm90IGJlIGFj
aGlldmVkIGJ5IHF1aXJraW5nIGFsbAo+Pj4+Pj4+IGNhc2VzIHRoYXQgYXJlIHJlcG9ydGVkIGFz
ICJiYWQiLCBiZWNhdXNlIHRoZXJlIHN0aWxsIG1heSBiZQo+Pj4+Pj4+IHVucmVwb3J0ZWQgb25l
cy4KPj4+Pj4+Cj4+Pj4+PiBJIGhhdmUgdG8gYWdyZWUuIEkgdGhpbmsgeW91ciBwcm9wb3NhbCBt
YXkgYWxsb3cgUENJIEQzY29sZCwKPj4+Pj4KPj4+Pj4gWWVzLCBpdCBtYXkuCj4+Pj4KPj4+PiBT
b21laG93IHRoZSA5MzgwIHdpdGggVG9zaGliYSBOVk1lIG5ldmVyIGhpdHMgU0xQX1MwIHdpdGgg
b3Igd2l0aG91dAo+Pj4+IFJhZmFlbOKAmXMgcGF0Y2guCj4+Pj4gQnV0IHRoZSDigJxyZWFs4oCd
IHMyaWRsZSBwb3dlciBjb25zdW1wdGlvbiBkb2VzIGltcHJvdmUgd2l0aCB0aGUgcGF0Y2guCj4+
Pgo+Pj4gRG8geW91IG1lYW4gdGhpcyBwYXRjaDoKPj4+Cj4+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1wbS83MEQ1MzZCRS04REM3LTRDQTItODRBOS0KPj4+IEFGQjA2N0JBNTIwRUBj
YW5vbmljYWwuY29tL1QvI200NTZhYTVjNjk5NzNhM2I2OGYyY2RkNDcxM2ExY2U4M2JlNTE0NQo+
Pj4gOGYKPj4+Cj4+PiBvciB0aGUgJHN1YmplY3Qgb25lIHdpdGhvdXQgdGhlIGFib3ZlPwo+Pj4K
Pj4+PiBDYW4gd2UgdXNlIGEgRE1JIGJhc2VkIHF1aXJrIGZvciB0aGlzIHBsYXRmb3JtPyBJdCBz
ZWVtcyBsaWtlIGEgcGxhdGZvcm0KPj4+PiBzcGVjaWZpYyBpc3N1ZS4KPj4+Cj4+PiBXZSBzZWVt
IHRvIHNlZSB0b28gbWFueSAicGxhdGZvcm0tc3BlY2lmaWMgaXNzdWVzIiBoZXJlLiA6LSkKPj4+
Cj4+PiBUbyBtZSwgdGhlIHN0YXR1cyBxdW8gKGllLiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikg
aXMgbm90IGRlZmVuc2libGUuCj4+PiBTb21ldGhpbmcgbmVlZHMgdG8gYmUgZG9uZSB0byBpbXBy
b3ZlIHRoZSBzaXR1YXRpb24uCj4+Cj4+IFJhZmFlbCwgd291bGQgaXQgYmUgcG9zc2libGUgdG8g
dHJ5IHBvcHBpbmcgb3V0IFBDNDAxIGZyb20gdGhlIDkzODAgYW5kICAKPj4gaW50byBhIDkzNjAg
dG8KPj4gY29uZmlybSB0aGVyZSBhY3R1YWxseSBiZWluZyBhIHBsYXRmb3JtIGltcGFjdCBvciBu
b3Q/Cj4KPiBOb3QgcmVhbGx5LCBzb3JyeS4KPgo+PiBJIHdhcyBob3BpbmcgdG8gaGF2ZSBzb21l
dGhpbmcgdXNlZnVsIGZyb20gSHluaXggYnkgbm93IGJlZm9yZSAgCj4+IHJlc3BvbmRpbmcsIGJ1
dCBvaCB3ZWxsLgo+Pgo+PiBJbiB0ZXJtcyBvZiB3aGF0IGlzIHRoZSBtYWpvcml0eSwgSSBkbyBr
bm93IHRoYXQgYmV0d2VlbiBmb2xrcyBhdCBEZWxsLCAgCj4+IEdvb2dsZSwgQ29tcGFsLAo+PiBX
aXN0cm9uLCBDYW5vbmljYWwsIE1pY3JvbiwgSHluaXgsIFRvc2hpYmEsIExpdGVPbiwgYW5kIFdl
c3Rlcm4gRGlnaXRhbCAgCj4+IHdlIHRlc3RlZCBhIHdpZGUKPj4gdmFyaWV0eSBvZiBTU0RzIHdp
dGggdGhpcyBwYXRjaCBzZXJpZXMuICBJIHdvdWxkIGxpa2UgdG8gdGhpbmsgdGhhdCB0aGV5ICAK
Pj4gYXJlIHJlcHJlc2VudGF0aXZlIG9mCj4+IHdoYXQncyBiZWluZyBtYW51ZmFjdHVyZWQgaW50
byBtYWNoaW5lcyBub3cuCj4KPiBXZWxsLCB3aGF0IGFib3V0IGRyaXZlcyBhbHJlYWR5IGluIHRo
ZSBmaWVsZD8gIE15IGNvbmNlcm4gaXMgbW9zdGx5Cj4gYWJvdXQgdGhvc2Ugb25lcy4KPgo+PiBO
b3RhYmx5IHRoZSBMaXRlT24gQ0wxIHdhcyB0ZXN0ZWQgd2l0aCB0aGUgSE1CIGZsdXNoaW5nIHN1
cHBvcnQgYW5kCj4+IGFuZCBIeW5peCBQQzQwMSB3YXMgdGVzdGVkIHdpdGggb2xkZXIgZmlybXdh
cmUgdGhvdWdoLgo+Pgo+Pj4+Pj4gSW4gd2hpY2ggY2FzZSB3ZSBkbyBuZWVkIHRvIHJlaW50cm9k
dWNlIHRoZSBITUIgaGFuZGxpbmcuCj4+Pj4+Cj4+Pj4+IFJpZ2h0Lgo+Pj4+Cj4+Pj4gVGhlIHBh
dGNoIGFsb25lIGRvZXNu4oCZdCBicmVhayBITUIgVG9zaGliYSBOVk1lIEkgdGVzdGVkLiBCdXQg
SSB0aGluayAgCj4+Pj4gaXTigJlzCj4+Pj4gc3RpbGwgc2FmZXIgdG8gZG8gcHJvcGVyIEhNQiBo
YW5kbGluZy4KPj4+Cj4+PiBXZWxsLCBzbyBjYW4gYW55b25lIHBsZWFzZSBwcm9wb3NlIHNvbWV0
aGluZyBzcGVjaWZpYz8gIExpa2UgYW4KPj4+IGFsdGVybmF0aXZlIHBhdGNoPwo+Pgo+PiBUaGlz
IHdhcyBwcm9wb3NlZCBhIGZldyBkYXlzIGFnbzoKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL2xpbnV4LW52bWUvMjAxOS1KdWx5LzAyNjA1Ni5odG1sCj4+Cj4+IEhvd2V2
ZXIgd2UncmUgc3RpbGwgbm90IHN1cmUgd2h5IGl0IGlzIG5lZWRlZCwgYW5kIGl0IHdpbGwgdGFr
ZSBzb21lICAKPj4gdGltZSB0byBnZXQKPj4gYSBwcm9wZXIgZmFpbHVyZSBhbmFseXNpcyBmcm9t
IExpdGVPbiAgcmVnYXJkaW5nIHRoZSBDTDEuCj4KPiBUaGFua3MgZm9yIHRoZSB1cGRhdGUsIGJ1
dCBJTU8gd2Ugc3RpbGwgbmVlZCB0byBkbyBzb21ldGhpbmcgYmVmb3JlCj4gZmluYWwgNS4zIHdo
aWxlIHRoZSBpbnZlc3RpZ2F0aW9uIGNvbnRpbnVlcy4KPgo+IEhvbmVzdGx5LCBhdCB0aGlzIHBv
aW50IEkgd291bGQgdm90ZSBmb3IgZ29pbmcgYmFjayB0byB0aGUgNS4yCj4gYmVoYXZpb3IgYXQg
bGVhc3QgYnkgZGVmYXVsdCBhbmQgb25seSBydW5uaW5nIHRoZSBuZXcgY29kZSBvbiB0aGUKPiBk
cml2ZXMga25vd24gdG8gcmVxdWlyZSBpdCAoYmVjYXVzZSB0aGV5IHdpbGwgYmxvY2sgUEMxMCBv
dGhlcndpc2UpLgo+Cj4gUG9zc2libHkgKGlkZWFsbHkpIHdpdGggYW4gb3B0aW9uIGZvciB1c2Vy
cyB3aG8gY2FuJ3QgZ2V0IGJleW9uZCBQQzMKPiB0byB0ZXN0IHdoZXRoZXIgb3Igbm90IHRoZSBu
ZXcgY29kZSBoZWxwcyB0aGVtLgoKSSBqdXN0IGZvdW5kIG91dCB0aGF0IHRoZSBYUFMgOTM4MCBh
dCBteSBoYW5kIG5ldmVyIHJlYWNoZXMgU0xQX1MwIGJ1dCBvbmx5ICAKUEMxMC4KVGhpcyBoYXBw
ZW5zIHdpdGggb3Igd2l0aG91dCBwdXR0aW5nIHRoZSBkZXZpY2UgdG8gRDMuCgpLYWktSGVuZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
