Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756EFB332
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 12:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A/RDa9QPptwHzQRMa5Hx+oRIlKE6XUvZjRC5WT2/uoI=; b=HojNmj5E7f0H6YwuLU1ik/6rj
	xbTe6CCsoOLHQDjL0EZmmCW1i5/rF3zxPAH6kNRLUr/cbIt7yxfNGNmlMm7a+R76HmvBSh4/ZuHUg
	JULTnOnhdnbH7HA5gWqDmDvu7rGbWmDFlgkSIauvU3DqaA19p5P28jZJrlFXr5vp91PMGcRVmMCmy
	4KxfeEppk/kvHG8tkseJaewJJFDYehVJRKyIThs+l2VE1jTobYQqegxYYiq0DM8l9ZKiTShux4T1t
	ROu6Wsl9EqfJPkncLHLsGjV12nGVpkCCBI/7hbezcvItkmIK5ks9wa8CfVqgC0DuHKh8DBDUxx+1r
	pJDhoHOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKKxv-00074U-Si; Sat, 27 Apr 2019 10:53:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKKxr-00074A-4w
 for linux-nvme@lists.infradead.org; Sat, 27 Apr 2019 10:53:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0F68FAE3C;
 Sat, 27 Apr 2019 10:53:49 +0000 (UTC)
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
From: Hannes Reinecke <hare@suse.de>
Message-ID: <54116b2c-48a8-a49a-c09d-0f50337e5772@suse.de>
Date: Sat, 27 Apr 2019 12:53:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <03163041-9b14-3662-edb8-1d69f20f681f@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_035351_488714_093B6019 
X-CRM114-Status: GOOD (  24.78  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8yNi8xOSA1OjQ2IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gUmV2aXZpbmcg
dGhpcyAoYWdhaW4pLgo+Pj4KPj4+IEhhbm5lcywgZGlkIHlvdSBoYXZlIGEgY2hhbmNlIHRvIGxv
b2sgYXQgdGhpcz8gVW5sZXNzIHRoZXJlIGFyZSBvdGhlcgo+Pj4gYWx0ZXJuYXRpdmVzIEkgc3Vn
Z2VzdCB3ZSBnbyB3aXRoIHRoaXMgYXBwcm9hY2guCj4+Pgo+Pj4gV2Ugc2hvdWxkIGJlIGFibGUg
dG8gc3VwcG9ydCBkaXNjb3ZlcnkgbG9nIGNoYW5nZSBldmVudHMgYXV0b21hdGljYWxseQo+Pj4g
YXQgc29tZSBwb2ludC4uLgo+Pgo+PiBZZXMsIEkgZGlkLgo+PiBBbmQgaGFkIHNldmVyYWwgZGlz
Y3Vzc2lvbnMgd2l0aCB0aGUgaW52b2x2ZWQgcGFydGllcyAoSGVsbG8sIEphbWVzIDotKS4KPj4g
Q29uc2Vuc3VzIHdhcyB0aGF0IGZvciBGQyB3ZSBkb24ndCByZWFsbHkgbmVlZCBkaXNjb3Zlcnkg
QUVOcywgYXMgdGhlIAo+PiB0cmFuc3BvcnQgaGFzIGtub3dsZWRnZSBhYm91dCB0aGUgZmFicmlj
IGFuZCB0aGUgYXR0YWNoZWQgcG9ydHMsIGFuZCAKPj4gd2lsbCBnZW5lcmF0ZSBldmVudHMgb24g
YW55IHRvcG9sb2d5IGNoYW5nZSBhbHJlYWR5Lgo+PiBGb3IgUkRNQSBhbmQgVENQLCBPVE9ILCB3
ZSBkb24ndCBrbm93IHRoZSB0b3BvbG9neSwgYW5kIHRvIGJlIGFibGUgdG8gCj4+IGRpc2NvdmVy
eSB3ZSB3aWxsIGtub3cgdGhlIGZhYnJpYyBwb3J0cyBpbiBhZHZhbmNlLgo+PiBTbyB0aGVyZSBh
dXRvbWF0aWMgZGlzY292ZXJ5IGlzIGEgcmVhbCB3aW4sIGFuZCBhcmd1YWJseSBuZWNlc3Nhcnkg
aWYgCj4+IGEgY29ubmVjdGlvbiBuZWVkcyB0byBiZSByZS1lc3RhYmxpc2hlZCBhZnRlciBhIGZh
YnJpYyBvdXRhZ2UuCj4gCj4gQWdhaW4sIHRoaXMgaXMgYSBkaWZmZXJlbnQgdGhpbmcgSGFubmVz
LCBwbGVhc2Ugc3RvcCBtaXhpbmcgc3R1ZmYuCj4gSSdtIG5vdCBhcmd1aW5nIHdpdGggeW91IHRo
YXQgd2Ugd2FudCBhdXRvbWF0aWNhbGx5IGRpc2NvdmVyIHRoZSBmYWJyaWMsCj4gYnV0IGRpc2Nv
dmVyeSBjaGFuZ2UgbG9nIGV2ZW50cyBhbmQgcm9vdCBkaXNjb3ZlcnkgYXJlIGRpZmZlcmVudCB0
aGluZ3MKPiBhbmQgb25seSBvbmUgb2YgdGhlbSBpcyB1cCBmb3IgZGlzY3Vzc2lvbiBoZXJlLgo+
IApPSy4KCj4+IEltcGxlbWVudGF0aW9uLXdpc2UgSSdtIG5vdCB0aG9yb3VnaGx5IGhhcHB5IHdp
dGggdGhlIE1ETlMgYXBwcm9hY2gsIAo+PiBhcyB0aGlzIHJlcXVpcmVzIHF1aXRlIGEgYml0IG9m
IGFkZGl0aW9uYWwgaW5mcmFzdHJ1Y3R1cmUgd2hpY2ggbmVlZHMgCj4+IHRvIGJlIHByZXNlbnQg
b24gYm90aCBzaWRlcy4KPj4gQW5kIG15IHdvcnJ5IGlzIHRoYXQgZHVyaW5nIGZhaWxvdmVyIHNj
ZW5hcmlvcyB3ZSBtaWdodCBub3QgYmUgYWJsZSB0byAKPj4gcnVuIHRoZXNlIHNlcnZpY2VzIGF0
IGFsbCAoc2VlaW5nIHRoYXQgdGhlIHJvb3QtZnMgaXMgYmxvY2tlZCkuCj4+IEJ1dCBpZiB0aGF0
IGlzIGFjY2VwdGFibGUgKHJlYWQ6IGlmIGJvb3RpbmcgZnJvbSB0aG9zZSBOVk1lIGRldmljZXMg
aXMgCj4+IG5vdCByZXF1aXJlZCkgdGhlbiBJIGd1ZXNzIHdlIGNvdWxkIGdvIHRoYXQgd2F5Lgo+
IEknbSBnb2luZyB0byBpZ25vcmUgc3R1ZmYgYWJvdXQgcm9vdCBkaXNjb3ZlcnkgaGVyZSAobm90
aGluZyBwZXJzb25hbCwKPiBpdHMganVzdCBub3QgdGhlIHN1YmplY3QgaGVyZSksIHdlIGNhbiB0
YWxrIGFib3V0IGl0IGluIGEgc2VwYXJhdGUKPiB0aHJlYWQuCj4gCj4gTm93LCBJJ20gc3VnZ2Vz
dGluZyB0byBzdXBwb3J0IGRpc2NvdmVyeSBjaGFuZ2UgbG9nIGV2ZW50cyBieSBhbGxvd2luZwo+
IHRoZSB1c2VyIHRvIHNldHVwIGEgcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxlciBhbmQg
aGF2ZSB0aGUga2VybmVsCj4gZmlyZSB0byB1c2Vyc3BhY2UgZGlzY292ZXJ5IGNoYW5nZSBsb2cg
ZXZlbnRzIG92ZXIgdGhhdCBjb250cm9sbGVyLgo+IAo+IEFueSBjb21tZW50cy9mZWVkYmFjay9h
bHRlcm5hdGl2ZXMgb24gX3RoaXNfPwoKUGVyZmVjdGx5IGZpbmUgd2l0aCB0aGF0LgpJIGp1c3Qg
d291bGQgbGlrZSB0byBoYXZlIHRoZSBwb3NzaWJpbGl0eSB0byBnZW5lcmF0ZSB0aGUgZGlzY292
ZXJ5IEFFTiAKb24gdGhlIGluaXRpYWwgY29ubmVjdCBvZiBhIHBlcnNpc3RlbnQgZGlzY292ZXJ5
IGNvbnRyb2xsZXIgKGllIHRyZWF0IAp0aGUgaW5pdGlhbCBjb25uZWN0IGFzIGEgZGlzY292ZXJ5
IGxvZyBjaGFuZ2UgZXZlbnQpLgpJZiB3ZSBoYWQgdGhlIGluaXRpYWwgZXZlbnQgd2Ugd291bGQg
YmUgYWJsZSB0byBoYXZlIGEgdW5pZmllZCBtZXRob2QgCmZvciBoYW5kbGluZyBkaXNjb3Zlcnkg
ZXZlbnRzOyBvdGhlcndpc2Ugd2UnZCBoYXZlIHRvIGhhdmUgYSBzZXBhcmF0ZSAKbWVjaGFuaXNt
IGZvciB0aGUgaW5pdGlhbCBjb25uZWN0ICh3aGVyZSB3ZSBuZWVkIHRvIGNyZWF0ZSB0aGUgCnBl
cnNpc3RlbnQgY29ubmVjdGlvbiBfYW5kXyBwYXJzZSB0aGUgZGlzb2N2ZXJ5IGxvZykgYW5kIEFF
TnMgKHdoZXJlIHdlIApyZWNlaXZlIGFuIHVldmVudCBhbmQga2ljayBvZmYgYSBzeXN0ZW1kIHNl
cnZpY2UpLgpCdXQgaXQgbWlnaHQgYmUgdGhhdCB3ZSdkIG5lZWQgdG8gdXBkYXRlIHRoZSBwcm90
b2NvbCBmb3IgdGhhdCwgdGhvdWdoLgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJl
aW5lY2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNl
LmRlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBM
SU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5k
w7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJn
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
