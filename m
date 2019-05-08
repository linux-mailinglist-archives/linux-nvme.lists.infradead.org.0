Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE75B170CC
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 08:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mdGfoiDYdC+anTFN3EI0SuHngkRS4a558Z3JMF2oatI=; b=FCfvLOs1qyOEIEjlSr0YAiypF
	Th5/Rgv+7eyGsm24kQFJTunichHCYuXV3Fts5cm/EX5Jq8cHWmR+Uz8h1HwADz2gR1O2M5Ck1J31L
	EOAdlqeBTzvyE84QYPCLkRH+tPbmD9HPOYdkACXr/XzAVjMNX8/AL2Hq6KjnvLtXRjpa5kaHTVL2D
	mKjrosFlRadyoDL/xOGa7RQqkSMQu6nsOSNN8YJXsFTByBf/6cLyuJG7Na650eZDTTdmhprYSG9+T
	3I7NE78eBPBHJOdlQd3qzlK578BUBRTyLeJmpCw6hjQzUq9TpebeGByV9LWgWFah/4w7fTHxKoX9Q
	WZm/Bs1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFmu-0006LR-P8; Wed, 08 May 2019 06:10:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFmp-0006Kx-EO
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 06:10:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B9D9AB9D;
 Wed,  8 May 2019 06:10:37 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
Date: Wed, 8 May 2019 08:10:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_231039_776357_9C0980EA 
X-CRM114-Status: GOOD (  25.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS83LzE5IDY6NTYgUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IE9uIDUvNy8yMDE5IDEyOjEz
IEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+IE9uIDUvNC8xOSAyOjA0IEFNLCBKYW1lcyBT
bWFydCB3cm90ZToKPj4+IFRvIHN1cHBvcnQgZGlzY292ZXJ5IChjb25uZWN0L2Nvbm5lY3QtYWxs
KSB0byBvcGVyYXRlIGFnYWluc3QgYQo+Pj4gcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxl
ciwgbGV0IHRoZSBkaXNjb3ZlcnkgY29udHJvbGxlciB0bwo+Pj4gYmUgc3BlY2lmaWVkIGJ5IGl0
cyBkZXZpY2Ugbm9kZSBuYW1lIHJhdGhlciB0aGFuIG5ldyBjb25uZWN0aW9uCj4+PiBhdHRyaWJ1
dGVzLgo+Pj4KPj4+IEFsc28gY2VudHJhbGl6ZSBleHRyYWN0aW9uIG9mIGNvbnRyb2xsZXIgaW5z
dGFuY2UgZnJvbSB0aGUgY29udHJvbGxlcgo+Pj4gbmFtZSB0byBhIGNvbW1vbiBoZWxwZXIuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPj4+
IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4KPj4+IC0t
LQo+Pj4gUGF0Y2ggb3JpZ2luYXRlZCBmcm9tIFNhZ2kgaW4gYW4gUkZDCj4+PiBmaXggbWVyZ2Ug
aXNzdWUKPj4+IGZpeCBjb250b2xsZXItPmNvbnRyb2xsZXIKPj4+IGFkZCBjZmcuZGV2aWNlIGNo
ZWNrIGZvciAibm9uZSIKPj4+IC0tLQo+Pj4gwqAgZmFicmljcy5jIHwgMzUgKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspLCAxMCBkZWxldGlvbnMoLSkKPj4+Cj4+IEFjdHVhbGx5LCBJIHdvdWxkIHJhdGhlciBz
Y2FuIGV4aXN0aW5nIGNvbnRyb2xsZXJzLCBhbmQgdXNlIHRoZSBmaXJzdCAKPj4gb25lIHRoYXQg
bWF0Y2hlcyB0aGUgYXJndW1lbnRzLgo+PiBXaXRoIHRoZSBjdXJyZW50IGRlc2lnbiB3ZSB3b3Vs
ZCBoYXZlIGRpZmZlcmVudCBjYWxsaW5nIHNlcXVlbmNlcywgCj4+IGRlcGVuZGluZyBvbiB3aGV0
aGVyIGl0J3MgdGhlIGZpcnN0IGNhbGwgKHdoaWNoIGNyZWF0ZSB0aGUgCj4+IGNvbnRyb2xsZXIp
LCBvciBhbnkgc3Vic2VxdWVudCBjYWxsLgo+PiBJZiB3ZSB3ZXJlIGxvb2tpbmcgdXAgdGhlIGV4
aXN0aW5nIGNvbnRyb2xsZXIgZnJvbSB0aGUgYXJndW1lbnRzIHdlIAo+PiBjb3VsZCBiZSB1c2lu
ZyB0aGUgc2FtZSBjb21tYW5kbGluZSB0aHJvdWdob3V0Lgo+Pgo+IAo+IFdlbGwsIHRoaXMgaXMg
d2hlcmUgd2UncmUgYXQgb2Rkcy7CoCBXZSBuZWVkIHRvIGRlY2lkZSBpZiB3ZSBzaG91bGQgCj4g
Y3JlYXRlIGFub3RoZXIgZnVsbCBjb250cm9sbGVyIGluc3RhbmNlIHdoZW4gdGhlIGV2ZW50IG9j
Y3Vycywgd2hpY2ggaXMgCj4gd2hhdCBGQyBkb2VzIHRvZGF5IChjYW4gaGF2ZSBtdWx0aXBsZSBy
dW5uaW5nIGNvbmN1cnJlbnRseSksIG9yIHdoZXRoZXIgCj4gd2Ugd2FudCB0byByZXVzZSB0aGUg
cGVyc2lzdGVudCBvbmUuIEkgd291bGQgdGhpbmsgaW1wbGVtZW50ZXJzIG9mIHRoZSAKPiBwZXJz
aXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVyIHdvdWxkIHdhbnQgeW91IHRvIHJldXNlIGl0IGFu
ZCBub3QgaGF2ZSAKPiB0byBzdXBwb3J0IG1vcmUgY29uY3VycmVudCBkaXNjb3ZlcnkgY29udHJv
bGxlciBpbnN0YW5jZXMuwqAgVGhlICJyZXVzZSIgCj4gY2FzZSBpcyB3aHkgcGFzc2luZyB0aGUg
LS1kZXZpY2UgYXJnIG1ha2VzIGl0IHZlcnkgc3RyYWlnaHQgZm9yd2FyZC7CoCBXZSAKPiBjb3Vs
ZCBhbHdheXMgaGF2ZSB0aGUgdXRpbGl0eSBnZXQgdGhlIGFkZHJlc3NpbmcgaW5mbyBhbmQgbG9v
ayBhdCAKPiBleGlzdGluZyBjb250cm9sbGVyIGFuZCBkZWNpZGUgdG8gdXNlIGFuIGV4aXN0aW5n
IG9uZSAtIEkgYXNzdW1lIHdlIAo+IHdvdWxkIG9ubHkgc2VsZWN0IHBlcnNpc3RlbnQgb25lcyBp
biBvcmRlciB0byBhdm9pZCBkZWxldGUgcmFjZSAKPiBjb25kaXRpb25zLCBidXQgc2VlbXMgbGlr
ZSBhIGxvdCBvZiB3b3JrIGZvciB3aGF0IHRoZSBBRU4gYWxyZWFkeSAKPiBrbm93cy7CoCBJIGRv
IGhhdmUgYSBsaXR0bGUgY29uY2VybiB0aGF0IHRoZXJlJ3MgYWx3YXlzIGEgd2luZG93IGZyb20g
Cj4gd2hlbiB0aGUgZXZlbnQgaXMgcG9zdGVkIHRvIHdoZW4gdGhlIC9kZXYgZGV2aWNlbmFtZSBp
cyBvcGVuZWQsIHdoaWNoCj4gYWxsb3dzIGZvciB0aGUgZGV2aWNlIG5hbWUgdG8gYmUgdGVybWlu
YXRlZCBhbmQgcG9zc2libHkgcmV1c2VkIGZvciAKPiBzb21ldGhpbmcgZWxzZSwgYnV0IEkgZ3Vl
c3Mgd2UncmUgd2lsbGluZyB0byBsaXZlIHdpdGggdGhpcy4KPiAKTXkgY29uY2VybiBoZXJlIGlz
IHRoYXQgaXQnbGwgYmUgcXVpdGUgaGFyZCB0byB1c2UgdGhlIC0tZGV2aWNlIGFyZ3VtZW50CmZy
b20gd2l0aGluIHRoZSB1ZGV2IGV2ZW50OyB0aGUgZXZlbnQgaXRzZWxmIGRvZXNuJ3Qgc3BlY2lm
eSB0aGUgZGV2aWNlLAptYWtpbmcgaXQgcmVhbGx5IGhhcmQgdG8gdXNlIHRoZW0gaW4gdGhlIGZp
cnN0IHBsYWNlLgpQcmVjaXNlbHkgZHVlIHRvIHRoZSByYWNlIGlzc3VlcyB5b3UgbWVudGlvbmVk
LgoKQnV0IG5vdyBpdCBiZWNvbWVzIGEgYmUgcXVpcmt5OyB3ZSBuZWVkIHRvIGhhdmUgdGhlIHBl
cnNpc3RlbnQgCmNvbm5lY3Rpb24gdG8gZ2V0IHRoZSBBRU5zIChpZSB3ZSBkbyBoYXZlIGEgZGV2
aWNlIG5vZGUpLCBidXQgd2UgY2Fubm90IAp1c2UgdGhlbSBmcm9tIHRoZSB1ZXZlbnQsIGFuZCBo
YXZlIHRvIGNyZWF0ZSBhIG5ldyBvbmUuCgpTbyB0aGlzIGlzIG15IGlzc3VlIGhlcmU6IF9pZl8g
d2UgaGF2ZSBhIHBlcnNpc3RlbnQgY29ubmVjdGlvbiB3aGljaCAKZ2VuZXJhdGVzIEFFTnMsIHdl
IHNob3VsZCBiZSB1c2luZyB0aGUgdmVyeSBzYW1lIGNvbm5lY3Rpb24gdG8gZ2V0IHRoZSAKZGlz
Y292ZXJ5IGluZm9ybWF0aW9uIGluIHRoZSBjb25uZWN0LWFsbCBjYWxsLgoKV2hpY2ggbWVhbnMg
d2UgcHJvYmFibHkgaGF2ZSB0byB1cGRhdGUgdGhlIGRpc2NvdmVyeSBBRU4gdWV2ZW50cyB0byAK
aW5jbHVkZSBhIGRldmljZSBuYW1lOyB0aGVuIHRoZSB1ZXZlbnQgd2lsbCBjYXJyeSB0aGUgaW5m
b3JtYXRpb24sIGFuZCAKdGhlIHByZXNlbmNlIG9mIHRoZSBkZXZpY2UgaW4gdGhlIHVldmVudCB3
aWxsIHRlbGwgdXMgd2hldGhlciB0byB1c2UgdGhlIApwZXJzaXN0ZW50IGNvbm5lY3Rpb24gb3Ig
bm90LgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAg
VGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdn
aW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
