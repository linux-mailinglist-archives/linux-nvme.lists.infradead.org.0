Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8179E18515
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z61AeQNK/JluFmTSdxXT8UKyWifugUZbG9RX30QSkiE=; b=ElqGykomAAjYqJq4TdQrFK362
	ZBnejchN9QidUy6ylrHGL2TrXw+VHkyVMgR9wHRE96GiY0E60/9Vm3Xj+A8rZXpko/bl9MqoOi9FV
	imfyrI0yp3ypMRdu4EQn5yijuW3z4qy3xDBSzTEyMuf+3ypdkV+yFKKx3VqeZW6cPdj2ZTDvQC1MZ
	4HOs1kKsr3BbguwFGqtdBQRpaNG6PY55BaaK0MZJ6f8Y78Y4RiGQiMb0EL530YoNxWZj44FE6sdg8
	Sh8tmnUuGiUDpZTCB4H2PgHLeZVIBiRjZN5V15O10gpQpmhGyfamoh+6ryAjBwMiJcj/qc1QJ88pK
	ie1XOJKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcDX-0006HC-Ak; Thu, 09 May 2019 06:07:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcDB-0006Gk-TI
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:07:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B3FEDAD02;
 Thu,  9 May 2019 06:07:18 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
 <f51f039e-24f2-d01f-2ae1-9f86c99e00e2@suse.de>
 <3f84d637-4d04-45e1-ce49-59238c2aaea8@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <c3bf6edd-91fc-74d5-29a3-093fa57d561f@suse.de>
Date: Thu, 9 May 2019 08:07:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3f84d637-4d04-45e1-ce49-59238c2aaea8@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_230722_234580_0E31A734 
X-CRM114-Status: GOOD (  33.42  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS84LzE5IDk6MzEgUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IAo+IAo+IE9uIDUvNy8yMDE5
IDExOjEwIFBNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+IE9uIDUvNy8xOSA2OjU2IFBNLCBK
YW1lcyBTbWFydCB3cm90ZToKPj4+Cj4+PiBXZWxsLCB0aGlzIGlzIHdoZXJlIHdlJ3JlIGF0IG9k
ZHMuwqAgV2UgbmVlZCB0byBkZWNpZGUgaWYgd2Ugc2hvdWxkIAo+Pj4gY3JlYXRlIGFub3RoZXIg
ZnVsbCBjb250cm9sbGVyIGluc3RhbmNlIHdoZW4gdGhlIGV2ZW50IG9jY3Vycywgd2hpY2ggCj4+
PiBpcyB3aGF0IEZDIGRvZXMgdG9kYXkgKGNhbiBoYXZlIG11bHRpcGxlIHJ1bm5pbmcgY29uY3Vy
cmVudGx5KSwgb3IgCj4+PiB3aGV0aGVyIHdlIHdhbnQgdG8gcmV1c2UgdGhlIHBlcnNpc3RlbnQg
b25lLiBJIHdvdWxkIHRoaW5rIAo+Pj4gaW1wbGVtZW50ZXJzIG9mIHRoZSBwZXJzaXN0ZW50IGRp
c2NvdmVyeSBjb250cm9sbGVyIHdvdWxkIHdhbnQgeW91IHRvIAo+Pj4gcmV1c2UgaXQgYW5kIG5v
dCBoYXZlIHRvIHN1cHBvcnQgbW9yZSBjb25jdXJyZW50IGRpc2NvdmVyeSBjb250cm9sbGVyIAo+
Pj4gaW5zdGFuY2VzLsKgIFRoZSAicmV1c2UiIGNhc2UgaXMgd2h5IHBhc3NpbmcgdGhlIC0tZGV2
aWNlIGFyZyBtYWtlcyBpdCAKPj4+IHZlcnkgc3RyYWlnaHQgZm9yd2FyZC7CoCBXZSBjb3VsZCBh
bHdheXMgaGF2ZSB0aGUgdXRpbGl0eSBnZXQgdGhlIAo+Pj4gYWRkcmVzc2luZyBpbmZvIGFuZCBs
b29rIGF0IGV4aXN0aW5nIGNvbnRyb2xsZXIgYW5kIGRlY2lkZSB0byB1c2UgYW4gCj4+PiBleGlz
dGluZyBvbmUgLSBJIGFzc3VtZSB3ZSB3b3VsZCBvbmx5IHNlbGVjdCBwZXJzaXN0ZW50IG9uZXMg
aW4gb3JkZXIgCj4+PiB0byBhdm9pZCBkZWxldGUgcmFjZSBjb25kaXRpb25zLCBidXQgc2VlbXMg
bGlrZSBhIGxvdCBvZiB3b3JrIGZvciAKPj4+IHdoYXQgdGhlIEFFTiBhbHJlYWR5IGtub3dzLsKg
IEkgZG8gaGF2ZSBhIGxpdHRsZSBjb25jZXJuIHRoYXQgdGhlcmUncyAKPj4+IGFsd2F5cyBhIHdp
bmRvdyBmcm9tIHdoZW4gdGhlIGV2ZW50IGlzIHBvc3RlZCB0byB3aGVuIHRoZSAvZGV2IAo+Pj4g
ZGV2aWNlbmFtZSBpcyBvcGVuZWQsIHdoaWNoCj4+PiBhbGxvd3MgZm9yIHRoZSBkZXZpY2UgbmFt
ZSB0byBiZSB0ZXJtaW5hdGVkIGFuZCBwb3NzaWJseSByZXVzZWQgZm9yIAo+Pj4gc29tZXRoaW5n
IGVsc2UsIGJ1dCBJIGd1ZXNzIHdlJ3JlIHdpbGxpbmcgdG8gbGl2ZSB3aXRoIHRoaXMuCj4+Pgo+
PiBNeSBjb25jZXJuIGhlcmUgaXMgdGhhdCBpdCdsbCBiZSBxdWl0ZSBoYXJkIHRvIHVzZSB0aGUg
LS1kZXZpY2UgYXJndW1lbnQKPj4gZnJvbSB3aXRoaW4gdGhlIHVkZXYgZXZlbnQ7IHRoZSBldmVu
dCBpdHNlbGYgZG9lc24ndCBzcGVjaWZ5IHRoZSBkZXZpY2UsCj4+IG1ha2luZyBpdCByZWFsbHkg
aGFyZCB0byB1c2UgdGhlbSBpbiB0aGUgZmlyc3QgcGxhY2UuCj4+IFByZWNpc2VseSBkdWUgdG8g
dGhlIHJhY2UgaXNzdWVzIHlvdSBtZW50aW9uZWQuCj4gCj4gdWV2ZW50IGRvZXMgc3BlY2lmeSB0
aGUgZGV2aWNlICh0aGUgLS1kZXZpY2UgYXJndW1lbnQpLiBJIGRvbid0IGtub3cgCj4gYWJvdXQg
aGFyZCAtIHNpbXBseSBidWlsZCB1cCBhIHN0cmluZyB3aXRoICJudm1lIiArIGN0cmwgaW5zdGFu
Y2UgIyAgIAo+IGV4YW1wbGU6IG52bWU1Cj4gClllczsgSSd2ZSBkb25lIHNvbWUgdXBkYXRlcyB0
byB5b3VyIHBhdGNoIHNlcmllcyB0cmVhdGluZyBpdCBhcyBzdWNoLgoKPj4KPj4gQnV0IG5vdyBp
dCBiZWNvbWVzIGEgYmUgcXVpcmt5OyB3ZSBuZWVkIHRvIGhhdmUgdGhlIHBlcnNpc3RlbnQgCj4+
IGNvbm5lY3Rpb24gdG8gZ2V0IHRoZSBBRU5zIChpZSB3ZSBkbyBoYXZlIGEgZGV2aWNlIG5vZGUp
LCBidXQgd2UgCj4+IGNhbm5vdCB1c2UgdGhlbSBmcm9tIHRoZSB1ZXZlbnQsIGFuZCBoYXZlIHRv
IGNyZWF0ZSBhIG5ldyBvbmUuCj4gCj4gPz8gbm90IHN1cmUgSSBmb2xsb3cuIFlvdSBzZWVtZWQg
dG8gc2F5IC0gd2Ugd29uJ3QgYXR0ZW1wdCB0byB1c2UgdGhlIAo+IGV4aXN0aW5nIGRldmljZSBh
bmQgd291bGQgY3JlYXRlIGEgbmV3IG9uZS4KPiAKU29ydCBvZi4gSSBnb3QgaXJyaXRhdGVkIGJ5
IHlvdSBjb25jZXJuIGFib3ZlIGFib3V0IGEgcmFjZSB3aW5kb3cgCmJldHdlZW4gdWV2ZW50IGdl
bmVyYXRlZCBhbmQgdGhlIGRldmljZSBub2RlIGJlaW5nIG9wZW5lZC4KCj4+Cj4+IFNvIHRoaXMg
aXMgbXkgaXNzdWUgaGVyZTogX2lmXyB3ZSBoYXZlIGEgcGVyc2lzdGVudCBjb25uZWN0aW9uIHdo
aWNoIAo+PiBnZW5lcmF0ZXMgQUVOcywgd2Ugc2hvdWxkIGJlIHVzaW5nIHRoZSB2ZXJ5IHNhbWUg
Y29ubmVjdGlvbiB0byBnZXQgdGhlIAo+PiBkaXNjb3ZlcnkgaW5mb3JtYXRpb24gaW4gdGhlIGNv
bm5lY3QtYWxsIGNhbGwuCj4+Cj4+IFdoaWNoIG1lYW5zIHdlIHByb2JhYmx5IGhhdmUgdG8gdXBk
YXRlIHRoZSBkaXNjb3ZlcnkgQUVOIHVldmVudHMgdG8gCj4+IGluY2x1ZGUgYSBkZXZpY2UgbmFt
ZTsgdGhlbiB0aGUgdWV2ZW50IHdpbGwgY2FycnkgdGhlIGluZm9ybWF0aW9uLCBhbmQgCj4+IHRo
ZSBwcmVzZW5jZSBvZiB0aGUgZGV2aWNlIGluIHRoZSB1ZXZlbnQgd2lsbCB0ZWxsIHVzIHdoZXRo
ZXIgdG8gdXNlIAo+PiB0aGUgcGVyc2lzdGVudCBjb25uZWN0aW9uIG9yIG5vdC4KPj4KPiAKPiBJ
IHRob3VnaHQgdGhhdCdzIHdoYXQgd2Ugc2FpZC7CoCBXZSdyZSBkZWFsaW5nIHdpdGggYSBwZXJz
aXN0ZW50IAo+IGNvbnRyb2xsZXIgdGhhdCB3YXMgY3JlYXRlZCBhdCBzb21lIHRpbWUgdGhhdCBl
dmVudHVhbGx5IGdlbmVyYXRlcyBhbiAKPiBBRU4uIEFuZCB0aGUgY3VycmVudCBwcm9wb3NhbCBp
cyBmb3IgdGhlIEFFTiB0byBnZW5lcmF0ZSBhIHVkZXYgZXZlbnQgCj4gdGhhdCB3aWxsIGNvbnRh
aW4gLS1kZXZpY2U9bnZtZTxpbnN0YW5jZSM+IChjb3JyZXNwb25kaW5nIHRvIHRoZSAKPiBwZXJz
aXN0ZW50IGNvbnRyb2xsZXIpIHdoaWNoIHdpbGwgZG8gYSBjb25uZWN0LWFsbC7CoCBUaGUgY2xp
LCBzZWVpbmcgdGhlIAo+IGRldmljZSBhcmd1bWVudCB3aWxsIHNraXAgdHJ5aW5nIHRvIGNyZWF0
ZSBhIGNvbnRyb2xsZXIgYW5kIGluc3RlYWQgb3BlbiAKPiB0aGUgZGV2aWNlIGFuZCB0aGVuIHJl
c3VtZSBub3JtYWwgY29ubmVjdC1hbGwgc2Nhbm5pbmcvcHJvY2Vzc2luZy7CoCBXZSAKPiBhcmUg
aW4gYWdyZWVtZW50IG9uIHRoaXMgPwo+IApZZXMuCgo+IFdoaWNoIGxlYXZlczoKPiBhKSBob3cg
ZG9lcyB0aGUgcGVyc2lzdGVudCBjb250cm9sbGVyIGdldCBjcmVhdGVkIGluIHRoZSBmaXJzdCBw
bGFjZTogCj4gd2hpY2ggSSBhbnN3ZXIgd2l0aCBhZG1pbiBzY3JpcHRpbmcsIG1hbnVhbCBhY3Rp
b24sIG9yIHRyYW5zcG9ydCBldmVudCAKPiBnZW5lcmF0aW9uLgoKSG1tLiBZZXMsIHdlIF9jb3Vs
ZF8gd3JhcCBpdCBpbnRvIHRoZSBpbml0aWFsIHN5c3RlbWQgc2VydmljZSAod2hpY2ggCndlJ2xs
IGhhdmUgdG8gZG8gYW55d2F5IHRvIHJlLWNyZWF0ZSBhbGwgZXZlbnRzIC8gY29ubmVjdGlvbnMg
b24gYm9vdHVwKS4KCj4gYW5kCj4gYikgaWYgcGVyZm9ybWluZyBhIGNvbm5lY3QtYWxsLCBhbmQg
YSBkaXNjb3ZlcnkgbG9nIHdhcyByZWFkIHdpdGggYSAKPiBkaXNjb3ZlcnkgY29udHJvbGxlciBh
cyBhIGxvZyBlbnRyeSwgaG93IHNob3VsZCB0aGUgY2xpIGtub3cgd2hldGhlciB0byAKPiBjcmVh
dGUgdGhlIGNvbnRyb2xsZXIgYXMgcGVyc2lzdGVudCBvciBub3Q6wqAgd2hpY2ggSSBwcm9wb3Nl
ZCB0aGF0IGl0IGJlIAo+IG9uZSBvZiB0aGUgZm9sbG93aW5nOiBhKSBpdCBkb2Vzbid0LCBvbmx5
IG1hbnVhbCBhY3Rpb25zL3NjcmlwdGluZyB3b3VsZCAKPiBzZXQgdGhlIHBhcmFtZXRlcjsgYikg
dGhlIG5ldyBkZWZhdWx0cyBmaWxlIHByb2Nlc3NpbmcgY2FuIGZpZ3VyZSBvdXQgCj4gdGhhdCBp
dCBuZWVkcyB0byBhZGQgdGhlIGFyZ3VtZW50OyBvciBjKSB3ZSBjaGFuZ2UgdGhlIGRlZmF1bHQg
YWN0aW9uIAo+IHdoZW4gY29ubmVjdGluZyB0byBhIGRpc2NvdmVyeSBjb250cm9sbGVyIHRvIGxv
b2sgYXQgdGhlIEtBUyBmaWVsZCB0byAKPiBzZWUgaWYga2F0byBpcyBzdXBwb3J0ZWQsIGFuZCBp
ZiBzbywgYWx3YXlzIGVuYWJsZSB0aGUgcGVyc2lzdGVudCBvcHRpb24gCj4gKGluIHdoaWNoIGNh
c2UsIG5vIC0tcGVyc2lzdGVudCBhcmd1bWVudCBpcyBuZWNlc3NhcnkpLgo+IApZb3UncmUgdGFs
a2luZyBhYm91dCBkaXNjb3ZlcnkgcmVmZXJyYWxzLCByaWdodD8KSW4gdGhpcyBjYXNlIEknZCBn
byB3aXRoIGNhc2UgYSksIGFuZCBzaW1wbHkgY3JlYXRlIG5vbi1wZXJzaXN0ZW50IApjb25uZWN0
aW9uLgpSZWFzb25pbmcgaXMgdGhhdCBpZiB0aGUgYWRtaW4gd2FudHMgdG8gaGF2ZSBhIHBlcnNp
c3RlbnQgZGlzY292ZXJ5IGhlIApzaG91bGQgYmUgZW5zdXJpbmcgdGhhdCB0aGlzIHNlY29uZGFy
eSBjb250cm9sbGVyIGlzIGZvdW5kIGR1cmluZyBpbml0YWwgCmRpc2NvdmVyeSAoaWUgd2l0aCB0
aGUgYWJvdmVtZW50aW9uZWQgc3lzdGVtZCBib290IHNlcnZpY2UpLgoKKEFuZCBkaXNjb3Zlcnkg
cmVmZXJyYWxzIGFyZSB0cmlja3kgYW55d2F5OyBJJ3ZlIGNyZWF0ZWQgdHdvIGRpc2NvdmVyeSAK
Y29udHJvbGxlcnMgZWFjaCBoYXZpbmcgYSByZWZlcmVuY2UgdG8gdGhlIG90aGVyIG5pY2UgaW4g
b3JkZXIgdG8gaGF2ZSBhIApmYWlsb3ZlciBzY2VuYXJpbywgYnV0IGVuZGVkIHVwIHdpdGggYSBs
b29waW5nIG52bWUgY29ubmVjdC1hbGwgLi4uIG5lZWQgCnRvIHNlbmQgYSBwYXRjaCBmb3IgdGhh
dC4pCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFk
IFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5
MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIg
MjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK
