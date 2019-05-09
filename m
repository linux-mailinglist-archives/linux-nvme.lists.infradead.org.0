Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F112D1880A
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 11:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YK5KjKoOMn/2qYRwZUY4IbtwY8RniTNjtNLBBQbQdX0=; b=WWwcKF8wRGhwAf
	/PJJ63bzoFTAKwaM8hzAE4iDpSIr3Wdf15Insxo2ALshqeELh4q8KUkRWaaRcaKSGtlZBnPvGmDF+
	fJKOQxatKn4xPJ6JscVLRzUhkJS3i8gPDLA840gYA1SlEulcRL6l2JxApX1mnL3T/txdliSSdNX4J
	N8SDjUAKyqrDdqUqSXlZEiHuGb5ndvwt7oCtM8Ev9vnehAu5Fao6z60RJz5AsXqKWDuOx8KfHYlVo
	kM5Uiz+ICQsPMSQbVHRfLet787bmIxdFBSS6lZZTWli9fsOm+Nqc9n+VNGwODis7i2AS+0HT0W4we
	g38RIwwua2u8FporrV4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfmy-0007lB-3I; Thu, 09 May 2019 09:56:32 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfmn-0007kj-FD
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 09:56:22 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 726AE68AFE; Thu,  9 May 2019 11:56:01 +0200 (CEST)
Date: Thu, 9 May 2019 11:56:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190509095601.GA19041@lst.de>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_025621_661760_68E54C32 
X-CRM114-Status: GOOD (  14.95  )
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

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDU6NDI6MzBQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPj4gVGhhdCB3b3VsZCBiZSBhIHNldCBvZiA2IG5ldyBzdXNwZW5kIGFuZCByZXN1bWUg
Y2FsbGJhY2tzLCBtaW5kIHlvdSwKPj4gYW5kIHRoZXJlJ3MgcXVpdGUgYSBmZXcgb2YgdGhlbSBh
bHJlYWR5LiAgQW5kIHRoZSBtYWpvcml0eSBvZiBkcml2ZXJzCj4+IHdvdWxkIG5vdCBuZWVkIHRv
IHVzZSB0aGVtIGFueXdheS4KPgo+IEkgdGhpbmsgc3VzcGVuZF90b19pZGxlKCkgYW5kIHJlc3Vt
ZV9mcm9tX2lkbGUoKSBzaG91bGQgYmUgZW5vdWdoPwo+IFdoYXQgYXJlIG90aGVyIDQgY2FsbGJh
Y2tzPwo+Cj4+Cj4+IEFsc28sIHBsZWFzZSBub3RlIHRoYXQsIHBvc3NpYmx5IGFwYXJ0IGZyb20g
dGhlIGRldmljZSBwb3dlciBzdGF0ZQo+PiBzZXR0aW5nLCB0aGUgUzJJIGFuZCBTMlIgaGFuZGxp
bmcgcmVhbGx5IGFyZW4ndCB0aGF0IGRpZmZlcmVudCBhdCBhbGwuCj4+IFlvdSBiYXNpY2FsbHkg
bmVlZCB0byBjYXJyeSBvdXQgdGhlIHNhbWUgcHJlcGFyYXRpb25zIGR1cmluZyBzdXNwZW5kCj4+
IGFuZCByZXZlcnNlIHRoZW0gZHVyaW5nIHJlc3VtZSBpbiBib3RoIGNhc2VzLgo+Cj4gQnV0IGZv
ciB0aGlzIGNhc2UsIGl04oCZcyBxdWl0ZSBkaWZmZXJlbnQgdG8gdGhlIG9yaWdpbmFsIHN1c3Bl
bmQgYW5kIAo+IHJlc3VtZSBjYWxsYmFja3MuCgpMZXQncyB0aGluayBvZiB3aGF0IGNhc2VzIHdl
IG5lZWRlZC4KClRoZSAiY2xhc3NpYyIgc3VzcGVuZCBpbiB0aGUgbnZtZSBkcml2ZXIgYmFzaWNh
bGx5IHNodXRzIGRvd24gdGhlCmRldmljZSBlbnRpcmVseS4gIFRoaXMgaXMgdXNlZnVsIGZvcjoK
CiBhKSBkZXZpY2UgdGhhdCBoYXZlIG5vIHBvd2VyIG1hbmFnZW1lbnQKIGIpIFN5c3RlbSBwb3dl
ciBzdGF0ZXMgdGhhdCBldmVudHVhbGx5IHBvd2VyIG9mZiB0aGUgZW50aXJlIFBDSWUgYnVzLgog
ICAgSSB0aGluayB0aGF0IHdvdWxkOgoKICAgICAtIHN1c3BlbmQgdG8gZGlzayAoaGliZXJuYXRl
KQogICAgIC0gY2xhc3NpYyBzdXNwZW5kIHRvIHJhbQoKVGhlIHdlIGhhdmUgdGhlIHNlcXVlbmNl
IGluIHlvdXIgcGF0Y2guICBUaGlzIHNlZW1zIHRvIGJlIHJlbGF0ZWQgdG8Kc29tZSBvZiB0aGUg
TVMgd29yZGluZywgYnV0IEknbSBub3Qgc3VyZSB3aGF0IGZvciBleGFtcGxlIHRlYXJpbmcgZG93
bgp0aGUgcXVldWVzIGJ1eXMgdXMuICBDYW4geW91IGV4cGxhaW4gYSBiaXQgbW9yZSB3aGVyZSB0
aG9zZSBiaXRzCm1ha2UgYSBkaWZmZXJlbmNlPwoKT3RoZXJ3aXNlIEkgdGhpbmsgd2Ugc2hvdWxk
IHVzZSBhICJuby1vcCIgc3VzcGVuZCwganVzdCBsZWF2aW5nIHRoZQpwb3dlciBtYW5hZ2VtZW50
IHRvIHRoZSBkZXZpY2UsIG9yIGEgc2ltcGxlIHNldHRpbmcgdGhlIGRldmljZSB0byB0aGUKZGVl
cGVzdCBwb3dlciBzdGF0ZSBmb3IgZXZlcnl0aGluZyBlbHNlLCB3aGVyZSBldmVyeXRoaW5nIGVs
c2UgaXMKc3VzcGVuZCwgb3Igc3VzcGVuZCB0byBpZGxlLgoKQW5kIG9mIGNvdXJzZSB0aGFuIHdl
IGhhdmUgd2luZG93cyBtb2Rlcm4gc3RhbmRieSBhY3R1YWxseSBtYW5kYXRpbmcKcnVudGltZSBE
MyBpbiBzb21lIGNhc2UsIGFuZCB2YWd1ZSBoYW5kd2F2aW5nIG1lbnRpb25zIG9mIHRoaXMgYmVp
bmcKZm9yY2VkIG9uIHRoZSBwbGF0Zm9ybXMsIHdoaWNoIEknbSBub3QgZW50aXJlbHkgc3VyZSBo
b3cgdGhleSBmaXQKaW50byB0aGUgYWJvdmUgcGljdHVyZS4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
