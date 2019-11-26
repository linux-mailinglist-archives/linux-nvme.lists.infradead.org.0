Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135610A232
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U2r+QtT0R5/YpxGjcyuI37qN+/427byqsi7s58hJPN8=; b=W7Gmp6dskTBgUmSFheFGGOPaf
	5cbQL3JzKyvl+9YwHwnDNAUDS9ZodXUO7pp9RlPjlRe0/iKiZnb/r2psMsJcAapBfQy9TGTxEjvlE
	pG1dNdQqoVtGCEVIFIqJ6WwToUx+4Gd6zi1ect8UMvW4LS/cwtftA22OcrNu4fCScWi243BtH+3BM
	ITjYPxefGvCKTx1HCZcV2UJNHJRqdm5/cjTrvk/S+0vqQ69CGMAw7sI/m1CFmu/nA5TkzPYbY6hLU
	cEe1xwnajvMX9ZRUkV7MRg3zmmwrnuS2DxMTJHh6Pq3sI7NLr5q3qEapKA7AyJH8dFMrE3PPW++vE
	XlK5Co+1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdnJ-0005cV-Lz; Tue, 26 Nov 2019 16:34:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdnD-0005cC-AS
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 16:34:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 14210BC7B;
 Tue, 26 Nov 2019 16:34:22 +0000 (UTC)
Subject: Re: [PATCH] nvme: always treat DNR status as no-retryable
To: Keith Busch <kbusch@kernel.org>
References: <20191126133749.72267-1-hare@suse.de>
 <20191126161532.GB2906@redsun51.ssa.fujisawa.hgst.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <3186d79f-910a-18f6-dcae-080b370bcab3@suse.de>
Date: Tue, 26 Nov 2019 17:34:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191126161532.GB2906@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_083423_509032_49C0A0A0 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTEvMjYvMTkgNToxNSBQTSwgS2VpdGggQnVzY2ggd3JvdGU6Cj4gT24gVHVlLCBOb3YgMjYs
IDIwMTkgYXQgMDI6Mzc6NDlQTSArMDEwMCwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+PiBJZiB0
aGUgRE5SIGJpdCBpcyBzZXQgaW4gdGhlIGNvbW1hbmQgc3RhdHVzIHdlIHNob3VsZCBub3QgcmV0
cnkKPj4gdGhlIGNvbW1hbmQsIGlycmVzcGVjdGl2ZSBvZiB3aGF0IHRoZSBhY3R1YWwgc3RhdHVz
IGlzLgo+PiBTbyBtYXAgaXQgZGlyZWN0bHkgdG8gQkxLX1NUU19UQVJHRVQgdG8gaW5mb3JtIHVw
cGVyIGxheWVycyB0bwo+PiBub3QgcmV0cnkgdGhlIGNvbW1hbmQsIG5vdCBldmVuIG9uIGFub3Ro
ZXIgcGF0aC4KPiAKPiBXaHkgY2FuJ3QgYSBETlIgZXJyb3IgYmUgcGF0aCBzcGVjaWZpYywgbGlr
ZSBpZiBJIGRldGFjaCBhIG5hbWVzcGFjZQo+IGZyb20gb25lIG9mIHRoZSBjb250cm9sbGVycz8K
PiAgIApJJ3ZlIGRpc2N1c3NlZCB0aGUgdmVyeSBzYW1lIHF1ZXN0aW9uIHdpdGggRnJlZCBLbmln
aHQsIGFuZCBhY2NvcmRpbmcgdG8gCmhpbSB0aGUgJ0ROUicgYml0IGlzIF9jb21tYW5kXyBzcGVj
aWZpYywgaWUgX3RoaXMgcGFydGljdWxhciBjb21tYW5kXyAKc2hvdWxkIG5vdCBiZSByZXRyaWVk
LgpBbnkgZXZlbnR1YWwgYWx0ZXJuYXRpdmUgcGF0aCBzaG91bGQgbm90IGJlIGNvbnNpZGVyZWQu
CgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFt
bGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIu
IDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMs
IFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
