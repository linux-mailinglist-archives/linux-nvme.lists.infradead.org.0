Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871076A613
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 12:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hb6r1t9K2AwCi5JTRrbnpHY788Mk8A9VIYdCAi4xQco=; b=Kzv3AohAh+0IgG
	FDAwfhLvv35RAZ87NlHHm7GhF0eI/OsiXH7JGmFuIjc1wuMpL4yqs09i6aEcHtT6d8+9PstW2O0mg
	0Bqq/GVLX5KnMEG2zJXnOLQdtGmSI9CfyI3X6ql8K8ldNzZU68iMLTSuv+VJUnLQJbjUkCtxEBOP2
	/u1ZUF6cRs9N6tr1AvC92rS65Qk828CrEwmp6A4r7n6bEYHF/0Cy6DDrxsfHEMG9qSw8h3xs68UeZ
	wbHG7WBO1kGx/17/UirTwDiV8TaS6cF+5qvqF6F0geNPodk/EARN9lXim7e8+mTFEM6Dw+qJ8W2A7
	BtsKghwC9YyDnqW+avzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKHx-0005Yo-Sy; Tue, 16 Jul 2019 10:02:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKHp-0005YN-S0
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 10:02:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 001A0AD22;
 Tue, 16 Jul 2019 10:02:15 +0000 (UTC)
Subject: Re: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
To: Christoph Hellwig <hch@lst.de>
References: <20190716071830.22672-1-hare@suse.de>
 <20190716093825.GC32562@lst.de>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 mQINBE6KyREBEACwRN6XKClPtxPiABx5GW+Yr1snfhjzExxkTYaINHsWHlsLg13kiemsS6o7
 qrc+XP8FmhcnCOts9e2jxZxtmpB652lxRB9jZE40mcSLvYLM7S6aH0WXKn8bOqpqOGJiY2bc
 6qz6rJuqkOx3YNuUgiAxjuoYauEl8dg4bzex3KGkGRuxzRlC8APjHlwmsr+ETxOLBfUoRNuE
 b4nUtaseMPkNDwM4L9+n9cxpGbdwX0XwKFhlQMbG3rWA3YqQYWj1erKIPpgpfM64hwsdk9zZ
 QO1krgfULH4poPQFpl2+yVeEMXtsSou915jn/51rBelXeLq+cjuK5+B/JZUXPnNDoxOG3j3V
 VSZxkxLJ8RO1YamqZZbVP6jhDQ/bLcAI3EfjVbxhw9KWrh8MxTcmyJPn3QMMEp3wpVX9nSOQ
 tzG72Up/Py67VQe0x8fqmu7R4MmddSbyqgHrab/Nu+ak6g2RRn3QHXAQ7PQUq55BDtj85hd9
 W2iBiROhkZ/R+Q14cJkWhzaThN1sZ1zsfBNW0Im8OVn/J8bQUaS0a/NhpXJWv6J1ttkX3S0c
 QUratRfX4D1viAwNgoS0Joq7xIQD+CfJTax7pPn9rT////hSqJYUoMXkEz5IcO+hptCH1HF3
 qz77aA5njEBQrDRlslUBkCZ5P+QvZgJDy0C3xRGdg6ZVXEXJOQARAQABtCpIYW5uZXMgUmVp
 bmVja2UgKFN1U0UgTGFicykgPGhhcmVAc3VzZS5kZT6JAkEEEwECACsCGwMFCRLMAwAGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJOisquAhkBAAoJEGz4yi9OyKjPOHoQAJLeLvr6JNHx
 GPcHXaJLHQiinz2QP0/wtsT8+hE26dLzxb7hgxLafj9XlAXOG3FhGd+ySlQ5wSbbjdxNjgsq
 FIjqQ88/Lk1NfnqG5aUTPmhEF+PzkPogEV7Pm5Q17ap22VK623MPaltEba+ly6/pGOODbKBH
 ak3gqa7Gro5YCQzNU0QVtMpWyeGF7xQK76DY/atvAtuVPBJHER+RPIF7iv5J3/GFIfdrM+wS
 BubFVDOibgM7UBnpa7aohZ9RgPkzJpzECsbmbttxYaiv8+EOwark4VjvOne8dRaj50qeyJH6
 HLpBXZDJH5ZcYJPMgunghSqghgfuUsd5fHmjFr3hDb5EoqAfgiRMSDom7wLZ9TGtT6viDldv
 hfWaIOD5UhpNYxfNgH6Y102gtMmN4o2P6g3UbZK1diH13s9DA5vI2mO2krGz2c5BOBmcctE5
 iS+JWiCizOqia5Op+B/tUNye/YIXSC4oMR++Fgt30OEafB8twxydMAE3HmY+foawCpGq06yM
 vAguLzvm7f6wAPesDAO9vxRNC5y7JeN4Kytl561ciTICmBR80Pdgs/Obj2DwM6dvHquQbQrU
 Op4XtD3eGUW4qgD99DrMXqCcSXX/uay9kOG+fQBfK39jkPKZEuEV2QdpE4Pry36SUGfohSNq
 xXW+bMc6P+irTT39VWFUJMcSuQINBE6KyREBEACvEJggkGC42huFAqJcOcLqnjK83t4TVwEn
 JRisbY/VdeZIHTGtcGLqsALDzk+bEAcZapguzfp7cySzvuR6Hyq7hKEjEHAZmI/3IDc9nbdh
 EgdCiFatah0XZ/p4vp7KAelYqbv8YF/ORLylAdLh9rzLR6yHFqVaR4WL4pl4kEWwFhNSHLxe
 55G56/dxBuoj4RrFoX3ynerXfbp4dH2KArPc0NfoamqebuGNfEQmDbtnCGE5zKcR0zvmXsRp
 qU7+caufueZyLwjTU+y5p34U4PlOO2Q7/bdaPEdXfpgvSpWk1o3H36LvkPV/PGGDCLzaNn04
 BdiiiPEHwoIjCXOAcR+4+eqM4TSwVpTn6SNgbHLjAhCwCDyggK+3qEGJph+WNtNU7uFfscSP
 k4jqlxc8P+hn9IqaMWaeX9nBEaiKffR7OKjMdtFFnBRSXiW/kOKuuRdeDjL5gWJjY+IpdafP
 KhjvUFtfSwGdrDUh3SvB5knSixE3qbxbhbNxmqDVzyzMwunFANujyyVizS31DnWC6tKzANkC
 k15CyeFC6sFFu+WpRxvC6fzQTLI5CRGAB6FAxz8Hu5rpNNZHsbYs9Vfr/BJuSUfRI/12eOCL
 IvxRPpmMOlcI4WDW3EDkzqNAXn5Onx/b0rFGFpM4GmSPriEJdBb4M4pSD6fN6Y/Jrng/Bdwk
 SQARAQABiQIlBBgBAgAPBQJOiskRAhsMBQkSzAMAAAoJEGz4yi9OyKjPgEwQAIP/gy/Xqc1q
 OpzfFScswk3CEoZWSqHxn/fZasa4IzkwhTUmukuIvRew+BzwvrTxhHcz9qQ8hX7iDPTZBcUt
 ovWPxz+3XfbGqE+q0JunlIsP4N+K/I10nyoGdoFpMFMfDnAiMUiUatHRf9Wsif/nT6oRiPNJ
 T0EbbeSyIYe+ZOMFfZBVGPqBCbe8YMI+JiZeez8L9JtegxQ6O3EMQ//1eoPJ5mv5lWXLFQfx
 f4rAcKseM8DE6xs1+1AIsSIG6H+EE3tVm+GdCkBaVAZo2VMVapx9k8RMSlW7vlGEQsHtI0FT
 c1XNOCGjaP4ITYUiOpfkh+N0nUZVRTxWnJqVPGZ2Nt7xCk7eoJWTSMWmodFlsKSgfblXVfdM
 9qoNScM3u0b9iYYuw/ijZ7VtYXFuQdh0XMM/V6zFrLnnhNmg0pnK6hO1LUgZlrxHwLZk5X8F
 uD/0MCbPmsYUMHPuJd5dSLUFTlejVXIbKTSAMd0tDSP5Ms8Ds84z5eHreiy1ijatqRFWFJRp
 ZtWlhGRERnDH17PUXDglsOA08HCls0PHx8itYsjYCAyETlxlLApXWdVl9YVwbQpQ+i693t/Y
 PGu8jotn0++P19d3JwXW8t6TVvBIQ1dRZHx1IxGLMn+CkDJMOmHAUMWTAXX2rf5tUjas8/v2
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <aa83c6b8-5d72-2e11-2681-5bb2e67ba890@suse.de>
Date: Tue, 16 Jul 2019 12:02:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716093825.GC32562@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_030218_201545_0633BB83 
X-CRM114-Status: GOOD (  18.18  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xNi8xOSAxMTozOCBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gVHVlLCBK
dWwgMTYsIDIwMTkgYXQgMDk6MTg6MzBBTSArMDIwMCwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+
PiBDb21taXQgMDRlNzBiZDRhMDI2ICgibnZtZS1tdWx0aXBhdGg6IGRvIG5vdCBzZWxlY3QgbmFt
ZXNwYWNlcwo+PiB3aGljaCBhcmUgYWJvdXQgdG8gYmUgcmVtb3ZlZCIpIGludHJvZHVjZWQgY2hl
Y2tzIHdoZW4gdHJhdmVyc2luZwo+PiB0aGUgbGlzdCBvZiBuYW1lc3BhY2VzIHRvIGF2b2lkIHRy
aXBwaW5nIG92ZXIgaW52YWxpZCBuYW1lc3BhY2VzLgo+PiBBIHNpbWlsYXIgY2hlY2sgaXMgbmVl
ZGVkIGluIG52bWVfdXBkYXRlX2FuYV9zdGF0ZSgpIHRvIHNraXAgdXBkYXRlcwo+PiBmb3IgYW55
IG5hbWVzcGFjZXMgd2hpY2ggd2lsbCBiZSByZW1vdmVkLgo+PiBXaXRoIHRoYXQgd2Ugc2hvdWxk
IGFsc28gcmVtb3ZlIHRoZSBXQVJOX09OKCkgYXQgdGhlIGVuZCBvZiB0aGUKPj4gaXRlcmF0aW9u
OyB0aGlzIHdpbGwgYWxzbyBiZSBlcnJvcm5lb3VzbHkgdHJpZ2dlcmVkIGlmIEFOQSBDaGFuZ2Ug
QUVOUwo+PiBhcmUgcmVjZWl2ZWQgZHVyaW5nIHNjYW5uaW5nLgo+IAo+IFdoYXQgaXMgdGhlIHBy
b2JsZW0gd2UgYXJlIHRyeWluZyB0byBmaXggaGVyZT8gIEp1c3QgdGhhdCB3ZSBzaG91bGQKPiBu
b3QgY2FsbCBudm1lX21wYXRoX3NldF9saXZlPyAgSW4gdGhhdCBjYXNlIGl0IG1pZ2h0IG1ha2Ug
bW9yZSBzZW5zZQo+IHRvIG1vdmUgdGhlIHJlbW92ZWQgY2hlY2sgdG8ganVzdCBndWFyZCB0aGF0
IGNhbGwgYW5kIGF0IGxlYXN0IGtlZXAKPiB0aGUgdmFsdWVzIGluIHN0cnVjdCBudm1lX25zIHVw
dG9kYXRlLgo+IApUaGUgdW5kZXJseWluZyBwcm9ibGVtIGlzIHRoZSAnV0FSTl9PTigpJywgd2hp
Y2ggYWN0dWFsbHkgY2FuIChhbmQgaXMpCnRyaWdnZXJlZCB3aGVuIEFOQSBjaGFuZ2UgQUVOcyBh
cmUgcmVjZWl2ZWQgZHVyaW5nIGNvbnRyb2xsZXIgKHJlLSkgY29ubmVjdC4KQXQgdGhlIHNhbWUg
dGltZSBpdCdzIHF1aXRlIHBvaW50bGVzcyB0byB1cGRhdGUgdGhlIEFOQSBzdGF0ZSBmb3IKbmFt
ZXNwYWNlcyB3aGljaCBhcmUgb24gdGhlaXIgd2F5IG91dDsgd2UgX3N0aWxsXyBzZWVpbmcgb2Rk
IGJlaGF2aW91cgpkdXJpbmcgc2ltdWx0YW5lb3VzIHJlc2Nhbi9yZXNldCwgYW5kIHRoaXMgaXMg
anVzdCBhbm90aGVyIHNhZmVndWFyZC4KCkJ1dCBmb3Igbm93IEknZCBiZSBoYXBweSB0byBkcm9w
IHRoZSBjaGVjayBmb3IgTlNfUkVNT1ZJTkcgYW5kIGp1c3QKZGVsZXRlIHRoZSBXQVJOX09OKCku
CgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0
b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5MTEg
NzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEy
ODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
