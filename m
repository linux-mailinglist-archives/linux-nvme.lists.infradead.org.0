Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D0152344
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 08:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55zf2V4BG1OLjwxWNs5D2F2B4tDt2qATZw7nNadqfLE=; b=JH1EXRYO8olEop
	vxByhtknZrEzmXF5xDZpk7/cskF0UmwFaLLNVgUcVXnEFJxOsb5ZqCRKqw72/KeRwQz46VKrVFcQl
	5VAJaTZ0KqiOYhtfx9nWe5o1p2pmIH8Wnr1nIOoKBrECbiMBwC0tD6jPdfwVkk2Htr3Ix3pm7GvAT
	4ADsR2UyRtORAHkpYcIMU/a3PX0yskN2jDVkLetx6qv508c6IWw0asz30vb2Ry6eOcuwa0Oi75E6n
	fYNG28KO4AfqZH8+v7KIHUOcoCrAoTshtA/NP1JNbk+KAZORIUjjYHyfKUQBOzy2BI/R1+9XcDqDH
	RueAcwn835mRC5k/CSUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfecB-000745-4o; Tue, 25 Jun 2019 06:07:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfec0-00073Z-BR
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 06:07:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C861AAC2E;
 Tue, 25 Jun 2019 06:07:18 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
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
Message-ID: <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
Date: Tue, 25 Jun 2019 08:07:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_230724_687280_8579961D 
X-CRM114-Status: GOOD (  17.61  )
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8yNC8xOSA4OjA4IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4+PiBUaGF0J3Mg
d2hhdCBJIHRob3VnaHQgaW5pdGlhbGx5LCB0b28sIGJ1dCBpdCB0dXJuZWQgb3V0IHRvIGJlIG5v
dAo+Pj4+PiBzdWZmaWNpZW50Lgo+Pj4+Cj4+Pj4gTm90IHN1ZmZpY2llbnQgYmVjYXVzZSBpdCBo
YW5ncz8gb3IgcGFuaWNzPwo+Pj4+Cj4+IEl0IGhhbmdzLCBhbmQgd2UncmUgc2VlaW5nIGEgd2Fy
bmluZzoKPj4KPj4ga2VybmVsOiBbNjcwODguMzQ0MDM0XSBXQVJOSU5HOiBDUFU6IDQgUElEOiAy
NTAyMCBhdAo+PiAuLi9saWIvcGVyY3B1LXJlZmNvdW50LmM6MzM0IHBlcmNwdV9yZWZfa2lsbF9h
bmRfY29uZmlybSsweDdhLzB4YTAKPj4gWyAuLiBdCj4+IGtlcm5lbDogWzY3MDg4LjM0NDEwNl0g
Q2FsbCBUcmFjZToKPj4ga2VybmVsOiBbNjcwODguMzQ0MTEyXcKgIGJsa19mcmVlemVfcXVldWVf
c3RhcnQrMHgyYS8weDQwCj4+IGtlcm5lbDogWzY3MDg4LjM0NDExNF3CoCBibGtfZnJlZXplX3F1
ZXVlKzB4ZS8weDQwCj4+IGtlcm5lbDogWzY3MDg4LjM0NDExOF3CoCBudm1lX3VwZGF0ZV9kaXNr
X2luZm8rMHgzNi8weDI2MCBbbnZtZV9jb3JlXQo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMjJdwqAg
X19udm1lX3JldmFsaWRhdGVfZGlzaysweGNhLzB4ZjAgW252bWVfY29yZV0KPj4ga2VybmVsOiBb
NjcwODguMzQ0MTI1XcKgIG52bWVfcmV2YWxpZGF0ZV9kaXNrKzB4YTYvMHgxMjAgW252bWVfY29y
ZV0KPj4ga2VybmVsOiBbNjcwODguMzQ0MTI3XcKgID8gYmxrX21xX2dldF90YWcrMHhhMy8weDIy
MAo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMzBdwqAgcmV2YWxpZGF0ZV9kaXNrKzB4MjMvMHhjMAo+
PiBrZXJuZWw6IFs2NzA4OC4zNDQxMzNdwqAgbnZtZV92YWxpZGF0ZV9ucysweDQzLzB4ODMwIFtu
dm1lX2NvcmVdCj4+IGtlcm5lbDogWzY3MDg4LjM0NDEzN13CoCA/IHdha2VfdXBfcSsweDcwLzB4
NzAKPj4ga2VybmVsOiBbNjcwODguMzQ0MTM5XcKgID8gYmxrX21xX2ZyZWVfcmVxdWVzdCsweDEy
YS8weDE2MAo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxNDJdwqAgPyBfX252bWVfc3VibWl0X3N5bmNf
Y21kKzB4NzMvMHhlMCBbbnZtZV9jb3JlXQo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxNDVdwqAgbnZt
ZV9zY2FuX3dvcmsrMHgyYjMvMHgzNTAgW252bWVfY29yZV0KPj4ga2VybmVsOiBbNjcwODguMzQ0
MTQ5XcKgIHByb2Nlc3Nfb25lX3dvcmsrMHgxZGEvMHg0MDAKPj4KPj4gwqBGcm9tIHdoaWNoIEkn
dmUgaW5mZXJyZWQgdGhhdCB3ZSdyZSBzdGlsbCBydW5uaW5nIGEgc2NhbiBpbiBwYXJhbGxlbCB0
bwo+PiByZXNldCwgYW5kIHRoYXQgdGhlIHNjYW4gdGhyZWFkIGlzIGNhbGxpbmcgJ2Jsa19mcmVl
emVfcXVldWUoKScgb24gYQo+PiBxdWV1ZSB3aGljaCBpcyBhbHJlYWR5IHRvcm4gZG93bi4KPiAK
PiAKPiBXaGVyZSBpcyB0aGUgc2NhbiB0cmlnZ2VyZWQgZnJvbT8gdGhlcmUgaXMgbm8gc2NhbiBj
YWxsIGZyb20gdGhlIHJlc2V0Cj4gcGF0aC4KPiAKSXQncyB0cmlnZ2VyZWQgZnJvbSBBRU4sIGJl
aW5nIHJlY2VpdmVkIGFyb3VuZCB0aGUgc2FtZSB0aW1lIHdoZW4gcmVzZXQKdHJpZ2dlcnMuClRo
ZXJlJ3MgYWN0dWFsbHkgYSBjaGFuZ2UgdGhhdCB0aGUgQUVOIGhhbmRsaW5nIGl0c2VsZiB0cmln
Z2VyZWQgdGhlCnJlc2V0LCBidXQgSSBoYXZlbid0IGJlIGFibGUgdG8gZGVjaXBoZXIgdGhhdCBm
cm9tIHRoZSBjcmFzaCBkdW1wLgoKPiBJcyB0aGVyZSBhIG5hbWVzcGFjZSByZW1vdmFsIG9yIHNv
bWV0aGluZyBlbHNlIHRoYXQgdHJpZ2dlcnMgQUVOCj4gdG8gbWFrZSB0aGlzIGhhcHBlbj8KPiAK
PiBXaGF0IGV4YWN0bHkgaXMgdGhlIHNjZW5hcmlvPwoKVGhlIHNjZW5hcmlvIGlzIG11bHRpcGxl
IHN0b3JhZ2UgZmFpbG92ZXIgb24gTmV0QXBwIE9uVEFQIHdoaWxlIEkvTyBpcwpydW5uaW5nLgoK
Q2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9y
YWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0
MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpH
RjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
