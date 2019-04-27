Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610DB335
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 13:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S0DG8Bw0zZ8OYJWasULM9HuL0pD+8P6tsGhvG/Dh8U4=; b=Y1ZUYALnmlKevINMCZgvDp5SK
	Ny6KrO4XjlGkwhjJCJi1zxEl3CLOL0Ox2gYRqMUIG1gV8UxmEYHUagY2JpWj2WphkJ5Aan3KKhAaz
	wvVaq6iLa4glNTyRlwWrO94EsJNB9PyK4Akuf2+V+FfDKt0v8eojMUSL/0yRUfXG70drDQ28XxJdN
	nVUh35ffRHYpNOJtM/7awI91JUJRPGAEG3zFa7hgPapwpSsY4mq4isECAkVeXxYL8lWOrpcrM7zJm
	1+dokoxyLOXM2zFiH3xoIx75GI79X+Iq6KJjgApDivxsL3U7jMp6TmzCrubSBbFmSZW/VsZq2r7uD
	bWyRZ5gmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKL8q-0002rZ-AJ; Sat, 27 Apr 2019 11:05:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKL8l-0002Rx-D0
 for linux-nvme@lists.infradead.org; Sat, 27 Apr 2019 11:05:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DAB05AD47;
 Sat, 27 Apr 2019 11:05:05 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 0/6] Support discovery log change events
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, 
 linux-nvme@lists.infradead.org
References: <20190223023257.21227-1-sagi@grimberg.me>
 <d4012891-8bc7-00cf-ab96-7828270d25af@suse.de>
 <e7423c76-6425-4020-2074-b977fc87866f@grimberg.me>
 <d1742744-1109-e7e8-3586-fca6556c803b@broadcom.com>
 <d7bbfc2a-92ea-315d-bbd6-cd3847449f7b@grimberg.me>
 <3b524b54-8f13-24f5-4367-34a4d02c59b3@broadcom.com>
 <5c64286b-3fbf-9dfe-ef8a-3f72e630f11d@broadcom.com>
 <a4f8ca74-7777-9e80-3209-ef9ce27ad2d8@suse.de>
 <44f637f2-0c0d-cef4-05b3-c5e67ec907bb@grimberg.me>
 <f0e112f7-0db5-4928-0859-8b3b6b797432@grimberg.me>
 <9d0e3080-baa7-6f55-2548-097523bb3a83@suse.de>
 <03163041-9b14-3662-edb8-1d69f20f681f@grimberg.me>
 <f4594084-4f2a-33ca-77b4-d7075bbb12af@broadcom.com>
 <2a08f760-0aeb-d788-3210-72ec9d6eb9bc@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <4eacae3c-f7cd-d08d-7601-c31faf6a0b36@suse.de>
Date: Sat, 27 Apr 2019 13:05:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <2a08f760-0aeb-d788-3210-72ec9d6eb9bc@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_040507_738152_A5C286ED 
X-CRM114-Status: GOOD (  24.01  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8yNi8xOSA5OjEwIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gTm93LCBJJ20g
c3VnZ2VzdGluZyB0byBzdXBwb3J0IGRpc2NvdmVyeSBjaGFuZ2UgbG9nIGV2ZW50cyBieSBhbGxv
d2luZwo+Pj4gdGhlIHVzZXIgdG8gc2V0dXAgYSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9s
bGVyIGFuZCBoYXZlIHRoZSBrZXJuZWwKPj4+IGZpcmUgdG8gdXNlcnNwYWNlIGRpc2NvdmVyeSBj
aGFuZ2UgbG9nIGV2ZW50cyBvdmVyIHRoYXQgY29udHJvbGxlci4KPj4+Cj4+PiBBbnkgY29tbWVu
dHMvZmVlZGJhY2svYWx0ZXJuYXRpdmVzIG9uIF90aGlzXz8KPj4KPj4gSSB0aGluayBpdCdzIGZp
bmUsIGFuZCB3ZSBzaG91bGQgYmUgYWJsZSB0byBtZXJnZSBwb3NzaWJseSB3aGF0IHRoZSAKPj4g
QUVOIGV2ZW50IGxvb2tzIGxpa2UgYW5kIHRoZSBGQyBldmVudC7CoCBUaGUgRXZlbnRzIGFyZSBw
cmV0dHkgbXVjaCB0aGUgCj4+IHNhbWUgYmV0d2VlbiBGQyBhbmQgdGhlIEFFTiAtPiBnbyBwZXJm
b3JtIGEgY29ubmVjdC1hbGwgYWdhaW5zdCB0aGUgCj4+IGluZGljYXRlZCBkaXNjb3ZlcnkgY29u
dHJvbGxlci7CoMKgIFdoYXQgaXMgZGlmZmVyZW50IGlzIGhvdyBkbyB5b3UgCj4+IGlkZW50aWZ5
IHRoZSBkaXNjb3ZlcnkgY29udHJvbGxlciwgYW5kIGlmIHlvdSBhcmUgcmUtdXNpbmcgYW4gYW4g
Cj4+IGV4aXN0aW5nIGNvbnRyb2xsZXIsIGhvdyB3b3VsZCB0aGF0IGNvbm5lY3QtYWxsIG9jY3Vy
IGlmIGl0IGRvZXNuJ3QgCj4+IGNyZWF0ZSBhIG5ldyBkaXNjb3ZlcnkgY29udHJvbGxlciBpbnN0
YW5jZS7CoCBGb3IgaG93IHRvIGlkZW50aWZ5IHRoZSAKPj4gZGlzY292ZXJ5IGNvbnRyb2xsZXIs
IGl0IGNvdWxkIGJlOiBhKSBieSBmdWxsIAo+PiBkaXNjb3ZlcnktbG9nLWJhc2VkLWFkZHJlc3Mg
ZmllbGRzwqAgKG5vdCBhbGwgbXVzdCBiZSBwcmVzZW50OyBlLmcuIAo+PiBGQyk7wqAgYikgYnkg
L2Rldi9udm1lPyBuYW1lIG9mIHRoZSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVyIAo+
PiAoZS5nLiB0aGUgQUVOKTsgb3IgYykgYSBkZXJpdmF0aW9uIG9mIHRoZSAvZGV2L252bWU/IG5h
bWUgKGFrYSAoYikpIGJ5IAo+PiB1c2luZyAoYSkgdG8gc2VlIGlmIGEgcGVyc2lzdGVudCBjb250
cm9sbGVyIGV4aXN0cyBhdCB0aGF0IGxvY2F0aW9uLgo+PiBBbSBJIGdldHRpbmcgYSBsaXR0bGUg
b2ZmIGJhc2UgPwo+IAo+IE5vdCBhdCBhbGwsCj4gCj4gR2l2ZW4gdGhhdCBGQyBkb2VzIG5vdCBu
ZWVkIGEgcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxlciB0byBnZXQgdGhlCj4gZXZlbnQs
IGl0cyBmaW5lIHRoYXQgaXQgd2lsbCBjcmVhdGUgYSB0ZW1wb3JhcnkgZGlzY292ZXJ5IGNvbnRy
b2xsZXIuCj4gR2l2ZW4gdGhhdCBGQyBhbmQgSVAgZG8gZGlmZmVyZW50IHRoaW5ncywgd2UgY2Fu
IHNlcGFyYXRlIHRoZW0uIEJ1dCB3aGF0Cj4gSSB3YW50ZWQgdG8gdW5kZXJzdGFuZCwgaXMgaWYg
SSBleHBvcnQgYSBzZWNvbmQgc3Vic3lzdGVtIG9uIHRoZSBzYW1lCj4gRkMgcG9ydCwgd2lsbCBp
dCBnZW5lcmF0ZSBhbiBGQyBldmVudD8KPiAKVHlwaWNhbGx5IG5vdC4KRkMgdWV2ZW50cyBhcmUg
Z2VuZXJhdGVkIG9uIHJwb3J0cyBjb21pbmcgYW5kIGdvaW5nLCBoZW5jZSB3ZSB3b24ndCAKbm9y
bWFsbHkgc2VlIGFuIGFkZGl0aW9uYWwgc3Vic3lzdGVtLgpIb3dldmVyLCB5b3UgY291bGQgdHdl
YWsgdGhlIHRhcmdldCBpbXBsZW1lbnRhdGlvbiB0byByZWxvZ2luLCBhdCB3aGljaCAKcG9pbnQg
eW91IG9idmlvdXNseSB3aWxsIGJlIGdldHRpbmcgYW4gZXZlbnQuCgo+IFRoZSBvbmx5IHRoaW5n
IHdlIG5lZWQgdG8gbWFrZSBzdXJlIHdvcmtzIGlzIHdoZW4gRkMgYWxzbyBoYXMgYQo+IHBlcnNp
c3RlbnQgZGlzY292ZXJ5IGNvbnRyb2xsZXIgYW5kIGl0IHdpbGwgc2VlIGJvdGggRkMgZXZlbnRz
IGFuZAo+IG52bWUgZGlzY292ZXJ5IGxvZyBjaGFuZ2UgZXZlbnRzIChub3Qgc3VyZSBpdHMgYSB2
YWxpZCB1c2UtY2FzZSBhdCBhbGwKPiB0aG91Z2gpLiBJIGRvbid0IHNlZSBob3cgdGhhdCBjb3Vs
ZCBicmVhayBiZWNhdXNlIGlmIEkgdW5kZXJzdGFuZAo+IGNvcnJlY3RseSBpdCB3aWxsIHNlZSB0
d28gZXZlbnRzIGFuZCB3b3JzdCBjYXNlIHdpbGwgZmFpbCB0byBjb25uZWN0Cj4gZHVwbGljYXRl
IGNvbnRyb2xsZXIgcXVpZXRseSB3aGljaCBpcyBmaW5lIEkgZ3Vlc3MuLi4KPiAKSWYgd2Ugc3Rp
Y2sgd2l0aCB0aGUgY3VycmVudCBtb2RlbCBvZiBmb3J3YXJkaW5nIHVldmVudHMgdG8gYSBzeXN0
ZW1kIApzZXJ2aWNlIHdlIGp1c3QgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCBib3RoIGV2ZW50cyB3
aWxsIHN0YXJ0IHRoZSBfc2FtZV8gCnN5c3RlbWQgc2VydmljZS4gVGhlbiB3ZSdkIGp1c3QgaGF2
ZSBhIGR1cGxpY2F0ZSAnc3RhcnQnIGNhbGwgZm9yIHRoZSAKc2FtZSBzZXJ2aWNlLCB3aGljaCB3
aWxsIGJlIGJ1bmNoZWQgdG9nZXRoZXIgaW50byBhIHNpbmdsZSBvcGVyYXRpb24gYnkgCnN5c3Rl
bWQuCgpBbmQgZXZlbiBpZiB3ZSBkbyBub3QgbWFuYWdlIHRvIGRvIHNvLCB3ZSBhbHJlYWR5IGhh
dmUgZHVwbGljYXRlIGNhbGxzIAp0byB0aGUgc3lzdGVtZCBzZXJ2aWNlIGVnIG9uIGxpbmsgYm91
bmNpbmcsIHNvIHdlIG5lZWQgdG8gKGFuZCBhbHJlYWR5IApkbykgaGFuZGxlIHRoYXQgb25lLgoK
U28gZHVwbGljYXRlIGV2ZW50cyBpcyBub3QgcmVhbGx5IGEgcHJvYmxlbTsgaXQncyBqdXN0IGlu
ZWZmaWNpZW50LgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAg
ICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBN
YXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFy
eSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
