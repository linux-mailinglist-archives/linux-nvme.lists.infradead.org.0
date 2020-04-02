Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AAD19C6CC
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 18:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SzmLJgxXnVMNmti5e99vuXfmiGsqI/G12U2w8shnWrk=; b=oy+y9HOwXjcVvOML2Db0ZYz/t
	2P+HUQ2AaqmyYN3W84xOYRaQ6uM8rjyqA2L3PnOMlqFTXcoulDRrOnl4UvC+RWa4MmVGC7ibng1qA
	G0bd+fxwYhB+VbEkZINuH40nGJGZLAEwxL8YDRBIEjx6Ax8WFzaii5a62XZCcnS1CQwVlYLvSrOkU
	IWZmn/tYitn83uNDJoAROoQRL18uTaCCfjEsIWyrU6nw6H8bw0rsVWKmhO5vce/CGMMxcj0kp5g8n
	kOhodiYYHRbSMM7oITMc8SzI5qNVDAtThWg+/1K0lgWkpikq4o7NcJIR/YCjJjjGQHUWuobKxVGkM
	k/RiXcrnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2Rz-0007FZ-4w; Thu, 02 Apr 2020 16:12:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2Rv-0007FE-Fb
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 16:12:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0FA2DAEB1;
 Thu,  2 Apr 2020 16:12:07 +0000 (UTC)
Subject: Re: nvme deadlock with ANA
To: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
References: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
 <20200402160003.GA3901@redsun51.ssa.fujisawa.hgst.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <9d8c4bed-1b90-41c0-9cf3-2907bb21889d@suse.de>
Date: Thu, 2 Apr 2020 18:12:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402160003.GA3901@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_091211_664380_946A08A3 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8yLzIwIDY6MDAgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIFdlZCwgTWFyIDI1LCAy
MDIwIGF0IDExOjIzOjUwUE0gLTA3MDAsIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4+IEhleSwKPj4K
Pj4gSSB3YW50IHRvIGNvbnN1bHQgd2l0aCB5b3UgZ3V5cyBvbiBhIGRlYWRsb2NrIGNvbmRpdGlv
biBJJ20gYWJsZSB0bwo+PiBoaXQgd2l0aCBhIHRlc3QgdGhhdCBpbmNvcnBvcmF0ZSBjb250cm9s
bGVyIHJlY29ubmVjdCwgYW5hIHVwZGF0ZXMKPj4gYW5kIGxpdmUgSS9PIHdpdGggdGltZW91dHMu
Cj4+Cj4+IFRoaXMgaXMgdHJ1ZSBmb3IgTlZNZS9UQ1AsIGJ1dCBjYW4gYWxzbyBoYXBwZW4gaW4g
cmRtYSBvciBwY2kgZHJpdmVycyBhcwo+PiB3ZWxsLgo+Pgo+PiBUaGUgZGVhZGxvY2sgY29tYmlu
ZXMgNCBmbG93cyBpbiBwYXJhbGxlbDoKPj4gLSBucyBzY2FubmluZyAodHJpZ2dlcmVkIGZyb20g
cmVjb25uZWN0KQo+PiAtIHJlcXVlc3QgdGltZW91dAo+PiAtIEFOQSB1cGRhdGUgKHRyaWdnZXJl
ZCBmcm9tIHJlY29ubmVjdCkKPj4gLSBGUyBJL08gY29taW5nIGludG8gdGhlIG1wYXRoIGRldmlj
ZQo+Pgo+PiAoMSkgbnMgc2Nhbm5pbmcgdHJpZ2dlcnMgZGlzayByZXZhbGlkYXRpb24gLT4gdXBk
YXRlIGRpc2sgaW5mbyAtPgo+PiAgICAgIGZyZWV6ZSBxdWV1ZSAtPiBidXQgYmxvY2tlZCwgd2h5
Pwo+Pgo+PiAoMikgdGltZW91dCBoYW5kbGVyIHJlZmVyZW5jZSB0aGUgZ191c2FnZV9jb3VudGVy
IC0gPiBidXQgYmxvY2tzIGluCj4+ICAgICAgdGhlIHRpbWVvdXQgaGFuZGxlciwgd2h5Pwo+Pgo+
PiAoMykgdGhlIHRpbWVvdXQgaGFuZGxlciAoaW5kaXJlY3RseSkgY2FsbHMgbnZtZV9zdG9wX3F1
ZXVlKCkgLT4gd2hpY2gKPj4gICAgICB0YWtlcyB0aGUgbmFtZXNwYWNlc19yd3NlbSAtID4gYnV0
IGJsb2Nrcywgd2h5Pwo+Pgo+PiAoNCkgQU5BIHVwZGF0ZSB0YWtlcyB0aGUgbmFtZXNwYWNlc19y
d3NlbSAtPiBjYWxscyBudm1lX21wYXRoX3NldF9saXZlKCkKPj4gICAgICAtPiB3aGljaCBzeW5j
aHJvbml6ZSB0aGUgbnNfaGVhZCBzcmN1IChzZWUgY29tbWl0IDUwNGRiMDg3YWFjYykgLT4KPj4g
ICAgICBidXQgaXQgYmxvY2tzLCB3aHk/Cj4gCj4gCj4gV2h5IGlzIGFuYSB1cGRhdGluZyBvY2N1
cmluZyB1bmRlciBhIHdyaXRlIGxvY2s/IEFGQUlLLCB0aGF0IHNob3VsZCBiZQo+IG5lY2Vzc2Fy
eSBvbmx5IGlmIGl0J3MgbWFuaXB1bGF0aW5nIHRoZSBjdHJsLT5uYW1lc3BhY2VzIGxpc3QsIGJ1
dCB0aGlzCj4gaXMganVzdCBpdGVyYXRpbmcgaXQuIFdoYXQncyB0aGUgaGFybSBpbiB1c2luZyB0
aGUgcmVhZCBsb2NrIGhlcmU/Cj4gICAKCldoaWxlIHdlIGRvIGxvY2sgbnMtPmhlYWQgd2hlbiB1
cGRhdGluZyB0aGUgYW5hIHN0YXRlLCB3ZSBkbyBub3QgcHJvdGVjdCAKdGhlIG5zLT5oZWFkIHBv
aW50ZXIgaXRzZWxmLgpTbyBJIGd1ZXNzIHRoZSBpbnRlbnRpb24gd2FzIHRvIGF2b2lkIGFueW9u
ZSBtZXNzaW5nIHdpdGggdGhlIG5zLT5oZWFkIApwb2ludGVyIHdoaWxlIHRyYXZlcnNpbmc7IGJ1
dCBsb29raW5nIGNsb3NlciBJIHRoaW5rIHdlIHNob3VsZCBiZSBnb29kIAp3aXRoIGp1c3QgdGFr
aW5nIHRoZSByZWFkIGxvY2suCkNhbiB5b3UgdHJ5IGlmIGl0IG1ha2VzIGEgZGlmZmVyZW5jZT8K
CkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1s
ZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHbWJI
LCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcp
LCBHZXNjaMOkZnRzZsO8aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdAps
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
