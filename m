Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEF87876E
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 10:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4uRVqxCTeO0Jf/I4cZ+mzY2roO4E5n4xvr/sxLZDw0=; b=ZJl+QxsoNaesnH
	ZNzoIf8MLxYmmekjx+XasNMxjwgpHgcmk+Fm0BasJXyV0Ct7FVYSpuEtppb87UCPC1RLTgQRBmA11
	JB50SNaWy3XGWPsB2RK3bzuFZXtfW088RFwaCc1+4N2crj+6al0aFIZPKDa3E9SVeXqjXlKBW2vH3
	/S78lcrGHbSnC1NtczxwZ9pxTWB/i68n5b8bkhhT8JrrbbyRhse6p9uBz2KfEF9gBwK+h+dlNQnhw
	mdLDLS3b2qLxkoZ/vTrCGClAMxYy22x7OD6Vj2IVSGOITx8wWwkOT6dJ0CqANHJe1qdqhNBgPy/fw
	iSfTqx6tt8lCToe2TMzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs14q-00043K-Ur; Mon, 29 Jul 2019 08:32:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs14Y-0003rR-7I
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 08:31:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A8B88B02A;
 Mon, 29 Jul 2019 08:31:54 +0000 (UTC)
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
 <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <df50ec95-0ca1-58be-1660-101529a72662@suse.de>
Date: Mon, 29 Jul 2019 10:31:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_013158_553492_64CFC259 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yNi8xOSA3OjM5IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBXZWVsbGxsIC4u
LiBJJ20gbm90IHN1cmUgaWYgSSB0b3RhbGx5IGFncmVlIHdpdGggdGhpcyBvbmUuCj4gCj4gVGhh
dCdzIGZhaXIuLi4KPiAKPj4gQXMgeW91IG1pZ2h0IGtub3cgSSdtIGNoYXNpbmcgZG93biB0aGUg
bXlzdGVyaW91cyByZXNldC9yZXNjYW4gaXNzdWUsCj4+IHRvbywgYW5kIHN0aWxsIGhhdmVuJ3Qg
YmVlbiBhYmxlIHRvIHJlc29sdmUgaXMgcHJvcGVybHkuCj4gCj4gSGF2ZSB5b3UgdHJpZWQgdGhl
IHBhdGNoIHRoYXQgSSBwcm9wb3NlZCB0byB5b3U/Cj4gClllYWguIEJ1dCByZXBvcnRzIGFyZSBz
dGlsbCBpbmNvbmNsdXNpdmUgZHVlIHRvIHRoZSBzZWNvbmQgcHJvYmxlbS4KQW5kCgo+IFRoaXMg
aXMgYSBkaWZmZXJlbnQgcHJvYmxlbSB0aGFuIHdoYXQgeW91IHJlcG9ydGVkLCB0aGlzIGlzCj4g
YWRkcmVzc2luZyB0aGUgc2NlbmFyaW8gdGhhdCB0aGUgaG9zdCBjb25uZWN0cyBhbmQgcXVpY2ts
eQo+IGRpc2Nvbm5lY3RzIGZyb20gYSBjbGllbnQgYmVmb3JlIHRoZSBzY2FuIGlzIGNvbXBsZXRl
ZCBBTkQKPiBtdWx0aXBhdGggaXMgZW5hYmxlZC4KPiAKLi4uLiBXaGljaCBpcyBwcmVjaXNlbHkg
dGhlIGZhaWx1cmUgc2NlbmFyaW8gZm9yIG15IHByb2JsZW0sIHRvbyAuLi4KCj4+IEJ1dCBsb29r
aW5nIGF0IHRoaXMgcGF0Y2ggdGhlIGh1bmsgZm9yIGNsZWFyaW5nIHRoZSBjdXJyZW50IHBhdGgg
b24KPj4gcmVtb3ZpbmcgbmFtZXNwYWNlcyBsb29rcyBsaWtlIGEgZ29vZCBpZGVhIG9uIGl0c2Vs
Zi4KPj4gQ2FyZSB0byBzZXBhcmF0ZSB0aGlzIG91dD8KPiAKPiBTdXJlLCBhbHRob3VnaCBpdHMg
ZGVzaWduZWQgdG8gYWRkcmVzcyB0aGlzIGlzc3VlIGFuZCBub3QgdmVyeQo+IGVmZmVjdGl2ZSB3
aXRob3V0IHRoZSBvdGhlciBwYXJ0Lgo+IAo+PiBUaGluZyBpcywgSSBoYWQgYmVlbiBub3RpZmll
ZCBvbiBhIHJlZ3Jlc3Npb24gY2F1c2VkIGJ5IGNvbW1pdAo+PiA1MjVhYTVhNzA1ZDg2ZSAoIm52
bWUtbXVsdGlwYXRoOiBzcGxpdCBiaW9zIHdpdGggdGhlIG5zX2hlYWQuLi4iKSwKPj4gd2hpY2gg
bWFuaWZlc3RzIGl0c2VsZiBieSBhIHNwdXJpb3VzIEkvTyBlcnJvciBkdXJpbmcgZmFpbG92ZXIu
Cj4gCj4gSG1tLCB0aGlzIGlzIGludGVyZXN0aW5nLiBOb3Qgc3VyZSBob3cgdGhpcyBzcGVjaWZp
YyBjb21taXQgd291bGQKPiBpbnRyb2R1Y2Ugc3VjaCBhbiBpc3N1ZS4KPiAKU2VlPyBNZSBuZWl0
aGVyLiBTYWRseSB0aGV5IF9oYXZlXyBiaXNlY3RlZCBpdCwgYW5kIHRoaXMgcmVhbGx5IGlzIHRo
ZQpwYXRjaCBpbnRyb2R1Y2luZyB0aGUgcmVncmVzc2lvbi4KQ3VycmVudCB0aGlua2luZyBpcyB0
aGF0IHdlJ3JlIGRyb3BwaW5nIGFsbCBwYXRocyBkdXJpbmcgcmVzZXQsIGNhdXNpbmcKbnNfaGVh
ZCB0byBiZSBkZWxldGVkLCB0b28uIFRoZSBuc19oZWFkIHdpbGwgZ2V0IHJlY3JlYXRlZCBpbW1l
ZGlhdGVseQphZnRlcndhcmRzLCBzbyB1c2Vyc3BhY2Ugd291bGRuJ3QgZXZlbiBub3RpY2UgdGhh
dC4KQnV0IGlmIHdlIGhhdmUgYSBub24tZW1wdHkgcmVxdWV1ZSBsaXN0IHRoYXQgd2lsbCBiZSBm
bHVzaGVkIG9ubHkgd2hlbgpkb2luZyB0aGUgZmluYWwgcHV0IG9uIHRoZSBuc19oZWFkIHN0cnVj
dHVyZSwgY2F1c2luZyBhbGwgSS9PIHRvIGZhaWwuCgpTbyBsb29raW5nIGF0IGl0IHRoYXQgd2F5
LCBpdCBfbWlnaHRfIGFjdHVhbGx5IGJlIHRoYXQgeW91ciBwYXRjaCBoZWxwcwpmb3IgdGhhdCBz
aXR1YXRpb24sIHRvbywgc2VlaW5nIHRoYXQgd2UgY2FuJ3QgcmVsaWFibHkgZW51bWVyYXRlCm5h
bWVzcGFjZXMgZHVyaW5nIHJlc2V0LgoKSSdsbCBnaXZlIGl0IGEgdHJ5IGFuZCB3aWxsIGdldCBi
YWNrIHRvIHlvdSB3aXRoIHRoZSByZXN1bHRzLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFu
bmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2Uu
ZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1h
eGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5
IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
