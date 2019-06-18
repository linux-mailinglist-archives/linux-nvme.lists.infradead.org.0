Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C61949B23
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 09:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMCEH+FpbBR6vp35b0adAQj2B6v1dhGWIenhzVmizVE=; b=TfqsbXnQixZ5Ob
	Hg7p0xgRS9kPy1S6SDGJLfKRtuLTIb8R93hmQFls1YQ+aeE0IF1yixc9yAE3HzTmGH8LqvoN3z4AK
	TwtpjTdc+5BH5HobtHA7Nki6he7Z1J0SWqpdpRbKeI4JU6BoH37pam8svbyQbHgCoWAWtAJdedtAx
	rvYK3l47BEdpNAQlZR2XJdCMBMk0316um9a0lVON5nSdU5BrdgAhx4P4ddjUXQtPhNCAFfSHvYOMS
	CZ+OvxxjDuKuHen+MgR13fBBas0n+IpzM7uPSgFgOI5jz8VUp0DfsSI+UrlxA6ZkStt1GpI9N7t6n
	L6Dsl8mFwNTysB6FvKBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8pp-0006ki-OO; Tue, 18 Jun 2019 07:47:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8pR-0006NZ-1V
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 07:46:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8B6C3AFEE;
 Tue, 18 Jun 2019 07:46:49 +0000 (UTC)
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Daniel Drake <drake@endlessm.com>, Christoph Hellwig <hch@lst.de>
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
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
Message-ID: <06c38b3e-603b-5bae-4959-9965ab40db62@suse.de>
Date: Tue, 18 Jun 2019 09:46:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_004653_424746_BE823E84 
X-CRM114-Status: GOOD (  20.20  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PCI <linux-pci@vger.kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>,
 Keith Busch <keith.busch@gmail.com>, linux-ide@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8xNC8xOSA0OjI2IEFNLCBEYW5pZWwgRHJha2Ugd3JvdGU6Cj4gT24gVGh1LCBKdW4gMTMs
IDIwMTkgYXQgNDo1NCBQTSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JvdGU6Cj4+
IFNvIHVudGlsIHdlIGdldCB2ZXJ5IGNsZWFyIGFuZCBnb29kIGRvY3VtZW50YXRpb24gZnJvbSBJ
bnRlbCBvbiB0aGF0Cj4+IEkgZG9uJ3QgdGhpbmsgYW55IGZvcm0gb2YgdXBzdHJlYW0gc3VwcG9y
dCB3aWxsIGZseS4gIEFuZCBnaXZlbiB0aGF0Cj4+IERhbiB3aG8gc3VibWl0dGVkIHRoZSBvcmln
aW5hbCBwYXRjaCBjYW4ndCBldmVuIHRhbGsgYWJvdXQgdGhpcyB0aGluZwo+PiBhbnkgbW9yZSBh
bmQgYXBwYXJlbnRseSBnb3QgYSBnYWcgb3JkZXIgZG9lc24ndCByZWFsbHkgZ2l2ZSBtZSBjb25m
aWRlbmNlCj4+IGFueSBvZiB0aGlzIHdpbGwgZXZlciB3b3JrLgo+IAo+IEkgcmVhbGlzZSB0aGUg
YXJjaGl0ZWN0dXJlIGhlcmUgc2VlbXMgYmFkbHkgdGhvdWdodCBvdXQsIGFuZCB0aGUgbGFjawo+
IG9mIGEgZGVjZW50IHNwZWMgbWFrZXMgdGhlIHNpdHVhdGlvbiB3b3JzZSwgYnV0IEknZCBlbmNv
dXJhZ2UgeW91IHRvCj4gcmVjb25zaWRlciB0aGlzIGZyb20gdGhlIHBlcnNwZWN0aXZlcyBvZjoK
PiAgLSBBcmUgdGhlIHBhdGNoZXMgcmVhbGx5IG1vcmUgdWdseSB0aGFuIHRoZSB1bmRlcmx5aW5n
IGFyY2hpdGVjdHVyZT8KPiAgLSBXZSBzdHJpdmUgdG8gbWFrZSBMaW51eCB3b3JrIHdlbGwgb24g
Y29tbW9uIHBsYXRmb3JtcyBhbmQgc29tZXRpbWVzCj4gaGF2ZSB0byBhY2NlcHQgdGhhdCBoYXJk
d2FyZSB2ZW5kb3JzIGRvIHF1ZXN0aW9uYWJsZSB0aGluZ3MgJiBkbyBub3QKPiBmdWxseSBjb29w
ZXJhdGUKPiAgLSBJdCB3b3JrcyBvdXQgb2YgdGhlIGJveCBvbiBXaW5kb3dzCj4gCkFjdHVhbGx5
LCB0aGVyZSBfaXNfIGEgcmVnaXN0ZXIgZGVzY3JpcHRpb246CgpodHRwczovL3d3dy5pbnRlbC5j
b20vY29udGVudC9kYW0vd3d3L3B1YmxpYy91cy9lbi9kb2N1bWVudHMvZGF0YXNoZWV0cy8zMDAt
c2VyaWVzLWNoaXBzZXQtcGNoLWRhdGFzaGVldC12b2wtMi5wZGYKCkxvb2sgZm9yIHNlY3Rpb24g
MTU6IEludGVsIFJTVCBmb3IgUENJZSBTdG9yYWdlLgoKVGhhdCBnaXZlcyB5b3UgYSByZWFzb25h
YmxlIGRlc2NyaXB0aW9uIG9mIHRoZSB2YXJpb3VzIHJlZ2lzdGVycyBldGMuCllvdSdsbCBoYXZl
IHRvIHRyYW5zbGF0ZSBmcm9tIEludGVsLXNwZWFrLCBidXQgdGhhdCBzaG91bGQgYmUgbWFuYWdl
YWJsZS4KCkluIGdlbmVyYWwsIEkgYW0gX3F1aXRlXyBpbiBmYXZvdXIgb2YgaGF2aW5nIExpbnV4
IFN1cHBvcnQgZm9yIHRoZXNlCmtpbmQgb2YgZGV2aWNlcy4KSSBmdWxseSBhZ3JlZSB0aGUgaW50
ZXJmYWNlIGlzIHVnbHksIGFuZCBiYWRseSB0aG91Z2h0IG91dC4KQnV0IHRoZXNlIGRldmljZXMg
ZXhpc3QgYW5kIGhhdmUgYmVlbiBzb2xkIGZvciBxdWl0ZSBzb21lIHRpbWUgbm93LCBzbwp0aGVy
ZSBpcyBubyB3YXkgd2UgY2FuIGluZmx1ZW5jZSB0aGUgZGVzaWduIG9uIHRob3NlIGJveGVzLgoK
QW5kIHdlIHJlYWxseSBoYXZlIGNvbWUgYSBsb25nIHdheSBmcm9tIHRoZSB0aGUgb3JpZ2luYWwg
TGludXggaWRlYSBvZgoiaGV5LCB0aGF0J3Mgd2VpcmQgaGFyZHdhcmUsIGxldCdzIGhhY2sgdG9n
ZXRoZXIgYSBkcml2ZXIgZm9yIGl0IiB0byB0aGUKZmxhdCByZWplY3Rpb24gb2YgaGFyZHdhcmUg
d2UgZG9uJ3QgbGlrZS4KSSwgZm9yIG9uZSwgcHJlZmVyIHRoZSBvbGQgd2F5LgoKTG9va2luZyBh
dCB0aGUgc3BlYyBJIHRoaW5rIHRoYXQgRGFuaWVscyBhcHByb2FjaCBvZiBleHBvc2luZyBhbgph
ZGRpdGlvbmFsIFBDSSBkZXZpY2UgaXMgdGhlIGNvcnJlY3Qgd2F5IG9mIGdvaW5nIGFib3V0IGl0
IChhcyB0aGUKaW50ZXJmYWNlIGRlc2lnbiBjYW4gYmUgdGhvdWdodCBvZiBhIG1lc3NlZC11cCBT
Ui1JT1YgaW50ZXJmYWNlKSwgYnV0CkknbGwgZGVmZXIgdG8gQmpvcm4gaGVyZS4KQnV0IHdlIHJl
YWxseSBzaG91bGQgaGF2ZSBhIGRyaXZlciB0byBnZXQgdGhlc2UgYm94ZXMgcm9sbGluZy4KCkNo
ZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFn
ZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1
MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
