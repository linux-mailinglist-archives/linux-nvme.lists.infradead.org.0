Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366DD6879D
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 13:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T8NVo1RuKeMU2LQ5YDEK3xgbEO9pBmMvsLKC+S6Ff3o=; b=Llfvnm4K6GH/TDoN8c7Tl0bBcX
	Wqg1n0XV8FXytKKlFziYoQ0KCbcGlB9Dzu81F70KMxc6s0LmSRL5vvxcTM7VeyVBAL0CdJu1ENcKR
	MG0XL/bA9qTWblGw5Uo8ZcB93ZxsfJUc+06gZyMKQX6RMX8T7/1IZeZ8vBa0kq5di9Q2JLgx9Yu9C
	lt5XKvtAY1CS8DuSNSPQ09rXTLDnXVR7UG+KUc4jHTgzC1vTdQDNauWjnV37WC6konMsOmIDyio6c
	+nSkU4bU8imb8gxOvZffvjctD7yXRY0BaQ+NzPpJUmz9EZs+LMIwReMMQtZQmY4Mzby4LnrecTMCx
	vbu/nWTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmykg-0007ms-EH; Mon, 15 Jul 2019 11:02:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmykO-0007mV-6t
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 11:02:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1176FAC9A
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 11:02:17 +0000 (UTC)
Subject: Re: [PATCH blktests 00/12] Fix nvme block test issues
To: linux-nvme@lists.infradead.org
References: <20190712235742.22646-1-logang@deltatee.com>
From: Michael Moese <mmoese@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mmoese@suse.de; keydata=
 mQENBFpMxXQBCAC7Z72NqEDJW9vUrNbkIaAxobHAoZBtLK1RsorBlqYgqsUilu5ACfDazfox
 u7uw07rkSIFdBZU2ghPwdWr8j0LM/5DEpf6+jY+PU6AUiKzji4UHbJVLViHVsV7q8UsDTmIf
 XTkZVVVFGCBerfHpWKRJfkreL5g2TA6tDFkBE+eeJEgWmubMP/XYEmtSStSzXBmCiA1QZ08k
 66ETcgEFok6iB5EJb1eYmkVZO5kUeCvl0EHkeBpybSuaEd+/Ux3OAfhh0nyYZwDNXJMNR8Uu
 CrQtJPKdR1LXial5ycKbtoe7mN9cxLAbHZWLLna9VaRA/C7iIfhEqO70IAgY4vcnXFgvABEB
 AAG0Hk1pY2hhZWwgTW9lc2UgPG1tb2VzZUBzdXNlLmRlPokBPwQTAQIAKQUCWkzHqwIbAwUJ
 B4TOAAcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEGAhN1yGNX50quMIALiRNQ2Jt0Fz
 pr/K1s0IS3VglbWbDIDVlauZixQ02+IU+cywcc9Bm7A9KnXT8MjN6+dNlBuBsK7KXmqrnwn0
 gMVb+KTXKVVZR0k3lvWrlH+zQ3FPY/xTSuZyPAYcuZVAUly7VLyN8UDGuAeJF7WrqfO4I/jF
 7s9DffubVA5Umyl0yhQxHcTjEozCfmUBukEVCTZ2zIsKqBMp7eUPMWRDe+QauId+BSRC9gMF
 KeEOVHi/VVi+Vr3A0U4zFxXjAcrbQZhjNS1GJ6jOPjy+MX3edY9WlkYQtx/tu2xZMhePw1I1
 4W4sTLCqAvHN59KZiACRGsd0/20pZN+T3rIIQOfTnM+5AQ0EWkzFdAEIALh+XBKEnfViYecZ
 B1suj0OBg9nnBk6j1FpQCx09ACooTiVmBQFqfMrvm1JiizombQ80kBRyiwcZ1BDmzjWLoeYB
 VovPZh4Mx+YPLSt1L7WmflGC7oWoAL3HtDKe7HCRUR17czTQXuDmeKuAggO8PV/FexHD70N/
 6EeKRPh9Dtzlo5hbC6/sqp8RmVf0E71LLBpxej1GHn8FvH2N0CA/RI/mvtuo311NudEUiR5e
 FML1oeW63Iknr0jTLutSOhZEKjeaRwFZOCt0X8ECiyuXYZU970GHhqUfVtnM8/q5qU2l18Rp
 /stWAmVyDQ7TGjECc6AvV9VSnaq6aDxgHOJi5EUAEQEAAYkBJQQYAQIADwUCWkzFdAIbDAUJ
 B4TOAAAKCRBgITdchjV+dAHWB/9VrimlVzbdURLP0ZSttHtO8WdxPiYdmvl8G08a6yy59nc7
 5qnkc7EKQ9XMisejZqsbSXbWxmgpA65rBtXrFomi0qoaDHzUlKVGlEU9YkkJo+/PEsgvxnWF
 J4vR0aLRYNOO9PvWRhJ6aHkWlCz2i9n6xsVA6PILYBiSQW22rvpH6AHu7WH7k3ddHmh4hmfw
 yxpDl1qL127wmZGUMLArb+mIEbG+Ftre84TwpvHLq9J1+xwo7/A+dEDfWwzDb3GjeL+TNar9
 ZpY8cPYiHNDqnPUoNhHdhSJuvoIuNBhUU3RalPbNRYkuitKUWfJYMvIypGO4+YBj61TIvOaY
 nDZS/ArT
Message-ID: <7aba10cf-faf3-9650-5c95-fda2dbfc5a32@suse.de>
Date: Mon, 15 Jul 2019 13:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712235742.22646-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_040220_540892_5C0BA958 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QWNrZWQtYnk6IE1pY2hhZWwgTW9lc2UgPG1tb2VzZUBzdXNlLmRlPgoKPiAtLQo+IAo+IExvZ2Fu
IEd1bnRob3JwZSAoMTEpOgo+ICAgbnZtZTogTW9yZSBhZ3Jlc3NpdmVseSBmaWx0ZXIgdGhlIGRp
c2NvdmVyeSBvdXRwdXQKPiAgIG52bWU6IEFkZCBuZXcgdGVzdCB0byB2ZXJpZnkgdGhlIGdlbmVy
YXRpb24gY291bnRlcgo+ICAgbnZtZS8wMDMsMDA0OiBBZGQgbWlzc2luZyBjYWxscyB0byBudm1l
IGRpc2Nvbm5lY3QKPiAgIG52bWUvMDA1OiBEb24ndCByZWx5IG9uIG1vZHByb2JpbmcgdG8gc2V0
IHRoZSBtdWx0aXBhdGggcGFyYW1hdGVyCj4gICBudm1lLzAxNTogRW5zdXJlIHRoZSBuYW1lc3Bh
Y2UgaXMgZmx1c2hlZCBub3QgdGhlIGNoYXIgZGV2aWNlCj4gICBudm1lLzAxODogSWdub3JlIGVy
cm9yIG1lc3NhZ2UgZ2VuZXJhdGVkIGJ5IG52bWUgcmVhZAo+ICAgY2hlY2s6IEFkZCB0aGUgYWJp
bGl0eSB0byBjYWxsIGEgY2xlYW51cCBmdW5jdGlvbiBhZnRlciBhIHRlc3QgZW5kcwo+ICAgbnZt
ZTogQ2xlYW51cCBtb2Rwcm9iZSBsaW5lcyBpbnRvIGhlbHBlciBmdW5jdGlvbnMKPiAgIG52bWU6
IEVuc3VyZSBhbGwgcG9ydHMgYW5kIHN1YnN5c3RlbXMgYXJlIHJlbW92ZWQgb24gY2xlYW51cAo+
ICAgY29tbW9uOiBVc2Ugc3lzZnMgaW5zdGVhZCBvZiBtb2RpbmZvIGZvciBfaGF2ZV9tb2R1bGVf
cGFyYW0oKQo+ICAgbnZtZTogSWdub3JlIGVycm9ycyB3aGVuIHJlbW92aW5nIG1vZHVsZXMKPiAK
PiBNaWNoYWVsIE1vZXNlICgxKToKPiAgIEFkZCBmaWx0ZXIgZnVuY3Rpb24gZm9yIG52bWUgZGlz
Y292ZXIKPiAKPiAgY2hlY2sgICAgICAgICAgICAgIHwgICAgOSArCj4gIGNvbW1vbi9yYyAgICAg
ICAgICB8ICAgMTggKy0KPiAgdGVzdHMvbnZtZS8wMDIgICAgIHwgICAxMCArLQo+ICB0ZXN0cy9u
dm1lLzAwMi5vdXQgfCA2MDAzICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gIHRlc3RzL252bWUvMDAzICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZtZS8wMDMu
b3V0IHwgICAgMSArCj4gIHRlc3RzL252bWUvMDA0ICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZt
ZS8wMDQub3V0IHwgICAgMSArCj4gIHRlc3RzL252bWUvMDA1ICAgICB8ICAgMTYgKy0KPiAgdGVz
dHMvbnZtZS8wMDYgICAgIHwgICAgNiArLQo+ICB0ZXN0cy9udm1lLzAwNyAgICAgfCAgICA2ICst
Cj4gIHRlc3RzL252bWUvMDA4ICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZtZS8wMDkgICAgIHwg
ICAgNSArLQo+ICB0ZXN0cy9udm1lLzAxMCAgICAgfCAgICA2ICstCj4gIHRlc3RzL252bWUvMDEx
ICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZtZS8wMTIgICAgIHwgICAgNiArLQo+ICB0ZXN0cy9u
dm1lLzAxMyAgICAgfCAgICA2ICstCj4gIHRlc3RzL252bWUvMDE0ICAgICB8ICAgIDYgKy0KPiAg
dGVzdHMvbnZtZS8wMTUgICAgIHwgICAgNSArLQo+ICB0ZXN0cy9udm1lLzAxNiAgICAgfCAgICA2
ICstCj4gIHRlc3RzL252bWUvMDE2Lm91dCB8ICAgIDkgKy0KPiAgdGVzdHMvbnZtZS8wMTcgICAg
IHwgICAgOCArLQo+ICB0ZXN0cy9udm1lLzAxNy5vdXQgfCAgICA5ICstCj4gIHRlc3RzL252bWUv
MDE4ICAgICB8ICAgIDggKy0KPiAgdGVzdHMvbnZtZS8wMTkgICAgIHwgICAgNiArLQo+ICB0ZXN0
cy9udm1lLzAyMCAgICAgfCAgICA1ICstCj4gIHRlc3RzL252bWUvMDIxICAgICB8ICAgIDYgKy0K
PiAgdGVzdHMvbnZtZS8wMjIgICAgIHwgICAgNiArLQo+ICB0ZXN0cy9udm1lLzAyMyAgICAgfCAg
ICA2ICstCj4gIHRlc3RzL252bWUvMDI0ICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZtZS8wMjUg
ICAgIHwgICAgNiArLQo+ICB0ZXN0cy9udm1lLzAyNiAgICAgfCAgICA2ICstCj4gIHRlc3RzL252
bWUvMDI3ICAgICB8ICAgIDYgKy0KPiAgdGVzdHMvbnZtZS8wMjggICAgIHwgICAgNiArLQo+ICB0
ZXN0cy9udm1lLzAyOSAgICAgfCAgICA2ICstCj4gIHRlc3RzL252bWUvMDMwICAgICB8ICAgNzIg
Kwo+ICB0ZXN0cy9udm1lLzAzMC5vdXQgfCAgICAyICsKPiAgdGVzdHMvbnZtZS9yYyAgICAgIHwg
ICA2NCArCj4gIDM4IGZpbGVzIGNoYW5nZWQsIDIwOCBpbnNlcnRpb25zKCspLCA2MTYzIGRlbGV0
aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA3NTUgdGVzdHMvbnZtZS8wMzAKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRlc3RzL252bWUvMDMwLm91dAo+IAo+IC0tCj4gMi4xNy4xCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1udm1lIG1h
aWxpbmcgbGlzdAo+IExpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo+IAoKLS0gCk1pY2hh
ZWwgTW9lc2UgPG1tb2VzZUBzdXNlLmRlPgpRQSBFbmdpbmVlcgoKU1VTRSBMaW51eCBHbWJICk1h
eGZlbGRzdHJhc3NlIDUKOTA0MDkgTnVlcm5iZXJnCkdlcm1hbnkKCkdGOiBGZWxpeCBJbWVuZMO2
cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykK
ClBHUCBGaW5nZXJwcmludDogNENDRSAzODk2IEY4NzMgMkNBNSAyMzgyICAzQzZGIDYwMjEgMzc1
QyA4NjM1IDdFNzQKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
