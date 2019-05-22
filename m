Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932412674E
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KY5O81uVxb6DpuF2q9+HN7vdbngg4tjcrzTcWGwhyl8=; b=ESB+qVUVpzlqdH
	FqGsRPrUCFKcen1r4wRskmOmED4NwB0JESu2qlKhRZ/yYVLamEdo9RcCML9Dg3yLUE1YVKR+1seLW
	skxH4DUIo3z67kuh7A1S1YdoWVrZ2F058GgPL4Dbu1vSAWSP6F/XBQSbiZlEED45CDqEDTpFh2sc/
	Dys8EftH2WxXCZSiMf1OgCh7P4ra6X2v3c9Ju+sDA2zvxClucvXbYQYMBWP2504z0rjqOU8d+5W3y
	qRq46rhFo42n/Lb4+KKIXSizWRsDoEp6wRMbzGa6J4WvcsO9k1wD+HIuSRpXBHvndGLKwGs1LFI7v
	vMh7h7LEbQxCzLrgSHuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTXb-0005sD-M5; Wed, 22 May 2019 15:52:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTXW-0005rU-59
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:52:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so1288788plo.2
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 08:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y0uEsZx9NaTIzCiY5FZ9eD9lISDd+g2yLSUq+hTXz2I=;
 b=AYZidYbcLV5l28nykvM2qtlyRUOIL5PLa5TM/0dyKvoDbwcJf3bUEXmWsiuQT6RXTN
 K/pAEldd1BEAEND9y02qHsWfEZCNVvDj6MX4MUBgXZx5yJbGBu6lJq8OBWCewLfOMRHz
 4oAFVec/Nj/7/MqEwOUBwW/sRdTMO0bOkudyNtQ8vPlc3Nvt5jpu7pdUu5V0cwyNYtL0
 kRaIy3qFuOoSrT9dOPB/iA7+VxdqQ0eyZTCyTJvdS0ydTVfUebnS4dTsN2TjZiAyV4v5
 FbDNjUXtVvAiVvXuLihOZQuEXvhoRss7dtn/WAjEN25CXM7sRHH7S3WdxNb3LD0q4F5O
 mErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y0uEsZx9NaTIzCiY5FZ9eD9lISDd+g2yLSUq+hTXz2I=;
 b=mzVSzID5NYlaCAsii2XAUil0vqyDOOWdFo9+DfvbyCiaXLEEoMSUxF8sXSZDbybP/N
 iLdr0aVUTrkDUEsjPGtk/qCmHUixTkIEYZoNRSwQ1dDtlHTGwjNU4xspigtWfvculeDc
 GsDsptaZ3PD6fyFgdTI3G5seDPbviKtXIaNc7csTZNo/JqgNJoXitU28EQQPOws80+g/
 Eza2YJIbNA7rYGv2aTHwOT/bdELldUqFhVfBFEzhElwT9uLaJjV/CSvn8O49oE9yiUbP
 ctR0O+fEozXqbetPWrldSTtjaMz+4cIUhgI2zagjyWmy+Dq1TBALRQtxajuZcQ/4lhGn
 4Y9g==
X-Gm-Message-State: APjAAAVw0vlxZZ7+8YxrnkszdSNQRmmrlgSxWDxiPDTnBIwrkFB+Sca6
 SMYjOuLXTFljB60r5oRgLC1DfV1QXbNfwhEORo1zVNa8
X-Google-Smtp-Source: APXvYqyeyL8L6vGcyaHKU7LggySZBfZlhj8SmMd8pL5wcHys+zNFTKbX8JdpUjQwtPnW+LopB9s7CTxtVZHkAeu8TZc=
X-Received: by 2002:a17:902:7283:: with SMTP id
 d3mr46975846pll.274.1558540345349; 
 Wed, 22 May 2019 08:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <20190521161532.GD1639@localhost.localdomain>
 <CAC5umyi4t-r+0WbGjfa=_6ym_n=vcx5855nwL6NxuXH_HhYXkA@mail.gmail.com>
 <20190522154448.GA5393@localhost.localdomain>
In-Reply-To: <20190522154448.GA5393@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 23 May 2019 00:52:14 +0900
Message-ID: <CAC5umyhhO61hjm4vO++YpL8JgcyT05VfDpTpLZx0fQywvd7_kA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_085226_195797_CA0E6EA2 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyM+aXpSjmnKgpIDA6NDkgS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3Jn
PjoKPgo+IE9uIFRodSwgTWF5IDIzLCAyMDE5IGF0IDEyOjQ0OjA0QU0gKzA5MDAsIEFraW5vYnUg
TWl0YSB3cm90ZToKPiA+IDIwMTnlubQ15pyIMjLml6Uo5rC0KSAxOjIwIEtlaXRoIEJ1c2NoIDxr
YnVzY2hAa2VybmVsLm9yZz46Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgTWF5IDIyLCAyMDE5IGF0IDAx
OjA0OjA3QU0gKzA5MDAsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+ID4gPiAraW50IG52bWVfdGhl
cm1hbF96b25lc19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gPiA+ICt7Cj4g
PiA+ID4gKyAgICAgc3RydWN0IG52bWVfc21hcnRfbG9nICpsb2c7Cj4gPiA+ID4gKyAgICAgaW50
IHJldDsKPiA+ID4gPiArICAgICBpbnQgaTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgbG9nID0g
a3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwpOwo+ID4gPiA+ICsgICAgIGlmICghbG9n
KQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7IC8qIG5vbi1mYXRhbCBlcnJvciAqLwo+
ID4gPiA+ICsKPiA+ID4gPiArICAgICByZXQgPSBudm1lX2dldF9sb2coY3RybCwgTlZNRV9OU0lE
X0FMTCwgTlZNRV9MT0dfU01BUlQsIDAsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
IGxvZywgc2l6ZW9mKCpsb2cpLCAwKTsKPiA+ID4gPiArICAgICBpZiAocmV0KSB7Cj4gPiA+ID4g
KyAgICAgICAgICAgICBkZXZfZXJyKGN0cmwtPmRldmljZSwgIkZhaWxlZCB0byBnZXQgU01BUlQg
bG9nOiAlZFxuIiwgcmV0KTsKPiA+ID4gPiArICAgICAgICAgICAgIHJldCA9IHJldCA+IDAgPyAt
RUlOVkFMIDogcmV0Owo+ID4gPgo+ID4gPiBBIHJldCA+IDAgbWVhbnMgdGhlIGRldmljZSBwcm92
aWRlZCBhIHJlc3BvbnNlLCBzbyBkb24ndCByZXR1cm4gYQo+ID4gPiBuZWdhdGl2ZSBmb3IgdGhh
dCBjb25kaXRpb24sIHBsZWFzZS4gVGhhdCdzIGp1c3QgZ29pbmcgdG8gYnJlYWsKPiA+ID4gY29u
dHJvbGxlcnMgdGhhdCBkb24ndCBwcm92aWRlIHNtYXJ0IGRhdGEsIGxpa2UgcWVtdS4KPiA+Cj4g
PiBBZnRlciBsb29raW5nIGF0IF9fbnZtZV9zdWJtaXRfc3luY19jbWQoKSwgaXQgcmV0dXJucyAt
RUlOVFIgaWYgdGhlIGRldmljZQo+ID4gZG9lc24ndCByZXNwb25kLiAgU28sIHNob3VsZCB0aGlz
IHJldHVybiBhIG5lZ2F0aXZlIG9ubHkgd2hlbiBudm1lX2dldF9sb2coKQo+ID4gcmV0dXJucyAt
RUlOVFI/Cj4gPgo+ID4gICAgICAgICByZXQgPSBudm1lX2dldF9sb2coKTsKPiA+ICAgICAgICAg
aWYgKHJldCkgewo+ID4gICAgICAgICAgICAgICAgIGRldl9lcnIoLi4uKTsKPiA+ICAgICAgICAg
ICAgICAgICBpZiAocmV0ICE9IC1FSU5UUikKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJl
dCA9IDA7Cj4gPiAgICAgICAgICAgICAgICAgZ290byBmcmVlX2xvZzsKPiA+ICAgICAgICAgfQo+
Cj4gV2UgcmV0dXJuIGEgZGlmZmVyZW50IG5lZ2F0aXZlIGVycm9yIGlmIHdlIGNhbid0IGFsbG9j
YXRlIGEgcmVxdWVzdCwKPiBsaWtlIHdoYXQgaGFwcGVucyBpZiB0aGUgY29udHJvbGxlciBpcyBk
ZWFkLCBsaWtlIGEgc3VycHJpc2UgaG90IHJlbW92ZS4KPgo+IFRoZXJlJ3MgYSBzaW1wbGVyIHdh
eSB0byBsb29rIGF0IHRoaXM6IGlmIHJldCA+PSAwLCB3ZSBtYXkgcHJvY2VlZCwKPiBvdGhlcndp
c2Ugd2UncmUgZG9uZSB3aXRoIHRoaXMgY29udHJvbGxlci4gRG9uJ3QgbWFrZSBpdCBhbnkgbW9y
ZQo+IGNvbXBsaWNhdGVkIHRoYW4gdGhhdC4KCk9LLiAgU291bmRzIGdvb2QuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
