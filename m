Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8FD8349B
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 17:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm5cnoy5nHK9NIORAEQ0QYx12Ksd+Nu6LBZPxygZBWc=; b=ldiipqXbAIp0dz
	JzmAHXZS7wLyunNobraDwvMIhArJ95HHmaT97f30M6AxTYsWzbLhguCUEV1lfGoL3+Ik8r83cKfgO
	gc7dCeltrkvl9+7Kac0wiCy30+NIefKGdbj3NpUJjsMH6C/IKZVOJEbtJpYAildc6sk/jZKolQmhO
	RC8rZKvkMu0PQ8GSx6deDReeFfg0OdE4EtRKESPxl0nbecJjx1MtWaaYLuUBKfeLb/SyBPFgPIpD9
	Vwv6IQ7lSAN3vUMZrSpwrOxao3nE4zwiyYs+LWGoTJpUllc2oRnXmE0HGa+SrN1o5xCHJhGGa5WUH
	klATeYiHsiPglQlY5vhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0xV-0007T8-6T; Tue, 06 Aug 2019 15:01:05 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0wm-0006ix-PI
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 15:00:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id r6so93207988oti.3
 for <linux-nvme@lists.infradead.org>; Tue, 06 Aug 2019 08:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RxscOdQ0kyBswnMzdbZHYfByGlVUrX+tfvvqdJiBFoE=;
 b=OWxYHqMoCfuQ+CN09zyFIaXAFrAVKlmEfCsrKUXJPNu/vwoJSp4a6QP8AErr/99lu2
 Vchag/LZfj+BnGcbZcO+1q+wsYPQx4xmQSRR9y5fAm8IIAOs+Ypek+wOW6J4qee4cxMr
 hylR8gruetXa7gG3TMDkQ0pw88PnK578rjraGdwwC/4RaSX8Bz/uUelMDxbOvvL9VdRx
 IjOEd/8LS+zwyCRfjuBA42tab8R6s62kSM+9cl8Ie+3hrAUH+BvO0XMWSaQrlxklh9vi
 ZgyDyARKYeRWi/0iZNp7up1+tVefEHZdb3/z8TDPiyaF4BpdV94izlQQkBFpR2U7Bi/p
 XDtA==
X-Gm-Message-State: APjAAAUhrrBtqlrjQgGXhkYaa/t6MdOYxrhqXtPmIr0jCsjIFjTtqYCd
 UahziOaNfJdqhNEWbF8I19i5h0cZk04FFCIce0U=
X-Google-Smtp-Source: APXvYqx8ItX5xoIIAX4vHz++TW/l+PdKzaANPtE5r8IzO3glW5pLIh9f66W8bKa5i983pNTmH/Pbg6Ga79cH2/85Qks=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr3267007oto.118.1565103618356; 
 Tue, 06 Aug 2019 08:00:18 -0700 (PDT)
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
 <CAJZ5v0jmO4FMOVYs62wkvPrUW81scD2H7cJyRc+tfoj+vODVbQ@mail.gmail.com>
 <43A8DF53-8463-4314-9E8E-47A7D3C5A709@canonical.com>
 <CAJZ5v0ipG-MJjERBL9fjx29QktaYEKSmMCbWiEGPHsbF=Xfxtw@mail.gmail.com>
 <1FA3D56B-80C6-496C-8772-2F773AA8043C@canonical.com>
 <CAJZ5v0g_yAP=zgYDXtJWtwceQp4wWPWFghDDD0opdZ4zT-yo5Q@mail.gmail.com>
 <1d05e26a91f94e5b92eaf5854fa85289@AUSX13MPC105.AMER.DELL.COM>
In-Reply-To: <1d05e26a91f94e5b92eaf5854fa85289@AUSX13MPC105.AMER.DELL.COM>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 6 Aug 2019 17:00:06 +0200
Message-ID: <CAJZ5v0gBCTyRwg0ePHOD4qQvcSwXzHjb5hkswQ7=Ki=gO_nx0A@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Mario Limonciello <Mario.Limonciello@dell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_080021_097220_ECDEF408 
X-CRM114-Status: GOOD (  38.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCA0OjAyIFBNIDxNYXJpby5MaW1vbmNpZWxsb0BkZWxsLmNv
bT4gd3JvdGU6Cj4KPgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTog
UmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPgo+ID4gU2VudDogTW9uZGF5LCBB
dWd1c3QgNSwgMjAxOSA0OjI5IFBNCj4gPiBUbzogS2FpLUhlbmcgRmVuZwo+ID4gQ2M6IFJhZmFl
bCBKLiBXeXNvY2tpOyBMaW1vbmNpZWxsbywgTWFyaW87IEtlaXRoIEJ1c2NoOyBLZWl0aCBCdXNj
aDsgQ2hyaXN0b3BoCj4gPiBIZWxsd2lnOyBTYWdpIEdyaW1iZXJnOyBsaW51eC1udm1lOyBMaW51
eCBQTTsgTGludXggS2VybmVsIE1haWxpbmcgTGlzdDsgUmFqYXQgSmFpbgo+ID4gU3ViamVjdDog
UmU6IFtSZWdyZXNzaW9uXSBDb21taXQgIm52bWUvcGNpOiBVc2UgaG9zdCBtYW5hZ2VkIHBvd2Vy
IHN0YXRlIGZvcgo+ID4gc3VzcGVuZCIgaGFzIHByb2JsZW1zCj4gPgo+ID4KPiA+IFtFWFRFUk5B
TCBFTUFJTF0KPiA+Cj4gPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDk6MTQgUE0gS2FpLUhlbmcg
RmVuZwo+ID4gPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IGF0IDE5OjA0LCBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+
ID4gPgo+ID4gPiA+IE9uIEZyaSwgQXVnIDIsIDIwMTkgYXQgMTI6NTUgUE0gS2FpLUhlbmcgRmVu
Zwo+ID4gPiA+IDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+ID4gPiA+PiBh
dCAwNjoyNiwgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+
ID4gPj4KPiA+ID4gPj4+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgOTowNSBQTSA8TWFyaW8uTGlt
b25jaWVsbG9AZGVsbC5jb20+IHdyb3RlOgo+ID4gPiA+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+ID4gPiA+Pj4+PiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5l
bC5vcmc+Cj4gPiA+ID4+Pj4+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMSwgMjAxOSAxMjozMCBQ
TQo+ID4gPiA+Pj4+PiBUbzogS2FpLUhlbmcgRmVuZzsgS2VpdGggQnVzY2g7IExpbW9uY2llbGxv
LCBNYXJpbwo+ID4gPiA+Pj4+PiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBT
YWdpIEdyaW1iZXJnOyBsaW51eC1udm1lOyBMaW51eAo+ID4gPiA+Pj4+PiBQTTsgTGludXgKPiA+
ID4gPj4+Pj4gS2VybmVsIE1haWxpbmcgTGlzdDsgUmFqYXQgSmFpbgo+ID4gPiA+Pj4+PiBTdWJq
ZWN0OiBSZTogW1JlZ3Jlc3Npb25dIENvbW1pdCAibnZtZS9wY2k6IFVzZSBob3N0IG1hbmFnZWQg
cG93ZXIKPiA+ID4gPj4+Pj4gc3RhdGUgZm9yCj4gPiA+ID4+Pj4+IHN1c3BlbmQiIGhhcyBwcm9i
bGVtcwo+ID4gPiA+Pj4+Pgo+ID4gPiA+Pj4+Pgo+ID4gPiA+Pj4+PiBbRVhURVJOQUwgRU1BSUxd
Cj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTE6MDYgQU0g
S2FpLUhlbmcgRmVuZwo+ID4gPiA+Pj4+PiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3
cm90ZToKPiA+ID4gPj4+Pj4+IGF0IDA2OjMzLCBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtl
cm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+Pj4+Pj4KPiA+ID4gPj4+Pj4+PiBPbiBUaHUsIEF1ZyAx
LCAyMDE5IGF0IDEyOjIyIEFNIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPiA+ID4g
Pj4+Pj4+PiB3cm90ZToKPiA+ID4gPj4+Pj4+Pj4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTE6
MjU6NTFQTSArMDIwMCwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gPiA+ID4+Pj4+Pj4+PiBB
IGNvdXBsZSBvZiByZW1hcmtzIGlmIHlvdSB3aWxsLgo+ID4gPiA+Pj4+Pj4+Pj4KPiA+ID4gPj4+
Pj4+Pj4+IEZpcnN0LCB3ZSBkb24ndCBrbm93IHdoaWNoIGNhc2UgaXMgdGhlIG1ham9yaXR5IGF0
IHRoaXMgcG9pbnQuICBGb3IKPiA+ID4gPj4+Pj4+Pj4+IG5vdywgdGhlcmUgaXMgb25lIGV4YW1w
bGUgb2YgZWFjaCwgYnV0IGl0IG1heSB2ZXJ5IHdlbGwgdHVybiBvdXQKPiA+ID4gPj4+Pj4+Pj4+
IHRoYXQKPiA+ID4gPj4+Pj4+Pj4+IHRoZSBTSyBIeW5peCBCQzUwMSBhYm92ZSBuZWVkcyB0byBi
ZSBxdWlya2VkLgo+ID4gPiA+Pj4+Pj4+Pj4KPiA+ID4gPj4+Pj4+Pj4+IFNlY29uZCwgdGhlIHJl
ZmVyZW5jZSBoZXJlIHJlYWxseSBpcyA1LjIsIHNvIGlmIHRoZXJlIGFyZSBhbnkKPiA+ID4gPj4+
Pj4+Pj4+IHN5c3RlbXMKPiA+ID4gPj4+Pj4+Pj4+IHRoYXQgYXJlIG5vdCBiZXR0ZXIgb2ZmIHdp
dGggNS4zLXJjIHRoYW4gdGhleSB3ZXJlIHdpdGggNS4yLAo+ID4gPiA+Pj4+Pj4+Pj4gd2VsbCwg
d2UKPiA+ID4gPj4+Pj4+Pj4+IGhhdmUgbm90IG1hZGUgcHJvZ3Jlc3MuICBIb3dldmVyLCBpZiB0
aGVyZSBhcmUgc3lzdGVtcyB0aGF0IGFyZQo+ID4gPiA+Pj4+Pj4+Pj4gd29yc2UKPiA+ID4gPj4+
Pj4+Pj4+IG9mZiB3aXRoIDUuMywgdGhhdCdzIGJhZC4gIEluIHRoZSBmYWNlIG9mIHRoZSBsYXRl
c3QgZmluZGluZ3MgdGhlCj4gPiA+ID4+Pj4+Pj4+PiBvbmx5Cj4gPiA+ID4+Pj4+Pj4+PiB3YXkg
dG8gYXZvaWQgdGhhdCBpcyB0byBiZSBiYWNrd2FyZHMgY29tcGF0aWJsZSB3aXRoIDUuMiBhbmQg
dGhhdCdzCj4gPiA+ID4+Pj4+Pj4+PiB3aGVyZSBteSBwYXRjaCBpcyBnb2luZy4gIFRoYXQgY2Fu
bm90IGJlIGFjaGlldmVkIGJ5IHF1aXJraW5nIGFsbAo+ID4gPiA+Pj4+Pj4+Pj4gY2FzZXMgdGhh
dCBhcmUgcmVwb3J0ZWQgYXMgImJhZCIsIGJlY2F1c2UgdGhlcmUgc3RpbGwgbWF5IGJlCj4gPiA+
ID4+Pj4+Pj4+PiB1bnJlcG9ydGVkIG9uZXMuCj4gPiA+ID4+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4+
IEkgaGF2ZSB0byBhZ3JlZS4gSSB0aGluayB5b3VyIHByb3Bvc2FsIG1heSBhbGxvdyBQQ0kgRDNj
b2xkLAo+ID4gPiA+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4gWWVzLCBpdCBtYXkuCj4gPiA+ID4+Pj4+
Pgo+ID4gPiA+Pj4+Pj4gU29tZWhvdyB0aGUgOTM4MCB3aXRoIFRvc2hpYmEgTlZNZSBuZXZlciBo
aXRzIFNMUF9TMCB3aXRoIG9yCj4gPiB3aXRob3V0Cj4gPiA+ID4+Pj4+PiBSYWZhZWzigJlzIHBh
dGNoLgo+ID4gPiA+Pj4+Pj4gQnV0IHRoZSDigJxyZWFs4oCdIHMyaWRsZSBwb3dlciBjb25zdW1w
dGlvbiBkb2VzIGltcHJvdmUgd2l0aCB0aGUgcGF0Y2guCj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+
IERvIHlvdSBtZWFuIHRoaXMgcGF0Y2g6Cj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBtLzcwRDUzNkJFLThEQzctNENBMi04NEE5LQo+ID4gPiA+
Pj4+Pgo+ID4gQUZCMDY3QkE1MjBFQGNhbm9uaWNhbC5jb20vVC8jbTQ1NmFhNWM2OTk3M2EzYjY4
ZjJjZGQ0NzEzYTFjZTgzYmU1MTQ1Cj4gPiA+ID4+Pj4+IDhmCj4gPiA+ID4+Pj4+Cj4gPiA+ID4+
Pj4+IG9yIHRoZSAkc3ViamVjdCBvbmUgd2l0aG91dCB0aGUgYWJvdmU/Cj4gPiA+ID4+Pj4+Cj4g
PiA+ID4+Pj4+PiBDYW4gd2UgdXNlIGEgRE1JIGJhc2VkIHF1aXJrIGZvciB0aGlzIHBsYXRmb3Jt
PyBJdCBzZWVtcyBsaWtlIGEKPiA+ID4gPj4+Pj4+IHBsYXRmb3JtCj4gPiA+ID4+Pj4+PiBzcGVj
aWZpYyBpc3N1ZS4KPiA+ID4gPj4+Pj4KPiA+ID4gPj4+Pj4gV2Ugc2VlbSB0byBzZWUgdG9vIG1h
bnkgInBsYXRmb3JtLXNwZWNpZmljIGlzc3VlcyIgaGVyZS4gOi0pCj4gPiA+ID4+Pj4+Cj4gPiA+
ID4+Pj4+IFRvIG1lLCB0aGUgc3RhdHVzIHF1byAoaWUuIHdoYXQgd2UgaGF2ZSBpbiA1LjMtcmMy
KSBpcyBub3QgZGVmZW5zaWJsZS4KPiA+ID4gPj4+Pj4gU29tZXRoaW5nIG5lZWRzIHRvIGJlIGRv
bmUgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uLgo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4gUmFmYWVs
LCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byB0cnkgcG9wcGluZyBvdXQgUEM0MDEgZnJvbSB0aGUg
OTM4MCBhbmQKPiA+ID4gPj4+PiBpbnRvIGEgOTM2MCB0bwo+ID4gPiA+Pj4+IGNvbmZpcm0gdGhl
cmUgYWN0dWFsbHkgYmVpbmcgYSBwbGF0Zm9ybSBpbXBhY3Qgb3Igbm90Pwo+ID4gPiA+Pj4KPiA+
ID4gPj4+IE5vdCByZWFsbHksIHNvcnJ5Lgo+ID4gPiA+Pj4KPiA+ID4gPj4+PiBJIHdhcyBob3Bp
bmcgdG8gaGF2ZSBzb21ldGhpbmcgdXNlZnVsIGZyb20gSHluaXggYnkgbm93IGJlZm9yZQo+ID4g
PiA+Pj4+IHJlc3BvbmRpbmcsIGJ1dCBvaCB3ZWxsLgo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4gSW4g
dGVybXMgb2Ygd2hhdCBpcyB0aGUgbWFqb3JpdHksIEkgZG8ga25vdyB0aGF0IGJldHdlZW4gZm9s
a3MgYXQgRGVsbCwKPiA+ID4gPj4+PiBHb29nbGUsIENvbXBhbCwKPiA+ID4gPj4+PiBXaXN0cm9u
LCBDYW5vbmljYWwsIE1pY3JvbiwgSHluaXgsIFRvc2hpYmEsIExpdGVPbiwgYW5kIFdlc3Rlcm4g
RGlnaXRhbAo+ID4gPiA+Pj4+IHdlIHRlc3RlZCBhIHdpZGUKPiA+ID4gPj4+PiB2YXJpZXR5IG9m
IFNTRHMgd2l0aCB0aGlzIHBhdGNoIHNlcmllcy4gIEkgd291bGQgbGlrZSB0byB0aGluayB0aGF0
IHRoZXkKPiA+ID4gPj4+PiBhcmUgcmVwcmVzZW50YXRpdmUgb2YKPiA+ID4gPj4+PiB3aGF0J3Mg
YmVpbmcgbWFudWZhY3R1cmVkIGludG8gbWFjaGluZXMgbm93Lgo+ID4gPiA+Pj4KPiA+ID4gPj4+
IFdlbGwsIHdoYXQgYWJvdXQgZHJpdmVzIGFscmVhZHkgaW4gdGhlIGZpZWxkPyAgTXkgY29uY2Vy
biBpcyBtb3N0bHkKPiA+ID4gPj4+IGFib3V0IHRob3NlIG9uZXMuCj4gPiA+ID4+Pgo+ID4gPiA+
Pj4+IE5vdGFibHkgdGhlIExpdGVPbiBDTDEgd2FzIHRlc3RlZCB3aXRoIHRoZSBITUIgZmx1c2hp
bmcgc3VwcG9ydCBhbmQKPiA+ID4gPj4+PiBhbmQgSHluaXggUEM0MDEgd2FzIHRlc3RlZCB3aXRo
IG9sZGVyIGZpcm13YXJlIHRob3VnaC4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+Pj4+PiBJbiB3aGlj
aCBjYXNlIHdlIGRvIG5lZWQgdG8gcmVpbnRyb2R1Y2UgdGhlIEhNQiBoYW5kbGluZy4KPiA+ID4g
Pj4+Pj4+Pgo+ID4gPiA+Pj4+Pj4+IFJpZ2h0Lgo+ID4gPiA+Pj4+Pj4KPiA+ID4gPj4+Pj4+IFRo
ZSBwYXRjaCBhbG9uZSBkb2VzbuKAmXQgYnJlYWsgSE1CIFRvc2hpYmEgTlZNZSBJIHRlc3RlZC4g
QnV0IEkgdGhpbmsKPiA+ID4gPj4+Pj4+IGl04oCZcwo+ID4gPiA+Pj4+Pj4gc3RpbGwgc2FmZXIg
dG8gZG8gcHJvcGVyIEhNQiBoYW5kbGluZy4KPiA+ID4gPj4+Pj4KPiA+ID4gPj4+Pj4gV2VsbCwg
c28gY2FuIGFueW9uZSBwbGVhc2UgcHJvcG9zZSBzb21ldGhpbmcgc3BlY2lmaWM/ICBMaWtlIGFu
Cj4gPiA+ID4+Pj4+IGFsdGVybmF0aXZlIHBhdGNoPwo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4gVGhp
cyB3YXMgcHJvcG9zZWQgYSBmZXcgZGF5cyBhZ286Cj4gPiA+ID4+Pj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LW52bWUvMjAxOS1KdWx5LzAyNjA1Ni5odG1sCj4g
PiA+ID4+Pj4KPiA+ID4gPj4+PiBIb3dldmVyIHdlJ3JlIHN0aWxsIG5vdCBzdXJlIHdoeSBpdCBp
cyBuZWVkZWQsIGFuZCBpdCB3aWxsIHRha2Ugc29tZQo+ID4gPiA+Pj4+IHRpbWUgdG8gZ2V0Cj4g
PiA+ID4+Pj4gYSBwcm9wZXIgZmFpbHVyZSBhbmFseXNpcyBmcm9tIExpdGVPbiAgcmVnYXJkaW5n
IHRoZSBDTDEuCj4gPiA+ID4+Pgo+ID4gPiA+Pj4gVGhhbmtzIGZvciB0aGUgdXBkYXRlLCBidXQg
SU1PIHdlIHN0aWxsIG5lZWQgdG8gZG8gc29tZXRoaW5nIGJlZm9yZQo+ID4gPiA+Pj4gZmluYWwg
NS4zIHdoaWxlIHRoZSBpbnZlc3RpZ2F0aW9uIGNvbnRpbnVlcy4KPiA+ID4gPj4+Cj4gPiA+ID4+
PiBIb25lc3RseSwgYXQgdGhpcyBwb2ludCBJIHdvdWxkIHZvdGUgZm9yIGdvaW5nIGJhY2sgdG8g
dGhlIDUuMgo+ID4gPiA+Pj4gYmVoYXZpb3IgYXQgbGVhc3QgYnkgZGVmYXVsdCBhbmQgb25seSBy
dW5uaW5nIHRoZSBuZXcgY29kZSBvbiB0aGUKPiA+ID4gPj4+IGRyaXZlcyBrbm93biB0byByZXF1
aXJlIGl0IChiZWNhdXNlIHRoZXkgd2lsbCBibG9jayBQQzEwIG90aGVyd2lzZSkuCj4gPiA+ID4+
Pgo+ID4gPiA+Pj4gUG9zc2libHkgKGlkZWFsbHkpIHdpdGggYW4gb3B0aW9uIGZvciB1c2VycyB3
aG8gY2FuJ3QgZ2V0IGJleW9uZCBQQzMKPiA+ID4gPj4+IHRvIHRlc3Qgd2hldGhlciBvciBub3Qg
dGhlIG5ldyBjb2RlIGhlbHBzIHRoZW0uCj4gPiA+ID4+Cj4gPiA+ID4+IEkganVzdCBmb3VuZCBv
dXQgdGhhdCB0aGUgWFBTIDkzODAgYXQgbXkgaGFuZCBuZXZlciByZWFjaGVzIFNMUF9TMCBidXQK
PiA+ID4gPj4gb25seQo+ID4gPiA+PiBQQzEwLgo+ID4gPiA+Cj4gPiA+ID4gVGhhdCdzIHRoZSBj
YXNlIGZvciBtZSB0b28uCj4gPiA+ID4KPiA+ID4gPj4gVGhpcyBoYXBwZW5zIHdpdGggb3Igd2l0
aG91dCBwdXR0aW5nIHRoZSBkZXZpY2UgdG8gRDMuCj4gPiA+ID4KPiA+ID4gPiBPbiBteSBzeXN0
ZW0sIHRob3VnaCwgaXQgb25seSBjYW4gZ2V0IHRvIFBDMyB3aXRob3V0IHB1dHRpbmcgdGhlIE5W
TWUKPiA+ID4gPiBpbnRvIEQzIChhcyByZXBvcnRlZCBwcmV2aW91c2x5KS4KPiA+ID4KPiA+ID4g
SSBmb3Jnb3QgdG8gYXNrLCB3aGF0IEJJT1MgdmVyc2lvbiBkb2VzIHRoZSBzeXN0ZW0gaGF2ZT8K
PiA+ID4gSSBkb27igJl0IHNlZSB0aGlzIGlzc3VlIG9uIEJJT1MgdjEuNS4wLgo+ID4KPiA+IEl0
IGlzIDEuNS4wIGhlcmUgdG9vLgo+Cj4gQWxsLCByZWdhcmRpbmcgdGhlIG5lZWQgZm9yIHRoZSBw
YXRjaCBwcm9wb3NlZCBieSBSYWZhZWwgb24gUEM0MDEsIEkgaGF2ZSBzb21lIHVwZGF0ZXMKPiB0
byBzaGFyZSBmcm9tIEh5bml4Lgo+IEZpcnN0IG9mZiAtIHRoZSBmaXJtd2FyZSBjaGFuZ2Vsb2cg
aXMgbWlzbGVhZGluZyBmcm9tIDgwMDA2RTAwIHRvIDgwMDA3RTAwLgo+Cj4gVGhlIGNoYW5nZSB3
YXMgbWFkZSBpbiB0aGUgZmlybXdhcmUgc3BlY2lmaWNhbGx5IGJlY2F1c2Ugb2YgYSBjaGFuZ2Ug
aW4gYmVoYXZpb3IgZnJvbQo+IEludGVsIEtCTCB0byBDRkwgYW5kIFdITC4gIE9uIENGTC9XSEwg
dGhlIHBlcmlvZCBvZiB0aW1lIHRoYXQgUmVmQ2xrIHdhcyB0dXJuZWQgb24gYWZ0ZXIgTDEuMgo+
IHdhcyBsYXJnZXIgdGhhbiBLQkwgcGxhdGZvcm1zLiAgU28gdGhpcyBtZWFudCB0aGF0IEh5bml4
IGNvdWxkbid0IGxvY2sgdXAgZnJvbSBDTEtSRVEjCj4gdG8gUmVmQ2xrIGFzIHF1aWNrbHkgb24g
Q0ZML1dITC4gIFNvIHRoZXJlIGlzIGEgImxhcmdlciIgZml4ZWQgZGVsYXkgaW50cm9kdWNlZCBp
biB0aGVpciBGVy4KPgo+IFRvIHRob3NlIHRoYXQgZG9uJ3Qga25vdyAtIFhQUyA5MzgwIGlzIGEg
V0hMIHBsYXRmb3JtLgo+Cj4gU2Vjb25kIC0gYSBoeXBvdGhlc2lzIG9mIHdoYXQgaXMgaGFwcGVu
aW5nIHdpdGggdGhlIHBhdGNoIHByb3Bvc2VkIGJ5IFJhZmFlbCBpcyB0aGF0IHRoZSBsaW5rCj4g
aXMgb25seSB0cmFuc2l0aW9uaW5nIHRvIEwxLjAgcmF0aGVyIHRoYW4gTDEuMi4gIFRoaXMgbWF5
IHNhdGlzZnkgdGhlIFBNQyBidXQgaXQgc2hvdWxkbid0IGxlYWQgdG8KPiB0aGUgbG93ZXN0IGFj
dHVhbCBkZXZpY2UgcG93ZXIgc3RhdGUuCgpUaGUgbm9ydGggY29tcGxleCBkb2Vzbid0IGdldCB0
byBQQzEwIHdpdGhvdXQgdGhpcyBwYXRjaCwgc28gdGhpcyBpcwptb3JlIGFib3V0IHRoZSBQQ0ll
IHJvb3QgY29tcGxleCB0aGFuIHRoZSBQTUMuCgpQQzMgdnMgUEMxMCBpcyBhIGJpZyBkZWFsIHJl
Z2FyZGxlc3Mgb2Ygd2hhdCB0aGUgTlZNZSBjYW4gYWNoaWV2ZS4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
