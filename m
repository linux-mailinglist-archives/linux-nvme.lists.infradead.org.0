Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CF71FFEB
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 09:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o+3dWm6jezmVuzhxoFMYKyS/YwU6YcqIXUfetOyEfog=; b=kHpDzBgzgz9info9TX4/t1aNd
	OP0gzEkwCcj17WMHalPVikqBVhiRf0lhOpD6KTMkxKSMgTHhPgBr5F8mVmtg6yUkhkZKciwJDjicp
	a89YrYBOTenNLEvUhwh5xgGSNTU4ogkVHKacqWjqOFi68g2MCAfFsn7Hn8glKCpf+LJBzCLYC4rCk
	rDzLv4eUaLIYhZ4TQlxjPFjw0M9DmxUi5dp9lx4kmW4hB6Wj+rqZ2MZ+6w+zQsiFOEINN4/f1DDCO
	cEi4QTjDwbWZ13njlrdygvqA1DeQVTg3j2/MBb7FvLoZlaGB1NdFebQhLcFX0Af89Wi3X85lfFzTB
	j7l5GgnBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRAQs-00067Q-Oq; Thu, 16 May 2019 07:04:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRAQo-00066s-Lj
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 07:04:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 368E2AE04;
 Thu, 16 May 2019 07:03:55 +0000 (UTC)
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
To: Christoph Hellwig <hch@lst.de>, Keith Busch <keith.busch@intel.com>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
Date: Thu, 16 May 2019 09:03:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516064651.GA30234@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_000358_855667_C2918CED 
X-CRM114-Status: GOOD (  18.88  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNi8xOSA4OjQ2IEFNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBXZWQsIE1h
eSAxNSwgMjAxOSBhdCAwMzozMzo1MVBNIC0wNjAwLCBLZWl0aCBCdXNjaCB3cm90ZToKPj4gU28g
aGVyZSdzIGEgc29sdXRpb24gdGhhdCBubyBvbmUgd2lsbCBsaWtlOiBwdWxsIHN1YnN5c3RlbSBh
bmQgY29udHJvbGxlcgo+PiBpbnN0YW5jZXMgZnJvbSB0aGUgc2FtZSBJREEgc28gdGhhdCB0aGVy
ZSB3b24ndCBiZSBhbnkgbmFtZXNwYWNlIGJsb2NrCj4+IGRldmljZXMgd2l0aCBhIG1hdGNoaW5n
IGNvbnRyb2xsZXIgaGFuZGxlIG5hbWUuIFdoaWxlIHRoaXMgZG9lcyBub3RoaW5nCj4+IHRvIGNs
ZWFyIHVwIGRldmljZSByZWxhdGlvbnNoaXBzLCB0aGlzIHdpbGwgZm9yY2UgdGhlIHVzZXIgdG8g
dGhpbmsKPj4gcmVhbGx5IGhhcmQgYWJvdXQgd2hhdCB0aGV5J3JlIGRvaW5nIGFuZCBhdm9pZCBz
dWNoIG1pc3Rha2VzLgo+IAo+IEhtbS4gIFNvIHdlJ2xsIGdldDoKPiAKPiAvZGV2L252bWUwCj4g
ICAtIGNoYXJkZXYgc3Vic3lzIFggY3RsIDEKPiAKPiAvZGV2L252bWUxbjEKPiAvZGV2L252bWUx
bjIKPiAgIC0gbmFtZXNwYWNlcyBmb3Igc3Vic3lzIFgKPiAKPiAvZGV2L252bWUyCj4gICAtIGNo
YXJkZXYgc3Vic3lzIFggY3RsIDIKPiAKPiAvZGV2L252bWUzCj4gICAtIGNoYXJkZXYgc3Vic3lz
IFkgY3RsIDEKPiAKPiAuLi4KPiAKPiBUaGlzIHNob3VsZCB3b3JrLiAgTm90IHN1cmUgaXQgcmVh
bGx5IGJ1eXMgdXMgc28gbXVjaCwgdGhvdWdoLgo+IAo+IEJ0dywgSSB3b25kZXIgaWYgd2Ugc2hv
dWxkIGhhdmUgdWRldiBydWxlcyBmb3I6Cj4gCj4gL2Rldi9udm1lLXN1YnN5cy0kTlFOLWN0cmwx
Cj4gL2Rldi9udm1lLXN1YnN5cy0kTlFOLWN0cmwyCj4gL2Rldi9udm1lLXN1YnN5cy0kTlFOLW5z
MQo+IC9kZXYvbnZtZS1zdWJzeXMtJE5RTi1uczIKPiAKPiBJIGhhdmUgdG8gYWRtaXQgdGhhdCBz
aW5jZSB1ZGV2L3N5c3RlbWQgbW92ZWQgdG8gZ2l0aHViIEkgY2FuJ3QKPiBiZSBib3RoZXIgdG8g
c2VuZCB0aGVtIHBhdGNoZXMsIHRob3VnaCBhcyBpdCB3b3VsZCByZXF1aXJlIHNpZ25pbmcKPiB1
cCBmb3IgdGhhdCBjcmFwcHkgc2VydmljZS4KPiAKVGhhdCByYXRoZXIgY2FsbHMgZm9yIHBlcnNp
c3RlbnQgZGV2aWNlIG5hbWVzLCBubz8KCnByb3Bvc2FsIHdvdWxkIGJlIHRvIGNyZWF0ZSBzeW1s
aW5rcyBsaWtlCgovZGV2L2Rpc2svYnktaWQvbnZtZS1zdWJzeXMtJE5RTi1ucy0kTlMKCnRvIGtl
ZXAgaW4gbGluZSB3aXRoIHRoZSBvdGhlciBzeW1saW5rcyBpbiAvZGV2L2Rpc2svYnktaWQvClRo
ZSBjb250cm9sbGVyIHN5bWxpbmtzIGRvbid0IHJlYWxseSBmYWxsIGludG8gdGhpcyBjYXRlZ29y
eSwgdGhvdWdoOwp3ZSBjb3VsZCBjcmVhdGUgYSAnbnZtZScgc3ViZGlyZWN0b3J5IChtdWNoIGxp
a2UgTUQgZG9lcyksIGFuZApjcmVhdGUgc3ltbGlua3MgaW4gdGhlcmUuCgpBbmQgeWVzLCBJJ20g
aGFwcHkgdG8gZHJhZnQgdXAgdWRldiBydWxlcyBvbmNlIHdlJ3ZlIGNvbWUgdG8gYSAKY29uY2x1
c2lvbiBoZXJlLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBU
ZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAg
ICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5
IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNp
YWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
