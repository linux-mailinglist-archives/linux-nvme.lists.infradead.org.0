Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0C921630
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IGirciQgr+XZKns/1/bhO19UkiFVC15ScxtFq4b7LTM=; b=hMKkNjFq0YwSAUfP7ieVdYOXS
	Xc5xE3CDlSxAFwW1u8IgAFe+NSd/DxAwioOKP0FUDbdQ7mw9c0Trmq4rjF9vzHuXV2802bvgezpkJ
	+/mou9CmO6nZg+TNJzGf9lgVhxf6a3WGzntlZRUVFjGTknFlhBBYRdra69+pPCwldbITaJs5lMfcD
	VrDFEdYDBtR9w1FJ7fVZm0izd+HzvuRgYKu5hSrWu8FBB1QcCm5BvmCFmQD37ZeirGbUD9NDDN+ac
	98i9NbZC86ZV9oMoR2okHT3GIAt3DWClGA5JFD0sZNoNMZxkrUhXYY7c62Q0JrsCMn+KSZzS8d7qs
	Z5BDsO5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZ53-0007yt-7B; Fri, 17 May 2019 09:23:09 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZ4w-0007yH-WA
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:23:04 +0000
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hRZ4u-0001ZK-1B
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:23:00 +0000
Received: by mail-pg1-f200.google.com with SMTP id f8so4065513pgp.9
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 02:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=S+YPFrdQY2NUZJDeJcfry4XR1bc0Jzzi2DWsTIsHUbo=;
 b=WcnQp66yLinBxcUpY5S3gUOu4vYszbSYAs1LNL0jAeVBNNLPfMqdvdvG3L1TGU30Ng
 vNtYU/yOYvWcQOwfdrWHddpbaxr//k/g7TiNdJnZTy+E8VcmjkZvSqI+wF4OGRIfAy+5
 i5q5plGqHVxd92eNfpaeP5f6p89iW1AG31/x1HkFB/EynczZag+ZMzdRi0oxMvuMF0sY
 sJSfk1qXSVXgdZu/Db3h3/b1D2+PEDDWkcJQ9AU1Gs7kyAaSYoi+rB9SKloOpUD7yyXR
 hhu+R7Eg7gRET5qY2pZWaflr1nl9ZribzpLz1RpmTLiSFOR9ZSAFssV/3vUp095IeEfY
 Y/Sg==
X-Gm-Message-State: APjAAAWmBWYkh/WKX19Y6WpjptYy91taXk8mEpXnoawu9/sv8JyFqF1z
 1z16pT5tZjPVXPBE7atXcLIHUkg4wf25CPOMZxGR11/PqdtLWOkAYFHoyMwDaO0xHvBBrOzdunK
 Z3uN5Z02a2H400NTxl8AL1uMkm2nXbBfDvCT+6a3WQtGK
X-Received: by 2002:a62:470e:: with SMTP id u14mr60276559pfa.31.1558084978594; 
 Fri, 17 May 2019 02:22:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyuw0NeP48kpR1JjW2nxDuDs+JFRpSfRwFrH0HipKIo4pUMvQM+fcEdl8hfapF26AHiFHSU0Q==
X-Received: by 2002:a62:470e:: with SMTP id u14mr60276530pfa.31.1558084978241; 
 Fri, 17 May 2019 02:22:58 -0700 (PDT)
Received: from 2001-b011-380f-14b9-f46d-a5b2-b013-c5ad.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-f46d-a5b2-b013-c5ad.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:f46d:a5b2:b013:c5ad])
 by smtp.gmail.com with ESMTPSA id d15sm24893650pfm.186.2019.05.17.02.22.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 02:22:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
Date: Fri, 17 May 2019 17:22:54 +0800
Message-Id: <E72968DB-907D-41F9-BD51-5D7672659802@canonical.com>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_022303_177284_347CB9B4 
X-CRM114-Status: GOOD (  18.46  )
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
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMTY6MzksIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6Cgo+
IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDEwOjU2IFBNIFJhZmFlbCBKLiBXeXNvY2tpIDxyYWZh
ZWxAa2VybmVsLm9yZz4gIAo+IHdyb3RlOgo+PiBPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCAxMDo0
NSBQTSBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4gT24gVGh1LCBN
YXkgMTYsIDIwMTkgYXQgMTA6MjU6NDdQTSArMDIwMCwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6
Cj4+Pj4gT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgOTo0MyBQTSBLZWl0aCBCdXNjaCA8a2J1c2No
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4+PiBJZiB3ZSdyZSBnb2luZyB0byByZXBsYWNlIG91ciBT
SU1QTEVfREVWX1BNX09QUyBhcyBSYWZhZWwgc3VnZ2VzdHMsCj4+Pj4+IG1pZ2h0IGFzIHdlbGwg
YWRkIGEgLnN1c3BlbmRfbm9pcnEgY2FsbGJhY2suIFdlIGNhbiBqdXN0IHNhdmUgdGhlCj4+Pj4+
IHN0YXRlIGFnYWluIHRvIHdvcmsgYXJvdW5kIHRoaXMgdG9vLgo+Pj4+Cj4+Pj4gUmVsYXgsIHBy
ZXR0eSBwbGVhc2UuICBTYXZpbmcgdGhlIHN0YXRlIGFnYWluIHNob3VsZG4ndCBiZSBuZWNlc3Nh
cnkuCj4+Pj4KPj4+PiBMZXQncyBmaXJzdCB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyBvbi4KPj4+
Cj4+PiBIYWgsIG9rYXkgZmFpciBlbm91Z2guCj4+Pgo+Pj4gRldJVywgSSd2ZSB0cmllZCBjdXJy
ZW50IG1haW5saW5lIG9uIHR3byBkaWZmZXJlbnQgcGxhdGZvcm1zIGFuZCBJIHNlZQo+Pj4gb25s
eSB0aGUgZXhwZWN0ZWQgbnVtYmVyIG9mIGNhbGxzIHRvIHBjaV9wbV9zdXNwZW5kX25vaXJxLCBz
byBldmVyeXRoaW5nCj4+PiB3b3JrcyBmb3IgbWUuCj4+Cj4+IEFuZCBJIGRvbid0IHNlZSB3aHkg
aXQgbWlnaHQgbm90IHdvcmsgYW55d2hlcmUgZWxzZSBvdGhlciB0aGFuIGEKPj4ga2VybmVsIHNv
dXJjZSBoYWNrZWQgaW50byBwaWVjZXMgb3IgYSBwbGF0Zm9ybSB3aXRoIGZ1bmRhbWVudGFsCj4+
IHByb2JsZW1zLiA6LSkKPgo+IEkgZm9yZ290IGFib3V0IG9uZSB0aGluZyB3aGljaCBpcyByZWxl
dmFudCBoZXJlLCBzb3JyeSBhYm91dCB0aGF0Lgo+Cj4gSWYgdGhlcmUgaXMgYSBzcHVyaW91cyBF
QyB3YWtldXAgZHVyaW5nIHMyaWRsZSwgcGNpX3BtX3N1c3BlbmRfbm9pcnEoKQo+ICp3aWxsKiBi
ZSBydW4gYWdhaW4gYWZ0ZXIgcGNpX3BtX3Jlc3VtZV9ub2lycSgpIHdpdGhvdXQgZ29pbmcgdGhy
b3VnaAo+IHRoZSBlbnRpcmUgc3lzdGVtIHJlc3VtZSBhbmQgbmV4dCBzdXNwZW5kLiAgSW4gdGhh
dCBjYXNlIHRoZSBzZWNvbmQKPiBpdGVyYXRpb24gb2YgcGNpX3BtX3N1c3BlbmRfbm9pcnEoKSB3
aWxsIHB1dCB0aGUgZGV2aWNlIGludG8gRDMsIGlmCj4gdGhhdCdzIHRoZSB0YXJnZXQgcG93ZXIg
c3RhdGUgb2YgdGhlIGRldmljZSBhcyBkZXRlcm1pbmVkIGJ5Cj4gcGNpX3ByZXBhcmVfdG9fc2xl
ZXAoKSwgYmVjYXVzZSBwY2lfcG1fcmVzdW1lX25vaXJxKCkgY2FsbHMKPiBwY2lfcmVzdG9yZV9z
dGF0ZSgpIHdoaWNoIGNsZWFycyBzdGF0ZV9zYXZlZC4KPgo+IFRoYXQncyBub3Qgd2hhdCBhcHBl
YXJzIHRvIGhhcHBlbiBvbiB0aGUgdGVzdCBwbGF0Zm9ybSBhcyBwZXIgdGhlCj4gcG9zdGVkIGxv
ZywgYnV0IG5ldmVydGhlbGVzcyBpdCBjYW4gaGFwcGVuLgoKVGhlIHBhdGNoIE1hcmlvIHBvaW50
ZWQgc29sdmVzIHRoZSBpc3N1ZSBmb3IgdGhlIHRlc3QgcGxhdGZvcm0gSSB1c2VkLgoKSeKAmXZl
IHRlc3RlZCBhIGRvemVuIE5WTWVzLCBhbGwgb2YgdGhlbSB3b3JrIHByb3Blcmx5IHdpdGggS2Vp
dGjigJlzIHBhdGNoICAKc2VyaWVzLCBvbmNlIHRoZSBMUElUIGZpeCBpcyBhcHBsaWVkLgoKPgo+
IEFyZ3VhYmx5LCB0aGUgZHJpdmVyIHNob3VsZCBub3QgbmVlZCB0byB3b3JyeSBhYm91dCB0aGF0
LCBzbyB0aGF0Cj4gbmVlZHMgdG8gYmUgYWRkcmVzc2VkIGluIHRoZSBQQ0kgY29yZSBJTU8uCj4K
PiBUaGUgYXR0YWNoZWQgcGF0Y2ggc2hvdWxkIGhlbHAgKG5vdCBpbmxpbmUgdG8gYXZvaWQgZ21h
aWwtaW5kdWNlZAo+IHdoaXRlIHNwYWNlIGRhbWFnZSkuCj4KPiBJIHdpbGwgcG9zdCBpdCBwcm9w
ZXJseSB3aXRoIGEgY2hhbmdlbG9nIHNob3J0bHkuCj4gPHBjaS1wbS1za2lwLW5vaXJxLnBhdGNo
PgoKU2luY2UgdGhlIHBhdGNoIE1hcmlvIHN1Z2dlc3RlZCBzb2x2ZXMgdGhlIGlzc3VlLCBkbyB5
b3Ugc3RpbGwgd2FudCBtZSB0byAgCnRlc3QgdGhpcyBwYXRjaD8KCkthaS1IZW5nCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
