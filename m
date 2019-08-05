Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6939182561
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 21:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1xW/wJhtid6T+CGLVwcYmkh+m4dPmkcQe6lnqrNVJyA=; b=NuN01ogK9i2DY71A/3sL/MLIE
	x3+Tyo2voDJ4jfp3Z+aPC1/xux3pYYekfikuxF3CKFUVfgqJk7r+CsXHVa2uF8izCm2icQSJS1QnB
	N7XbjVPbXKjcvWmOmlcEPp1VFftbxViy/QVHQW1qLnJOWnVXSlGGECY4isq59XPhY4oVAqwXcC0cK
	ZZWf4mXWrHF4uKcCx8sZXPhz7lGFDtqo9DOipc+4ASC3l0XHA36GjwvAOk+Q0FkqbQqaVUHH/yz7R
	VBLDf7CW4ptlWdkSPuLEJxdKyyA9/iovif6OZndF4DbyvRDndo85OGbAzhPGbhYDJ4UFnV/sWwPuf
	0jFcCbxRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiQw-0000Xl-OQ; Mon, 05 Aug 2019 19:14:14 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiQo-0000Ww-Lo
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:14:08 +0000
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1huiQk-0006XO-Nz
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:14:02 +0000
Received: by mail-pf1-f199.google.com with SMTP id x18so54074911pfj.4
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 12:14:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4dWsHtjse4Kk9Git6Bu5ITVptOPxfe5QlK/iNi9AwCA=;
 b=DHp/uNFGATCKYWpj6yYhN8BVd+6TeGxOq4PBbDpkNTeH5KRZ6HJdtZ3x5R/0+fkziY
 uDEk+mCWQ+jcwa17pCh0I4iLXiKbqIEpLgnZlxFfTsqlcFUYrNo7rwLrc53y8Eq+es/h
 Y48UyXSGNhCmNNe5bzKeVBxPgr04uUK9oDdxQiXoHMxDJqNBGv3xO8PQ16KtOesMUXS1
 UIZ1zIRcPAtxyQn38xc35L/WjtZVe97GIjLgFAeaovfFRQ0UC8aZIZGE+nIcjE8OTaCW
 9ncpRgRgIoIt7Mbhi6yr7M+/Y5CjdizK/3N5TVpyhlqnt7rLJkHbwH8QC1Fnoli77tKf
 yX/A==
X-Gm-Message-State: APjAAAV+/OTStEwR5kYpCgSBz7yIcWV/3lLBmlKccKDLA37A2BeoNkfL
 sh1iMp2ySNJaxfYv87mik35H5XqwXtWSozOmbtRUYJKqWVjbIrQxSK2zCI7eHLZXBT1A3Dqo68D
 VndP0YQKJwLxSWPKJwm5rtrZ901vTHq2Rf9jyJc+57ddc
X-Received: by 2002:a62:1ccd:: with SMTP id
 c196mr75140042pfc.102.1565032441418; 
 Mon, 05 Aug 2019 12:14:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGckPxqY0vwW+zLWOZY31pM4wFsYRr748iKaZ96qdRFeNpy1KaPsLZQAVzoHYtt2hUH/LOmw==
X-Received: by 2002:a62:1ccd:: with SMTP id
 c196mr75140014pfc.102.1565032441028; 
 Mon, 05 Aug 2019 12:14:01 -0700 (PDT)
Received: from 2001-b011-380f-37d3-6851-7bc4-3469-2fa7.dynamic-ip6.hinet.net
 (2001-b011-380f-37d3-6851-7bc4-3469-2fa7.dynamic-ip6.hinet.net.
 [2001:b011:380f:37d3:6851:7bc4:3469:2fa7])
 by smtp.gmail.com with ESMTPSA id b14sm19802255pga.20.2019.08.05.12.13.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 12:14:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0ipG-MJjERBL9fjx29QktaYEKSmMCbWiEGPHsbF=Xfxtw@mail.gmail.com>
Date: Tue, 6 Aug 2019 03:13:56 +0800
Message-Id: <1FA3D56B-80C6-496C-8772-2F773AA8043C@canonical.com>
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
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_121407_112918_14954BEE 
X-CRM114-Status: GOOD (  23.01  )
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

YXQgMTk6MDQsIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+
IE9uIEZyaSwgQXVnIDIsIDIwMTkgYXQgMTI6NTUgUE0gS2FpLUhlbmcgRmVuZwo+IDxrYWkuaGVu
Zy5mZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+PiBhdCAwNjoyNiwgUmFmYWVsIEouIFd5c29j
a2kgPHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToKPj4KPj4+IE9uIFRodSwgQXVnIDEsIDIwMTkg
YXQgOTowNSBQTSA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20+IHdyb3RlOgo+Pj4+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4+PiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8cmFm
YWVsQGtlcm5lbC5vcmc+Cj4+Pj4+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMSwgMjAxOSAxMjoz
MCBQTQo+Pj4+PiBUbzogS2FpLUhlbmcgRmVuZzsgS2VpdGggQnVzY2g7IExpbW9uY2llbGxvLCBN
YXJpbwo+Pj4+PiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBTYWdpIEdyaW1i
ZXJnOyBsaW51eC1udm1lOyBMaW51eAo+Pj4+PiBQTTsgTGludXgKPj4+Pj4gS2VybmVsIE1haWxp
bmcgTGlzdDsgUmFqYXQgSmFpbgo+Pj4+PiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dIENvbW1p
dCAibnZtZS9wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIKPj4+Pj4gc3RhdGUgZm9yCj4+Pj4+
IHN1c3BlbmQiIGhhcyBwcm9ibGVtcwo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBbRVhURVJOQUwgRU1BSUxd
Cj4+Pj4+Cj4+Pj4+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTE6MDYgQU0gS2FpLUhlbmcgRmVu
Zwo+Pj4+PiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPj4+Pj4+IGF0IDA2
OjMzLCBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4+Pj4K
Pj4+Pj4+PiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDEyOjIyIEFNIEtlaXRoIEJ1c2NoIDxrYnVz
Y2hAa2VybmVsLm9yZz4gIAo+Pj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+PiBPbiBXZWQsIEp1bCAzMSwg
MjAxOSBhdCAxMToyNTo1MVBNICswMjAwLCBSYWZhZWwgSi4gV3lzb2NraSB3cm90ZToKPj4+Pj4+
Pj4+IEEgY291cGxlIG9mIHJlbWFya3MgaWYgeW91IHdpbGwuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
Rmlyc3QsIHdlIGRvbid0IGtub3cgd2hpY2ggY2FzZSBpcyB0aGUgbWFqb3JpdHkgYXQgdGhpcyBw
b2ludC4gIEZvcgo+Pj4+Pj4+Pj4gbm93LCB0aGVyZSBpcyBvbmUgZXhhbXBsZSBvZiBlYWNoLCBi
dXQgaXQgbWF5IHZlcnkgd2VsbCB0dXJuIG91dCAgCj4+Pj4+Pj4+PiB0aGF0Cj4+Pj4+Pj4+PiB0
aGUgU0sgSHluaXggQkM1MDEgYWJvdmUgbmVlZHMgdG8gYmUgcXVpcmtlZC4KPj4+Pj4+Pj4+Cj4+
Pj4+Pj4+PiBTZWNvbmQsIHRoZSByZWZlcmVuY2UgaGVyZSByZWFsbHkgaXMgNS4yLCBzbyBpZiB0
aGVyZSBhcmUgYW55ICAKPj4+Pj4+Pj4+IHN5c3RlbXMKPj4+Pj4+Pj4+IHRoYXQgYXJlIG5vdCBi
ZXR0ZXIgb2ZmIHdpdGggNS4zLXJjIHRoYW4gdGhleSB3ZXJlIHdpdGggNS4yLCAgCj4+Pj4+Pj4+
PiB3ZWxsLCB3ZQo+Pj4+Pj4+Pj4gaGF2ZSBub3QgbWFkZSBwcm9ncmVzcy4gIEhvd2V2ZXIsIGlm
IHRoZXJlIGFyZSBzeXN0ZW1zIHRoYXQgYXJlICAKPj4+Pj4+Pj4+IHdvcnNlCj4+Pj4+Pj4+PiBv
ZmYgd2l0aCA1LjMsIHRoYXQncyBiYWQuICBJbiB0aGUgZmFjZSBvZiB0aGUgbGF0ZXN0IGZpbmRp
bmdzIHRoZQo+Pj4+Pj4+Pj4gb25seQo+Pj4+Pj4+Pj4gd2F5IHRvIGF2b2lkIHRoYXQgaXMgdG8g
YmUgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCA1LjIgYW5kIHRoYXQncwo+Pj4+Pj4+Pj4gd2hl
cmUgbXkgcGF0Y2ggaXMgZ29pbmcuICBUaGF0IGNhbm5vdCBiZSBhY2hpZXZlZCBieSBxdWlya2lu
ZyBhbGwKPj4+Pj4+Pj4+IGNhc2VzIHRoYXQgYXJlIHJlcG9ydGVkIGFzICJiYWQiLCBiZWNhdXNl
IHRoZXJlIHN0aWxsIG1heSBiZQo+Pj4+Pj4+Pj4gdW5yZXBvcnRlZCBvbmVzLgo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBJIGhhdmUgdG8gYWdyZWUuIEkgdGhpbmsgeW91ciBwcm9wb3NhbCBtYXkgYWxsb3cg
UENJIEQzY29sZCwKPj4+Pj4+Pgo+Pj4+Pj4+IFllcywgaXQgbWF5Lgo+Pj4+Pj4KPj4+Pj4+IFNv
bWVob3cgdGhlIDkzODAgd2l0aCBUb3NoaWJhIE5WTWUgbmV2ZXIgaGl0cyBTTFBfUzAgd2l0aCBv
ciB3aXRob3V0Cj4+Pj4+PiBSYWZhZWzigJlzIHBhdGNoLgo+Pj4+Pj4gQnV0IHRoZSDigJxyZWFs
4oCdIHMyaWRsZSBwb3dlciBjb25zdW1wdGlvbiBkb2VzIGltcHJvdmUgd2l0aCB0aGUgcGF0Y2gu
Cj4+Pj4+Cj4+Pj4+IERvIHlvdSBtZWFuIHRoaXMgcGF0Y2g6Cj4+Pj4+Cj4+Pj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBtLzcwRDUzNkJFLThEQzctNENBMi04NEE5LQo+Pj4+PiBB
RkIwNjdCQTUyMEVAY2Fub25pY2FsLmNvbS9ULyNtNDU2YWE1YzY5OTczYTNiNjhmMmNkZDQ3MTNh
MWNlODNiZTUxNDUKPj4+Pj4gOGYKPj4+Pj4KPj4+Pj4gb3IgdGhlICRzdWJqZWN0IG9uZSB3aXRo
b3V0IHRoZSBhYm92ZT8KPj4+Pj4KPj4+Pj4+IENhbiB3ZSB1c2UgYSBETUkgYmFzZWQgcXVpcmsg
Zm9yIHRoaXMgcGxhdGZvcm0/IEl0IHNlZW1zIGxpa2UgYSAgCj4+Pj4+PiBwbGF0Zm9ybQo+Pj4+
Pj4gc3BlY2lmaWMgaXNzdWUuCj4+Pj4+Cj4+Pj4+IFdlIHNlZW0gdG8gc2VlIHRvbyBtYW55ICJw
bGF0Zm9ybS1zcGVjaWZpYyBpc3N1ZXMiIGhlcmUuIDotKQo+Pj4+Pgo+Pj4+PiBUbyBtZSwgdGhl
IHN0YXR1cyBxdW8gKGllLiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikgaXMgbm90IGRlZmVuc2li
bGUuCj4+Pj4+IFNvbWV0aGluZyBuZWVkcyB0byBiZSBkb25lIHRvIGltcHJvdmUgdGhlIHNpdHVh
dGlvbi4KPj4+Pgo+Pj4+IFJhZmFlbCwgd291bGQgaXQgYmUgcG9zc2libGUgdG8gdHJ5IHBvcHBp
bmcgb3V0IFBDNDAxIGZyb20gdGhlIDkzODAgYW5kCj4+Pj4gaW50byBhIDkzNjAgdG8KPj4+PiBj
b25maXJtIHRoZXJlIGFjdHVhbGx5IGJlaW5nIGEgcGxhdGZvcm0gaW1wYWN0IG9yIG5vdD8KPj4+
Cj4+PiBOb3QgcmVhbGx5LCBzb3JyeS4KPj4+Cj4+Pj4gSSB3YXMgaG9waW5nIHRvIGhhdmUgc29t
ZXRoaW5nIHVzZWZ1bCBmcm9tIEh5bml4IGJ5IG5vdyBiZWZvcmUKPj4+PiByZXNwb25kaW5nLCBi
dXQgb2ggd2VsbC4KPj4+Pgo+Pj4+IEluIHRlcm1zIG9mIHdoYXQgaXMgdGhlIG1ham9yaXR5LCBJ
IGRvIGtub3cgdGhhdCBiZXR3ZWVuIGZvbGtzIGF0IERlbGwsCj4+Pj4gR29vZ2xlLCBDb21wYWws
Cj4+Pj4gV2lzdHJvbiwgQ2Fub25pY2FsLCBNaWNyb24sIEh5bml4LCBUb3NoaWJhLCBMaXRlT24s
IGFuZCBXZXN0ZXJuIERpZ2l0YWwKPj4+PiB3ZSB0ZXN0ZWQgYSB3aWRlCj4+Pj4gdmFyaWV0eSBv
ZiBTU0RzIHdpdGggdGhpcyBwYXRjaCBzZXJpZXMuICBJIHdvdWxkIGxpa2UgdG8gdGhpbmsgdGhh
dCB0aGV5Cj4+Pj4gYXJlIHJlcHJlc2VudGF0aXZlIG9mCj4+Pj4gd2hhdCdzIGJlaW5nIG1hbnVm
YWN0dXJlZCBpbnRvIG1hY2hpbmVzIG5vdy4KPj4+Cj4+PiBXZWxsLCB3aGF0IGFib3V0IGRyaXZl
cyBhbHJlYWR5IGluIHRoZSBmaWVsZD8gIE15IGNvbmNlcm4gaXMgbW9zdGx5Cj4+PiBhYm91dCB0
aG9zZSBvbmVzLgo+Pj4KPj4+PiBOb3RhYmx5IHRoZSBMaXRlT24gQ0wxIHdhcyB0ZXN0ZWQgd2l0
aCB0aGUgSE1CIGZsdXNoaW5nIHN1cHBvcnQgYW5kCj4+Pj4gYW5kIEh5bml4IFBDNDAxIHdhcyB0
ZXN0ZWQgd2l0aCBvbGRlciBmaXJtd2FyZSB0aG91Z2guCj4+Pj4KPj4+Pj4+Pj4gSW4gd2hpY2gg
Y2FzZSB3ZSBkbyBuZWVkIHRvIHJlaW50cm9kdWNlIHRoZSBITUIgaGFuZGxpbmcuCj4+Pj4+Pj4K
Pj4+Pj4+PiBSaWdodC4KPj4+Pj4+Cj4+Pj4+PiBUaGUgcGF0Y2ggYWxvbmUgZG9lc27igJl0IGJy
ZWFrIEhNQiBUb3NoaWJhIE5WTWUgSSB0ZXN0ZWQuIEJ1dCBJIHRoaW5rCj4+Pj4+PiBpdOKAmXMK
Pj4+Pj4+IHN0aWxsIHNhZmVyIHRvIGRvIHByb3BlciBITUIgaGFuZGxpbmcuCj4+Pj4+Cj4+Pj4+
IFdlbGwsIHNvIGNhbiBhbnlvbmUgcGxlYXNlIHByb3Bvc2Ugc29tZXRoaW5nIHNwZWNpZmljPyAg
TGlrZSBhbgo+Pj4+PiBhbHRlcm5hdGl2ZSBwYXRjaD8KPj4+Pgo+Pj4+IFRoaXMgd2FzIHByb3Bv
c2VkIGEgZmV3IGRheXMgYWdvOgo+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVy
bWFpbC9saW51eC1udm1lLzIwMTktSnVseS8wMjYwNTYuaHRtbAo+Pj4+Cj4+Pj4gSG93ZXZlciB3
ZSdyZSBzdGlsbCBub3Qgc3VyZSB3aHkgaXQgaXMgbmVlZGVkLCBhbmQgaXQgd2lsbCB0YWtlIHNv
bWUKPj4+PiB0aW1lIHRvIGdldAo+Pj4+IGEgcHJvcGVyIGZhaWx1cmUgYW5hbHlzaXMgZnJvbSBM
aXRlT24gIHJlZ2FyZGluZyB0aGUgQ0wxLgo+Pj4KPj4+IFRoYW5rcyBmb3IgdGhlIHVwZGF0ZSwg
YnV0IElNTyB3ZSBzdGlsbCBuZWVkIHRvIGRvIHNvbWV0aGluZyBiZWZvcmUKPj4+IGZpbmFsIDUu
MyB3aGlsZSB0aGUgaW52ZXN0aWdhdGlvbiBjb250aW51ZXMuCj4+Pgo+Pj4gSG9uZXN0bHksIGF0
IHRoaXMgcG9pbnQgSSB3b3VsZCB2b3RlIGZvciBnb2luZyBiYWNrIHRvIHRoZSA1LjIKPj4+IGJl
aGF2aW9yIGF0IGxlYXN0IGJ5IGRlZmF1bHQgYW5kIG9ubHkgcnVubmluZyB0aGUgbmV3IGNvZGUg
b24gdGhlCj4+PiBkcml2ZXMga25vd24gdG8gcmVxdWlyZSBpdCAoYmVjYXVzZSB0aGV5IHdpbGwg
YmxvY2sgUEMxMCBvdGhlcndpc2UpLgo+Pj4KPj4+IFBvc3NpYmx5IChpZGVhbGx5KSB3aXRoIGFu
IG9wdGlvbiBmb3IgdXNlcnMgd2hvIGNhbid0IGdldCBiZXlvbmQgUEMzCj4+PiB0byB0ZXN0IHdo
ZXRoZXIgb3Igbm90IHRoZSBuZXcgY29kZSBoZWxwcyB0aGVtLgo+Pgo+PiBJIGp1c3QgZm91bmQg
b3V0IHRoYXQgdGhlIFhQUyA5MzgwIGF0IG15IGhhbmQgbmV2ZXIgcmVhY2hlcyBTTFBfUzAgYnV0
ICAKPj4gb25seQo+PiBQQzEwLgo+Cj4gVGhhdCdzIHRoZSBjYXNlIGZvciBtZSB0b28uCj4KPj4g
VGhpcyBoYXBwZW5zIHdpdGggb3Igd2l0aG91dCBwdXR0aW5nIHRoZSBkZXZpY2UgdG8gRDMuCj4K
PiBPbiBteSBzeXN0ZW0sIHRob3VnaCwgaXQgb25seSBjYW4gZ2V0IHRvIFBDMyB3aXRob3V0IHB1
dHRpbmcgdGhlIE5WTWUKPiBpbnRvIEQzIChhcyByZXBvcnRlZCBwcmV2aW91c2x5KS4KCkkgZm9y
Z290IHRvIGFzaywgd2hhdCBCSU9TIHZlcnNpb24gZG9lcyB0aGUgc3lzdGVtIGhhdmU/CkkgZG9u
4oCZdCBzZWUgdGhpcyBpc3N1ZSBvbiBCSU9TIHYxLjUuMC4KCkthaS1IZW5nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
