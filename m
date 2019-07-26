Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FDC75EF7
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 08:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+L1jXY7XU84JamyJHrnIrlNO2AbWO9+PMNMJKB/c4pI=; b=ds2k6PsduaVA93
	SGNBzL9LvW6tuevtuzRfmN+ZMbf+olNCfcbON+Ro4q16Lmz3mdX+lCPpmBl4Yf+nxJQtacgCaMH7o
	W7gRF+9WzH7KeVzXvbJB49nGzipP2WkVbzRZjx3xrLliMPR8++XTwfegrZijuqD7eo5SOo7rzRLyz
	WN2p+5t2IJ2610Bko74TJpZI4it7HeyKNjCi9kSZpjWAKI1VBt+RnGeC56oIm++kpbSayBSFta3UU
	WtU9OlZ4On2iuSauJRCePB4VHlu1ug9ooB8zhIJAqKJwgQtRfV8rz3oQBYzGgI86wmU8AyM9UT84Q
	ZvWnMpKYGek23wYs8Y/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqte8-0005Bb-0C; Fri, 26 Jul 2019 06:24:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtdv-0005A2-Nk
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 06:23:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 32631AFCF;
 Fri, 26 Jul 2019 06:23:46 +0000 (UTC)
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190725172335.6825-1-logang@deltatee.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
Date: Fri, 26 Jul 2019 08:23:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190725172335.6825-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_232352_065723_3DADE27E 
X-CRM114-Status: GOOD (  18.79  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTG9nYW4sCgpPbiA3LzI1LzE5IDc6MjMgUE0sIExvZ2FuIEd1bnRob3JwZSB3cm90ZToKPiBI
aSwKPiAKPiBDaGFpdGFpbnlhIGhhcyBhc2tlZCB1cyB0byB0YWtlIG9uIHRoZXNlIHBhdGNoZXMg
YXMgd2UgaGF2ZSBhbgo+IGludGVyZXN0IGluIGdldHRpbmcgdGhlbSBpbnRvIHVwc3RyZWFtLiBU
byB0aGF0IGVuZCwgd2UndmUgZG9uZQo+IGEgbGFyZ2UgYW1vdW50IG9mIHRlc3RpbmcsIGJ1ZyBm
aXhlcyBhbmQgY2xlYW51cC4KPiAKPiBQYXNzdGhydSBzdXBwb3J0IGZvciBudm1ldCBhbGxvd3Mg
dXNlcnMgdG8gZXhwb3J0IGFuIGVudGlyZQo+IE5WTWUgY29udHJvbGxlciB0aHJvdWdoIE5WTWUt
b0YuIFdoZW4gZXhwb3J0ZWQgaW4gdGhpcyB3YXkgKGFzIG9wcG9zZWQKPiB0byBleHBvcnRpbmcg
ZWFjaCBuYW1lc3BhY2UgYXMgYSBibG9jayBkZXZpY2UpLCBhbGwgdGhlIE5WTWUgY29tbWFuZHMK
PiBhcmUgcGFzc2VkIHRvIHRoZSBnaXZlbiBjb250cm9sbGVyIHVubW9kaWZpZWQsIGluY2x1ZGlu
ZyBtb3N0IGFkbWluCj4gY29tbWFuZHMgYW5kIFZlbmRvciBVbmlxdWUgQ29tbWFuZHMgKFZVQ3Mp
LiBBIHBhc3N0aHJ1IHRhcmdldCB3aWxsCj4gZXhwb3NlIGFsbCBuYW1lc3BhY2VzIGZvciBhIGdp
dmVuIGRldmljZSB0byB0aGUgcmVtb3RlIGhvc3QuCj4gCkluIGdlbmVyYWwgSSdtIHZlcnkgbXVj
aCBpbiBmYXZvdXIgb2YgdGhpcywgeWV0IHRoZXJlIGFyZSBzb21lIGlzc3Vlcwp3aGljaCBJJ20g
bm90IHF1aXRlIGNsZWFyIGFib3V0LgoKPiBUaGVyZSBhcmUgdGhyZWUgbWFqb3Igbm9uLWJ1Z2Zp
eCBjaGFuZ2VzIHRoYXQgd2UndmUgZG9uZSB0byB0aGUgc2VyaWVzOgo+IAo+IDEpIEluc3RlYWQg
b2YgdXNpbmcgYSBzZXBlcmF0ZSBzcGVjaWFsIHBhc3N0aHJ1IHN1YnN5c3RlbSBpbgo+ICAgIGNv
bmZpZ2ZzIHNpbXBseSBhZGQgYSBwYXNzdGhydSBkaXJlY3RvcnkgdGhhdCdzIGFuYWxvZ291cyB0
bwo+ICAgIHRoZSBleGlzdGluZyBuYW1lc3BhY2UgZGlyZWN0b3JpZXMuIFRoZSBkaXJlY3Rvcmll
cyBoYXZlCj4gICAgdmVyeSBzaW1pbGFyIGF0dHJpYnV0ZXMgdG8gbmFtZXNwYWNlcyBidXQgYXJl
IG11dHVhbGx5IGV4Y2x1c2l2ZS4KPiAgICBJZiBhIHVzZXIgZW5hYmxlcyBhIG5hbWVzcGFjZXMs
IHRoZXkgY2FuJ3QgdGhlbiBlbmFibGUKPiAgICBwYXNzdGhydSBjb250cm9sbGVyIGFuZCB2aWNl
IHZlcnNhLiBUaGlzIHNpbXBsaWZpZXMgdGhlIGNvZGUKPiAgICByZXF1aXJlZCB0byBpbXBsZW1l
bnQgcGFzc3RocnUgY29uZmlnZnMgYW5kIElNTyBjcmVhdGVzIGEgbXVjaAo+ICAgIGNsZWFyZXIg
YW5kIHVuaWZvcm0gaW50ZXJmYWNlLgo+IApIb3cgZG8geW91IGhhbmRsZSBzdWJzeXN0ZW0gbmFt
aW5nPwpJZiB5b3UgZW5hYmxlIHRoZSAncGFzc3RocnUnIGRldmljZSwgdGhlIChudm1ldCkgc3Vi
c3lzdGVtIChhbmQgaXRzCm5hbWUpIGlzIGFscmVhZHkgY3JlYXRlZC4gWWV0IHRoZSBwYXNzdGhy
dSBkZXZpY2Ugd2lsbCBoYXZlIGl0cyBvd24KaW50ZXJuYWwgc3Vic3lzdGVtIG5hbWluZywgc28g
aWYgeW91J3JlIG5vdCBleHRyYSBjYXJlZnVsIHlvdSdsbCBlbmQgdXAKd2l0aCBhIG52bWV0IHN1
YnN5c3RlbSB3aGljaCBkb2Vzbid0IGhhdmUgYW55IHJlbGF0aW9uc2hpcCB3aXRoIHRoZQpwYXNz
dGhydSBzdWJzeXN0ZW0sIG1ha2luZyBhZGRyZXNzaW5nIGV0YyAuLi4gdHJpY2t5LgpBbnkgdGhv
dWdodHMgYWJvdXQgdGhhdD8KClNpbWlsYXJseTogaG93IGRvIHlvdSBwcm9wb3NlIHRvIGhhbmRs
ZSBtdWx0aXBhdGggZGV2aWNlcz8KQW55IE5WTWUgd2l0aCBzZXZlcmFsIHBhdGhzIHdpbGwgYmUg
ZW5hYmxpbmcgTlZNZSBtdWx0aXBhdGhpbmcKYXV0b21hdGljYWxseSwgcHJlc2VudGluZyB5b3Ug
d2l0aCBhIHNpbmdsZSBtdWx0aXBhdGhlZCBuYW1lc3BhY2UuCkhvdyB3aWxsIHRoZXNlIGRldmlj
ZXMgYmUgdHJlYXRlZD8KV2lsbCB0aGUgbXVsdGlwYXRoZWQgbmFtZXNwYWNlIGJlIHVzZWQgZm9y
IHBhc3N0aHJ1PwoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBU
ZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAg
ICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5
IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNp
YWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
