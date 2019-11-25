Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E751093FB
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 20:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fkXaKepXYZh+4RbkUszz26RCEQDyhAprQ3mmyvKSpk=; b=ad1zgVny5XgqdZ
	YuHc3f0tpKXsaCfIlnD34ve7x0XZNP7ZZ1QEGFFKs25km+/qQofWx4wLOd2IKFx1FlswRA17xA5mK
	0R+NSgpLQTcipwKuAhjASOBlqYHUG3CLY6ZJCBD54ZNPyeV1SFUayVgxcBgGCI8YZ4+UIiKdF8Upi
	zZC9dqdno1iT+5Xmjd59eQuLtRZ4akjS0f8+cCRjkfyXiVSAxZ8AfGtbyYg5Fvw07j/NuBFQDwqkE
	ujix3ZRcgLeUE5ZQ3LfHB66NJZx9N580agqPSFXsoXEb6oad5Tbhdc3ffXXIGxDvLY04g7MqyM/1+
	qiLHe6pidHNKNUBGU2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJjT-0005OC-DY; Mon, 25 Nov 2019 19:09:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJjM-0005Na-V7
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 19:09:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id o9so6907010plk.6
 for <linux-nvme@lists.infradead.org>; Mon, 25 Nov 2019 11:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ikkTiJJF7DyuxBpIsOZUMlx8g8P8FFkwaJYiKXyPGkU=;
 b=Azlhce4pb1chMrQml/2O9Hb/ydwympIFo5rZug/EIB/hxnr1PPvdNLzsmrDScjvKhk
 Nq5NK059+n067h+MGhaJDlz8p/6G8KcOpQCWKVl8rM1ULKyRDZ+/7X6+1Njl5JGrMR5g
 9aKbWnuq9ZhQ1pRjzle4xjHqGwc47CvQU7taxtqLW40ujpmkK72XoxFyTDj6Lp1rIzn0
 eARRfPJpuDs0LMsgj2zWNpWcaJXPZwxU62b3cPXAE8B223lCG369o/ShkjmUNV9nR9T1
 ZTp9nzIKk1pP2xDyUfqMdStGB7tv+6mdkZFRX+s25PNiHI9fR/UPKL55ogXh1VCU44Wx
 dKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ikkTiJJF7DyuxBpIsOZUMlx8g8P8FFkwaJYiKXyPGkU=;
 b=lmGS76yIXkFDKWsBzorxKvNzjQglJ/LEuHw9EKYpr+OM0ai+aZ8bM4e7o6UD5Hrb7F
 c3nrs4svPSaLgSc4DgSUDuH4keKtCUW/pwNNfO/kLhFjh0waLN0mix3hDfPzGpxRM2cZ
 2i+lvbpH+pE0ZdQ/59TDoMsTZ5IZ+vg/4kDpXeZjRAetQt5n6e+XbQYEwU2DdheZhTH2
 8AeOpX0ZBnGU7jnQzfZ+S7cQg06wr5XY9YrCje7h7a6YYQaB7FQU1W8Atj5avSr5y6hC
 vho9RfaI7weRdnEiHncqrj1xCHpd9IAnMAbwYgLvi7b+96/chyZo3m7+Nn/ITTGjj78T
 r5bg==
X-Gm-Message-State: APjAAAW7LUZLAUoX6c/zJFVYGo///M3GsY1vSAAon1QBVKPXdtGPZeI4
 3xXUbOrlFPnikXi3a6N+Ts+DIpVZMHuSFIH7mdk=
X-Google-Smtp-Source: APXvYqxdIMRqrIG6lbt22pFjiANsAscQpsPrJ9lvBLoBB04bsEreQiS1atTxsz6l1qN/h2K5PDmCfPmB5QPkSgEpBWw=
X-Received: by 2002:a17:90a:1b0e:: with SMTP id
 q14mr631126pjq.132.1574708944081; 
 Mon, 25 Nov 2019 11:09:04 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-9-git-send-email-akinobu.mita@gmail.com>
 <CAHp75Vc6e8xq==QGtEX0MGLoV8QCGQf+vP0x-SauNHyjveZrnQ@mail.gmail.com>
 <CAC5umyiMoByGhd6b2xWA4SLO1Lcn2+ag-yEgw6uirsCmj37mkQ@mail.gmail.com>
In-Reply-To: <CAC5umyiMoByGhd6b2xWA4SLO1Lcn2+ag-yEgw6uirsCmj37mkQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 25 Nov 2019 21:08:54 +0200
Message-ID: <CAHp75VfJ_+aTYWM6JXtENAD1=DbZwTaVELjDwP=aXnxtR_bHPQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] thermal: remove kelvin to/from Celsius conversion
 helpers from <linux/thermal.h>
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_110905_000157_AABB3A40 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgNDo0MCBQTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0
YUBnbWFpbC5jb20+IHdyb3RlOgo+IDIwMTnlubQxMeaciDI15pelKOaciCkgNTowMCBBbmR5IFNo
ZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+Ogo+ID4gT24gU3VuLCBOb3YgMjQs
IDIwMTkgYXQgNDowOSBQTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+IHdy
b3RlOgoKPiA+ID4gREVDSV9LRUxWSU5fVE9fTUlMTElDRUxTSVVTX1dJVEhfT0ZGU0VUKCkgaXMg
b25seSB1c2VkIGJ5IEFDUEkgdGhlcm1hbAo+ID4gPiB6b25lIGRyaXZlciBhbmQgdGhlIHVzYWdl
IGlzIHNwZWNpZmljIHRvIHRoZSBkcml2ZXIuICBTbyB0aGlzIG1hY3JvCj4gPiA+IGlzIG1vdmVk
IHRvIHRoZSBBQ1BJIHRoZXJtYWwgZHJpdmVyIHJhdGhlciB0aGFuIGdlbmVyaWMgaGVhZGVyLgo+
ID4KPiA+IEkgZGlkbid0IGdldCB0aGlzIHBvaW50LiBJZiB3ZSBzcGxpdCBhbGwgaGVscGVycywg
bGV0J3MgZG8gaXQgZm9yIGFsbCwKPiA+IGFuZCBub3Qgc3ByZWFkaW5nIG1hY3JvIHBlciBkcml2
ZXIuCj4KPiBPSywgSSdsbCBhZGQgZGVjaV9rZWx2aW5fdG9fbWlsbGljZWxzaXVzX3dpdGhfb2Zm
c2V0KCkgaW4gdGhlIGhlYWRlci4KClRoYW5rIHlvdS4KCj4gQnV0IHRoZSB1bml0IG9mICdvZmZz
ZXQnIGFyZ3VtZW50IHdpbGwgYmUgaW4gbWlsbGlkZWdyZWUgaW5zdGVhZCBvZgo+IGRlY2lkZWdy
ZWUsIGJlY2F1c2UgaXQncyBhIGJpdCBtb3JlIGdlbmVyaWMuCgpJdCdzIGZpbmUgYXMgbG9uZyBh
cyB0aGUgaGVscGVycyBhcmUgY29uc29saWRhdGVkIGFuZCBjb25zaXN0ZW50LgoKLS0gCldpdGgg
QmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK
