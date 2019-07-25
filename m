Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E2A75ADE
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 00:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1ee8GO8jVDWpBMDwcHjnvfU8GapFycT1+ylbyupbUc=; b=U/NYTlJMb++U8a
	UYjUS4PBpm1O7jrcGb6iqrYdxJaQyKCBE4rXKi4GrMFjY9pQ9Cdv6WBPiUH72jgWkHiXz8F8ACzT9
	ntnZDVrkc+g2Jsu0lBgOZbjXEb6UreGIYdrHYkVFLeCA+ZzV2uxl7nNosmAqJf3euM4CiLPWYi7d3
	hCi7nHv3Nxc3wREn5sP/3sKb8QF1G8VDOBpCBmcIp3wqQ9OHk8XwUeeO0995OQ/f3uAZk1CYgquJa
	c4cdEBZAHQPIAY1fKyY4QWe8qwIYj2l9EjRM5KqpSIlqd6s52YAfShFV+ltJ4DEAcAK9eb2okYgM5
	1F+XgqkRhSSEvmyD23fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmVW-0001PX-9L; Thu, 25 Jul 2019 22:46:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmV8-0001Op-DZ
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 22:46:19 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A330622C7E
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 22:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564094777;
 bh=+yOmooT9QWh7AbjuO31467LcogPWsKg5AFMXWo7T700=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2NY7EDO/OcNRmUyUyLBIZTcv9FVdsaZSvv5tiAvlZrgJqlEFflIm8Q09vAKqKJs3S
 Dxj/hVbtY4tKmC9xiCz0JG62XhgmOdJ31a2Zk2OI+ryJDZJgo1giXBK663MrYP1Xj8
 HOKKAmaAQC67PDIpDh2H05SyAZqr4fkgCOtoMjIA=
Received: by mail-qk1-f177.google.com with SMTP id d79so37670552qke.11
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 15:46:17 -0700 (PDT)
X-Gm-Message-State: APjAAAWD63PC4HZovDez5iYQq33T6VmrS/uJ3HYlMBLNh1GLSqu2C4vp
 aqKp5+hTaRgmlaDqNSFTa7EKZ6Cag2umrTQEzQ==
X-Google-Smtp-Source: APXvYqzZai0T5TpNkhTsnFB4Whg+K+mPYE/uKM+k/JTM7iHa4ZE58MujPQVrEuptFYuh2O7tHVBB0VYgbWbfTEpNrq0=
X-Received: by 2002:a37:6944:: with SMTP id e65mr55648212qkc.119.1564094776738; 
 Thu, 25 Jul 2019 15:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
 <1561990354-4084-3-git-send-email-akinobu.mita@gmail.com>
 <20190722221645.GA32515@bogus>
 <CAC5umyh5d7Ya-Ou8BZmPfpXKT+WkMCWnRKkCw8xhe9upNKqVbg@mail.gmail.com>
In-Reply-To: <CAC5umyh5d7Ya-Ou8BZmPfpXKT+WkMCWnRKkCw8xhe9upNKqVbg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 25 Jul 2019 16:46:05 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq++7TkihOTrcx+3NVqYsS502h-1Og7h9H2YCA_YY5av2A@mail.gmail.com>
Message-ID: <CAL_Jsq++7TkihOTrcx+3NVqYsS502h-1Og7h9H2YCA_YY5av2A@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: thermal: nvme: Add binding
 documentation
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_154618_493586_EA6CA980 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:OPEN FIRMWARE AND..." <devicetree@vger.kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>, Jens Axboe <axboe@fb.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgODoyNCBBTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0
YUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gMjAxOeW5tDfmnIgyM+aXpSjngaspIDc6MTYgUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz46Cj4gPgo+ID4gT24gTW9uLCBKdWwgMDEsIDIwMTkgYXQg
MTE6MTI6MzJQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gPiBBZGQgdGhlcm1hbCBi
aW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIE5WTWUgdGVtcGVyYXR1cmUgc2Vuc29yLgo+ID4gPgo+
ID4gPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiA+ID4gQ2M6IFpoYW5nIFJ1
aSA8cnVpLnpoYW5nQGludGVsLmNvbT4KPiA+ID4gQ2M6IEVkdWFyZG8gVmFsZW50aW4gPGVkdWJl
enZhbEBnbWFpbC5jb20+Cj4gPiA+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4KPiA+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPiA+
ID4gQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KPiA+ID4gQ2M6IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPgo+ID4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5t
ZT4KPiA+ID4gQ2M6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4gPiA+IENj
OiBLZW5uZXRoIEhlaXRrZSA8a2VubmV0aC5oZWl0a2VAaW50ZWwuY29tPgo+ID4gPiBDYzogQ2hh
aXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEuS3Vsa2FybmlAd2RjLmNvbT4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+ID4gPiAtLS0K
PiA+ID4gKiB2NQo+ID4gPiAtIE5ldyBwYXRjaAo+ID4gPgo+ID4gPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvbnZtZS50eHQgfCA1NiArKysrKysrKysrKysrKysr
KysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKQo+ID4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFs
L252bWUudHh0Cj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC9udm1lLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy90aGVybWFsL252bWUudHh0Cj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+
IGluZGV4IDAwMDAwMDAuLjYwYjkwZGUKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9udm1lLnR4dAo+ID4gPiBA
QCAtMCwwICsxLDU2IEBACj4gPiA+ICtCaW5kaW5nIGZvciBOVk1lIHRlbXBlcmF0dXJlIHNlbnNv
cgo+ID4gPiArCj4gPiA+ICtBbiBOVk1lIGNvbnRyb2xsZXIgcmVwb3J0cyB1cCB0byBuaW5lIHRl
bXBlcmF0dXJlIHZhbHVlcyBpbiB0aGUgU01BUlQgLyBIZWFsdGgKPiA+ID4gK2xvZy4KPiA+ID4g
Kwo+ID4gPiArUmVxdWlyZWQgcHJvcGVydGllczoKPiA+ID4gKy0gcmVnOiBBIGZpdmUtY2VsbCBh
ZGRyZXNzIGVuY29kZWQgYXMgKHBoeXMuaGkgcGh5cy5taWQgcGh5cy5sbyBzaXplLmhpCj4gPiA+
ICsgIHNpemUubG8pLiBwaHlzLmhpIHNob3VsZCBjb250YWluIHRoZSBkZXZpY2UncyBCREYgKEJ1
cy9EZXZpY2UvRnVuY3Rpb24pCj4gPiA+ICsgIGFzIDBiMDAwMDAwMDAgYmJiYmJiYmIgZGRkZGRm
ZmYgMDAwMDAwMDAuIFRoZSBvdGhlciBjZWxscyBzaG91bGQgYmUgemVyby4KPiA+ID4gKyAgU2Vl
IGFsc28gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9wY2kudHh0Cj4gPiA+
ICsKPiA+ID4gKy0gI3RoZXJtYWwtc2Vuc29yLWNlbGxzOiBNdXN0IGJlIDEuIFNlZSAuL3RoZXJt
YWwudHh0IGZvciBhIGRlc2NyaXB0aW9uLgo+ID4gPiArICBJbiB0aGUgdGhlcm1hbC1zZW5zb3Jz
IHByb3BlcnR5LCB0aGUgc2Vuc29yIElEIDAgZm9yIGNvbXBvc2l0ZSB0ZW1wZXJhdHVyZSwKPiA+
ID4gKyAgMSB0aHJvdWdoIDggZm9yIE5WTWUgdGVtcGVyYXR1cmUgc2Vuc29yIE4uCj4gPiA+ICsK
PiA+ID4gK0V4YW1wbGU6Cj4gPiA+ICsKPiA+ID4gKyZwY2llMCB7Cj4gPiA+ICsgICAgIC4uLgo+
ID4gPiArICAgICBudm1lOiBudm1lQDAsMCB7Cj4gPiA+ICsgICAgICAgICAgICAgcmVnID0gPDB4
MDAwMCAwIDAgMCAwPjsKPiA+ID4gKyAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwzPjsK
PiA+ID4gKyAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiA+ID4gKwo+ID4gPiArICAg
ICAgICAgICAgIG52bWV0ZW1wOiBudm1ldGVtcCB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgwMDAwIDAgMCAwIDA+OyAvKiBERVZGTiA9IDB4MDAgKDA6MCkgKi8KPiA+Cj4g
PiBJJ20gbm90IHN1cmUgdGhpcyBpcyByZWFsbHkgdmFsaWQgUENJIGFkZHJlc3NpbmcgYXMgdGhl
IHBhcmVudCBoYXMgdGhlCj4gPiBzYW1lIGFkZHJlc3MuCj4gPgo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Owo+ID4KPiA+IENhbid0IHlvdSBq
dXN0IHB1dCB0aGlzIGluIHRoZSBwYXJlbnQ/IElzIHRoaXMgcmVhbGx5IGEgc2VwYXJhdGUKPiA+
IGFkZHJlc3NhYmxlIGRldmljZSBmcm9tIHRoZSBwYXJlbnQ/Cj4KPiBIb3cgYWJvdXQgdGhpcz8K
Pgo+ICZwY2llMCB7Cj4gLi4uCj4gICAgICAgICBwY2ktYnJpZGdlQDAgewo+ICAgICAgICAgICAg
ICAgICByZWcgPSA8MHgwMDAwMCAwIDAgMCAwPjsKPiAgICAgICAgICAgICAgICAgI2FkZHJlc3Mt
Y2VsbHMgPSA8Mz47Cj4gICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+Cj4gICAg
ICAgICAgICAgICAgIG52bWU6IG52bWVAMCwwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MHgxMDAwMCAwIDAgMCAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAjdGhlcm1h
bC1zZW5zb3ItY2VsbHMgPSA8MT47Cj4gICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICB9Owo+
IH07Cj4KPiBhbmQKPgo+ICZ0aGVybWFsX3pvbmVzIHsKPiAuLi4KPiB0aGVybWFsLXNlbnNvcnMg
PSA8Jm52bWUgMD47Cj4gfTsKPgo+IEkgdGVzdGVkIHRoaXMgd2l0aCB0aGUgUm9ja1BybzY0IGFu
ZCBlZGl0ZWQKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQu
ZHRzLgo+Cj4gJCBsc3BjaQo+IDAwOjAwLjAgUENJIGJyaWRnZTogRnV6aG91IFJvY2tjaGlwIEVs
ZWN0cm9uaWNzIENvLiwgTHRkIERldmljZSAwMTAwCj4gMDE6MDAuMCBOb24tVm9sYXRpbGUgbWVt
b3J5IGNvbnRyb2xsZXI6IE1pY3Jvbi9DcnVjaWFsIFRlY2hub2xvZ3kKPiBEZXZpY2UgMjI2MyAo
cmV2IDAzKQo+Cj4gJCBsc3BjaSAtdHYKPiAtWzAwMDA6MDBdLS0tMDAuMC1bMDFdLS0tLTAwLjAg
IE1pY3Jvbi9DcnVjaWFsIFRlY2hub2xvZ3kgRGV2aWNlIDIyNjMKCkxvb2tzIGJldHRlciB0byBt
ZS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
