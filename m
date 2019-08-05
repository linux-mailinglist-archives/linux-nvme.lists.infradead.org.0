Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF4B826E0
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 23:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RL/XICV8TLTIKTfElUBvxlNLg6NiZAXlfVY46wEYOs=; b=nYgVpgbYfYdYf2
	JXGWpdb7xFgciMHHa1o/sGxHcg22j3opOFVrWpn3OFVkojSRG6KtzHpIgXZFvRi8LGcxWGtaZ2HOl
	AvoMMe5oVoU6//DpUA7h9R4K3hsLnZJUdgCZU00VJBeYxyFXpv6FqffOB18kXlepk/fiNc06CTCJm
	EhfyT16BT24PyvOgNNEHNQaEgc9hE+Tacb57Ok5Dv2sZ3+brUg6LtiazStiz0ONokRerTSneunNbt
	MDRluMo55AivuOS5oqmbIZfrOTxx9/o0QxVR24SzNWj+CaHjsebjfRS/3qHSOFNOJk5lSxqoLerdZ
	Fq7U4z7Em8HTKlFzIeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukXd-0007HL-Dp; Mon, 05 Aug 2019 21:29:17 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukXX-0007Gf-Gs
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 21:29:13 +0000
Received: by mail-ot1-f68.google.com with SMTP id r21so81381084otq.6
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 14:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n9m4a81xA4A6Gqrjsk6A7X7AeMPsJrAB1x7Sj73OucU=;
 b=IMOpDMgItU8KeoglVKDV8WZfINwEdrMho94gi1NAodNfXIarutwv5VMu7V+AVAyt5O
 ljxgKvFy6AWLqnyI/ZjTJ95W3410nhXGTWVthxj/HxqBs7Xp0NtTyZXbJr0S9ZO3aavw
 mOQ7fKV1hIA+DcDddniZKI2vQ47Ytk2Wj1H1PRkvNlanjBufFhu+x4aEt5YASBldmKYw
 Dj7UDY243JOm+QnQWnLrbZMZmteXn5HhAtVfdgx1VmebR0fDKMDGhlMEZ4HC/ZHYtUT3
 uiXsYVGp3ZagKzJuON3i2neRPyIzT4DHqRBqI8bKMg19XumsE9ZvwZAlG3Qs14kyXEi/
 EGwQ==
X-Gm-Message-State: APjAAAVOQYWgAs3Hz+U+WlC4KEpooHwsyK8CVDrrnV/2BhDABozWT0jk
 kkUsM7qG0h9fcw9v9TeYwnnyvxoYQbzWhM2F+4c=
X-Google-Smtp-Source: APXvYqxpTVSOfNsXqw6xI0jyOWBRBVQU09/rqkjcCwO+AoepqViogqw6NBs6AWYwfaCIzRhHKhGXX40Fn2EsuJZSwEk=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr2125745oto.167.1565040549855; 
 Mon, 05 Aug 2019 14:29:09 -0700 (PDT)
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
In-Reply-To: <1FA3D56B-80C6-496C-8772-2F773AA8043C@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 5 Aug 2019 23:28:58 +0200
Message-ID: <CAJZ5v0g_yAP=zgYDXtJWtwceQp4wWPWFghDDD0opdZ4zT-yo5Q@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_142911_562425_B294DAC6 
X-CRM114-Status: GOOD (  32.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA5OjE0IFBNIEthaS1IZW5nIEZlbmcKPGthaS5oZW5nLmZl
bmdAY2Fub25pY2FsLmNvbT4gd3JvdGU6Cj4KPiBhdCAxOTowNCwgUmFmYWVsIEouIFd5c29ja2kg
PHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToKPgo+ID4gT24gRnJpLCBBdWcgMiwgMjAxOSBhdCAx
Mjo1NSBQTSBLYWktSGVuZyBGZW5nCj4gPiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3
cm90ZToKPiA+PiBhdCAwNjoyNiwgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3Jn
PiB3cm90ZToKPiA+Pgo+ID4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDk6MDUgUE0gPE1hcmlv
LkxpbW9uY2llbGxvQGRlbGwuY29tPiB3cm90ZToKPiA+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+ID4+Pj4+IEZyb206IFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9y
Zz4KPiA+Pj4+PiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDEsIDIwMTkgMTI6MzAgUE0KPiA+Pj4+
PiBUbzogS2FpLUhlbmcgRmVuZzsgS2VpdGggQnVzY2g7IExpbW9uY2llbGxvLCBNYXJpbwo+ID4+
Pj4+IENjOiBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7IFNhZ2kgR3JpbWJlcmc7IGxp
bnV4LW52bWU7IExpbnV4Cj4gPj4+Pj4gUE07IExpbnV4Cj4gPj4+Pj4gS2VybmVsIE1haWxpbmcg
TGlzdDsgUmFqYXQgSmFpbgo+ID4+Pj4+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gQ29tbWl0
ICJudm1lL3BjaTogVXNlIGhvc3QgbWFuYWdlZCBwb3dlcgo+ID4+Pj4+IHN0YXRlIGZvcgo+ID4+
Pj4+IHN1c3BlbmQiIGhhcyBwcm9ibGVtcwo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBbRVhURVJO
QUwgRU1BSUxdCj4gPj4+Pj4KPiA+Pj4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDExOjA2IEFN
IEthaS1IZW5nIEZlbmcKPiA+Pj4+PiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90
ZToKPiA+Pj4+Pj4gYXQgMDY6MzMsIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDEyOjIy
IEFNIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPiA+Pj4+Pj4+IHdyb3RlOgo+ID4+
Pj4+Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDExOjI1OjUxUE0gKzAyMDAsIFJhZmFlbCBK
LiBXeXNvY2tpIHdyb3RlOgo+ID4+Pj4+Pj4+PiBBIGNvdXBsZSBvZiByZW1hcmtzIGlmIHlvdSB3
aWxsLgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBGaXJzdCwgd2UgZG9uJ3Qga25vdyB3aGljaCBj
YXNlIGlzIHRoZSBtYWpvcml0eSBhdCB0aGlzIHBvaW50LiAgRm9yCj4gPj4+Pj4+Pj4+IG5vdywg
dGhlcmUgaXMgb25lIGV4YW1wbGUgb2YgZWFjaCwgYnV0IGl0IG1heSB2ZXJ5IHdlbGwgdHVybiBv
dXQKPiA+Pj4+Pj4+Pj4gdGhhdAo+ID4+Pj4+Pj4+PiB0aGUgU0sgSHluaXggQkM1MDEgYWJvdmUg
bmVlZHMgdG8gYmUgcXVpcmtlZC4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gU2Vjb25kLCB0aGUg
cmVmZXJlbmNlIGhlcmUgcmVhbGx5IGlzIDUuMiwgc28gaWYgdGhlcmUgYXJlIGFueQo+ID4+Pj4+
Pj4+PiBzeXN0ZW1zCj4gPj4+Pj4+Pj4+IHRoYXQgYXJlIG5vdCBiZXR0ZXIgb2ZmIHdpdGggNS4z
LXJjIHRoYW4gdGhleSB3ZXJlIHdpdGggNS4yLAo+ID4+Pj4+Pj4+PiB3ZWxsLCB3ZQo+ID4+Pj4+
Pj4+PiBoYXZlIG5vdCBtYWRlIHByb2dyZXNzLiAgSG93ZXZlciwgaWYgdGhlcmUgYXJlIHN5c3Rl
bXMgdGhhdCBhcmUKPiA+Pj4+Pj4+Pj4gd29yc2UKPiA+Pj4+Pj4+Pj4gb2ZmIHdpdGggNS4zLCB0
aGF0J3MgYmFkLiAgSW4gdGhlIGZhY2Ugb2YgdGhlIGxhdGVzdCBmaW5kaW5ncyB0aGUKPiA+Pj4+
Pj4+Pj4gb25seQo+ID4+Pj4+Pj4+PiB3YXkgdG8gYXZvaWQgdGhhdCBpcyB0byBiZSBiYWNrd2Fy
ZHMgY29tcGF0aWJsZSB3aXRoIDUuMiBhbmQgdGhhdCdzCj4gPj4+Pj4+Pj4+IHdoZXJlIG15IHBh
dGNoIGlzIGdvaW5nLiAgVGhhdCBjYW5ub3QgYmUgYWNoaWV2ZWQgYnkgcXVpcmtpbmcgYWxsCj4g
Pj4+Pj4+Pj4+IGNhc2VzIHRoYXQgYXJlIHJlcG9ydGVkIGFzICJiYWQiLCBiZWNhdXNlIHRoZXJl
IHN0aWxsIG1heSBiZQo+ID4+Pj4+Pj4+PiB1bnJlcG9ydGVkIG9uZXMuCj4gPj4+Pj4+Pj4KPiA+
Pj4+Pj4+PiBJIGhhdmUgdG8gYWdyZWUuIEkgdGhpbmsgeW91ciBwcm9wb3NhbCBtYXkgYWxsb3cg
UENJIEQzY29sZCwKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBZZXMsIGl0IG1heS4KPiA+Pj4+Pj4KPiA+
Pj4+Pj4gU29tZWhvdyB0aGUgOTM4MCB3aXRoIFRvc2hpYmEgTlZNZSBuZXZlciBoaXRzIFNMUF9T
MCB3aXRoIG9yIHdpdGhvdXQKPiA+Pj4+Pj4gUmFmYWVs4oCZcyBwYXRjaC4KPiA+Pj4+Pj4gQnV0
IHRoZSDigJxyZWFs4oCdIHMyaWRsZSBwb3dlciBjb25zdW1wdGlvbiBkb2VzIGltcHJvdmUgd2l0
aCB0aGUgcGF0Y2guCj4gPj4+Pj4KPiA+Pj4+PiBEbyB5b3UgbWVhbiB0aGlzIHBhdGNoOgo+ID4+
Pj4+Cj4gPj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcG0vNzBENTM2QkUtOERD
Ny00Q0EyLTg0QTktCj4gPj4+Pj4gQUZCMDY3QkE1MjBFQGNhbm9uaWNhbC5jb20vVC8jbTQ1NmFh
NWM2OTk3M2EzYjY4ZjJjZGQ0NzEzYTFjZTgzYmU1MTQ1Cj4gPj4+Pj4gOGYKPiA+Pj4+Pgo+ID4+
Pj4+IG9yIHRoZSAkc3ViamVjdCBvbmUgd2l0aG91dCB0aGUgYWJvdmU/Cj4gPj4+Pj4KPiA+Pj4+
Pj4gQ2FuIHdlIHVzZSBhIERNSSBiYXNlZCBxdWlyayBmb3IgdGhpcyBwbGF0Zm9ybT8gSXQgc2Vl
bXMgbGlrZSBhCj4gPj4+Pj4+IHBsYXRmb3JtCj4gPj4+Pj4+IHNwZWNpZmljIGlzc3VlLgo+ID4+
Pj4+Cj4gPj4+Pj4gV2Ugc2VlbSB0byBzZWUgdG9vIG1hbnkgInBsYXRmb3JtLXNwZWNpZmljIGlz
c3VlcyIgaGVyZS4gOi0pCj4gPj4+Pj4KPiA+Pj4+PiBUbyBtZSwgdGhlIHN0YXR1cyBxdW8gKGll
LiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikgaXMgbm90IGRlZmVuc2libGUuCj4gPj4+Pj4gU29t
ZXRoaW5nIG5lZWRzIHRvIGJlIGRvbmUgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uLgo+ID4+Pj4K
PiA+Pj4+IFJhZmFlbCwgd291bGQgaXQgYmUgcG9zc2libGUgdG8gdHJ5IHBvcHBpbmcgb3V0IFBD
NDAxIGZyb20gdGhlIDkzODAgYW5kCj4gPj4+PiBpbnRvIGEgOTM2MCB0bwo+ID4+Pj4gY29uZmly
bSB0aGVyZSBhY3R1YWxseSBiZWluZyBhIHBsYXRmb3JtIGltcGFjdCBvciBub3Q/Cj4gPj4+Cj4g
Pj4+IE5vdCByZWFsbHksIHNvcnJ5Lgo+ID4+Pgo+ID4+Pj4gSSB3YXMgaG9waW5nIHRvIGhhdmUg
c29tZXRoaW5nIHVzZWZ1bCBmcm9tIEh5bml4IGJ5IG5vdyBiZWZvcmUKPiA+Pj4+IHJlc3BvbmRp
bmcsIGJ1dCBvaCB3ZWxsLgo+ID4+Pj4KPiA+Pj4+IEluIHRlcm1zIG9mIHdoYXQgaXMgdGhlIG1h
am9yaXR5LCBJIGRvIGtub3cgdGhhdCBiZXR3ZWVuIGZvbGtzIGF0IERlbGwsCj4gPj4+PiBHb29n
bGUsIENvbXBhbCwKPiA+Pj4+IFdpc3Ryb24sIENhbm9uaWNhbCwgTWljcm9uLCBIeW5peCwgVG9z
aGliYSwgTGl0ZU9uLCBhbmQgV2VzdGVybiBEaWdpdGFsCj4gPj4+PiB3ZSB0ZXN0ZWQgYSB3aWRl
Cj4gPj4+PiB2YXJpZXR5IG9mIFNTRHMgd2l0aCB0aGlzIHBhdGNoIHNlcmllcy4gIEkgd291bGQg
bGlrZSB0byB0aGluayB0aGF0IHRoZXkKPiA+Pj4+IGFyZSByZXByZXNlbnRhdGl2ZSBvZgo+ID4+
Pj4gd2hhdCdzIGJlaW5nIG1hbnVmYWN0dXJlZCBpbnRvIG1hY2hpbmVzIG5vdy4KPiA+Pj4KPiA+
Pj4gV2VsbCwgd2hhdCBhYm91dCBkcml2ZXMgYWxyZWFkeSBpbiB0aGUgZmllbGQ/ICBNeSBjb25j
ZXJuIGlzIG1vc3RseQo+ID4+PiBhYm91dCB0aG9zZSBvbmVzLgo+ID4+Pgo+ID4+Pj4gTm90YWJs
eSB0aGUgTGl0ZU9uIENMMSB3YXMgdGVzdGVkIHdpdGggdGhlIEhNQiBmbHVzaGluZyBzdXBwb3J0
IGFuZAo+ID4+Pj4gYW5kIEh5bml4IFBDNDAxIHdhcyB0ZXN0ZWQgd2l0aCBvbGRlciBmaXJtd2Fy
ZSB0aG91Z2guCj4gPj4+Pgo+ID4+Pj4+Pj4+IEluIHdoaWNoIGNhc2Ugd2UgZG8gbmVlZCB0byBy
ZWludHJvZHVjZSB0aGUgSE1CIGhhbmRsaW5nLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFJpZ2h0Lgo+
ID4+Pj4+Pgo+ID4+Pj4+PiBUaGUgcGF0Y2ggYWxvbmUgZG9lc27igJl0IGJyZWFrIEhNQiBUb3No
aWJhIE5WTWUgSSB0ZXN0ZWQuIEJ1dCBJIHRoaW5rCj4gPj4+Pj4+IGl04oCZcwo+ID4+Pj4+PiBz
dGlsbCBzYWZlciB0byBkbyBwcm9wZXIgSE1CIGhhbmRsaW5nLgo+ID4+Pj4+Cj4gPj4+Pj4gV2Vs
bCwgc28gY2FuIGFueW9uZSBwbGVhc2UgcHJvcG9zZSBzb21ldGhpbmcgc3BlY2lmaWM/ICBMaWtl
IGFuCj4gPj4+Pj4gYWx0ZXJuYXRpdmUgcGF0Y2g/Cj4gPj4+Pgo+ID4+Pj4gVGhpcyB3YXMgcHJv
cG9zZWQgYSBmZXcgZGF5cyBhZ286Cj4gPj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9w
aXBlcm1haWwvbGludXgtbnZtZS8yMDE5LUp1bHkvMDI2MDU2Lmh0bWwKPiA+Pj4+Cj4gPj4+PiBI
b3dldmVyIHdlJ3JlIHN0aWxsIG5vdCBzdXJlIHdoeSBpdCBpcyBuZWVkZWQsIGFuZCBpdCB3aWxs
IHRha2Ugc29tZQo+ID4+Pj4gdGltZSB0byBnZXQKPiA+Pj4+IGEgcHJvcGVyIGZhaWx1cmUgYW5h
bHlzaXMgZnJvbSBMaXRlT24gIHJlZ2FyZGluZyB0aGUgQ0wxLgo+ID4+Pgo+ID4+PiBUaGFua3Mg
Zm9yIHRoZSB1cGRhdGUsIGJ1dCBJTU8gd2Ugc3RpbGwgbmVlZCB0byBkbyBzb21ldGhpbmcgYmVm
b3JlCj4gPj4+IGZpbmFsIDUuMyB3aGlsZSB0aGUgaW52ZXN0aWdhdGlvbiBjb250aW51ZXMuCj4g
Pj4+Cj4gPj4+IEhvbmVzdGx5LCBhdCB0aGlzIHBvaW50IEkgd291bGQgdm90ZSBmb3IgZ29pbmcg
YmFjayB0byB0aGUgNS4yCj4gPj4+IGJlaGF2aW9yIGF0IGxlYXN0IGJ5IGRlZmF1bHQgYW5kIG9u
bHkgcnVubmluZyB0aGUgbmV3IGNvZGUgb24gdGhlCj4gPj4+IGRyaXZlcyBrbm93biB0byByZXF1
aXJlIGl0IChiZWNhdXNlIHRoZXkgd2lsbCBibG9jayBQQzEwIG90aGVyd2lzZSkuCj4gPj4+Cj4g
Pj4+IFBvc3NpYmx5IChpZGVhbGx5KSB3aXRoIGFuIG9wdGlvbiBmb3IgdXNlcnMgd2hvIGNhbid0
IGdldCBiZXlvbmQgUEMzCj4gPj4+IHRvIHRlc3Qgd2hldGhlciBvciBub3QgdGhlIG5ldyBjb2Rl
IGhlbHBzIHRoZW0uCj4gPj4KPiA+PiBJIGp1c3QgZm91bmQgb3V0IHRoYXQgdGhlIFhQUyA5Mzgw
IGF0IG15IGhhbmQgbmV2ZXIgcmVhY2hlcyBTTFBfUzAgYnV0Cj4gPj4gb25seQo+ID4+IFBDMTAu
Cj4gPgo+ID4gVGhhdCdzIHRoZSBjYXNlIGZvciBtZSB0b28uCj4gPgo+ID4+IFRoaXMgaGFwcGVu
cyB3aXRoIG9yIHdpdGhvdXQgcHV0dGluZyB0aGUgZGV2aWNlIHRvIEQzLgo+ID4KPiA+IE9uIG15
IHN5c3RlbSwgdGhvdWdoLCBpdCBvbmx5IGNhbiBnZXQgdG8gUEMzIHdpdGhvdXQgcHV0dGluZyB0
aGUgTlZNZQo+ID4gaW50byBEMyAoYXMgcmVwb3J0ZWQgcHJldmlvdXNseSkuCj4KPiBJIGZvcmdv
dCB0byBhc2ssIHdoYXQgQklPUyB2ZXJzaW9uIGRvZXMgdGhlIHN5c3RlbSBoYXZlPwo+IEkgZG9u
4oCZdCBzZWUgdGhpcyBpc3N1ZSBvbiBCSU9TIHYxLjUuMC4KCkl0IGlzIDEuNS4wIGhlcmUgdG9v
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
