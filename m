Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E667F5B4
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 13:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBhfRpO071I0fT8TguZ1q/RFDhAT/3cWvEIrXDz0YGA=; b=BU5nEQFkJYDFZz
	yGuw6ke+HxSCq/1vfGeZrYrRLDh+txVLnCDrYthZMt/KlDuaZzdtBFA0YzhKeRpdAqqjcZNgObPSg
	rdXBoHE9yaLv7ZGCo3qIKYHIaTMJTrR7F9EST5Q312joJpUm64ax5WFUAGV5s7ULw5koVIPT2X9+g
	dKbfGlbCaVRev7bn4hVyjAou+3XJERvbfMPWqbiDN6DdDXMdyjh4khienwGHy5MpmULmwWdgKKz9c
	GW3RpiHuj8AkR8mD2mn0zTikVozbspDkHdOoAgqqzSkztZTwRBDgbgixPMRDqw3xeSYNbo8+v+7wt
	Mr1oZlqgSJ2mGwR4/fMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVMK-00065u-0z; Fri, 02 Aug 2019 11:04:28 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVMF-00065U-0m
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 11:04:24 +0000
Received: by mail-ot1-f66.google.com with SMTP id r21so71705071otq.6
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 04:04:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w0DyH4xksTCHeFXBznMTiBORDsUdB4NA4Cc7BNCtCH8=;
 b=fhc4lIpZFGRp52vxihkFLVmeax75ZJNA1c/VSK1mbMFLFObU4ipsaM43gtJg7qiSmb
 HSz+GFLzRM6gZOyR1qDmSWxWp4VKGW6AgFeZGPli6L+3dksu6NQ2dFIAbRFGaG6bU1F8
 gcwPBVG6of5abeiGQ1ui2Nxkd/tWvrY/rSuy4MuxQo9V3dO4vr0rdb7thXm1tlWL8dTS
 Cm1Rf7eeaxZJNg9rAk5hVP7wlLWlQ4Fuw+nu0aM2j0/RAFSUsqX5H+OINMAkke1RqhoB
 /aDvnVhNzM5HyqsOiU58MEJrMWviNKP57E1DixX+J4p0BJ+IHbnLFHVtZwN/cyZvjsb9
 d/eg==
X-Gm-Message-State: APjAAAVntecojZVV44he/Ya4B2HL7PjTRdQQAH1IOn3nUGu8oaBHR1fR
 YGf1W/H5Pn2oVC/qvYTd2dcZx/NFvfq4VlPRdgs=
X-Google-Smtp-Source: APXvYqz/YAfVVpOT1+gorX7uqK+xUCSw3KhSVS8Oct1H0bKTEnpnV/SUZnEVKAT3kOXN9vMIb+xvv7QaWE3Ovjg8g10=
X-Received: by 2002:a05:6830:8a:: with SMTP id
 a10mr69319291oto.167.1564743861921; 
 Fri, 02 Aug 2019 04:04:21 -0700 (PDT)
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
In-Reply-To: <43A8DF53-8463-4314-9E8E-47A7D3C5A709@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 2 Aug 2019 13:04:09 +0200
Message-ID: <CAJZ5v0ipG-MJjERBL9fjx29QktaYEKSmMCbWiEGPHsbF=Xfxtw@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_040423_060956_CB083FB6 
X-CRM114-Status: GOOD (  31.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

T24gRnJpLCBBdWcgMiwgMjAxOSBhdCAxMjo1NSBQTSBLYWktSGVuZyBGZW5nCjxrYWkuaGVuZy5m
ZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Cj4gYXQgMDY6MjYsIFJhZmFlbCBKLiBXeXNvY2tp
IDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiA+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQg
OTowNSBQTSA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20+IHdyb3RlOgo+ID4+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4+PiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVs
QGtlcm5lbC5vcmc+Cj4gPj4+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMSwgMjAxOSAxMjozMCBQ
TQo+ID4+PiBUbzogS2FpLUhlbmcgRmVuZzsgS2VpdGggQnVzY2g7IExpbW9uY2llbGxvLCBNYXJp
bwo+ID4+PiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBTYWdpIEdyaW1iZXJn
OyBsaW51eC1udm1lOyBMaW51eAo+ID4+PiBQTTsgTGludXgKPiA+Pj4gS2VybmVsIE1haWxpbmcg
TGlzdDsgUmFqYXQgSmFpbgo+ID4+PiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dIENvbW1pdCAi
bnZtZS9wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIKPiA+Pj4gc3RhdGUgZm9yCj4gPj4+IHN1
c3BlbmQiIGhhcyBwcm9ibGVtcwo+ID4+Pgo+ID4+Pgo+ID4+PiBbRVhURVJOQUwgRU1BSUxdCj4g
Pj4+Cj4gPj4+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTE6MDYgQU0gS2FpLUhlbmcgRmVuZwo+
ID4+PiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPiA+Pj4+IGF0IDA2OjMz
LCBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+Pj4KPiA+
Pj4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDEyOjIyIEFNIEtlaXRoIEJ1c2NoIDxrYnVzY2hA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4+Pj4+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDExOjI1
OjUxUE0gKzAyMDAsIFJhZmFlbCBKLiBXeXNvY2tpIHdyb3RlOgo+ID4+Pj4+Pj4gQSBjb3VwbGUg
b2YgcmVtYXJrcyBpZiB5b3Ugd2lsbC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBGaXJzdCwgd2UgZG9u
J3Qga25vdyB3aGljaCBjYXNlIGlzIHRoZSBtYWpvcml0eSBhdCB0aGlzIHBvaW50LiAgRm9yCj4g
Pj4+Pj4+PiBub3csIHRoZXJlIGlzIG9uZSBleGFtcGxlIG9mIGVhY2gsIGJ1dCBpdCBtYXkgdmVy
eSB3ZWxsIHR1cm4gb3V0IHRoYXQKPiA+Pj4+Pj4+IHRoZSBTSyBIeW5peCBCQzUwMSBhYm92ZSBu
ZWVkcyB0byBiZSBxdWlya2VkLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFNlY29uZCwgdGhlIHJlZmVy
ZW5jZSBoZXJlIHJlYWxseSBpcyA1LjIsIHNvIGlmIHRoZXJlIGFyZSBhbnkgc3lzdGVtcwo+ID4+
Pj4+Pj4gdGhhdCBhcmUgbm90IGJldHRlciBvZmYgd2l0aCA1LjMtcmMgdGhhbiB0aGV5IHdlcmUg
d2l0aCA1LjIsIHdlbGwsIHdlCj4gPj4+Pj4+PiBoYXZlIG5vdCBtYWRlIHByb2dyZXNzLiAgSG93
ZXZlciwgaWYgdGhlcmUgYXJlIHN5c3RlbXMgdGhhdCBhcmUgd29yc2UKPiA+Pj4+Pj4+IG9mZiB3
aXRoIDUuMywgdGhhdCdzIGJhZC4gIEluIHRoZSBmYWNlIG9mIHRoZSBsYXRlc3QgZmluZGluZ3Mg
dGhlCj4gPj4+Pj4+PiBvbmx5Cj4gPj4+Pj4+PiB3YXkgdG8gYXZvaWQgdGhhdCBpcyB0byBiZSBi
YWNrd2FyZHMgY29tcGF0aWJsZSB3aXRoIDUuMiBhbmQgdGhhdCdzCj4gPj4+Pj4+PiB3aGVyZSBt
eSBwYXRjaCBpcyBnb2luZy4gIFRoYXQgY2Fubm90IGJlIGFjaGlldmVkIGJ5IHF1aXJraW5nIGFs
bAo+ID4+Pj4+Pj4gY2FzZXMgdGhhdCBhcmUgcmVwb3J0ZWQgYXMgImJhZCIsIGJlY2F1c2UgdGhl
cmUgc3RpbGwgbWF5IGJlCj4gPj4+Pj4+PiB1bnJlcG9ydGVkIG9uZXMuCj4gPj4+Pj4+Cj4gPj4+
Pj4+IEkgaGF2ZSB0byBhZ3JlZS4gSSB0aGluayB5b3VyIHByb3Bvc2FsIG1heSBhbGxvdyBQQ0kg
RDNjb2xkLAo+ID4+Pj4+Cj4gPj4+Pj4gWWVzLCBpdCBtYXkuCj4gPj4+Pgo+ID4+Pj4gU29tZWhv
dyB0aGUgOTM4MCB3aXRoIFRvc2hpYmEgTlZNZSBuZXZlciBoaXRzIFNMUF9TMCB3aXRoIG9yIHdp
dGhvdXQKPiA+Pj4+IFJhZmFlbOKAmXMgcGF0Y2guCj4gPj4+PiBCdXQgdGhlIOKAnHJlYWzigJ0g
czJpZGxlIHBvd2VyIGNvbnN1bXB0aW9uIGRvZXMgaW1wcm92ZSB3aXRoIHRoZSBwYXRjaC4KPiA+
Pj4KPiA+Pj4gRG8geW91IG1lYW4gdGhpcyBwYXRjaDoKPiA+Pj4KPiA+Pj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtcG0vNzBENTM2QkUtOERDNy00Q0EyLTg0QTktCj4gPj4+IEFGQjA2
N0JBNTIwRUBjYW5vbmljYWwuY29tL1QvI200NTZhYTVjNjk5NzNhM2I2OGYyY2RkNDcxM2ExY2U4
M2JlNTE0NQo+ID4+PiA4Zgo+ID4+Pgo+ID4+PiBvciB0aGUgJHN1YmplY3Qgb25lIHdpdGhvdXQg
dGhlIGFib3ZlPwo+ID4+Pgo+ID4+Pj4gQ2FuIHdlIHVzZSBhIERNSSBiYXNlZCBxdWlyayBmb3Ig
dGhpcyBwbGF0Zm9ybT8gSXQgc2VlbXMgbGlrZSBhIHBsYXRmb3JtCj4gPj4+PiBzcGVjaWZpYyBp
c3N1ZS4KPiA+Pj4KPiA+Pj4gV2Ugc2VlbSB0byBzZWUgdG9vIG1hbnkgInBsYXRmb3JtLXNwZWNp
ZmljIGlzc3VlcyIgaGVyZS4gOi0pCj4gPj4+Cj4gPj4+IFRvIG1lLCB0aGUgc3RhdHVzIHF1byAo
aWUuIHdoYXQgd2UgaGF2ZSBpbiA1LjMtcmMyKSBpcyBub3QgZGVmZW5zaWJsZS4KPiA+Pj4gU29t
ZXRoaW5nIG5lZWRzIHRvIGJlIGRvbmUgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uLgo+ID4+Cj4g
Pj4gUmFmYWVsLCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byB0cnkgcG9wcGluZyBvdXQgUEM0MDEg
ZnJvbSB0aGUgOTM4MCBhbmQKPiA+PiBpbnRvIGEgOTM2MCB0bwo+ID4+IGNvbmZpcm0gdGhlcmUg
YWN0dWFsbHkgYmVpbmcgYSBwbGF0Zm9ybSBpbXBhY3Qgb3Igbm90Pwo+ID4KPiA+IE5vdCByZWFs
bHksIHNvcnJ5Lgo+ID4KPiA+PiBJIHdhcyBob3BpbmcgdG8gaGF2ZSBzb21ldGhpbmcgdXNlZnVs
IGZyb20gSHluaXggYnkgbm93IGJlZm9yZQo+ID4+IHJlc3BvbmRpbmcsIGJ1dCBvaCB3ZWxsLgo+
ID4+Cj4gPj4gSW4gdGVybXMgb2Ygd2hhdCBpcyB0aGUgbWFqb3JpdHksIEkgZG8ga25vdyB0aGF0
IGJldHdlZW4gZm9sa3MgYXQgRGVsbCwKPiA+PiBHb29nbGUsIENvbXBhbCwKPiA+PiBXaXN0cm9u
LCBDYW5vbmljYWwsIE1pY3JvbiwgSHluaXgsIFRvc2hpYmEsIExpdGVPbiwgYW5kIFdlc3Rlcm4g
RGlnaXRhbAo+ID4+IHdlIHRlc3RlZCBhIHdpZGUKPiA+PiB2YXJpZXR5IG9mIFNTRHMgd2l0aCB0
aGlzIHBhdGNoIHNlcmllcy4gIEkgd291bGQgbGlrZSB0byB0aGluayB0aGF0IHRoZXkKPiA+PiBh
cmUgcmVwcmVzZW50YXRpdmUgb2YKPiA+PiB3aGF0J3MgYmVpbmcgbWFudWZhY3R1cmVkIGludG8g
bWFjaGluZXMgbm93Lgo+ID4KPiA+IFdlbGwsIHdoYXQgYWJvdXQgZHJpdmVzIGFscmVhZHkgaW4g
dGhlIGZpZWxkPyAgTXkgY29uY2VybiBpcyBtb3N0bHkKPiA+IGFib3V0IHRob3NlIG9uZXMuCj4g
Pgo+ID4+IE5vdGFibHkgdGhlIExpdGVPbiBDTDEgd2FzIHRlc3RlZCB3aXRoIHRoZSBITUIgZmx1
c2hpbmcgc3VwcG9ydCBhbmQKPiA+PiBhbmQgSHluaXggUEM0MDEgd2FzIHRlc3RlZCB3aXRoIG9s
ZGVyIGZpcm13YXJlIHRob3VnaC4KPiA+Pgo+ID4+Pj4+PiBJbiB3aGljaCBjYXNlIHdlIGRvIG5l
ZWQgdG8gcmVpbnRyb2R1Y2UgdGhlIEhNQiBoYW5kbGluZy4KPiA+Pj4+Pgo+ID4+Pj4+IFJpZ2h0
Lgo+ID4+Pj4KPiA+Pj4+IFRoZSBwYXRjaCBhbG9uZSBkb2VzbuKAmXQgYnJlYWsgSE1CIFRvc2hp
YmEgTlZNZSBJIHRlc3RlZC4gQnV0IEkgdGhpbmsKPiA+Pj4+IGl04oCZcwo+ID4+Pj4gc3RpbGwg
c2FmZXIgdG8gZG8gcHJvcGVyIEhNQiBoYW5kbGluZy4KPiA+Pj4KPiA+Pj4gV2VsbCwgc28gY2Fu
IGFueW9uZSBwbGVhc2UgcHJvcG9zZSBzb21ldGhpbmcgc3BlY2lmaWM/ICBMaWtlIGFuCj4gPj4+
IGFsdGVybmF0aXZlIHBhdGNoPwo+ID4+Cj4gPj4gVGhpcyB3YXMgcHJvcG9zZWQgYSBmZXcgZGF5
cyBhZ286Cj4gPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LW52
bWUvMjAxOS1KdWx5LzAyNjA1Ni5odG1sCj4gPj4KPiA+PiBIb3dldmVyIHdlJ3JlIHN0aWxsIG5v
dCBzdXJlIHdoeSBpdCBpcyBuZWVkZWQsIGFuZCBpdCB3aWxsIHRha2Ugc29tZQo+ID4+IHRpbWUg
dG8gZ2V0Cj4gPj4gYSBwcm9wZXIgZmFpbHVyZSBhbmFseXNpcyBmcm9tIExpdGVPbiAgcmVnYXJk
aW5nIHRoZSBDTDEuCj4gPgo+ID4gVGhhbmtzIGZvciB0aGUgdXBkYXRlLCBidXQgSU1PIHdlIHN0
aWxsIG5lZWQgdG8gZG8gc29tZXRoaW5nIGJlZm9yZQo+ID4gZmluYWwgNS4zIHdoaWxlIHRoZSBp
bnZlc3RpZ2F0aW9uIGNvbnRpbnVlcy4KPiA+Cj4gPiBIb25lc3RseSwgYXQgdGhpcyBwb2ludCBJ
IHdvdWxkIHZvdGUgZm9yIGdvaW5nIGJhY2sgdG8gdGhlIDUuMgo+ID4gYmVoYXZpb3IgYXQgbGVh
c3QgYnkgZGVmYXVsdCBhbmQgb25seSBydW5uaW5nIHRoZSBuZXcgY29kZSBvbiB0aGUKPiA+IGRy
aXZlcyBrbm93biB0byByZXF1aXJlIGl0IChiZWNhdXNlIHRoZXkgd2lsbCBibG9jayBQQzEwIG90
aGVyd2lzZSkuCj4gPgo+ID4gUG9zc2libHkgKGlkZWFsbHkpIHdpdGggYW4gb3B0aW9uIGZvciB1
c2VycyB3aG8gY2FuJ3QgZ2V0IGJleW9uZCBQQzMKPiA+IHRvIHRlc3Qgd2hldGhlciBvciBub3Qg
dGhlIG5ldyBjb2RlIGhlbHBzIHRoZW0uCj4KPiBJIGp1c3QgZm91bmQgb3V0IHRoYXQgdGhlIFhQ
UyA5MzgwIGF0IG15IGhhbmQgbmV2ZXIgcmVhY2hlcyBTTFBfUzAgYnV0IG9ubHkKPiBQQzEwLgoK
VGhhdCdzIHRoZSBjYXNlIGZvciBtZSB0b28uCgo+IFRoaXMgaGFwcGVucyB3aXRoIG9yIHdpdGhv
dXQgcHV0dGluZyB0aGUgZGV2aWNlIHRvIEQzLgoKT24gbXkgc3lzdGVtLCB0aG91Z2gsIGl0IG9u
bHkgY2FuIGdldCB0byBQQzMgd2l0aG91dCBwdXR0aW5nIHRoZSBOVk1lCmludG8gRDMgKGFzIHJl
cG9ydGVkIHByZXZpb3VzbHkpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
