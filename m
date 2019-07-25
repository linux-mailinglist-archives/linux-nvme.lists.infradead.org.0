Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B509975103
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 16:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ujpf6RbQCOZJ8K0KgMphU3UYXrmw0iOxpxMKH5cELLw=; b=oI2KVL3mi/bh45
	zJ4/wZoPZNG3O/y2qSIHsUO/u4pgg7uAtfnKgM5c46A9gAMjX5N0CTP27KxWHQG5Ie+sFLawksTdj
	Bp+KJW7bf6hUTxTS2UlunrYvE2NXVFzg4BFz73JaRvtPM4WmZMMyVIaBN8jjUXs70rvc1FPc67jHg
	NR4E83gUPSgsr/GUxS7hvkjwtUMibS9RbtR0CJ+W1kToi3g4LnUxY3CzcwrzHWVlna6hozVFRbypG
	HJ/R1Ogw7blebdUTxmVSr6qLLOaVjX5eefhfNkpXxWNSppD7neyIc8scaI6rn0iYyHCc2Ll2KtqNK
	7/Gta/M/7NOfkzsllRlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqegn-0004RI-Dk; Thu, 25 Jul 2019 14:25:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqefp-0002ql-Ef
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 14:24:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id f17so18855620pfn.6
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 07:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1VKuC1KiCNNy3fXegCj/9eEYpb5J1BMDpw/S3NGoOX4=;
 b=n54k40O/4V9IXaWdt1c/O/X1SNbI13qgKZuP/3Pc40n1eWQBHyPiu/ieVitQ/bWzWJ
 t0dPBt5MHm97pPuJzw6Pmqn1PiFHXIrzbQGcEEXizTWEiMZwth0i0V1qB8xs1l4lcXb5
 5kk5y7xrhmShk6p7AGID6g74Xw+x7Yxb8lIb2NpH9SZeyxaDb0xqOkOiEtG+fqGKWfyn
 qx0BZJpPplXJH2dOJBkUiWNqRgJpeHGIXl1/TLuMO1QSL8d/Vcx40CrUsaOisx5wJ/b6
 1/TpYz/HYfaHr4W0gFy0ysELjwMC92jnNL0PZH5Pwus4sxaXTaklbq5VQ8oLrxRtHlv0
 auNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1VKuC1KiCNNy3fXegCj/9eEYpb5J1BMDpw/S3NGoOX4=;
 b=shgVs8ORQby9zsAZhgkscJ4VbE9ikwf7qYkbvC0J0wlNp9SQvrzcKmQdw05K+MX5DO
 RyHbF4ASLUMqYKqN4J3xURWJlBufhmPntntMY0JIukMFiVnMtZEp20MJO6UTlrZGHg5e
 sapvt26/ugpmJ6SOpeY6UFqpb31qBilYV9Hz4Q0TDKm2v6M458mVy2EM4ULnN5zO5lo9
 r7talHUtCgGdGHu5/wjdd850WAGvNPtFGznhZg/HcvxZBgvWlr16y2cMY1Ls4ubJCy7Q
 MB/rM4jocWQDiipA+Mpiu4wYBkgMalzIq2M9tq40jTJIl2lr1ZtctvZ/4dYYA+ujOl6/
 7veQ==
X-Gm-Message-State: APjAAAWHEt4KXQzkurNDMv7zYXZu+jPwERnA7bJ1fEW1wIUA4qnh4raF
 einYU0ZgFJhbgUq5unroPGiceCsyZfuA5mIfEh4sOrrP
X-Google-Smtp-Source: APXvYqzPCe+/gaiuTPknRfAisyHmKvhdgM0c+iqn70Y3nn+xULbKyQCLk6le1kROzCUC/Mt4Yevnd44vRHi2NxWSm2Y=
X-Received: by 2002:a63:7455:: with SMTP id e21mr81501053pgn.439.1564064687329; 
 Thu, 25 Jul 2019 07:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
 <1561990354-4084-3-git-send-email-akinobu.mita@gmail.com>
 <20190722221645.GA32515@bogus>
In-Reply-To: <20190722221645.GA32515@bogus>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 25 Jul 2019 23:24:36 +0900
Message-ID: <CAC5umyh5d7Ya-Ou8BZmPfpXKT+WkMCWnRKkCw8xhe9upNKqVbg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: thermal: nvme: Add binding
 documentation
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_072449_557758_E0D1F975 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDfmnIgyM+aXpSjngaspIDc6MTYgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz46
Cj4KPiBPbiBNb24sIEp1bCAwMSwgMjAxOSBhdCAxMToxMjozMlBNICswOTAwLCBBa2lub2J1IE1p
dGEgd3JvdGU6Cj4gPiBBZGQgdGhlcm1hbCBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIE5WTWUg
dGVtcGVyYXR1cmUgc2Vuc29yLgo+ID4KPiA+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgo+ID4gQ2M6IFpoYW5nIFJ1aSA8cnVpLnpoYW5nQGludGVsLmNvbT4KPiA+IENjOiBFZHVh
cmRvIFZhbGVudGluIDxlZHViZXp2YWxAZ21haWwuY29tPgo+ID4gQ2M6IERhbmllbCBMZXpjYW5v
IDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgo+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hA
a2VybmVsLm9yZz4KPiA+IENjOiBKZW5zIEF4Ym9lIDxheGJvZUBmYi5jb20+Cj4gPiBDYzogQ2hy
aXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBn
cmltYmVyZy5tZT4KPiA+IENjOiBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+
ID4gQ2M6IEtlbm5ldGggSGVpdGtlIDxrZW5uZXRoLmhlaXRrZUBpbnRlbC5jb20+Cj4gPiBDYzog
Q2hhaXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEuS3Vsa2FybmlAd2RjLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFraW5vYnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT4KPiA+IC0tLQo+
ID4gKiB2NQo+ID4gLSBOZXcgcGF0Y2gKPiA+Cj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3RoZXJtYWwvbnZtZS50eHQgfCA1NiArKysrKysrKysrKysrKysrKysrKysrCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvbnZtZS50eHQKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvbnZtZS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9u
dm1lLnR4dAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAuLjYwYjkw
ZGUKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy90aGVybWFsL252bWUudHh0Cj4gPiBAQCAtMCwwICsxLDU2IEBACj4gPiArQmluZGlu
ZyBmb3IgTlZNZSB0ZW1wZXJhdHVyZSBzZW5zb3IKPiA+ICsKPiA+ICtBbiBOVk1lIGNvbnRyb2xs
ZXIgcmVwb3J0cyB1cCB0byBuaW5lIHRlbXBlcmF0dXJlIHZhbHVlcyBpbiB0aGUgU01BUlQgLyBI
ZWFsdGgKPiA+ICtsb2cuCj4gPiArCj4gPiArUmVxdWlyZWQgcHJvcGVydGllczoKPiA+ICstIHJl
ZzogQSBmaXZlLWNlbGwgYWRkcmVzcyBlbmNvZGVkIGFzIChwaHlzLmhpIHBoeXMubWlkIHBoeXMu
bG8gc2l6ZS5oaQo+ID4gKyAgc2l6ZS5sbykuIHBoeXMuaGkgc2hvdWxkIGNvbnRhaW4gdGhlIGRl
dmljZSdzIEJERiAoQnVzL0RldmljZS9GdW5jdGlvbikKPiA+ICsgIGFzIDBiMDAwMDAwMDAgYmJi
YmJiYmIgZGRkZGRmZmYgMDAwMDAwMDAuIFRoZSBvdGhlciBjZWxscyBzaG91bGQgYmUgemVyby4K
PiA+ICsgIFNlZSBhbHNvIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcGNp
LnR4dAo+ID4gKwo+ID4gKy0gI3RoZXJtYWwtc2Vuc29yLWNlbGxzOiBNdXN0IGJlIDEuIFNlZSAu
L3RoZXJtYWwudHh0IGZvciBhIGRlc2NyaXB0aW9uLgo+ID4gKyAgSW4gdGhlIHRoZXJtYWwtc2Vu
c29ycyBwcm9wZXJ0eSwgdGhlIHNlbnNvciBJRCAwIGZvciBjb21wb3NpdGUgdGVtcGVyYXR1cmUs
Cj4gPiArICAxIHRocm91Z2ggOCBmb3IgTlZNZSB0ZW1wZXJhdHVyZSBzZW5zb3IgTi4KPiA+ICsK
PiA+ICtFeGFtcGxlOgo+ID4gKwo+ID4gKyZwY2llMCB7Cj4gPiArICAgICAuLi4KPiA+ICsgICAg
IG52bWU6IG52bWVAMCwwIHsKPiA+ICsgICAgICAgICAgICAgcmVnID0gPDB4MDAwMCAwIDAgMCAw
PjsKPiA+ICsgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gPiArICAgICAgICAg
ICAgICNzaXplLWNlbGxzID0gPDI+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBudm1ldGVtcDog
bnZtZXRlbXAgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAwMDAgMCAwIDAg
MD47IC8qIERFVkZOID0gMHgwMCAoMDowKSAqLwo+Cj4gSSdtIG5vdCBzdXJlIHRoaXMgaXMgcmVh
bGx5IHZhbGlkIFBDSSBhZGRyZXNzaW5nIGFzIHRoZSBwYXJlbnQgaGFzIHRoZQo+IHNhbWUgYWRk
cmVzcy4KPgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICN0aGVybWFsLXNlbnNvci1jZWxscyA9
IDwxPjsKPgo+IENhbid0IHlvdSBqdXN0IHB1dCB0aGlzIGluIHRoZSBwYXJlbnQ/IElzIHRoaXMg
cmVhbGx5IGEgc2VwYXJhdGUKPiBhZGRyZXNzYWJsZSBkZXZpY2UgZnJvbSB0aGUgcGFyZW50PwoK
SG93IGFib3V0IHRoaXM/CgomcGNpZTAgewouLi4KICAgICAgICBwY2ktYnJpZGdlQDAgewogICAg
ICAgICAgICAgICAgcmVnID0gPDB4MDAwMDAgMCAwIDAgMD47CiAgICAgICAgICAgICAgICAjYWRk
cmVzcy1jZWxscyA9IDwzPjsKICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+OwoKICAg
ICAgICAgICAgICAgIG52bWU6IG52bWVAMCwwIHsKICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDB4MTAwMDAgMCAwIDAgMD47CiAgICAgICAgICAgICAgICAgICAgICAgICN0aGVybWFsLXNl
bnNvci1jZWxscyA9IDwxPjsKICAgICAgICAgICAgICAgIH07CiAgICAgICAgfTsKfTsKCmFuZAoK
JnRoZXJtYWxfem9uZXMgewouLi4KdGhlcm1hbC1zZW5zb3JzID0gPCZudm1lIDA+Owp9OwoKSSB0
ZXN0ZWQgdGhpcyB3aXRoIHRoZSBSb2NrUHJvNjQgYW5kIGVkaXRlZAphcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzLgoKJCBsc3BjaQowMDowMC4wIFBDSSBi
cmlkZ2U6IEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZCBEZXZpY2UgMDEwMAow
MTowMC4wIE5vbi1Wb2xhdGlsZSBtZW1vcnkgY29udHJvbGxlcjogTWljcm9uL0NydWNpYWwgVGVj
aG5vbG9neQpEZXZpY2UgMjI2MyAocmV2IDAzKQoKJCBsc3BjaSAtdHYKLVswMDAwOjAwXS0tLTAw
LjAtWzAxXS0tLS0wMC4wICBNaWNyb24vQ3J1Y2lhbCBUZWNobm9sb2d5IERldmljZSAyMjYzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
