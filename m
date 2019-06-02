Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68C3235D
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5XGwXtIF4FvY5YNX7A+rTP0EgMsF6LnNvoYmxv929Y=; b=RNypFZ2c4w7gc3
	oOPoBsceNcnNrrNIu1TRyApkgT24hL0Mk8E1Bq7du23rdkT1pZdFgRC4QxMLMz/026y+3/zPbhrgY
	7QSLXfvcArTRkWgvNXhC4xPpMw8xX4QtfZ7i/WhczLLAZ5o1dm4a67UEO21rJba1RHTXM1bZJ7lR3
	OpHeqv7gEJJgEcxz4qpIj69Ulu2NbssE9EUoIeADnaYbuB9cNlvtzN6qfVzPC2j+VSiia0g2P6Oxy
	oMSsSdOzF19WsBi9WEYe6XeP8bxfElvuQP+ABYlVZ2wLjWWXIfVxXKvkI/aztjcQlVpfFySCQ8KWU
	s3VI7wCbgkFkUyh7rDyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQOV-00029Z-Af; Sun, 02 Jun 2019 13:19:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQOP-000290-OV
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:19:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id u22so9000860pfm.3
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0NcDVhmyLxXPhirMBnL/FRprQusnUULjnBfsPdj8Hiw=;
 b=aKQ8JMV8ILuLR2NdUrv0x+VoeRWJ/8Y5T0VrTNkEuDxfeVeFSsEAjyMSRYzdnTKUFB
 2PP901PNB4/g9Tbd5Fc86ksUbXinc/lMNrLpnih3WVgyqo9wLDKdxSkb/evZTnFuu9JM
 8+O8u4PKNsj7nuijDf4N8F48BGpOz5UWymihYMft7VQMlfZs0V9GNnlqOP7lS/V6mO6E
 gTxomGZXMbifSyejUINwi/LzOyg+jVVNWYDVA3bbL4K6iZzJZQdVgZlkQuE6EEANXhhw
 g+0t3tjp1X2M8CI/K4VVS1ez0Sijq1L3TjtMQTEEJML07o2bahZXeeJ559VvYYzlkVb/
 g3og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0NcDVhmyLxXPhirMBnL/FRprQusnUULjnBfsPdj8Hiw=;
 b=ek9Ex9gERc20GN+FAHWcZoUTSLlQm3KFXJc1rJzGzKBXwAsSANdVVabPwyWAtB5PPu
 P3t+kmiJG3oWKUeeaLoyLTjCWc8Z2J2f6mTRe0XTj3SOi/OOl8mHTB8uC96Irfr6fbBT
 DV/DMhBwqnPSVPb1Y0uIC5oCfq26gnSDMOUt1+i3JbeZVv93kUQG52f9RiREPJc8s4/q
 EE+WwAorlXdGW4NSzkFJMwRbhpHyZbqq2r4Wsss8+p8Ej5ywxORt0xTzQW4fBQKLQ2Ic
 Qr6MhcJ0OB+OEyb1n9vRHexEisfwYDyjmXebLtylRfLMPtyIwy/MNBSHrhIvNVmFYS8z
 C64A==
X-Gm-Message-State: APjAAAWNbMERc8Yw//R/jOye2TGnKVoZdlQlhdzEndMG0F0ZrWQkSP2W
 hevyPY+jFUT2G5ClR3ILD/tKhmxtjQsIcLkARYE=
X-Google-Smtp-Source: APXvYqxQZklDdC7pDexcyGQHSlARf1CB5VfxXCV0PWJLeh+lLdSFyLR7tEaN5o6oGkCQsUq9DAdl4fyB9wm2ud571Go=
X-Received: by 2002:a63:110c:: with SMTP id g12mr21293135pgl.18.1559481559894; 
 Sun, 02 Jun 2019 06:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190601090238.GD6453@lst.de>
In-Reply-To: <20190601090238.GD6453@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sun, 2 Jun 2019 22:19:08 +0900
Message-ID: <CAC5umyiBmD6-3BNLfG7sNOe9jde8Ct16a9N_Ao3T_1_G1K_DDA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_061921_809485_C5E4A2BF 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIgx5pelKOWcnykgMTg6MDMgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ogo+Cj4gT24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMDE6Mjk6MDJBTSArMDkwMCwgQWtpbm9idSBN
aXRhIHdyb3RlOgo+ID4gVGhlIE5WTWUgY29udHJvbGxlciByZXBvcnRzIHVwIHRvIG5pbmUgdGVt
cGVyYXR1cmUgdmFsdWVzIGluIHRoZSBTTUFSVCAvCj4gPiBIZWFsdGggbG9nIHBhZ2UgKHRoZSBj
b21wb3NpdGUgdGVtcGVyYXR1cmUgYW5kIHRlbXBlcmF0dXJlIHNlbnNvciAxIHRocm91Z2gKPiA+
IHRlbXBlcmF0dXJlIHNlbnNvciA4KS4KPiA+Cj4gPiBUaGlzIHByb3ZpZGVzIHRoZXNlIHRlbXBl
cmF0dXJlcyB2aWEgdGhlcm1hbCB6b25lIGRldmljZXMuCj4KPiBDYW4geW91IGV4cGxhaW4gYSBi
aXQgbW9yZSB3aHkgd2UnZCBkbyB0aGlzPyAgSSBzaG93cyB1cCBzb21lIHN5c2ZzCj4gZmlsZXMs
IGJ1dCB3ZSBjb3VsZCBlYXNpbHkgZG8gdGhhdCB3aXRoIG52bWUtY2xpLCB0b28uICBJcyB0aGVy
ZSBzb21lCj4gZ3JlYXRlciBiZW5lZml0IG9mIHRoaXMgaW50ZWdyYXRpb24/CgpBcyBsb25nIGFz
IHRoZSB1c2VyIHNwYWNlIHRoZXJtYWwgZ292ZXJub3IgaXMgdXNlZCwgdGhlcmUgaXMgbm90aGlu
ZyBtb3JlCnRoYW4gdGhhdCBmcm9tIGEgZnVuY3Rpb25hbCBwZXJzcGVjdGl2ZS4gIEFuZCBJIHN1
cHBvc2UgdGhhdCB0aGlzIGlzIHVzZWQKd2l0aCB1c2VyX3NwYWNlIGdvdmVybm9yIChpLmUuIHRo
ZXJlIGlzIHN0aWxsIHNvbWUgd29yayB0byBiZSBhYmxlIHRvIGJpbmQKYWN0dWFsIHRoZXJtYWwg
Y29vbGluZyBkZXZpY2UpLgoKVGhlIG1haW4gcHVycG9zZSBvZiB0aGlzIGlzIHRvIHR1cm4gb24g
YSBmYW4gd2hlbiBvdmVyaGVhdGVkIHdpdGhvdXQKcG9sbGluZyB0aGUgZGV2aWNlIHRoYXQgY291
bGQgcHJldmVudCB0aGUgbG93ZXIgcG93ZXIgc3RhdGUgdHJhbnNpdGlvbnMuCkJ1dCBhcyB5b3Ug
bm90ZWQsIHdlIGNvdWxkIGRvIHRoYXQgd2l0aCB0aGUgZXhpc3RpbmcgQUVOIG5vdGlmaWNhdGlv
bnMKdGhyb3VnaCB1ZXZlbnQuCgpTbyBmcmFua2x5IHNwZWFraW5nLCB0aGUgYmVuZWZpdCBvZiB0
aGlzIGlzIHByb3ZpZGluZyBnZW5lcmljIHRoZXJtYWwgc3lzZnMKaW50ZXJmYWNlIGFuZCB0aGUg
dG9vbHMgbGlrZSB0bW9uIChsaW51eC90b29scy90aGVybWFsL3Rtb24pIGNhbiBzaG93IHRoZQpu
dm1lIHRlbXBlcmF0dXJlcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
