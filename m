Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E347550F
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpMASS6iSJnxUTugGGltoovf1+wNzrAVNLWfO1kK95I=; b=m8IVI0NrYTF49o
	45Cja6F9DVBZjq8q+Lk2MoHjBx/lQwaDP3GjdCVudVZhuDDk5JfsdDBTIpMs+9o7w0vCl4p1+EfHU
	APkwjvnvHIx3mS2HbYITfc/IsVfvYDgMEucfPtCJGg8ordrVVr6ZWkw44hJyLvB0cPfEiGW32Itx9
	4we+XEw61edQe7wQHf3XcsjRwqDlfAdRqKAY+aLyZFXBFaLouMnchJoxrsQ9w+hMsgms7Fhhzik2O
	z/7RJztIwyY4ViCqs0H9XQoJ5rSxBgM3yr+DljgYGztsqOyi8TwfGakUDp0pOFiPlfLLi6RfcVo/f
	CUkAkcaf8ZG+EQvgCwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhA3-0007As-VM; Thu, 25 Jul 2019 17:04:12 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqh9u-0007AE-5R
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:04:03 +0000
Received: by mail-ot1-f68.google.com with SMTP id b7so2248458otl.11
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 10:04:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8G44gacPmRhlcyhu/6GsJIvVHd40YjenVn8zxXxswWA=;
 b=CbmsIUE9nyu9n3O5yp6tT+nJNGfj8mdo5QVlpK1uiX6328JvJnn/qeKSD+giufW1Na
 r1bO/JX8blC51puakCRSRZa8AKwgDF8xv7WZ0l7vyt+jDSedfNGLH/qipwPc8GBMS1P0
 AoPGutYD3gdlqvXpoEZmM0Go9GKO6qIIFUqEJib9DuvlBCalU1mzKaehzHM4S8+ud7hN
 nr/fnv0ILaVewDu33Yw8B43+ijHilmYzEgQK36ppXd4hPo2CbsOoiA5nunzjHD72/RRh
 fFvoqzj7ebWxrIll5qQ29oB4FkiA6kR/K094MPWdBe1pPIC3jSBbYkAHSJ44BNHPKzfI
 adPg==
X-Gm-Message-State: APjAAAWbebS02KBoU8B5pBqzGdH4cyzx9F6VARiB7Z5lswnqcCMOHHeI
 Er9TtPHHp7CbiEbLKaWwg0AoGudkJTwHBiCZqGE=
X-Google-Smtp-Source: APXvYqwDu0+fLy73J2/Flv6Watu3GrPu0mjMjW7YrikgMdZCMbyar08W0Nzg9Q45z6Y+GkpP0x1DenMgNvH1tT0T2QU=
X-Received: by 2002:a9d:6b96:: with SMTP id b22mr67539409otq.262.1564074240786; 
 Thu, 25 Jul 2019 10:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
In-Reply-To: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 25 Jul 2019 19:03:49 +0200
Message-ID: <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Mario Limonciello <Mario.Limonciello@dell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_100402_207595_54324B72 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgNjoyNCBQTSA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5j
b20+IHdyb3RlOgo+Cj4gK1JhamF0Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4g
PiBGcm9tOiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4gPiBT
ZW50OiBUaHVyc2RheSwgSnVseSAyNSwgMjAxOSA5OjAzIEFNCj4gPiBUbzogUmFmYWVsIEouIFd5
c29ja2kKPiA+IENjOiBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7IFNhZ2kgR3JpbWJl
cmc7IGxpbnV4LQo+ID4gbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnOyBMaW1vbmNpZWxsbywgTWFy
aW87IExpbnV4IFBNOyBMS01MCj4gPiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dIENvbW1pdCAi
bnZtZS9wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUgZm9yCj4gPiBzdXNwZW5kIiBo
YXMgcHJvYmxlbXMKPiA+Cj4gPgo+ID4gW0VYVEVSTkFMIEVNQUlMXQo+ID4KPiA+IEhpIFJhZmFl
bCwKPiA+Cj4gPiBhdCAxNzo1MSwgUmFmYWVsIEouIFd5c29ja2kgPHJqd0Byand5c29ja2kubmV0
PiB3cm90ZToKPiA+Cj4gPiA+IEhpIEtlaXRoLAo+ID4gPgo+ID4gPiBVbmZvcnR1bmF0ZWx5LAo+
ID4gPgo+ID4gPiBjb21taXQgZDkxNmIxYmU5NGI2ZGM4ZDI5M2FiZWQyNDUxZjMwNjJmNmFmNzU1
MQo+ID4gPiBBdXRob3I6IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNjaEBpbnRlbC5jb20+Cj4gPiA+
IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAyMDE5IC0wNjAwCj4gPiA+Cj4gPiA+ICAgICBu
dm1lLXBjaTogdXNlIGhvc3QgbWFuYWdlZCBwb3dlciBzdGF0ZSBmb3Igc3VzcGVuZAo+ID4gPgo+
ID4gPiBkb2Vzbid0IHVuaXZlcnNhbGx5IGltcHJvdmUgdGhpbmdzLiAgSW4gZmFjdCwgaW4gc29t
ZSBjYXNlcyBpdCBtYWtlcwo+ID4gPiB0aGluZ3Mgd29yc2UuCj4gPiA+Cj4gPiA+IEZvciBleGFt
cGxlLCBvbiB0aGUgRGVsbCBYUFMxMyA5MzgwIEkgaGF2ZSBoZXJlIGl0IHByZXZlbnRzIHRoZSBw
cm9jZXNzb3IKPiA+ID4gcGFja2FnZQo+ID4gPiBmcm9tIHJlYWNoaW5nIGlkbGUgc3RhdGVzIGRl
ZXBlciB0aGFuIFBDMiBpbiBzdXNwZW5kLXRvLWlkbGUgKHdoaWNoLCBvZgo+ID4gPiBjb3Vyc2Us
IGFsc28KPiA+ID4gcHJldmVudHMgdGhlIFNvQyBmcm9tIHJlYWNoaW5nIGFueSBraW5kIG9mIFMw
aXgpLgo+ID4gPgo+ID4gPiBUaGF0IGNhbiBiZSByZWFkaWx5IGV4cGxhaW5lZCB0b28uICBOYW1l
bHksIHdpdGggdGhlIGNvbW1pdCBhYm92ZSB0aGUKPiA+ID4gTlZNZSBkZXZpY2UKPiA+ID4gc3Rh
eXMgaW4gRDAgb3ZlciBzdXNwZW5kL3Jlc3VtZSwgc28gdGhlIHJvb3QgcG9ydCBpdCBpcyBjb25u
ZWN0ZWQgdG8gYWxzbwo+ID4gPiBoYXMgdG8gc3RheSBpbgo+ID4gPiBEMCBhbmQgdGhhdCAiYmxv
Y2tzIiBwYWNrYWdlIEMtc3RhdGVzIGRlZXBlciB0aGFuIFBDMi4KPiA+ID4KPiA+ID4gSW4gb3Jk
ZXIgZm9yIHRoZSByb290IHBvcnQgdG8gYmUgYWJsZSB0byBnbyB0byBEMywgdGhlIGRldmljZSBj
b25uZWN0ZWQKPiA+ID4gdG8gaXQgYWxzbyBuZWVkcwo+ID4gPiB0byBnbyBpbnRvIEQzLCBzbyBp
dCBsb29rcyBsaWtlIChhdCBsZWFzdCBvbiB0aGlzIHBhcnRpY3VsYXIgbWFjaGluZSwgYnV0Cj4g
PiA+IG1heWJlIGluCj4gPiA+IGdlbmVyYWwpLCBib3RoIEQzIGFuZCB0aGUgTlZNZS1zcGVjaWZp
YyBQTSBhcmUgbmVlZGVkLgo+Cj4gV2VsbCB0aGlzIGlzIHJlYWxseSB1bmZvcnR1bmF0ZSB0byBo
ZWFyLiAgSSByZWNhbGwgdGhhdCB3aXRoIHNvbWUgZGlza3Mgd2Ugd2VyZQo+IHNlZWluZyBwcm9i
bGVtcyB3aGVyZSBOVk1FIHNwZWNpZmljIFBNIHdhc24ndCB3b3JraW5nIHdoZW4gdGhlIGRpc2sg
d2FzIGluIEQzLgo+Cj4gT24geW91ciBzcGVjaWZpYyBkaXNrLCBpdCB3b3VsZCBiZSBnb29kIHRv
IGtub3cgaWYganVzdCByZW1vdmluZyB0aGUgcGNpX3NhdmVfc3RhdGUocGRldikKPiBjYWxsIGhl
bHBzLgoKWWVzLCBpdCBkb2VzIGhlbHAuCgo+IElmIHNvLCA6Cj4gKiB0aGF0IG1pZ2h0IGJlIGEg
YmV0dGVyIG9wdGlvbiB0byBhZGQgYXMgYSBwYXJhbWV0ZXIuCj4gKiBtYXliZSB3ZSBzaG91bGQg
ZG91YmxlIGNoZWNrIGFsbCB0aGUgZGlza3Mgb25lIG1vcmUgdGltZSB3aXRoIHRoYXQgdHdlYWsu
CgpBdCB0aGlzIHBvaW50IGl0IHNlZW1zIHNvLgoKPiA+ID4gSSdtIG5vdCBzdXJlIHdoYXQgdG8g
ZG8gaGVyZSwgYmVjYXVzZSBldmlkZW50bHkgdGhlcmUgYXJlIHN5c3RlbXMgd2hlcmUKPiA+ID4g
dGhhdCBjb21taXQKPiA+ID4gaGVscHMuICBJIHdhcyB0aGlua2luZyBhYm91dCBhZGRpbmcgYSBt
b2R1bGUgb3B0aW9uIGFsbG93aW5nIHRoZSB1c2VyIHRvCj4gPiA+IG92ZXJyaWRlIHRoZQo+ID4g
PiBkZWZhdWx0IGJlaGF2aW9yIHdoaWNoIGluIHR1cm4gc2hvdWxkIGJlIGNvbXBhdGlibGUgd2l0
aCA1LjIgYW5kIGVhcmxpZXIKPiA+ID4ga2VybmVscy4KPiA+Cj4gPiBJIGp1c3QgYnJpZWZseSB0
ZXN0ZWQgczJpIG9uIFhQUyA5MzcwLCBhbmQgdGhlIHBvd2VyIG1ldGVyIHNob3dzIGEgMC44fjAu
OVcKPiA+IHBvd2VyIGNvbnN1bXB0aW9uIHNvIGF0IGxlYXN0IEkgZG9u4oCZdCBzZWUgdGhlIGlz
c3VlIG9uIFhQUyA5MzcwLgo+ID4KPgo+IFRvIG1lIHRoYXQgY29uZmlybXMgTlZNRSBpcyBkb3du
LCBidXQgaXQgc3RpbGwgc2VlbXMgaGlnaGVyIHRoYW4gSSB3b3VsZCBoYXZlCj4gZXhwZWN0ZWQu
ICBXZSBzaG91bGQgYmUgbW9yZSB0eXBpY2FsbHkgaW4gdGhlIG9yZGVyIG9mIH4wLjNXIEkgdGhp
bmsuCgpJdCBtYXkgZ28gdG8gUEMxMCwgYnV0IG5vdCByZWFjaCBTMGl4LgoKQW55d2F5LCBJIHJ1
biB0aGUgczJpZGxlIHRlc3RzIHVuZGVyIHR1cmJvc3RhdCB3aGljaCB0aGVuIHRlbGxzIG1lCndo
YXQgaGFzIGhhcHBlbmVkIG1vcmUgcHJlY2lzZWx5LgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
