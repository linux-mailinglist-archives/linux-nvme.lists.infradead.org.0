Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07E31A07A
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 17:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxUkSFbqAwOxCeAXZhmGODcRuHh1zSg5ih8nWctghF0=; b=lnG9sqUIt3rWNT
	xKCRB19ejo0DzL2mBukTfk89MervuJbW0iaC+CrXE6KWenjfNfbBGBTDcyT8k58yvtQW3Wbl+wN4Z
	xK1Q615DxeDTClw+lwjTLADz+HLY+BA2u3q5Pt3Nm39VTesYjMTjNmUN2xlmwgNY1QXK0Lk/H4qBV
	PHWlgqykvYUKkm2BL/ukdrM2zh3WpGzoT+TROsbDcqwA26XfmLOTZQWn7yGSMfxKszV3HywmNt0En
	Jj20G90rqb5Qvt/u7/tyMNlf15d2mf3RtdiHbAOij/rUkP4NIz9xMmqlfyP0BxBfaOf6/Uh1l3nfQ
	JNDw9OL22dJEAeYO28ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7m9-0006Y2-SC; Fri, 10 May 2019 15:49:33 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7m4-0006X8-Mu
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:49:30 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 19EC3227A81; Fri, 10 May 2019 17:49:05 +0200 (CEST)
Date: Fri, 10 May 2019 17:49:04 +0200
From: "hch@lst.de" <hch@lst.de>
To: Kai Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190510154904.GA31649@lst.de>
References: <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
 <20190510140209.GG9675@localhost.localdomain>
 <D2D197AF-0072-42AC-A844-8D6BC9677949@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D2D197AF-0072-42AC-A844-8D6BC9677949@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_084928_898540_1BEEB60E 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: "Busch, Keith" <keith.busch@intel.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMTE6MTg6NTJQTSArMDgwMCwgS2FpIEhlbmcgRmVuZyB3
cm90ZToKPiA+IEknbSBhZnJhaWQgdGhlIHJlcXVpcmVtZW50IGlzIHN0aWxsIG5vdCBjbGVhciB0
byBtZS4gQUZBSUssIGFsbCBvdXIKPiA+IGJhcnJpZXJzIHJvdXRpbmVzIGVuc3VyZSBkYXRhIGlz
IHZpc2libGUgZWl0aGVyIGJldHdlZW4gQ1BVcywgb3IgYmV0d2Vlbgo+ID4gQ1BVIGFuZCBkZXZp
Y2VzLiBUaGUgQ1BVIG5ldmVyIGFjY2Vzc2VzIEhNQiBtZW1vcnksIHNvIHRoZXJlIG11c3QgYmUg
c29tZQo+ID4gb3RoZXIgcmVhc29uaW5nIGlmIHRoaXMgYmFycmllciBpcyBhIHJlYWwgcmVxdWly
ZW1lbnQgZm9yIHRoaXMgZGV2aWNlLgo+IAo+IFN1cmUsIEnigJlsbCBhc2sgdmVuZG9yIHdoYXQg
dGhhdCBNZW1SZCBpcyBmb3IuCgpJJ2QgbGlrZSB0byB1bmRlcnN0YW5kIHRoaXMgYnVnLCBidXQg
dGhpcyB0aHJlYWQgbGVhdmVzIG1lIGEgbGl0dGxlCmNvbmZ1c2VkLiAgU28gd2UgaGF2ZSBhIE5W
TWUgZHJpdmVyIHdpdGggSE1CLgoKU29tZXRoaW5nIGNyYXNoZXMgLSB0aGUga2VybmVsIG9yIHRo
ZSBmaXJtd2FyZT8KV2hlbiBkb2VzIGl0IGNyYXNoPyAgc3VzcGVuZCBvciByZXN1bWU/CgpUaGF0
IGNyYXNoIHNlZW1zIHRvIGJlIHJlbGF0ZWQgdG8gYSByZWxhdGVkIHRvIGEgUENJZSBUTFAgdGhh
dCByZWFkcwptZW1vcnkgZnJvbSB0aGUgaG9zdCwgcHJvYmFibHkgZHVlIHRvIHRoZSBITUIuCgpC
dXQgYSBkZXZpY2Ugd2l0aCBhIEhNQiBoYXMgYmVlbiB0b2xkIHRoYXQgaXQgY2FuIGFjY2VzcyB0
aGF0IG1lbW9yeQphdCBhbnkgdGltZS4gIFNvIGlmIGluIGFueSBnaXZlbiBzdXNwZW5kIHN0YXRl
IFRMUCB0byBhY2Nlc3MgUkFNIGFyZQpub3QgYWxsb3dlZCB3ZSdsbCBoYXZlIHRvIHRlbGwgdGhl
IGRldmljZSB0byBzdG9wIHVzaW5nIHRoZSBITUIuCgpTbzogd2hhdCBwb3dlciBzdGF0ZXMgZG8g
bm90IGFsbG93IHRoZSBkZXZpY2UgdG8gRE1BIHRvIC8gZnJvbSBob3N0Cm1lbW9yeT8gIEhvdyBk
byB3ZSBmaW5kIG91dCB3ZSBhcmUgYWJvdXQgdG8gZW50ZXIgdGhvc2UgZnJvbSB0aGUKcG0gbWV0
aG9kcz8gIFdlJ2xsIHRoZW4gbmVlZCB0byBkaXNhYmxlIHRoZSBITUIsIHdoaWNoIG1pZ2h0IHN1
Y2sKaW4gdGVybXMgb2YgbGF0ZW5jeS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
