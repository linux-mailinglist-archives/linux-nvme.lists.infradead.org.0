Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3042C18861
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 12:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qzm/87AOJYZ55hkkiTd0N0twTcn/vCg71+oY965YMCw=; b=Itm/VD30gGnlgL
	/6V0A2BQoEbpJbr93uRwzmor96kbTzimEls5OXJATOzPc5daVG9CR9+3/0WU6bAY2p6kde7TyseBu
	9XRNmH9IRYpqaWTxSuyOBsq5pAaqJvwLCImfHHOz0sQTQCwCemetiDr4x4qGH0WrOWK9ROaCTLBaK
	zvqYGfJWlbkfV1047Z2OPkCmYr22fIgIpYvVzP8aUDgWMbf5Jdp7M/xf/LUcd00a2A2dv2zCtC4Mw
	NQzvlAHT268TmC0SEx3trV68OLnOLPsHxgoLI6/L/mnC/F6qOkHMqNhnLhyGglglSZSPoIYOIDGFs
	vE3K5dQT8kXEIhEovnRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgLV-00032o-NG; Thu, 09 May 2019 10:32:13 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgLO-0002zZ-B5
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 10:32:08 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9B83E68B20; Thu,  9 May 2019 12:31:42 +0200 (CEST)
Date: Thu, 9 May 2019 12:31:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190509103142.GA19550@lst.de>
References: <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_033207_292075_812D6E12 
X-CRM114-Status: GOOD (  15.59  )
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDY6Mjg6MzJQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBCYXNlZCBvbiBteSB0ZXN0aW5nIGlmIHF1ZXVlcyAoSVJRKSBhcmUgbm90IGRpc2Fi
bGVkLCBOVk1lIGNvbnRyb2xsZXIgCj4gd29u4oCZdCBiZSBxdWllc2NlZC4KPiBTeW1wdG9tcyBj
YW4gYmUgaGlnaCBwb3dlciBkcmFpbiBvciBzeXN0ZW0gZnJlZXplLgo+Cj4gSSBjYW4gY2hlY2sg
d2l0aCB2ZW5kb3JzIHdoZXRoZXIgdGhpcyBhbHNvIG5lY2Vzc2FyeSB1bmRlciBXaW5kb3dzLgoK
U3lzdGVtIGZyZWV6ZSBzb3VuZHMgb2RkLiAgQW5kIHdlIGhhZCBhIHBhdGNoIGZyb20gYSBwZXJz
b24gb24gdGhlCkNjIGxpc3QgaGVyZSB0aGF0IHdhcyBoYW5kZWQgdG8gbWUgdGhyb3VnaCBhIGZl
dyBpbmRpcmVjdGlvbnMgdGhhdApqdXN0IHNraXBwcyB0aGUgc3VzcGVuZCBlbnRpcmVseSBmb3Ig
c29tZSBjYXNlcywgd2hpY2ggc2VlbWQgdG8Kd29yayBmaW5lIHdpdGggdGhlIGNvbnRyb2xsZXJz
IGluIHF1ZXN0aW9uLgoKPj4gT3RoZXJ3aXNlIEkgdGhpbmsgd2Ugc2hvdWxkIHVzZSBhICJuby1v
cCIgc3VzcGVuZCwganVzdCBsZWF2aW5nIHRoZQo+PiBwb3dlciBtYW5hZ2VtZW50IHRvIHRoZSBk
ZXZpY2UsIG9yIGEgc2ltcGxlIHNldHRpbmcgdGhlIGRldmljZSB0byB0aGUKPj4gZGVlcGVzdCBw
b3dlciBzdGF0ZSBmb3IgZXZlcnl0aGluZyBlbHNlLCB3aGVyZSBldmVyeXRoaW5nIGVsc2UgaXMK
Pj4gc3VzcGVuZCwgb3Igc3VzcGVuZCB0byBpZGxlLgo+Cj4gSSBhbSBub3Qgc3VyZSBJIGdldCB5
b3VyIGlkZWEuIERvZXMgdGhpcyDigJxuby1vcOKAnSBzdXNwZW5kIGhhcHBlbiBpbiBOVk1lIAo+
IGRyaXZlciBvciBQTSBjb3JlPwoKbm8tb3AgbWVhbnMgd2UgZG9uJ3Qgd2FudCB0byBkbyBhbnl0
aGluZyBpbiBudm1lLiAgSWYgdGhhdCBoYXBwZW5zCmJ5IG5vdCBjYWxsaW5nIG52bWUgb3Igc3R1
YmJpbmcgb3V0IHRoZSBtZXRob2QgZm9yIHRoYXQgcGFydGljdWxhcgpjYXNlIGRvZXMgbm90IG1h
dHRlci4KCj4+IEFuZCBvZiBjb3Vyc2UgdGhhbiB3ZSBoYXZlIHdpbmRvd3MgbW9kZXJuIHN0YW5k
YnkgYWN0dWFsbHkgbWFuZGF0aW5nCj4+IHJ1bnRpbWUgRDMgaW4gc29tZSBjYXNlLCBhbmQgdmFn
dWUgaGFuZHdhdmluZyBtZW50aW9ucyBvZiB0aGlzIGJlaW5nCj4+IGZvcmNlZCBvbiB0aGUgcGxh
dGZvcm1zLCB3aGljaCBJJ20gbm90IGVudGlyZWx5IHN1cmUgaG93IHRoZXkgZml0Cj4+IGludG8g
dGhlIGFib3ZlIHBpY3R1cmUuCj4KPiBJIHdhcyB0b2xkIHRoYXQgV2luZG93cyBkb2VzbuKAmXQg
dXNlIHJ1bnRpbWUgRDMsIEFQU1QgaXMgdXNlZCBleGNsdXNpdmVseS4KCkFzIGZhciBhcyBJIGtu
b3cgdGhlIGRlZmF1bHQgcG93ZXIgbWFuYWdlbWVudCBtb2RlcyBpbiB0aGUgTWljcm9zb2Z0Ck5W
TWUgZHJpdmVyIGlzIGV4cGxpY2l0IHBvd2VyIG1hbmFnZW1lbnQgdHJhbnNpdGlvbnMsIGFuZCBp
biB0aGUgSW50ZWwKUlNUIGRyaXZlciB0aGF0IGlzIGNvbW1vbmx5IHVzZWQgaXQgaXMgQVBTVC4g
IEJ1dCBib3RoIGNvdWxkIHN0aWxsCmJlIGNvbWluZWQgd2l0aCBydW50aW1lIEQzIGluIHRoZW9y
eSwgSSdtIGp1c3Qgbm90IHN1cmUgaWYgdGhleSBhcmUuCgpNaWNyb3NvZnQgaGFzIGJlZW4gcHVz
aGluZyBmb3IgYWdncmVzc2l2ZSBydW50aW1lIEQzIGZvciBhIHdoaWxlLCBidXQKSSBkb24ndCBr
bm93IGlmIHRoYXQgaW5jbHVkZXMgTlZNZSBkZXZpY2VzLgoKPgo+IEthaS1IZW5nCj4KLS0tZW5k
IHF1b3RlZCB0ZXh0LS0tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
