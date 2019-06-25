Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6749E552E3
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 17:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0xx8lfY5LOrHn/i4ztXPup0synP1zlt5nSPbYR1O40=; b=ReQLC9D8adlf9+
	YCYca0x3FhVtCfflMG+c9xZWc6w+DxN7fkZB+nKetQNlJm4wdzNRr1qIKS0+eFqKXlqETb6KoXqQ8
	f/TYKOkHV0SchBURxtHSiCirLcnDb9nEktNIyDys5N/9ooUtmn5HVLGPHga2j0c1JLrvOq/rF0KPO
	mdGu7/gCoFysKcImLChbFHbAuHxPkCYJQVrnShBBlFbCvDCqKLrJk/nchAiJIOJfFU7Ehz8KdSDBp
	/nP9ZakqoC7uUCgh9FKNmWyw1XfMvAlNd1S4s5sgmOEvr461K2ZDgMt5fW0WhljfZRhv7UXrrq9F2
	eoQHMhMDXo1fk+iE4gtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfn27-0005RY-CI; Tue, 25 Jun 2019 15:06:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfn1z-0005R7-LY
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 15:06:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so18282091wre.7
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 08:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xByavRLEp3hyk80ImZC5g4m0uX3mEmi564FcqH3YV+4=;
 b=tlWS7Yz/W15rn9kS5pEmeU24xPWl3dLfYtvp0mWhQmAot8015j2JyJ/BEdnE4UNHlv
 dIjyCMwhJ8L3mcIvAHiKRA8PKFd7DqHm4KlizLrT2LQcxldjvoTtJ0LoeYTlNehrD9is
 3YcdhDBFkWdNmtO1hAIcYdnPq4a0M0qpdAubTA6Hv2IExWUMY6lwq52+nq3CsDBvo2tw
 z+AnGfkN22D9VSkDEBEAtP1elKGsS1EL8YSBSrw4wa1cfXJDtdsvNKoa82YrAgyBM6yd
 4GlpdNjhb0atXlInpT7sbEKiSw4ME7wvNL7wncCy87+gTfKAb+1UjkaJIDZjd1Z4xkW5
 UnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xByavRLEp3hyk80ImZC5g4m0uX3mEmi564FcqH3YV+4=;
 b=o4JTzy6xu/XGz0QTadD2lNUK28tjkqdmtDJ9LT4IqQBXHdHm6umFlggEE3aCO/nB2L
 F+JuO3jQRCQUE4ibCJ7CZz7bhFOASq4sQrsUgF9Wm076w/hkTFjIMCcxJP95DJJiu3Z+
 S69JXBGSKmguowE/7VaIejnbrczJ+xKFZP60IWTNKBNBUuEdMoonygA/79J92PZWhqrA
 YHqRmFHA8DNctx0dByz+DeKZ8A3C47WXwygLGfNRb1LYLFUum2n6B3NAJQ1EDXBVmqRw
 lWAm/WVbHuQkPTJf5VdMPn1llmAoe4UQUer51r3BDZfoAgKu1YczoZ/ThLYV+cZa/Byt
 OWHw==
X-Gm-Message-State: APjAAAUbTEsZClJkxwCmCGiP3RzOYNdhWc9PUFHzB6LabV8bM75Nc5De
 v1PKBATo4Mo0ufaSQRMWkBGJTpvZddqiIxx+Qqw=
X-Google-Smtp-Source: APXvYqySP4F5Gxe4WqMw/8I6UbqzE8WfAQHLiEoyP8KIfDZ7Te8L72vf7YDad41QFdhXdBq0u6l1+OAqGSVMoHAdb7I=
X-Received: by 2002:adf:ec4c:: with SMTP id w12mr38109440wrn.160.1561475206440; 
 Tue, 25 Jun 2019 08:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
 <20190624202110.GD6526@minwooim-desktop>
In-Reply-To: <20190624202110.GD6526@minwooim-desktop>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Tue, 25 Jun 2019 23:06:36 +0800
Message-ID: <CAA70yB4Japiic4wAG=5ud8LrS2E-SaKxeV8yqG6j0pMCFTWjNQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_080647_712504_39CE5CB2 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDbmnIgyNeaXpeWR
qOS6jCDkuIrljYg2OjAx5YaZ6YGT77yaCj4KPiA+IEBAIC0yNjI3LDcgKzI3NTIsMzAgQEAgc3Rh
dGljIGludCBudm1lX3BjaV9nZXRfYWRkcmVzcyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCBjaGFy
ICpidWYsIGludCBzaXplKQo+ID4KPiA+ICBzdGF0aWMgdm9pZCBudm1lX3BjaV9nZXRfYW1zKHN0
cnVjdCBudm1lX2N0cmwgKmN0cmwsIHUzMiAqYW1zKQo+ID4gIHsKPiA+IC0gICAgICphbXMgPSBO
Vk1FX0NDX0FNU19SUjsKPiA+ICsgICAgIC8qIGlmIGRlaXZjZSBkb2Vzbid0IHN1cHBvcnQgV1JS
LCBmb3JjZSByZXNldCB3cnIgcXVldWVzIHRvIDAgKi8KPiA+ICsgICAgIGlmICghTlZNRV9DQVBf
QU1TX1dSUlUoY3RybC0+Y2FwKSkgewo+ID4gKyAgICAgICAgICAgICB3cnJfbG93X3F1ZXVlcyA9
IDA7Cj4gPiArICAgICAgICAgICAgIHdycl9tZWRpdW1fcXVldWVzID0gMDsKPiA+ICsgICAgICAg
ICAgICAgd3JyX2hpZ2hfcXVldWVzID0gMDsKPiA+ICsgICAgICAgICAgICAgd3JyX3VyZ2VudF9x
dWV1ZXMgPSAwOwo+Cj4gQ291bGQgd2UgYXZvaWQgdGhpcyBraW5kIG9mIHJlc2V0IHZhcmlhYmxl
cyBpbiBnZXRfWFhYKCkgZnVuY3Rpb24/ICBJCj4gZ3Vlc3MgaXQgd291bGQgYmUgZ3JlYXQgaWYg
aXQganVzdCB0cmllcyB0byBnZXQgc29tZSB2YWx1ZSB3aGljaCBpcwo+IG1haW5seSBmb2N1c2Vk
IHRvIGRvLgoKSSB0aGluayBpdHMgb2ssIHdoZW4gd2UgdXNlIHRoZXNlIHZhcmlhYmxlcyBpbiBu
dm1lX3NldHVwX2lycXMsCndlIGNhbiBjaGVjayBjdHJsLT53cnJfZW5hYmxlZCwgaWYgaXQgd2Fz
IGZhbHNlLCBza2lwIGFsbCB3cnJfeHh4X3F1ZXVlcy4KSW4gb3RoZXIgd29yZHMsIGlmIGN0cmwt
Pndycl9lbmFibGVkIGlzIHRydWUsIGF0IGxlYXN0IHdlIGhhdmUgb25lIHdyciBxdWV1ZS4KCj4K
PiA+ICsKPiA+ICsgICAgICAgICAgICAgKmFtcyA9IE5WTUVfQ0NfQU1TX1JSOwo+ID4gKyAgICAg
ICAgICAgICBjdHJsLT53cnJfZW5hYmxlZCA9IGZhbHNlOwo+ID4gKyAgICAgICAgICAgICByZXR1
cm47Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogaWYgZGV2aWNl
IHN1cHBvcnQgV1JSLCBjaGVjayB3cnIgcXVldWUgY291bnQsIGFsbCB3cnIgcXVldWVzIGFyZQo+
ID4gKyAgICAgICogMCwgZG9uJ3QgZW5hYmxlIGRldmljZSdzIFdSUi4KPiA+ICsgICAgICAqLwo+
ID4gKyAgICAgaWYgKCh3cnJfbG93X3F1ZXVlcyArIHdycl9tZWRpdW1fcXVldWVzICsgd3JyX2hp
Z2hfcXVldWVzICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdycl91cmdlbnRf
cXVldWVzKSA+IDApIHsKPiA+ICsgICAgICAgICAgICAgKmFtcyA9IE5WTUVfQ0NfQU1TX1dSUlU7
Cj4gPiArICAgICAgICAgICAgIGN0cmwtPndycl9lbmFibGVkID0gdHJ1ZTsKPiA+ICsgICAgIH0g
ZWxzZSB7Cj4gPiArICAgICAgICAgICAgICphbXMgPSBOVk1FX0NDX0FNU19SUjsKPiA+ICsgICAg
ICAgICAgICAgY3RybC0+d3JyX2VuYWJsZWQgPSBmYWxzZTsKPgo+IFRoZXNlIHR3byBsaW5lIGNh
biBiZSBtZXJnZWQgaW50byBhYm92ZSBjb25kaXRpb246Ckl0J3Mgb2ssIGFuZCBtZXJnZSBjb21t
ZW50cyBmb3IgTlZNRV9DQ19BTVNfUlIuCj4KPiAgICAgICAgIGlmICghTlZNRV9DQVBfQU1TX1dS
UlUoY3RybC0+Y2FwKSB8fAo+ICAgICAgICAgICAgICAgICB3cnJfbG93X3F1ZXVlcyArIHdycl9t
ZWRpdW1fcXVldWVzICsgd3JyX2hpZ2hfcXVldWVzICsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICB3cnJfdXJnZW50X3F1ZXVlcyA8PSAwKSB7Cj4gICAgICAgICAgICAgICAgICphbXMgPSBOVk1F
X0NDX0FNU19SUjsKPiAgICAgICAgICAgICAgICAgY3RybC0+d3JyX2VuYWJsZWQgPSBmYWxzZTsK
PiAgICAgICAgIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
