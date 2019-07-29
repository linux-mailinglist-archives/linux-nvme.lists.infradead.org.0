Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447EE79116
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 18:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3CGBgWPrEV8XcIz4CdAj/Z6wXZdGDkryqaDjubRVCFg=; b=QW3xICazeFSNrOWsVStwF0wK+
	Kq6LtxqaMFeDDtbyxOQM5r7YAdi0WaD4wXB7sf0oUMekaUJ2QSVAjMOFY74koJIpHCmX9n8hKxITd
	JHYesiurWbu6Dz1AgjdWuoA8TXG0yIQYOSDtaV4VqMqRLwr2RgFty/ZQkbi3Mvr/IY2r9oKcHBpWn
	KuDV0ye7qF2d09L33p5acZTq/pAlweTnmn5jiMcfvYDYBy+CklV7F9eUSE4FiIVsdGs3Mv51HQJTO
	8TlwBkd59BiPj5rysZJ0d92Yb+0WfD11l22srWT3XaJ/gVW/D//QS4nbLlsweHWlVtOVdi26mCM0R
	UKG7qpKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8dc-0007tQ-2q; Mon, 29 Jul 2019 16:36:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8dR-0007sb-7o
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 16:36:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 556B5AFA1;
 Mon, 29 Jul 2019 16:36:27 +0000 (UTC)
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
 <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
 <df50ec95-0ca1-58be-1660-101529a72662@suse.de>
 <1bf56b26-a521-8de2-5d52-0c1c9d19fd25@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <f4deb57e-ee86-a980-45c5-6d58ee1116cc@suse.de>
Date: Mon, 29 Jul 2019 18:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1bf56b26-a521-8de2-5d52-0c1c9d19fd25@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093629_579829_FFA42AAC 
X-CRM114-Status: GOOD (  24.42  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yOS8xOSA2OjExIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4+IEFzIHlvdSBt
aWdodCBrbm93IEknbSBjaGFzaW5nIGRvd24gdGhlIG15c3RlcmlvdXMgcmVzZXQvcmVzY2FuIGlz
c3VlLAo+Pj4+IHRvbywgYW5kIHN0aWxsIGhhdmVuJ3QgYmVlbiBhYmxlIHRvIHJlc29sdmUgaXMg
cHJvcGVybHkuCj4+Pgo+Pj4gSGF2ZSB5b3UgdHJpZWQgdGhlIHBhdGNoIHRoYXQgSSBwcm9wb3Nl
ZCB0byB5b3U/Cj4+Pgo+PiBZZWFoLiBCdXQgcmVwb3J0cyBhcmUgc3RpbGwgaW5jb25jbHVzaXZl
IGR1ZSB0byB0aGUgc2Vjb25kIHByb2JsZW0uCj4+IEFuZAo+IAo+IE9LLCBsb29raW5nIGZvcndh
cmQgdG8gdW5kZXJzdGFuZGluZyB0aGUgcm9vdC1jYXVzZSBhbmQgaWYvaG93Cj4gd2UgY2FuIGFk
ZHJlc3MgdGhpcy4KPiAKPj4+IFRoaXMgaXMgYSBkaWZmZXJlbnQgcHJvYmxlbSB0aGFuIHdoYXQg
eW91IHJlcG9ydGVkLCB0aGlzIGlzCj4+PiBhZGRyZXNzaW5nIHRoZSBzY2VuYXJpbyB0aGF0IHRo
ZSBob3N0IGNvbm5lY3RzIGFuZCBxdWlja2x5Cj4+PiBkaXNjb25uZWN0cyBmcm9tIGEgY2xpZW50
IGJlZm9yZSB0aGUgc2NhbiBpcyBjb21wbGV0ZWQgQU5ECj4+PiBtdWx0aXBhdGggaXMgZW5hYmxl
ZC4KPj4+Cj4+IC4uLi4gV2hpY2ggaXMgcHJlY2lzZWx5IHRoZSBmYWlsdXJlIHNjZW5hcmlvIGZv
ciBteSBwcm9ibGVtLCB0b28gLi4uCj4gCj4gSGFubmVzLCBJJ20gYSBiaXQgY29uZnVzZWQgYWdh
aW4uIEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQKPiB5b3VyIGlzc3VlcyB3ZXJlIGFy
b3VuZCBjb250cm9sbGVyIHJlc2V0IHJhY2Ugd2l0aCBzY2FuLCBub3QgY29udHJvbGxlcgo+IHJl
bW92YWwgKGRpc2Nvbm5lY3QpLgo+IAo+Pj4+IFRoaW5nIGlzLCBJIGhhZCBiZWVuIG5vdGlmaWVk
IG9uIGEgcmVncmVzc2lvbiBjYXVzZWQgYnkgY29tbWl0Cj4+Pj4gNTI1YWE1YTcwNWQ4NmUgKCJu
dm1lLW11bHRpcGF0aDogc3BsaXQgYmlvcyB3aXRoIHRoZSBuc19oZWFkLi4uIiksCj4+Pj4gd2hp
Y2ggbWFuaWZlc3RzIGl0c2VsZiBieSBhIHNwdXJpb3VzIEkvTyBlcnJvciBkdXJpbmcgZmFpbG92
ZXIuCj4+Pgo+Pj4gSG1tLCB0aGlzIGlzIGludGVyZXN0aW5nLiBOb3Qgc3VyZSBob3cgdGhpcyBz
cGVjaWZpYyBjb21taXQgd291bGQKPj4+IGludHJvZHVjZSBzdWNoIGFuIGlzc3VlLgo+Pj4KPj4g
U2VlPyBNZSBuZWl0aGVyLiBTYWRseSB0aGV5IF9oYXZlXyBiaXNlY3RlZCBpdCwgYW5kIHRoaXMg
cmVhbGx5IGlzIHRoZQo+PiBwYXRjaCBpbnRyb2R1Y2luZyB0aGUgcmVncmVzc2lvbi4KPj4gQ3Vy
cmVudCB0aGlua2luZyBpcyB0aGF0IHdlJ3JlIGRyb3BwaW5nIGFsbCBwYXRocyBkdXJpbmcgcmVz
ZXQsIGNhdXNpbmcKPj4gbnNfaGVhZCB0byBiZSBkZWxldGVkLCB0b28uCj4gCj4gVGhhdCBpcyBp
bXBvc3NpYmxlLCB0aGUgb25seSB0aGluZyB0aGF0IHdvdWxkIGRyb3AgcGF0aHMgaXMgZWl0aGVy
Cj4gaWYgdGhlIHVzZXIgaXMgcmVtb3ZpbmcgYSBjb250cm9sbGVyLCBvciB0aGUgY3RybF9sb3Nz
X3RtbyBleHBpcmVkLCBib3RoCj4gYXJlIGNvbnRyb2xsZXIgcmVtb3ZhbCBhbmQgbm90IGNvbnRy
b2xsZXIgcmVzZXQuCj4gCldlbGwgLi4uIHRoZSBwcm9ibGVtIHNlZW0gdG8gYmUgYXJpc2luZyBp
ZiB3ZSBnZXQgYW4gTmFtZXNwYWNlIENoYW5nZWQgCkFFTiBkdXJpbmcgcmVzZXQuCkluIHRoYXQg
Y2FzZSB3ZSdsbCBjYWxsIG52bWVfc2Nhbl9uc19saXN0KCksIG9uIHdoaWNoIHRoZSBpbml0aWFs
IAppZGVudGlmeSB3aWxsIGZhaWwgZm9yIGFsbCBuYW1lc3BhY2VzLCBhbmQgYWxsIG9mIHRoZW0g
d2lsbCBiZSBkaXNjb25uZWN0ZWQuCgo+PiBUaGUgbnNfaGVhZCB3aWxsIGdldCByZWNyZWF0ZWQg
aW1tZWRpYXRlbHkKPj4gYWZ0ZXJ3YXJkcywgc28gdXNlcnNwYWNlIHdvdWxkbid0IGV2ZW4gbm90
aWNlIHRoYXQuCj4+IEJ1dCBpZiB3ZSBoYXZlIGEgbm9uLWVtcHR5IHJlcXVldWUgbGlzdCB0aGF0
IHdpbGwgYmUgZmx1c2hlZCBvbmx5IHdoZW4KPj4gZG9pbmcgdGhlIGZpbmFsIHB1dCBvbiB0aGUg
bnNfaGVhZCBzdHJ1Y3R1cmUsIGNhdXNpbmcgYWxsIEkvTyB0byBmYWlsLgo+IAo+IEFnYWluLCB3
ZSBuZWVkIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyB0aGUgZXhhY3Qgc2NlbmFyaW8sIGJlY2F1c2Ug
aWYgd2UKPiBhcmUgbG9zaW5nIGFsbCB0aGUgcGF0aHMsIEkvTyBmYWlsdXJlIGlzIHRoZSBleHBl
Y3RlZCBiZWhhdmlvci4KPiAKLi4uIFVubGVzcyB3ZSdyZSBkaXNjb25uZWN0aW5nIHRob3NlIHBh
dGhzIGR1cmluZyBjb250cm9sbGVyIHJlc2V0LCAKd2hpY2ggYWN0dWFsbHkgaXMgZXhwZWN0ZWQg
dG8gaGFwcGVuLCBhbmQgd2lsbCBiZSBjb3JyZWN0ZWQgYWZ0ZXIgcmVzZXQgCmNvbXBsZXRlcy4K
Cj4+IFNvIGxvb2tpbmcgYXQgaXQgdGhhdCB3YXksIGl0IF9taWdodF8gYWN0dWFsbHkgYmUgdGhh
dCB5b3VyIHBhdGNoIGhlbHBzCj4+IGZvciB0aGF0IHNpdHVhdGlvbiwgdG9vLCBzZWVpbmcgdGhh
dCB3ZSBjYW4ndCByZWxpYWJseSBlbnVtZXJhdGUKPj4gbmFtZXNwYWNlcyBkdXJpbmcgcmVzZXQu
Cj4gCj4gQ2FuIHdlIGRlZmluZSBjbGVhcmx5IHdoYXQgZG8geW91IG1lYW4gd2hlbiB5b3Ugc2F5
ICJlbnVtZXJhdGUgCj4gbmFtZXNwYWNlcyBkdXJpbmcgcmVzZXQiPwo+IApBbnkgY2FsbCB3aGlj
aCB3YWxrcyB0aGUgbGlzdCBvZiBuYW1lc3BhY2VzLCBlaXRoZXIgdGhlIGNvbnRyb2xsZXIgbGlz
dCAKb3IgdGhlIG5zX2hlYWQgc2libGluZ3MgbGlzdC4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIu
IEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5n
CmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMg
Njg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBG
ZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFH
IE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
