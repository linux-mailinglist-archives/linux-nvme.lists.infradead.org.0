Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571EF2E281
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 18:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyenDC+5Uf6YBcPvzaWj48dJn5YId+1AqrGwu26tk+4=; b=Jp0ZZ7HLxtgxTN
	TrYk0WRF/uxepga9c9WU27+i3jMMdfIwLEhmtaiXOxcU6Z417TSFAkbQNQ2BKMOz3jLNdp/qvYTdK
	slKwQ2w2sfxcwsVnw6jpNVZqP2kvFK9BeMB3GkMBeqsIwbx4WRdb9vZOyGctnqt32Z8TGp4NlxucZ
	IH4GqAmUB+irEszQubPN3dbP3I8FVz1VeLsTq3scELAL4Oz1b66qsF6fz99V/J0zS14aM8B4qmkYk
	oS65Ocye5YtZXDqs94Z+IMyUzVBnn1Y1j9AJiNNGw5vzXcybCcgrOZmcKC/1WNorXMB2OyyQa0Dlw
	kkAPkQ01R9PXcdeaiS+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1ja-0004bJ-LN; Wed, 29 May 2019 16:47:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1jU-0004av-SL
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 16:47:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so210123pga.12
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 09:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4Tv6+Gs1+EQ5+P4YCY4cdNnU3gxm7lIyvRNXI6TMLyQ=;
 b=G81QM3OsXRTmIPE0lZDNPld9Gjec7ThwCiarz3PlcrNtprZJRRJbRzKS1iZ5UFwg2E
 SKHZT2obo9Sa2W1v4pOGqQPxO5ViDtPUTois9dSsPBVysA9ZujxoayloHZvSdjPSmYuw
 kETUz0mTnFhMjuT0aYwUysqPdTsySiZqLVg/8zjj3lCo7mF0NUt8aEtWb8MR2QHiAChW
 snSwaK59AbMikcsiL63JKsMdVg5XTjPv9QJGeUep3YxtHXwuwZ5pOZeroRJulvnxRgeF
 kPXv8EEv3VzP7II13egjiTNzuaNP/11dWfA+vE8z3Jqa4+V1a59bcteOv0Dq2seSSagh
 0zDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4Tv6+Gs1+EQ5+P4YCY4cdNnU3gxm7lIyvRNXI6TMLyQ=;
 b=lX1GgCtQfGPbEKnSQEBsR83DyAMsC0r26ui9EzCLvqBkvi0knl016CSM5gNFLg4huQ
 39XWaKlfCkuNn7Eb7ZKjW2K+HlIbXEcOGN4EGlET3nzYloN6RC9e3/525s1FaRVeQjFp
 H3vcOwk/TGtZ4k7ZkDj+Ab6tih3KWp6L1KMv1mqVn7SnoVojtfVf3k4259DtCjkDG/FW
 yI4RWQGTDLXZ7T5SDjdYzeGGEq2oX2bCwaOa2opn/Uy8Q+431ml+5ogXdSotSmld6QRM
 ENzuHKNp69usQHLna2X5L/U0k3RuOVrznrZbyPatanwij0W0Bx45KHvRivHRO6agjqzU
 itiQ==
X-Gm-Message-State: APjAAAVOzU2H3GkUqmFE91Ssurfdy39hppXTalOSWQNp9VqEpiotptMn
 swfHfua642H4TYYB/KtvUn2XtKRO0IweFkxjYEM=
X-Google-Smtp-Source: APXvYqxN3FUqJ2Jtgk9qZ+mXgZN0IunAk+t8P2x9TLTwoLRzR6cF1cOOR6Ye44qr/bs4cSb2x1s7nd30zWLnZexKot8=
X-Received: by 2002:a17:90a:d681:: with SMTP id
 x1mr4681224pju.13.1559148439268; 
 Wed, 29 May 2019 09:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190529151517.GC28274@minwooim-desktop>
In-Reply-To: <20190529151517.GC28274@minwooim-desktop>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 30 May 2019 01:47:08 +0900
Message-ID: <CAC5umyhusw+sQOn5H7ZMP=aVi00GY7R_Jff6447R=yXyUpjFoQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_094720_946391_3AB1DA07 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgzMOaXpSjmnKgpIDA6MTUgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWls
LmNvbT46Cj4KPiA+ICsvKioKPiA+ICsgKiBudm1lX3RoZXJtYWxfem9uZXNfcmVnaXN0ZXIoKSAt
IHJlZ2lzdGVyIG52bWUgdGhlcm1hbCB6b25lIGRldmljZXMKPiA+ICsgKiBAY3RybDogY29udHJv
bGxlciBpbnN0YW5jZQo+ID4gKyAqCj4gPiArICogVGhpcyBmdW5jdGlvbiBjcmVhdGVzIHVwIHRv
IG5pbmUgdGhlcm1hbCB6b25lIGRldmljZXMgZm9yIGFsbCBpbXBsZW1lbnRlZAo+ID4gKyAqIHRl
bXBlcmF0dXJlIHNlbnNvcnMgaW5jbHVkaW5nIHRoZSBjb21wb3NpdGUgdGVtcGVyYXR1cmUuCj4g
PiArICogRWFjaCB0aGVybWFsIHpvbmUgZGV2aWNlIHByb3ZpZGVzIGEgc2luZ2xlIHRyaXAgcG9p
bnQgdGVtcGVyYXR1cmUgdGhhdCBpcwo+ID4gKyAqIGFzc29jaWF0ZWQgd2l0aCBhbiBvdmVyIHRl
bXBlcmF0dXJlIHRocmVzaG9sZC4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgaW50IG52bWVfdGhlcm1h
bF96b25lc19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gK3sKPiA+ICsgICAg
IHN0cnVjdCBudm1lX3NtYXJ0X2xvZyAqbG9nOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsgICAg
IGludCBpOwo+ID4gKwo+ID4gKyAgICAgbG9nID0ga3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9L
RVJORUwpOwo+ID4gKyAgICAgaWYgKCFsb2cpCj4gPiArICAgICAgICAgICAgIHJldHVybiAwOyAv
KiBub24tZmF0YWwgZXJyb3IgKi8KPgo+IERvIHdlIG5lZWQgdG8gcHJpbnQgc29tZXRoaW5nIGxp
a2Ugd2FybmluZyBoZXJlPyBJZiBremFsbG9jKCkgZmFpbHMsIGl0Cj4gd291bGQgYmUgZ29vZCB0
byBiZSBkaXN0aW5ndWlzaGVkIGJldHdlZW4gdGhlIG52bWUgZmFpbHVyZSBhbmQgaW50ZXJuYWwK
PiBmYWlsdXJlIGxpa2UgdGhpcy4KCldlIHVzdWFsbHkgcmVtb3ZlIHRoZSBlcnJvciBtZXNzYWdl
IG9uIGttYWxsb2MgZmFpbHVyZSBiZWNhdXNlIGl0J3MKcmVkdW5kYW50IGFzIGxvbmcgYXMgd2Ug
ZG9uJ3Qgc2V0IF9fR0ZQX05PV0FSTi4KCj4gPiArCj4gPiArICAgICByZXQgPSBudm1lX2dldF9s
b2coY3RybCwgTlZNRV9OU0lEX0FMTCwgTlZNRV9MT0dfU01BUlQsIDAsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgbG9nLCBzaXplb2YoKmxvZyksIDApOwo+ID4gKyAgICAgaWYgKHJldCkg
ewo+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKGN0cmwtPmRldmljZSwgIkZhaWxlZCB0byBnZXQg
U01BUlQgbG9nOiAlZFxuIiwgcmV0KTsKPiA+ICsgICAgICAgICAgICAgLyogSWYgdGhlIGRldmlj
ZSBwcm92aWRlZCBhIHJlc3BvbnNlLCB0aGVuIGl0J3Mgbm9uLWZhdGFsICovCj4gPiArICAgICAg
ICAgICAgIGlmIChyZXQgPiAwKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldCA9IDA7Cj4K
PiBJdCBzZWVtcyBsaWtlIHRoYXQgbnZtZV9pbml0X2lkZW50aWZ5KCkgaXMganVzdCBjaGVjayB0
aGUgaW50ZXJuYWwgZXJyb3IKPiB3aGljaCBpcyBpbiBuZWdhdGl2ZSB2YWx1ZSBub3cgYXMgeW91
IGhhdmUgcG9zdGVkLiAgV2h5IGRvbid0IHdlIGp1c3QKPiByZXR1cm4gdGhlIHZhbHVlIG9mICJy
ZXQiIGl0c2VsZiB3aXRob3V0IHVwZGF0aW5nIGl0IHRvIDAgPwoKQm90aCB3YXlzIHdvcmsgZm9y
IG1lLgoKSSBwZXJzb25hbGx5IHByZWZlciBub3QgdG8gcmV0dXJuIChsZWFrKSB0aGUgbnZtZSBz
dGF0dXMgY29kZSBmcm9tCmZvb19yZWdpc3RlcigpIGZ1bmN0aW9uLgoKPiA+ICsgICAgICAgICAg
ICAgZ290byBmcmVlX2xvZzsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIGZvciAoaSA9IDA7
IGkgPCBBUlJBWV9TSVpFKGN0cmwtPnR6ZGV2KTsgaSsrKSB7Cj4gPiArICAgICAgICAgICAgIHN0
cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldjsKPiA+ICsgICAgICAgICAgICAgaW50IHRl
bXA7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmIChpKQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIHRlbXAgPSBsZTE2X3RvX2NwdShsb2ctPnRlbXBfc2Vuc29yW2kgLSAxXSk7Cj4gPiArICAg
ICAgICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgICAgICAgICB0ZW1wID0gZ2V0X3VuYWxp
Z25lZF9sZTE2KGxvZy0+dGVtcGVyYXR1cmUpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAvKgo+
ID4gKyAgICAgICAgICAgICAgKiBBbGwgaW1wbGVtZW50ZWQgdGVtcGVyYXR1cmUgc2Vuc29ycyBy
ZXBvcnQgYSBub24temVybyB2YWx1ZQo+ID4gKyAgICAgICAgICAgICAgKiBpbiB0ZW1wZXJhdHVy
ZSBzZW5zb3IgZmllbGRzIGluIHRoZSBzbWFydCBsb2cgcGFnZS4KPiA+ICsgICAgICAgICAgICAg
ICovCj4gPiArICAgICAgICAgICAgIGlmICghdGVtcCkKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+ICsgICAgICAgICAgICAgaWYgKGN0cmwtPnR6ZGV2W2ldKQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICB0emRl
diA9IG52bWVfdGhlcm1hbF96b25lX3JlZ2lzdGVyKGN0cmwsIGkpOwo+ID4gKyAgICAgICAgICAg
ICBpZiAoIUlTX0VSUih0emRldikpCj4gPiArICAgICAgICAgICAgICAgICAgICAgY3RybC0+dHpk
ZXZbaV0gPSB0emRldjsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICtmcmVlX2xvZzoKPiA+ICsgICAg
IGtmcmVlKGxvZyk7Cj4gPiArCj4gPiArICAgICByZXR1cm4gcmV0Owo+ID4gK30KPiA+ICsKPiA+
ICsvKioKPiA+ICsgKiBudm1lX3RoZXJtYWxfem9uZXNfdW5yZWdpc3RlcigpIC0gdW5yZWdpc3Rl
ciBudm1lIHRoZXJtYWwgem9uZSBkZXZpY2VzCj4gPiArICogQGN0cmw6IGNvbnRyb2xsZXIgaW5z
dGFuY2UKPiA+ICsgKgo+ID4gKyAqIFRoaXMgZnVuY3Rpb24gcmVtb3ZlcyB0aGUgcmVnaXN0ZXJl
ZCB0aGVybWFsIHpvbmUgZGV2aWNlcyBhbmQgc3ltbGlua3MuCj4gPiArICovCj4gPiArc3RhdGlj
IHZvaWQgbnZtZV90aGVybWFsX3pvbmVzX3VucmVnaXN0ZXIoc3RydWN0IG52bWVfY3RybCAqY3Ry
bCkKPiA+ICt7Cj4gPiArICAgICBpbnQgaTsKPiA+ICsKPiA+ICsgICAgIGZvciAoaSA9IDA7IGkg
PCBBUlJBWV9TSVpFKGN0cmwtPnR6ZGV2KTsgaSsrKSB7Cj4gPiArICAgICAgICAgICAgIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldiA9IGN0cmwtPnR6ZGV2W2ldOwo+ID4gKyAgICAg
ICAgICAgICBjaGFyIG5hbWVbMjBdOwo+Cj4gU2ltcGxlIHF1ZXJ5IGhlcmUgOikKPgo+IElmIHdl
IGFyZSBub3QgZ29pbmcgdG8gYWxsb3cgdGhlIG5hbWUgb2YgbGluayBleGNlZWQgdGhlIGxlbmd0
aCBvZiBpdHMKPiBvd24gZGV2aWNlIG5hbWUgbGlrZSBudm1lWF90ZW1wWSwgdGhlbiBjYW4gd2Ug
VEhFUk1BTF9OQU1FX0xFTkdUSCBtYWNybwo+IGhlcmU/ICBJZiB0aGUgbmFtZSBvZiBsaW5rIGlz
IG5vdCBleGFjdGx5IGFib3V0IHRoZSBkZXZpY2UgbmFtZSBpdHNlbGYsCj4gdGhlbiBpdCdzIGZp
bmUuICBXaGF0IGRvIHlvdSB0aGluayBhYm91dCBpdCA/CgpPZiBjb3Vyc2Ugd2UgY2FuIHVzZSBU
SEVSTUFMX05BTUVfTEVOR1RIIGhlcmUuICBCdXQgdGhpcyBjaGFyIGFycmF5IGlzCnVzZWQgb25s
eSBmb3IgdGhlIHN5bWJvbGljIGxpbmsgbmFtZS4KSXQncyBub3QgdXNlZCBmb3IgdGhlcm1hbCBj
b29saW5nIGRldmljZSB0eXBlLCB0aGVybWFsIHpvbmUgZGV2aWNlIHR5cGUsCm9yIHRoZXJtYWwg
Z292ZXJub3IgbmFtZS4gIFNvIEkganVzdCB1c2VkIGEgcmFuZG9tIGNvbnN0YW50IHRvIGF2b2lk
CmNvbmZ1c2lvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
