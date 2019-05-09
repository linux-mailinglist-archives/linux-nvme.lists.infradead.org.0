Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727D018592
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHWErz4GpfHdzos7mIcR/NDvynyui3HV8r+ugJunLRw=; b=UGJjGo1Nu/F5TG
	K9jV/20LHQlTTv6po9ZeRL12JtNLdRjWjMiqjLpMIUqesDRk6qpIwBhNoJnX2v9qDFIiwCG95aFDK
	kNCB3o02iS6RzlGzss5nvqkp8QrFrgultosF26cQSR/0CBFd/2PeyF+u+HVXeDyiGmaGW7qcpdFhH
	enbuhQoy9locDArN1cOvJpFoUji3yPXNDCW10UU9nel6Q5Bw5nrRL/P7OBe8yntg7mCN/ackLPCY7
	O9Wve1DGcSYFVKT+o1909p0YlidubfMiqWrD6EK8x4uzBFLPDIocJ/ZSp2tlihVRBqKjigCt1HUpF
	dVI/zcqwUUt3Y7NxWoVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcvI-0004Zw-SF; Thu, 09 May 2019 06:52:56 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcv6-0004ZJ-8M
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:52:45 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id F1B9967358; Thu,  9 May 2019 08:52:23 +0200 (CEST)
Date: Thu, 9 May 2019 08:52:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190509065223.GA15984@lst.de>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_235244_455986_2EBBFA64 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario.Limonciello@dell.com, Linux PM <linux-pm@vger.kernel.org>,
 rafael.j.wysocki@intel.com, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDI6NDg6NTlQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBOb3QgcmVhbGx5LCBmb3IgaGliZXJuYXRpb24gcG1fc3VzcGVuZF92aWFfczJpZGxl
KCkgZXZhbHVhdGVzIHRvIGZhbHNlIHNvIAo+IHRoZSBvbGQgY29kZSBwYXRoIHdpbGwgYmUgdGFr
ZW4uCj4KPj4KPj4gQW5kIG1vcmUgdG8gdGhlIHBvaW50cyAtIGlmIHRoZXNlICJtb2Rlcm4gTVMg
c3RhbmRieSIgc3lzdGVtcyBhcmUKPj4gYmVjb21pbmcgY29tbW9uLCB3aGljaCBpdCBsb29rcyB0
aGV5IGFyZSwgd2UgbmVlZCBzdXBwb3J0IGluIHRoZSBQTSBjb3JlCj4+IGZvciB0aG9zZSBpbnN0
ZWFkIG9mIHdvcmtpbmcgYXJvdW5kIHRoZSBkZWNpc2lvbnMgaW4gbG93LWxldmVsIGRyaXZlcnMu
Cj4KPiBSYWZhZWwsIHdoYXQgZG8geW91IHRoaW5rIGFib3V0IHRoaXM/Cj4gSW5jbHVkaW5nIHRo
aXMgcGF0Y2gsIHRoZXJlIGFyZSBmaXZlIGRyaXZlcnMgdGhhdCB1c2UgCj4gcG1fc3VzcGVuZF92
aWFfe2Zpcm13YXJlLHMyaWRsZX0oKSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gUzJJIGFuZCBT
My4KPiBTbyBJIHRoaW5rIG1heWJlIGl04oCZcyB0aW1lIHRvIGludHJvZHVjZSBhIG5ldyBzdXNw
ZW5kIGNhbGxiYWNrIGZvciBTMkk/CgpXZSBhbHNvIHJlYWxseSBuZWVkIHNvbWV0aGluZyBsaWtl
IHRoYXQgdG8gYXZvaWQgdGhlIFBDSV9ERVZfRkxBR1NfTk9fRDMKYWJ1c2UgLSB0aGF0IGZsYWcg
aXMgYSBxdWlyayBzdGF0aWNhbGx5IHNldCBvbiBhIGRldmljZSBhdCBwcm9iZSB0aW1lCnRvIHBy
ZXZlbnQgYW55IGVudGVyaW5nIG9mIEQzIHN0YXRlLgoKPj4gcGVyIGRlZmluaXRpb24sIGFsdGhv
dWdoIHRoZXkgbWlnaHQgbm90IGJlIHRvbyB1c2VmdWwuICBJIHN1c3BlY3QgY2hlY2tpbmcKPj4g
QVBTVEEgbWlnaHQgYmUgc2FmZXIsIGJ1dCBpZiB3ZSBkb24ndCB3YW50IHRvIHJlbHkgb24gQVBT
VCB3ZSBzaG91bGQKPj4gY2hlY2sgZm9yIGEgcG93ZXIgc3RhdGUgc3VwcG9ydGluZyB0aGUgY29u
ZGl0aW9uIHRoYXQgdGhlIE1TIGRvY3VtZW50Cj4+IHF1b3RlZCBpbiB0aGUgb3JpZ2luYWwgZG9j
dW1lbnQgc3VwcG9ydHMuCj4KPiBJZiBNb2Rlcm4gU3RhbmRieSBvciBDb25uZWN0ZWQgU3RhbmRi
eSBpcyBub3Qgc3VwcG9ydGVkIGJ5IHNlcnZlcnMsIEkgCj4gZG9u4oCZdCB0aGluayB0aGUgZGVz
aWduIGRvY3VtZW50cyBtZWFuIG11Y2ggaGVyZS4KPiBXZSBwcm9iYWJseSBzaG91bGQgY2hlY2sg
aWYgdGhlIHBsYXRmb3JtIGZpcm13YXJlIHJlYWxseSBzdXBwb3J0cyBTMkkgCj4gaW5zdGVhZC4K
ClRoYXQgdG9vLiAgQXMgc2FpZCB0aGlzIHJlYWxseSBpcyBhIHBsYXRmb3JtIGRlY2lzaW9uLCBh
bmQgbmVlZHMgdG8KYmUgbWFuYWdlZCBieSB0aGUgcGxhdGZvcm0gY29kZSB0aHJvdWdoIHRoZSBQ
TSBjb3JlLiAgSW5kaXZpZHVhbCBkcml2ZXJzCmxpa2UgbnZtZSBjYW4ganVzdCBpbXBsZW1lbnQg
dGhlIGJlaGF2aW9yLCBidXQgYXJlIHRoZSBhYnNvbHV0ZSB3cm9uZwpwbGFjZSB0byBtYWtlIGRl
Y2lzaW9ucyBvbiB3aGF0IGtpbmRzIG9mIHN1c3BlbmQgdG8gZW50ZXIuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
