Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D42625E4A
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 08:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+kaim1V0lWeMt3OnYNl4fjYDffs8v9KKrzBhxzw0YxE=; b=UvuBLM4lfK3yUSHhIWmbUqdGa
	Poqm/+zx1lR09tBrQCt5Q80aqCkziOhEa3v2PRpou6GR12HOlPmOCJ3ebHG5EW1A4pTLRO7P553II
	AAaj3aA0qAlQ7OhDmrCk6NaxcS4hVKXALQXFWc4WzkMgqVaeV7dS0GA4RfHGEvS0wHR9uLKi6vjP3
	eEIiFvHe5NjHrA6b+tbT1O8EFGnyq71NXPFxbGwImkmCxaWPPCtl8WCWJKftaePF7ITpnLFFm16PP
	QyVvHDgoWPmjIvaC8ytIt3gyAxFatFg9EZXW9wdzjXXEzVgb/tGB2lEjab1bHMiWhiZT7CuDyqZ7x
	Ui0sxu6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTL2q-0001Gp-HH; Wed, 22 May 2019 06:48:12 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTL2l-0001GT-LK
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 06:48:09 +0000
Received: from mail-pg1-f198.google.com ([209.85.215.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hTL2g-0001SQ-Le
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 06:48:02 +0000
Received: by mail-pg1-f198.google.com with SMTP id s5so1040345pgv.21
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 23:48:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Lvqzk74RBX5Ig+qQU3pv/ZEfYuTefZC9pYkzOJXeaUU=;
 b=qSS+V6inCU5uwmopwDnOR06SAg3p8rk2uueN4icB6cyNqKTyytJNyFJWpfpsCI/t8Q
 9of8qx0DpKZRx2DWwJg1uUsa6PqAQgz4xxkd+LsXenGCAgekbD4Al2w6eNyf819/GIAO
 5cDoGJNrsAnapWp6L+hJVRUkmKC6BNJM1vX8lMXlxzuO1JfpBcZmFBjTN4t7o8MpCp1m
 c7k2eLoufa3bMstZt/0BfYAkgm7G1rTVdoE6aGrf5oHrpRbf8ITgFk/A5Be1BhizlLdI
 4Qh6fhrO/oyFLiwc0G7iceqJda92tfAgpte2Wrh300CuVsBDE0sVq7crrDWkhCxf3LpY
 ooRA==
X-Gm-Message-State: APjAAAXNMoayeVQzEZ9JnY1DHK9fGi+PdeRMkxFUl0CQyKKTYRv280fo
 kC7ROo0V+CNzD3CrU4YGv8232bhsnDhJWEU4rnj7sGVWw4Wg9DeUwqa+VRk+IiheK+f4um82fob
 O2gZ3a4FJM7Sfk0BjyIC404B8VjxZ7QgQtQkHuF4vH83T
X-Received: by 2002:a65:420a:: with SMTP id c10mr20396990pgq.376.1558507681337; 
 Tue, 21 May 2019 23:48:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGkUE3f/t+JBBGsckHXykCrApPPerpTtHXADi8XOn7+b124KgZYDUB8Sto0gshDa1y/BtOLg==
X-Received: by 2002:a65:420a:: with SMTP id c10mr20396980pgq.376.1558507681139; 
 Tue, 21 May 2019 23:48:01 -0700 (PDT)
Received: from [10.101.46.168] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id l7sm25274457pfl.9.2019.05.21.23.47.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 23:48:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
Date: Wed, 22 May 2019 14:47:57 +0800
Message-Id: <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
References: <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_234807_841912_C8489D5C 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

YXQgNjozNCBQTSwgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToK
Cj4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTE6MzUgQU0gQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+IHdyb3RlOgo+PiBPbiBGcmksIE1heSAxNywgMjAxOSBhdCAxMToxNzo1MkFNICsw
MjAwLCBSYWZhZWwgSi4gV3lzb2NraSB3cm90ZToKPj4+IEFGQUlDUywgdXNpbmcgRE1BIHdoaWxl
IGNyZWF0aW5nIGEgaGliZXJuYXRpb24gc25hcHNob3QgaW1hZ2Ugb2YKPj4+IG1lbW9yeSB3b3Vs
ZCBub3QgYmUgYSBnb29kIGlkZWEsIHNvIHRoZSBob3N0IG1lbW9yeSBidWZmZXIgc2hvdWxkIGJl
Cj4+PiBkaXNhYmxlZCBkdXJpbmcgdGhlICJmcmVlemUiIHN0YWdlIG9yIGhpYmVybmF0aW9uIChh
bmQgaXQgY2FuIGJlCj4+PiByZS1lbmFibGVkIHdoZW4gdGhhdCBzdGFnZSBpcyBjb21wbGV0ZSku
Cj4+Cj4+IE9uY2Ugd2UnZCBkaXNhYmxlIHRoZSBITUIgdGhlIGhhcm0gaXMgZG9uZSwgc28gbm8g
cG9pbnQgaW4gcmUtZW5hYmxpbmcgaXQuCj4KPiBCdXQgYWZ0ZXIgdGhlICJmcmVlemUiIHN0YWdl
IHRoZSBpbWFnZSBtYXkgbmVlZCB0byBiZSB3cml0dGVuIHRvIHRoZQo+IGRldmljZSwgc28gSSBn
dWVzcyBpdCB3b3VsZCBiZSB1c2VmdWwgdG8gZW5hYmxlIHRoZSBITUIgZm9yIHRoYXQ/Cj4KPj4g
V2hhdCB3b3VsZCB0aGlzIG1lYW4gaW4gdGVybXMgb2Ygb3BzPyAgT25seSBkaXNhYmxlIGluIGZy
ZWV6ZV9ub2lycT8KPgo+IEl0IGNhbiBiZSBkaXNhYmxlZCBpbiBhbnkgb2YgdGhlICJmcmVlemUi
IGNhbGxiYWNrcyAoZnJlZXplLAo+IGZyZWV6ZV9sYXRlLCBmcmVlemVfaXJxKSB3aGVyZSBpdCBt
YWtlcyBtb3N0IHNlbnNlLiAgSSBhbHNvIHdvdWxkCj4gcmUtZW5hYmxlIGl0IGluIHRoZSBjb21w
bGVtZW50YXJ5ICJ0aGF3IiBvbmUsIGluIGNhc2UgdGhlIGRldmljZSB3aWxsCj4gYmUgdXNlZCB0
byBzdG9yZSB0aGUgaW1hZ2UuCj4KPj4gT3Igc3RpY2sgdG8gdGhlIHNpbXBsZSBvcHMgYW5kIGZp
bmQgYW5vdGhlciBoZWxwZXIgdGhhdCBpbmRpY2F0ZXMgd2UgYXJlICAKPj4gZG9pbmcgYSBoaWJl
cm5hdGlvbj8KPgo+IFRoZXJlIGFyZSBubyBoZWxwZXJzIGZvciB0aGF0LCBpdCBuZWVkcyB0byBi
ZSBkb25lIG1hbnVhbGx5LCBzb3J0IG9mLgoKSSd2ZSBnb3QgY29uZmlybWF0aW9uIGZyb20gVmVu
ZG9yLCBkaXNhYmxpbmcgSE1CIGlzbuKAmXQgbmVjZXNzYXJ5IHdoZW4gdGhlICAKaG9zdCBzdGF5
cyBhdCBEMCwgd2hpY2ggaXMgd2hhdCB3ZSB1c2UgaW4gUzJJLgpJ4oCZdmUgZG9uZSBzb21lIHRl
c3RpbmcgYW5kIEkgY2FuIGNvbmZpcm0gUzJJIHN1c3BlbmQvcmVzdW1lIGNhbiB3b3JrICAKd2l0
aG91dCBkaXNhYmxpbmcgSE1CLgoKS2FpLUhlbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK
