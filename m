Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AB926741
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBOCC6p1UMYJ8Hd95nVThf/AiwTMgje82cgGPBuzJLY=; b=ZTfQK4OUYkDck/
	NzWSdwwzhI+5qS/ZlnSdVDzYPn3HC/4wSkI+41tEgfVG9q5WIUBfIesnssakjI88/K6xcK3HpKjrp
	u1dck0liVZpA0AAt+6EfPPm5cnQtV96KRxkJsRRcRqcJgOWQbRwwjFUxI6Sm5Iup3VG1aojWSSld9
	A84IGWH6eyWXJTbnq6a0x17HbvXmRiVF3z98g4MJAqrxrqXFhrKlTXkcMrC/cHP9VI6jkPHTtCM/7
	QYNSAthPVBzw+CP1kPmh9nvGLNlu/+T/qAe8jno/AL2NyxdL1hQoWNqisyww+14lf7EIP6eZa6DOE
	eIJruRYLdWbVKLNAgi7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTV8-0004P1-9H; Wed, 22 May 2019 15:49:58 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTV3-0004OW-95
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:49:54 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:49:52 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2019 08:49:51 -0700
Date: Wed, 22 May 2019 09:44:48 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
Message-ID: <20190522154448.GA5393@localhost.localdomain>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <20190521161532.GD1639@localhost.localdomain>
 <CAC5umyi4t-r+0WbGjfa=_6ym_n=vcx5855nwL6NxuXH_HhYXkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyi4t-r+0WbGjfa=_6ym_n=vcx5855nwL6NxuXH_HhYXkA@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_084953_370895_87377CD1 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTI6NDQ6MDRBTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQ15pyIMjLml6Uo5rC0KSAxOjIwIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2Vy
bmVsLm9yZz46Cj4gPgo+ID4gT24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDE6MDQ6MDdBTSArMDkw
MCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gPiAraW50IG52bWVfdGhlcm1hbF96b25lc19yZWdp
c3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gPiArewo+ID4gPiArICAgICBzdHJ1Y3Qg
bnZtZV9zbWFydF9sb2cgKmxvZzsKPiA+ID4gKyAgICAgaW50IHJldDsKPiA+ID4gKyAgICAgaW50
IGk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgbG9nID0ga3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9L
RVJORUwpOwo+ID4gPiArICAgICBpZiAoIWxvZykKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4g
MDsgLyogbm9uLWZhdGFsIGVycm9yICovCj4gPiA+ICsKPiA+ID4gKyAgICAgcmV0ID0gbnZtZV9n
ZXRfbG9nKGN0cmwsIE5WTUVfTlNJRF9BTEwsIE5WTUVfTE9HX1NNQVJULCAwLAo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgbG9nLCBzaXplb2YoKmxvZyksIDApOwo+ID4gPiArICAgICBp
ZiAocmV0KSB7Cj4gPiA+ICsgICAgICAgICAgICAgZGV2X2VycihjdHJsLT5kZXZpY2UsICJGYWls
ZWQgdG8gZ2V0IFNNQVJUIGxvZzogJWRcbiIsIHJldCk7Cj4gPiA+ICsgICAgICAgICAgICAgcmV0
ID0gcmV0ID4gMCA/IC1FSU5WQUwgOiByZXQ7Cj4gPgo+ID4gQSByZXQgPiAwIG1lYW5zIHRoZSBk
ZXZpY2UgcHJvdmlkZWQgYSByZXNwb25zZSwgc28gZG9uJ3QgcmV0dXJuIGEKPiA+IG5lZ2F0aXZl
IGZvciB0aGF0IGNvbmRpdGlvbiwgcGxlYXNlLiBUaGF0J3MganVzdCBnb2luZyB0byBicmVhawo+
ID4gY29udHJvbGxlcnMgdGhhdCBkb24ndCBwcm92aWRlIHNtYXJ0IGRhdGEsIGxpa2UgcWVtdS4K
PiAKPiBBZnRlciBsb29raW5nIGF0IF9fbnZtZV9zdWJtaXRfc3luY19jbWQoKSwgaXQgcmV0dXJu
cyAtRUlOVFIgaWYgdGhlIGRldmljZQo+IGRvZXNuJ3QgcmVzcG9uZC4gIFNvLCBzaG91bGQgdGhp
cyByZXR1cm4gYSBuZWdhdGl2ZSBvbmx5IHdoZW4gbnZtZV9nZXRfbG9nKCkKPiByZXR1cm5zIC1F
SU5UUj8KPiAKPiAgICAgICAgIHJldCA9IG52bWVfZ2V0X2xvZygpOwo+ICAgICAgICAgaWYgKHJl
dCkgewo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKC4uLik7Cj4gICAgICAgICAgICAgICAgIGlm
IChyZXQgIT0gLUVJTlRSKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IDA7Cj4gICAg
ICAgICAgICAgICAgIGdvdG8gZnJlZV9sb2c7Cj4gICAgICAgICB9CgpXZSByZXR1cm4gYSBkaWZm
ZXJlbnQgbmVnYXRpdmUgZXJyb3IgaWYgd2UgY2FuJ3QgYWxsb2NhdGUgYSByZXF1ZXN0LApsaWtl
IHdoYXQgaGFwcGVucyBpZiB0aGUgY29udHJvbGxlciBpcyBkZWFkLCBsaWtlIGEgc3VycHJpc2Ug
aG90IHJlbW92ZS4KClRoZXJlJ3MgYSBzaW1wbGVyIHdheSB0byBsb29rIGF0IHRoaXM6IGlmIHJl
dCA+PSAwLCB3ZSBtYXkgcHJvY2VlZCwKb3RoZXJ3aXNlIHdlJ3JlIGRvbmUgd2l0aCB0aGlzIGNv
bnRyb2xsZXIuIERvbid0IG1ha2UgaXQgYW55IG1vcmUKY29tcGxpY2F0ZWQgdGhhbiB0aGF0LgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
