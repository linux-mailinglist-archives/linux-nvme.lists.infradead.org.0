Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECD1715E9
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 12:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SFlkPWac8dj/bPP5vT/WHz+iAdL6yb0bnDsvIDez/kU=; b=MgMckfVDY8zKv94C5bIQkeAqj
	olJC55rFOaIfTIhTUJBGxxkAU1/s1TSznZeqRnrOdeerSzBrJgncF4AxeTR8/VvBkb3a0ZtSxc6Nt
	RVWZEMLPXH5MxpzIvOzYo0RmkC/OZtQvGfyrJPHtdc9RVT1Pl/IEcHVhEehaGh/7f6H4xYHd4yg1p
	3vA3QeI29lbzNZVP53QfuZP3oth3UpQT10q8RjknoEPan4V8EpvLF1NUdBFHTkotVyNBjsCZ+s/Qa
	YDnncRt11Gqu2duSKUL4HX6fllSlzVM2Im9qNhLQAIkmTWHeg6FVfS8A2kVbPXgBoGD9bAL0SsqMc
	76z51sn0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HKb-0003zi-VU; Thu, 27 Feb 2020 11:27:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HKI-0003yN-LP
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 11:27:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D49C6ABEF;
 Thu, 27 Feb 2020 11:27:30 +0000 (UTC)
Subject: Re: [PATCH RFC] nvme/fc: sq flow control
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>
References: <20200225235956.28475-1-hare@suse.de>
 <d1aabd1c-dd2a-df7e-3735-dd36c3f1c53f@grimberg.me>
 <3611ba73-0d9d-a7ed-356b-bb856711a27c@suse.de>
 <5cddf6e5-e92b-fa36-1ad5-e2cda1175150@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <a7dc19bb-7c2c-5003-0143-563a2df6197b@suse.de>
Date: Thu, 27 Feb 2020 12:27:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <5cddf6e5-e92b-fa36-1ad5-e2cda1175150@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_032734_847599_0C38DD8F 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMi8yNi8yMCAxOjM4IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4+IEFzIHBlciBO
Vk1lLW9GIHNwZWMgc3EgZmxvdyBjb250cm9sIGlzIGFjdHVhbGx5IG1hbmRhdG9yeSwgYW5kIHdl
IAo+Pj4+IHNob3VsZAo+Pj4+IGJlIGltcGxlbWVudGluZyBpdCB0byBhdm9pZCB0aGUgY29udHJv
bGxlciB0byByZXR1cm4gYSBmYXRhbCBzdGF0dXMKPj4+PiBlcnJvciwgYW5kIHRyeSB0byBwbGF5
IG5pY2VseSB3aXRoIGNvbnRyb2xsZXJzIHVzaW5nIHNxIGZsb3cgY29udHJvbAo+Pj4+IHRvIGlt
cGxlbWVudCBRb1MuCj4+Pgo+Pj4gV2h5IGlzIHlvdXIgdGFyZ2V0IHNldHRpbmcgU1EgZmxvdyBj
b250cm9sIGRpc2FibGUgaW4gdGhlIGRpc2NvdmVyeQo+Pj4gbG9nIGVudHJ5IHRyZXEgZmllbGQ/
IFdlIGFyZSBub3Qgc3VwcG9zZWQgdG8gZG8gaXQgaWYgdGhlIE5WTSBzdWJzeXN0ZW0KPj4+IGRv
ZXNuJ3Qgc3VwcG9ydCBpdC4KPj4gRGlkIEkgc2F5IHRoaXM/IEkgd2Fzbid0IGF3YXJlIHRoYXQg
SSBkaWQgaW1wbHkgdGhhdCBpbiBhbnkgd2F5Lgo+PiBJJ20ganVzdCB1c2luZyB0aGUgZmxhZyB0
byBmaWd1cmUgb3V0IGlmIHNxIGZsb3cgY29udHJvbCBpcyBkaXNhYmxlZCAKPj4gb3Igbm90Lgo+
IAo+IE9LLCBJIHJlYWQgaXQgYmFja3dhcmRzLgo+IAo+IFNvIGluIGVzc2VuY2UgYmxrLW1xIHdp
bGwganVzdCBrZWVwIHNlbmRpbmcgdW50aWwgc3FfaGVhZCBpcwo+IGluY3JlbWVudGVkLi4gSG93
IG9mdGVuIGRvZXMgdGhhdCBoYXBwZW4gdHlwaWNhbGx5PwoKLi4uIGtlZXAgc2VuZGluZyB1bnRp
bCBzcV9oZWFkIG1hdGNoZXMgc3FfdGFpbC4KQnV0IHllcywgdGhhdCB3YXMgdGhlIHBsYW4uClRo
ZSBmcmVxdWVuY3kgd2l0aCB3aGljaCBpdCdsbCBiZSBjYWxsZWQgZGVwZW5kcyBvbiB0aGUgY29u
dHJvbGxlcjsKd2hlbiBpdCdzIHVzZWQgYnkgdGhnZSBjb250cm9sbGVyIGZvciBRb1MgYW5kIHRo
ZSBjb250cm9sbGVyIGlzIHVuZGVyIApsb2FkIHRoZW4gaXQgbWlnaHQgaGFwcGVuIHF1aXRlIG9m
dGVuIGluZGVlZC4KQnV0IHRoZW4sIGluIHRoZXNlIHNjZW5hcmlvcyB3ZSBfd2FudF8gYSBzbG93
ZG93biwgc28gcGVyZm9ybWFuY2UgCmFyZ3VtZW50cyBkbyBub3QgcmVhbGx5IGFwcGx5IC4uLgoK
Q2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxl
YWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdtYkgs
IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZyks
IEdlc2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVuZMO2cmZmZXIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0Cmxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
