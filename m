Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB6DF010
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 07:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EfuBNE/d85WwVu/p31/j/zWLICQWDujJMjTr9aw3r5Y=; b=HdBlVFjFh+zsqnH5SyS3j8yEK
	Z1/YDcNV0MOLuCLBkzUe5UBGppi8BdbXlWDyGMN/y0bOOuB5yJrClSM97g18kDr4TrXzJnTUFSjzb
	v9tqtz+10xBTibo9S8xPvuZxbBEyJ+08bLanbSuX8VgqqNn3tzZM05H8+VW9y/FAY+mLEx7I52NwS
	LY4yaZyb5LNpnAMk1qy+yRJeOL/bdtgOD5ExRmwbkYPjY9ARqPwI43Pl9bJ/oJrmi17Sf0RulRji4
	MRVqW+hHi1TXcDdcXajNClg62weiXphJ4DUQhui5mVqsKbAfn64ULXV3r1uF90LU9jaaG8lopo75Z
	/Hurk/CrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLYM-00005I-W6; Tue, 30 Apr 2019 05:43:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLYH-0008WM-QW
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 05:43:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0DE35ACC4;
 Tue, 30 Apr 2019 05:43:32 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <493df3a7-6d25-9fd1-57ff-addbf37fcf22@suse.de>
Date: Tue, 30 Apr 2019 07:43:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429225338.6866-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_224338_007884_E9C8E2D4 
X-CRM114-Status: GOOD (  23.32  )
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

T24gNC8zMC8xOSAxMjo1MyBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiBJbnRyb2R1Y2UgL2V0
Yy9udm1lL2RlZmFyZ3MuY29uZiB3aGVyZSB3ZSBhbGxvdyB0aGUgdXNlciB0bwo+IHNwZWNpZnkg
Y29ubmVjdC9kaXNjb3ZlciBwYXJhbWV0ZXJzIG9uY2UgYW5kIG5vdCBmb3IgZXZlcnkKPiBjb250
cm9sbGVyLiBUaGUgY2xpIHdpbGwgYWx3YXlzIGluZ2VzdCB0aGUgY29udGVudCBvZiB0aGlzCj4g
ZmlsZSBiZWZvcmUgcGFyc2luZyBjbWRsaW5lIGFyZ3Mgc3VjaCB0aGF0IHRoZSB1c2VyIGNhbgo+
IG92ZXJyaWRlIHRoZW0uCj4gCj4gVGhlIGZvcm1hdCBpcyBzaW1wbHkgd3JpdGluZyB0aGUgYXJn
dW1lbnRzIGludG8gdGhlIGZpbGUgYXMKPiBpZiB0aGV5IHdlcmUgYXBwZW5kZWQgdG8gdGhlIGV4
ZWN1dGlvbiBjb21tYW5kLgo+IAo+IEFsc28sIHByb3Blcmx5IGluc3RhbGwgdGhpcyBmaWxlIHdp
dGggc29tZSBtaW5pbWFsIGRvY3VtZW50YXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogU2FnaSBH
cmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiBUaGlzIHdhcyByYWlzZWQgYmVmb3Jl
IGluIHRoZSBwYXN0IHRoYXQgd2UgZG9uJ3QgaGF2ZSBzb21lIHBsYWNlCj4gdG8gc3RvcmUgZGVm
YXVsdCBjb25uZWN0IGFyZ3MuCj4gCj4gRm9yIGV4YW1wbGUsIHdoZW4gaGFuZGxpbmcgYXV0b21h
dGljIGRpc2NvdmVyeSBjaGFuZ2UgbG9nIGV2ZW50cwo+IHRoaXMgY2FuIGJlIGEgd2F5IGZvciB0
aGUgdXNlciB0byBzZXQgZ2xvYmFsIGRlZmF1bHQgYXJndW1lbnRzLgo+IAo+IEZlZWRiYWNrIGlz
IHdlbGNvbWUuCj4gCj4gICBNYWtlZmlsZSAgICAgICAgICAgIHwgIDMgKysrCj4gICBldGMvZGVm
YXJncy5jb25mLmluIHwgIDUgKysrKwo+ICAgZmFicmljcy5jICAgICAgICAgICB8IDYzICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgbnZtZS5zcGVjLmlu
ICAgICAgICB8ICAxICsKPiAgIDQgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGV0Yy9kZWZhcmdzLmNvbmYuaW4KPiAKCkkgZG8gbGlrZSB0aGUg
aWRlYSwgYnV0IG5vdCBuZWNlc3NhcmlseSB0aGUgbmFtaW5nLgpDYW4ndCB3ZSBqdXN0IGNhbGwg
aXQgJ2RlZmF1bHQuY29uZicgPwoKV2hhdCBhYm91dCBwcmVjZWRlbmNlPwpJIHdvdWxkIGhhdmUg
ZXhwZWN0ZWQgdGhhdCB3ZSBzaG91bGQgaGF2ZQoKZGVmYXJncy5jb25mCmRpc2NvdmVyeS5jb25m
CjxjbWRsaW5lPgoKSXMgdGhhdCB0aGUgY2FzZT8KQW5kIHNob3VsZG4ndCB3ZSBkb2N1bWVudCB0
aGF0IHNvbWV3aGVyZT8KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJ
ICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAg
ICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5
MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkg
UmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
