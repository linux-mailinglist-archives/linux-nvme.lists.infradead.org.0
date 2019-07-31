Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECCB7BA49
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 09:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B2axDGtR/KKe4HzPk/BD3dbylBt2IoazvpTu/rxMCg=; b=f8MvnWx8VvbTyK
	1XiDHPmEtYo+LxZdKB19R3Esjsi4tmWRbh0Y7Uiu0xGRgSqjO1Id6RTXcJZ+EqxmW5nxHG6eWA3oT
	2KcyMpBhfyCRSrC37YhaySXBg+GjJVEgit5Fin30TylJOXTrV8huEHinV2GeT4I6Go26mY7KuupLo
	yHUJsIWyBY973btEPhZpXwmvS29iix25G5YPF8Dax7xZaLkiRHFodvdaoegcGR5ScfnXpF3p4u1ap
	s5lYqLRtk9WoV7a/PSD8DbSkm1aCUHk+qcBc79SmzmxVv/b0nVSVrhz4Pw9sXCZhOgn8Ape4EpJCE
	a8c4NHOYendqD2KybNHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsio3-0003Ae-FP; Wed, 31 Jul 2019 07:13:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsinn-0003AL-L8
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 07:13:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3759EAF8A;
 Wed, 31 Jul 2019 07:13:34 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <f6ef7bfc-0d7c-95e6-21d3-b69545a1715b@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <0d1ab1b6-220e-aa25-465a-5d9d0a01b920@suse.de>
Date: Wed, 31 Jul 2019 09:13:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <f6ef7bfc-0d7c-95e6-21d3-b69545a1715b@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001335_991263_E9BEAE6C 
X-CRM114-Status: GOOD (  17.99  )
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMC8xOSA4OjE1IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gS2VpdGgsCj4+
Pgo+Pj4gQXMgZm9yIHRoZSBmYWlsdXJlIGR1cmluZyByZXNldCBzY2VuYXJpbywgdGhpcyBpcyBo
YXBwZW5pbmcgb25seSB3aGVuCj4+PiB0aGUgbmFtZXNwYWNlIGlzIGFib3V0IHRvIGdvIGF3YXkg
b3Igc29tZXRoaW5nIGlzIHNlcmlvdXNseSB3cm9uZyByaWdodAo+Pj4gKGxvb2tpbmcgZnJvbSB3
aGVyZSBudm1lX2tpbGxfcXVldWVzIGlzIGNhbGxlZCkuCj4+Pgo+Pj4gRG8geW91IHN0aWxsIHRo
aW5rIHdlIHNob3VsZCBhdm9pZCBjYWxsaW5nIHRoZSByZXZhbGlkYXRlX2Rpc2sgaWYgdGhlCj4+
PiBjb250cm9sbGVyIGlzIHJlc2V0dGluZz8KPj4KPj4gSSB3YXMgY29uc2lkZXJpbmcgaWYgYSBy
ZXNldCBoYXBwZW5zIHRvIHRyaWdnZXIgd2hlbiBudm1lJ3MKPj4gcmV2YWxpZGF0ZV9kaXNrIHRy
aWVzIHRvIHJlYWQgaWRlbnRpZnkgbmFtZXNwYWNlLiBJdCdzIHBvc3NpYmxlIHRoYXQKPj4gY29t
bWFuZCBnZXRzIGFib3J0ZWQsIGFuZCB3ZSBkb24ndCByZXRyeSBhZG1pbiBjb21tYW5kcywgc28g
d2UnZCByZXR1cm4KPj4gLUVOT0RFViBhbmQgbnZtZV92YWxpZGF0ZV9ucygpIHJlbW92ZXMgYW4g
b3RoZXJ3aXNlIGhlYWx0aHkgbmFtZXNwYWNlLgo+IAo+IEJ1dCBpZiB0aGUgY3RybC0+c3RhdGUg
Y29uZGl0aW9uIGlzIGFmdGVyIHRoZSByZXZhbGlkYXRlX2Rpc2sgY2FsbCBpdAo+IHdvbid0IHJl
bW92ZSB0aGUgbmFtZXNwYWNlLgo+IC0tIAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAobnMtPmRpc2sgJiYgcmV2YWxpZGF0ZV9kaXNrKG5zLT5kaXNrICYmCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybC0+c3RhdGUgPT0gTlZNRV9DVFJMX0xJ
VkUpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1l
X25zX3JlbW92ZShucyk7Cj4gLS0gCj4gCj4+Cj4+IEknbSBub3QgdG9vIGNvbmNlcm5lZCBhYm91
dCB0aGlzIGNvcm5lciBjYXNlIGFjdHVhbGx5IG9jY3VyaW5nIGluCj4+IHByYWN0aWNlLCB0aG91
Z2guCj4gCj4gU2F5LCB3aHkgYXJlIHdlIHJlbW92aW5nIHRoZSBuYW1lcHNhY2UgaWYgdGhlIHJl
dmFsaWRhdGUgZmFpbGVkPwo+IERvbid0IHNlZSBhbiBlcXVpdmFsZW50IGJlaGF2aW9yIGluIHNj
c2kgb3Igb3RoZXJzIGluIGRyaXZlcnMvYmxvY2suLgoKVGhhdCBwcm9iYWJseSBkdWUgdG8gdGhl
IGNvbnZvbHV0ZWQgbG9naWMgaW4gbnZtZV9zY2FuX25zX2xpc3QoKS4KVGhhdCBzY2FucyBhbGwg
bmFtZXNwYWNlcyBpbiB0aGUgbGlzdCwgYW5kIHJlbW92ZXMgdGhvc2Ugd2hpY2ggZmFpbHMuCldo
aWNoIHNlZW1zIHNlbnNpYmxlLCBidXQgcmVhbGx5IHNob3VsZG4ndCBiZSBjYWxsZWQgZHVyaW5n
IHJlc2V0CmFzIHdlIGNhbm5vdCBnZXQgYW55IHNlbnNpYmxlIHJlc3VsdHMgZm9yIGFueSBvZiB0
aG9zZSBjYWxscy4KClRoaXMgd2FzIHRoZSByZWFzb24gZm9yIG15IG9yaWdpbmFsIHBhdGNoIHRv
IGZsdXNoIHRoZSBzY2FubmluZyB0aHJlYWQKYmVmb3JlIGVudGVyaW5nIHJlc2V0LiBNYXliZSB3
ZSBzaG91bGQgcmV2aXZlIGl0Li4uCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVp
bmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAg
ICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0
ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lu
cywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
