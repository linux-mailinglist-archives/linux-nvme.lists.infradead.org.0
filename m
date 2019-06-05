Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71BD36078
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 17:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fchF5HmfdbuHvjedB8xTxa1+lsD7Kmgb1vM6Fgmps8I=; b=Puhlu0bRvRf9gd
	mFU6+u+QoWqe8zyPfG2/fcsrlXC4ATFIalA4/ZOPDspvkroHSqlO8kjNRs0OIfd3pNrRYnqUxANLE
	hdpA0ci46iQoaMKmWicfcIOEI9hnljrAyxODvp3PiRyS29WvxJn1VASC0mxY+G7nmwd7yANvXHVuQ
	f4/4GOJdztrwe+fGNVeHaO9mvuckCEBx8pTNZqMByF+NlEUxkw876Ulcjpxr61jBrVRss7cXZkCrl
	5fJ1C34wu7MLV6OpMQmw/W0nz0HiW+xZQjxY2Ln0ChbU3GmA6FybqBNDSFxKyxIlrIXG+vWaBeRG6
	S5h4q1tfpqUf+Yno9Cug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYY3w-0008Ce-14; Wed, 05 Jun 2019 15:42:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYY3q-000824-6B
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 15:42:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so9825528plm.6
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 08:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HT8rs4hwGaWG5IuOFVaFlA5Z0E57AgaycUBt63djjCg=;
 b=cn+itN2+p3FswXzcc3Qp9etSRe9Gj6W2oMDHJWFFreOh7hx99jpUUvWPutyY/jSRwM
 eYJeHAr0OCROyY6Lq2xCDXICTig8fvcFF3hqQMFCa/Sb4TF5wAVJ1X/KyyPcpGB6n/u3
 iJpiE1T9ipHjDioMANp3sTQQ6sISYLywriftPJMUF5aO6A4Gc8cOM3+w2W4A+SHN7qF1
 mb8JS296BYik/VN0roz3o+OmqR+ioeZ8kKAkj4YxtaRAVOEK2xk4PV09NFaKKfhoh6dC
 ESYeJlKc7ks/VF0Werc2K+JIyQKSO0cZPO+KeWfEAOSpOp/J9IbPADhhh+b1MNJCSLik
 qC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HT8rs4hwGaWG5IuOFVaFlA5Z0E57AgaycUBt63djjCg=;
 b=Q1qVwawKWx1FgCLxmuHJkty+QJKiC4TCSj+ZnT88EXZ1vMzQ1mcPPZiyecN3oFVVun
 xEEpgcnECH/ejuALoFukVL+2FWr4QIojq+Q2eKo7da5lOGdkCKKKBvf77NRsVrytt6/0
 wF9Dek5tsRDKBRmfYj50wog1zPqPImpGAYfu8QOR82TXdFjcu8+AaljLp8UWgBuoBj4E
 tNQvU4Acu2YCnx2UG0Iw255UFSKfdRHgi1mWebN4E8phbTRos8jGV6LpYMfyzfjq/O17
 6Isl0JtPEsrZqkivbtwbSUH42yWtlpHX7Pm9tUrNxL26uNkh572vUgjX1ncSJxoF9aLH
 rErQ==
X-Gm-Message-State: APjAAAUyh5N0RN4Jl45wjclzQ5zihqTZj4UvC3P2oR19R/1iSJMpY4G8
 YHCMiSc97TY0rASkwEC+yxaxAQt+LmwVMlG5O6w=
X-Google-Smtp-Source: APXvYqw5p6OZod0skAJniUBSTG08MFQgBJ0KoMKwplhFuH2z6vn85MjmNkcGf40iAL1LVV4c2EIWlJLW13wu1g4VqLA=
X-Received: by 2002:a17:902:24c7:: with SMTP id
 l7mr45027535plg.192.1559749365079; 
 Wed, 05 Jun 2019 08:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190601090238.GD6453@lst.de>
 <CAC5umyiBmD6-3BNLfG7sNOe9jde8Ct16a9N_Ao3T_1_G1K_DDA@mail.gmail.com>
 <20190604073140.GH15680@lst.de>
In-Reply-To: <20190604073140.GH15680@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 6 Jun 2019 00:42:33 +0900
Message-ID: <CAC5umyiN9TTi5rrYjsk-Gh-6aYLJRYjemm-U5F_BpF_+XMaJ_g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_084246_228143_074AD020 
X-CRM114-Status: GOOD (  16.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

MjAxOeW5tDbmnIg05pelKOeBqykgMTY6MzIgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ogo+Cj4gT24gU3VuLCBKdW4gMDIsIDIwMTkgYXQgMTA6MTk6MDhQTSArMDkwMCwgQWtpbm9idSBN
aXRhIHdyb3RlOgo+ID4gQXMgbG9uZyBhcyB0aGUgdXNlciBzcGFjZSB0aGVybWFsIGdvdmVybm9y
IGlzIHVzZWQsIHRoZXJlIGlzIG5vdGhpbmcgbW9yZQo+ID4gdGhhbiB0aGF0IGZyb20gYSBmdW5j
dGlvbmFsIHBlcnNwZWN0aXZlLiAgQW5kIEkgc3VwcG9zZSB0aGF0IHRoaXMgaXMgdXNlZAo+ID4g
d2l0aCB1c2VyX3NwYWNlIGdvdmVybm9yIChpLmUuIHRoZXJlIGlzIHN0aWxsIHNvbWUgd29yayB0
byBiZSBhYmxlIHRvIGJpbmQKPiA+IGFjdHVhbCB0aGVybWFsIGNvb2xpbmcgZGV2aWNlKS4KPiA+
Cj4gPiBUaGUgbWFpbiBwdXJwb3NlIG9mIHRoaXMgaXMgdG8gdHVybiBvbiBhIGZhbiB3aGVuIG92
ZXJoZWF0ZWQgd2l0aG91dAo+ID4gcG9sbGluZyB0aGUgZGV2aWNlIHRoYXQgY291bGQgcHJldmVu
dCB0aGUgbG93ZXIgcG93ZXIgc3RhdGUgdHJhbnNpdGlvbnMuCj4gPiBCdXQgYXMgeW91IG5vdGVk
LCB3ZSBjb3VsZCBkbyB0aGF0IHdpdGggdGhlIGV4aXN0aW5nIEFFTiBub3RpZmljYXRpb25zCj4g
PiB0aHJvdWdoIHVldmVudC4KPiA+Cj4gPiBTbyBmcmFua2x5IHNwZWFraW5nLCB0aGUgYmVuZWZp
dCBvZiB0aGlzIGlzIHByb3ZpZGluZyBnZW5lcmljIHRoZXJtYWwgc3lzZnMKPiA+IGludGVyZmFj
ZSBhbmQgdGhlIHRvb2xzIGxpa2UgdG1vbiAobGludXgvdG9vbHMvdGhlcm1hbC90bW9uKSBjYW4g
c2hvdyB0aGUKPiA+IG52bWUgdGVtcGVyYXR1cmVzLgo+Cj4gSSdtIGp1c3QgYSBsaXR0bGUgd29y
cmllZCBhYm91dCBibG9hdGluZyB0aGUgbnZtZSBkcml2ZXIgd2l0aCBmZWF0dXJlcwo+IHRoYXQg
bG9vayBraW5kYSBuaWZ0eSBidXQgZG9uJ3QgYnV5IHVzIG11Y2guICBJJ2QgcmF0aGVyIGtlZXAg
YXQgbGVhc3QKPiB0aGUgY29yZSBhbmQgUENJZSBkcml2ZXJzIGFzIG1pbmltYWwuICBOb3cgdGhl
IHRoZXJtYWwgZGV2aWNlIHN1cHBvcnQKPiBpcyBwcmV0dHkgc21hbGwgYW5kIGV4Y2VwdCBmb3Ig
dGhlIHNtYXJ0IHVldmVudHMgSSBjYW4ndCBmaW5kIGFueXRoaW5nCj4gYWN0dWFsbHkgYmFkLCBi
dXQgSSdtIG5vdCBleGFjdGx5IGV4Y2l0ZWQgZWl0aGVyLgoKSSdsbCBhZGQgdGhlcm1hbC5jIGZp
bGUgaW4gb3JkZXIgdG8gbWluaW1pemUgdGhlIGNvcmUgZHJpdmVyIGNoYW5nZXMgYW5kIGEKbW9k
dWxlIHBhcmFtZXRlciB0byBkaXNhYmxlIHRoZSB0aGVybWFsIHpvbmUgc3VwcG9ydC4KCkRldmlj
ZSB0cmVlIHRoZXJtYWwgem9uZSB3aWxsIGFsc28gYmUgc3VwcG9ydGVkLiBJdCBlbmFibGVzIHRv
IHVzZSB0aGVybWFsCmdvdmVybm9yIG90aGVyIHRoYW4gdXNlcl9zcGFjZSBnb3Zlcm5vci4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
