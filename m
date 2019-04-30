Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBE0F082
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IW0w4RNNZi2SAbME6mD9nFrvgUjtT62KCfFuFLvBM+M=; b=hEcGTqjkMSBC4OUg5BWHAEdi5
	Mz2dyA5cQhaIS2f1hOop0oYXjEknjE1U90seN5ogQpzibhNyGZNk50PSToWi5aTSBbiRBiQ2WmtRE
	DfozUW649ajzB1q0TuiOsIwwqUy0NajTSlJZvuGpJlmRO2cso84n0ZWELOfQqWZ+5PnKQUMdiNVWi
	XkmGi3lM3I2Gpei0oE8nqqVaUnqcfi8NDz1fcBNAGMXu6/IWAbRCFhSK9Hn6sPX16yEGYzHJvxR2e
	jKFKExUIQz3W9fAdrl6G5t0bmc3C717M1odd0jVqgEOUvEWj1u0F6B3tQPdjh2NH8xrk7WsjB9720
	1AAGczrvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMOP-00034p-6p; Tue, 30 Apr 2019 06:37:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMOK-00034E-It
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:37:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 08770AC70;
 Tue, 30 Apr 2019 06:37:23 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
 <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
 <785558d1-519d-78c1-0a1b-7517f771c1e2@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <b4f9b6e4-f0b4-312f-1eeb-4c292a8f9af1@suse.de>
Date: Tue, 30 Apr 2019 08:37:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <785558d1-519d-78c1-0a1b-7517f771c1e2@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_233724_768695_383E4487 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8zMC8xOSA3OjU0IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBJIGRvIGxpa2Ug
dGhlIGlkZWEsIGJ1dCBub3QgbmVjZXNzYXJpbHkgdGhlIG5hbWluZy4KPj4gQ2FuJ3Qgd2UganVz
dCBjYWxsIGl0ICdkZWZhdWx0LmNvbmYnID8KPiAKPiBJdCdzIG5vdCBhcyBzZWxmLWV4cGxhbmF0
b3J5LCBidXQgSSdtIGZpbmUgd2l0aCBkZWZhdWx0LmNvbmYuLi4KPiAKPj4gV2hhdCBhYm91dCBw
cmVjZWRlbmNlPwo+PiBJIHdvdWxkIGhhdmUgZXhwZWN0ZWQgdGhhdCB3ZSBzaG91bGQgaGF2ZQo+
Pgo+PiBkZWZhcmdzLmNvbmYKPj4gZGlzY292ZXJ5LmNvbmYKPj4gPGNtZGxpbmU+Cj4+Cj4+IElz
IHRoYXQgdGhlIGNhc2U/Cj4gCj4gRWZmZWN0aXZlbHkgeWVzLCBidXQgZGVmYXJncyBkb2VzIG5v
dCBhbGxvdyB0cmFuc3BvcnQsdHJhZGRyLHRyc3ZjaWQsbnFuCj4gcGFyYW1ldGVycyAod2hpY2gg
ZG9uJ3QgbWFrZSBzZW5zZSksIGFuZCBkaXNjb3ZlcnkuY29uZiBpcyBkZXNpZ25lZCB0bwo+IGhv
bGQgZXhhY3RseSB0aG9zZS4gU28gaW4gcHJhY3RpY2UgdGhleSBzaG91bGQgbm90IG92ZXJsYXAu
Cj4gClVoLW9oLiBJIF9kb18ga25vdyBvZiBjYXNlcyB3aGVyZSBkaXNjb3ZlcnkuY29uZiBpcyB1
c2VkIGZvciBwcmVjaXNlbHkgCnRoaXMgcHVycG9zZSwgaWUgaG9sZGluZyBfYWxsXyBhcmd1bWVu
dHMuCkFuZCBpbiB0aGUgYWJzZW5zZSBvZiBhbnkgb3RoZXIgd2F5IGV4aXN0aW5nIGltcGxlbWVu
dGF0aW9ucyB3aWxsIGJlIAp1c2luZyBhIHZlcnkgc2ltaWxhciB0aGluZy4KCj4gQWxzbywgd2Ug
b25seSBnbyB0byBkaXNjb3ZlcnkuY29uZiBpZiB3ZSBkaWQgbm90IGdldCBhIHRyYW5zcG9ydCt0
cmFkZHIKPiAod2hpY2ggYXJlIG1hbmRhdG9yeSkuIFNvIGl0cyBub3QgZXhhY3RseSB0aGUgb3Jk
ZXIgeW91IG1lbnRpb25lZCwgbW9yZQo+IGxpa2U6Cj4gCj4gZGVmYXJncy5jb25mCj4gPGNtZGxp
bmU+Cj4gaWYgdHJhbnNwb3J0K3RyYWRkciBub3QgZ2l2ZW4KPiBkaXNjb3ZlcnkuY29uZgo+IApI
b3cgdmVyeSBjdXJpb3VzIC4uLgpJIHdvdWxkIGhhdmUgZXhwZWN0ZWQgdGhhdCBhbnkgY29tbWFu
ZC1saW5lIGFyZ3Mgd291bGQgb3ZlcndyaXRlIGFueSAKYXJndW1lbnRzIGdpdmVuIGluIHRoZSBj
b25maWd1cmF0aW9uIGZpbGVzLgpCdXQgZ2l2ZW4gdGhhdCBkaXNjb3ZlcnkuY29uZiBjYW4gY29u
dGFpbiBzZXZlcmFsIGxpbmVzIEkgY2FuIHNlZSB0aGUgCnByb2JsZW0uCgpIb3dldmVyLCB0byBj
bGVhbiB0aGluZ3MgdXAgd2Ugc2hvdWxkIGJlIHVwZGF0aW5nIHRoZSBwYXJzZXIgdG8gaWdub3Jl
IApvciBldmVuIGNhbGwgYW4gZXJyb3IgaWYgd2UgZmluZCBhIGxpbmUgaW4gZGlzY292ZXJ5LmNv
bmYgd2hpY2ggZG9lcyBub3QgCnNwZWNpZnkgdHJhbnNwb3J0K3RyYWRkci4KSnVzdCB0byBhdm9p
ZCBjb25mdXNpb24uCgo+PiBBbmQgc2hvdWxkbid0IHdlIGRvY3VtZW50IHRoYXQgc29tZXdoZXJl
Pwo+IFdoZXJlIHdvdWxkIGJlIHRoZSBwbGFjZSB0byB1cGRhdGUgdGhpcz8KbWFucGFnZT8KCkNo
ZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFn
ZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1
MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
