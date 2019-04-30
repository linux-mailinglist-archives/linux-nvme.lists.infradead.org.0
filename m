Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAACFF679
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 13:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HUKTfvPEkrdBDpuf7Nq5XCjOyAwq22RF8hWixo1eicg=; b=S5IcB9x+y+rEep1JJetoR6hz7
	xlTgWZCH58C0vkqjOZDLKuRPegoKUyU4r0E9laqysLXxQU5I4H5PvJ+VGoGxWWe3JJpuu2/M+Tp0i
	5glpVWAVB8wJAXMxrETnjbweTR625FbMDhdRJU/wgjjqXPthRKcTKxB86QPJEzBTVXl5t7x1Ej8Px
	8jiPvAAUu9Nqw0Y3DJEOrHLwyruJcwbQ+5k/arU6p4RJQ8E+RKagDrlpwzLeaa/+BHgwshVaCpt2i
	X/bSj7pv9Z6KvhMk4UTCEgOT9xUsUS9DNa1S4mHc3W9gVt4secDg4+wMNZUXOOKK7rMKmBIVbrxUR
	LjwEhslYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRF2-0005RS-Vm; Tue, 30 Apr 2019 11:48:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLREx-0005QZ-A5
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 11:48:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8D038ADF7;
 Tue, 30 Apr 2019 11:48:01 +0000 (UTC)
Subject: Re: [PATCH] block: use static bio_set for bio_split() calls
To: Ming Lei <ming.lei@redhat.com>
References: <20190418140632.60606-1-hare@suse.de>
 <20190418143429.GA19175@ming.t460p>
 <98d8549a-2663-b404-e38a-6f55dfb575bf@grimberg.me>
 <20190424221422.GA21351@ming.t460p> <20190425004106.GA22683@ming.t460p>
 <c6a54cea-f2ce-3344-efb1-ba8f20bf9509@suse.de>
 <20190425153627.GA9825@ming.t460p>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <b884020e-ad18-199f-8377-89e3e42ae84c@suse.de>
Date: Tue, 30 Apr 2019 13:48:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190425153627.GA9825@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_044803_498008_F8EC32C2 
X-CRM114-Status: GOOD (  21.48  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@gmail.com>,
 neilb@suse.com, linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-block@vger.kernel.org, Kent Overstreet <kent.overstreet@gmail.com>,
 Bart van Assche <bvanassche@acm.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8yNS8xOSA1OjM2IFBNLCBNaW5nIExlaSB3cm90ZToKPiBPbiBUaHUsIEFwciAyNSwgMjAx
OSBhdCAwNDozMjo0MlBNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+IE9uIDQvMjUv
MTkgMjo0MSBBTSwgTWluZyBMZWkgd3JvdGU6Cj4+PiBPbiBUaHUsIEFwciAyNSwgMjAxOSBhdCAw
NjoxNDoyMkFNICswODAwLCBNaW5nIExlaSB3cm90ZToKPj4+PiBPbiBXZWQsIEFwciAyNCwgMjAx
OSBhdCAxMDoyMDo0NkFNIC0wNzAwLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Pj4+Pgo+Pj4+Pj4g
cGVyLXF1ZXVlIGJpb3NldCBpcyB1c2VkIG9yaWdpbmFsbHkgZm9yIGF2b2lkaW5nIGRlYWRsb2Nr
LCBhcmUgeW91Cj4+Pj4+PiBzdXJlIHRoZSBzdGF0aWMgYmlvc2V0IGlzIHNhZmU/Cj4+Pj4+Cj4+
Pj4+IENhbiB5b3UgZXhwbGFpbiB0aGlzPyBJIGRpZG4ndCBmaW5kIGFueSBpbmRpY2F0aW9uIG9m
IHRoYXQgaW4gdGhlIGNoYW5nZQo+Pj4+PiBsb2cgaGlzdG9yeS4uLgo+Pj4+Pgo+Pj4+PiBPcmln
aW5hbGx5IGludHJvZHVjZWQgYnkgS2VudDoKPj4+Pgo+Pj4+IGJpbyBzcGxpdCBjYW4gYmUgcnVu
IGZyb20gc3RhY2tpbmcgZHJpdmVycywgZm9yIGV4YW1wbGUsIE1EIG92ZXIgTlZNZSwKPj4+PiBp
ZiB0aGUgZ2xvYmFsIHJlc2VydmVkIG1lbXBvb2wgaXMgY29uc3VtZWQgYnkgTUQgYmlvIHNwbGl0
dGluZywgdGhlbgo+Pj4+IG5vIGFueSBwcm9ncmVzcyBjYW4gYmUgbWFkZSB3aGVuIHNwbGl0dGlu
ZyBvbiBiaW8gc3VibWl0dGVkIHRvIE5WTWUuCj4+Pj4KPj4+PiBLZW50IG1heSBoYXZlIG1vcmUg
ZGV0YWlscy4uLgo+Pj4KPj4+IEkgZ3Vlc3MgaXQgbWlnaHQgYmUgZmluZSB0byB1c2Ugb25lIHNo
YXJlZCBnbG9iYWwgYmlvX3NldCBmb3IgYWxsCj4+PiBsb3dlc3QgdW5kZXJseWluZyBxdWV1ZXMs
IGNvdWxkIGJlIGFsbCBxdWV1ZXMgZXhjZXB0IGZvciBsb29wLCBkbSwgbWQKPj4+ICwgZHJiZCwg
YmNhY2hlLCAuLi4KPj4+Cj4+IEJ1dCB3YXNuJ3QgdGhlIG92ZXJhbGwgaWRlYSBvZiBzdGFja2lu
ZyBkcml2ZXJzIHRoYXQgd2UgcHJvcGFnYXRlIHRoZSBxdWV1ZQo+PiBsaW1pdHMgdXAgdG8gdGhl
IHVwcGVybW9zdCBkcml2ZXJzLCBzbyB0aGF0IHdlIGhhdmUgdG8gZG8gYSBzcGxpdCBvbmx5IGF0
Cj4+IHRoZSB1cHBlciBsYXllcnM/Cj4gCj4gRm9yIGV4YW1wbGUsIExWTSBvdmVyIFJBSUQsIHRo
ZSBsaW1pdHMgb2YgTFZNIHF1ZXVlIGlzIGZpZ3VyZWQgb3V0IGFuZCBmaXhlZAo+IGR1cmluZyBj
cmVhdGluZyBMVk0uIEhvd2V2ZXIsIG5ldyBkZXZpY2UgbWF5IGJlIGFkZGVkIHRvIHRoZSBSQUlE
LiBUaGVuIHRoZQo+IHVuZGVybHlpbmcgcXVldWUncyBsaW1pdCBtYXkgbm90IGJlIHByb3BhZ2F0
ZWQgdG8gTFZNJ3MgcXVldWUncyBsaW1pdC4KPiAKPiBBbmQgd2UgZGlkIGRpc2N1c3MgdGhlIHRv
cGljIG9mICdibG9jazogZG06IHJlc3RhY2sgcXVldWVfbGltaXRzJwo+IGJlZm9yZSwgbG9va3Mg
bm90IHNlZSBhbnkgcHJvZ3Jlc3MgbWFkZS4KPiAKPiBBbHNvIGxvb3AgZG9lc24ndCBjb25zaWRl
ciBzdGFjayBsaW1pdHMgYXQgYWxsLgo+IAo+PiBGdXJ0aGVybW9yZSwgaXQncyBub3QgZXZlcnkg
YmlvIHdoaWNoIG5lZWRzIHRvIGJlIHNwbGl0LCBvbmx5IHRob3NlIHdoaWNoCj4+IHN0cmFkZGxl
IHNvbWUgZGV2aWNlIGxpbWl0YXRpb25zLgo+PiBUaGUgb25seSBvbmVzIG5vdCBiZWluZyBhYmxl
IHRvIHByb3BhZ2F0ZSB0aGUgcXVldWUgbGltaXRzIGlzIE1ELCBhbmQgdGhhdAo+PiBpcyBhbHJl
YWR5IHVzaW5nIGEgcHJpdmF0ZSBiaW9fc2V0IGhlcmUuCj4gCj4gSWYgRE0gYW5kIHRoZSBsb3dl
c3QgcXVldWUgc2hhcmUgb25lIHNhbWUgYmlvX3NldChtZW1fcG9vbCksIGl0IGlzbid0Cj4gZW5v
dWdoIGZvciBNRCB0byB1c2UgcHJpdmF0ZSBiaW9fc2V0Lgo+IApBaCwgcmlnaHQuIEkndmUgcmV2
aWV3ZWQgdGhlIHBhdGNoZXMgaW1wbGVtZW50aW5nIHRoZSBwZXItcXVldWUgYmlvc2V0cywgCmFu
ZCBpbmRlZWQgd2UnbGwgbmVlZCB0byB1c2UgdGhlbS4KQnV0IG1lYW53aGlsZSBJJ3ZlIGZvdW5k
IGFub3RoZXIgd2F5IG9mIGNpcmN1bXZlbnRpbmcgdGhpcyBpc3N1ZSwgc28gCnRoaXMgcGF0Y2gg
Y2FuIGJlIGRyb3BwZWQuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJ
CSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAg
ICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3Jp
IFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
