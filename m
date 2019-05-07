Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3021B15DF8
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 09:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7MJJ70M/bDRG61+MID72S/L+TKniFxfIytiUwdlDWv0=; b=AR7mOX51FDvPTdwyQ77qpaIHY
	9uE9wA+BoZwpCherApfKF5GPhaSmMk15KtgStmJlNreC7AsecTsGPW7SvD9PLx7CfHvriVtBM8pMQ
	y7uT1j8oHUz2dxrJTrCm6O3Y/JMmqJE/0kkXGDrSXYJRnJzr7ingVmvFo41T0S1SOk4dTie7aMQiR
	bLk7NYmJXgQEoZNX+dUVEnFeBuY7n+5NH1rrxTznOhyHxlNpN0KiEckD6TCVO/F00idQ1mSSkPmnQ
	PAFnH6/3vHWd1nqJwjkB62dXJYf6K96KXSuWdNNclwNlITLzXVd1/Jd6hTYYS7TbTN0GW2CBZB2ys
	YawHIjnwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuLu-00027a-Ud; Tue, 07 May 2019 07:17:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuLp-00027B-8j
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 07:17:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F3639ABD0;
 Tue,  7 May 2019 07:17:19 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 5/5] nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-6-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <5a18787e-a61a-bc6b-4bf3-9b7c19547331@suse.de>
Date: Tue, 7 May 2019 09:17:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001721_455384_6BE2CB66 
X-CRM114-Status: GOOD (  22.36  )
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS80LzE5IDI6MDQgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IFRoaXMgc2V0IG9mIHNjcmlw
dHMgaXMgYSBjb21iaW5hdGlvbiBvZiB0aG9zZSBzZW50IGJ5IEhhbm5lcywgU2FnaSwKPiBhbmQg
SSBpbiBlYXJsaWVyIHBhdGNoZXMgYW5kIFJGQydzLgo+IAo+IEF1dG8tY29ubmVjdCBvcGVyYXRl
cyBieSB0aGUgbnZtZSBjb3JlIGxheWVyIG9yIG52bWUtZmMgdHJhbnNwb3J0Cj4gZ2VuZXJhdGlu
ZyBhIHVkZXYgZXZlbnQgd2l0aCBkaXJlY3RvcnktY29udHJvbGxlciBhZGRyZXNzaW5nCj4gaW5m
b3JtYXRpb24uIFRoZSBudm1lIGNvcmUgbGF5ZXIgZ2VuZXJhdGVzIGFuIGV2ZW50IHdoZW4gYQo+
IHBlcnNpc3RlbnQgZGlzY292ZXJ5IGNvbnRyb2xsZXIgZ2VuZXJhdGVzIGEgRGlzY292ZXJ5IExv
ZyBDaGFuZ2UKPiBOb3RpZmljYXRpb24gQUVOLiAgVGhlIG52bWUtZmMgdHJhbnNwb3J0IGdlbmVy
YXRlcyBhbiBldmVudCB3aGVuCj4gYW4gRkMgcnBvcnQgdGhhdCBoYXMgYSBOVk1FIERpc2NvdmVy
eSBjb250cm9sbGVyIGlzIGRldGVjdGVkIG9yCj4gd2hlbiBhIEZDIHN0YXRlIGNoYW5nZSBldmVu
dCBvY2N1cnMgZm9yIGZvciBhbiBGQyBycG9ydCB0aGF0IGhhcwo+IGEgTlZNRSBEaXNjb3Zlcnkg
Y29udHJvbGxlcgo+IAo+IFRoZSB1ZGV2IGV2ZW50IGlzIGhhbmRsZWQgYnkgYSBzY3JpcHQgdGhh
dCBleHRyYWN0cyB0aGUgRGlzY292ZXJ5Cj4gY29udHJvbGxlciBhZGRyZXNzaW5nIGluZm9ybWF0
aW9uIGFuZCBpbml0aWF0ZXMgYSBzeXN0ZW1kIHNlcnZpY2UKPiB0byBwZXJmb3JtIGEgIm52bWUg
Y29ubmVjdC1hbGwiIHRvIHRoZSBEaXNjb3ZlcnkgY29udHJvbGxlci4KPiBUaGUgIm52bWUgY29u
bmVjdC1hbGwiIHJlcXVlc3QgaXMgbm90IGNhbGxlZCBkaXJlY3RseSBmcm9tIHRoZSB1ZGV2Cj4g
aGFuZGxlciBpdHNlbGYgYXMgdGhlIHJlcXVlc3QgbWF5IHRha2Ugc29tZSB0aW1lIG9yIHN0YWxs
IGFsdG9nZXRoZXIsCj4gd2hpY2ggd291bGQgYmxvY2sgb3RoZXIgdWRldiBldmVudCBoYW5kbGlu
Zy4gIEJ5IHRyYW5zaXRpb25pbmcgdG8KPiBhIHN5dGVtZCBzZXJ2aWNlLCB0aGUgY2FsbCBjYW4g
dGFrZSBhcyBtdWNoIHRpbWUgYXMgbmVlZGVkIHRvCj4gY29tcGxldGUuCj4gCj4gVGhlIHNjcmlw
dHMgY29uc2lzdCBvZjoKPiAtIEEgdWRldiBzY3JpcHQgdGhhdCBoYW5kbGVzIG52bWUgY29yZSBh
bmQgbnZtZS1mYyB1ZGV2IGV2ZW50cy4KPiAgICBUaGUgdWRldiBoYW5kbGVyIHN0YXJ0cyBhIG52
bWYtY29ubmVjdCBzeXN0ZW1kIHNlcnZpY2UuCj4gLSBBIG52bWYtY29ubmVjdCBzeXN0ZW1kIHNl
cnZpY2UuIFRoZSBzZXJ2aWNlLCBpbiBpdHMgaW5zdGFuY2UKPiAgICBuYW1lLCBpcyBwYXNzZWQg
dGhlIGNvbm5lY3QgYXJndW1lbnRzIGZvciB0aGUgZGlzY292ZXJ5Cj4gICAgY29udHJvbGxlci4g
VGhlIHNlcnZpY2UgcGVyZm9ybXMgYSAibnZtZSBjb25uZWN0LWFsbCIgdG8gdGhlCj4gICAgZGlz
Y292ZXJ5IGNvbnRyb2xsZXIuCj4gLSBBIG52bWVmYy1ib290LWNvbm5lY3Rpb25zIHN5c3RlbWQg
c2VydmljZS4gVGhpcyBpcyBhIHJ1bi1vbmNlCj4gICAgc2VydmljZSBydW4gYWZ0ZXIgdWRldiBp
cyBlbmFibGVkLCB3aGljaCB3aWxsIHJlcGxheSBldmVudHMKPiAgICBnZW5lcmF0ZWQgYnkgTlZN
RS1GQyBkZXZpY2VzIGRldGVjdGVkIGR1cmluZyBib290IHdoaWxlIHVkZXYKPiAgICBpcyBub3Qg
eWV0IHJ1bm5pbmcuCj4gLSBUbyBzdG9wIGF1dG9jb25uZWN0IGFuIGFkZGl0aW9uYWwgbnZtZWZj
LWNvbm5lY3QudGFyZ2V0IGhhcwo+ICAgIGJlZW4gYWRkZWQsIHdoaWNoIHdpbGwgaW5zdHJ1Y3Qg
c3lzdGVtZCB0byBjYW5jZWwgYWxsCj4gICAgb3V0c3RhbmRpbmcgYXV0b2Nvbm5lY3Qgc2Vydmlj
ZXMuCj4gCj4gTm90ZTogQWx0aG91Z2ggdGhlIG52bWUtZmMgc3Vic3lzdGVtIGlzIGNvbnZlcnRp
bmcgdG8gdXNlIHRoZQo+ICAgIHNhbWUgbnZtZSBjb3JlIGxheWVyIGV2ZW50IG1lY2hhbmlzbSwg
dGhlIG52bWUtZmMtc3BlY2lmaWMKPiAgICB1ZGV2IGV2ZW50IHRoYXQgaGFzIGJlZW4gaW4gZXhp
c3RlbmNlIGZvciBhIHdoaWxlIGlzIGNvbnRhaW5lZAo+ICAgIGluIGluIHRoZSBzY3JpcHQgc28g
dGhhdCB0aGUgdXRpbGl0aWVzIG1heSBydW4gYWdhaW5zdCBvbGRlcgo+ICAgIGtlcm5lbHMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgU21hcnQgPGpzbWFydDIwMjFAZ21haWwuY29tPgo+IEND
OiBTaW1vbiBTY2hyaWNrZXIgPHNzY2hyaWNrZXJAc3VzZS5jb20+Cj4gQ0M6IEhhbm5lcyBSZWlu
ZWNrZSA8aGFyZUBzdXNlLmNvbT4KPiBDQzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5t
ZT4KPiAtLS0KPiBJIGNvdWxkIHVzZSBzb21lIHJlY29tbWVuZGF0aW9ucyBvbiB3aGVyZSB0byBp
bnN0YWxsIHRoZQo+IDcwLW52bWYtYXV0b2Nvbm5lY3QuY29uZiBhbmQgbnZtZi1jb25uZWN0LnRh
cmdldCBmaWxlcwo3MC1udm1mLWF1dG9jb25uZWN0LmNvbmYgbmVlZHMgdG8gZ28gaW50byB0aGUg
ZHJhY3V0IGRpcmVjdG9yeQooaWUgZWl0aGVyIC9ldGMvZHJhY3V0LmNvbmYuZCBvciAvdXNyL2xp
Yi9kcmFjdXQvZHJhY3V0LmNvbmYuZCksCmFuZCBudm1mLWNvbm5lY3QudGFyZ2V0IG5lZWRzIHRv
IGdvIGludG8gL3Vzci9saWIvc3lzdGVtZC9zeXN0ZW0uCgpGb3IgdGhlIHJlbWFpbmRlcjoKClJl
dmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMsCgpIYW5u
ZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3Jr
aW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0Ug
TElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGZWxpeCBJbWVu
ZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVy
ZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
