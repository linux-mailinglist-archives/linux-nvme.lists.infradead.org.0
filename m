Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70824109034
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 15:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXSt6b0s4ibFTCbAP+NJhzQBDz/r3/DO4Jgr0UGI3bM=; b=pqB0H3Rau6gzCo
	uM00wp4KCDcj+LCv0ThPHiy3Ckmj6umc1qsLUYJoo+m2CmiCRzo8qCjEDQqSsyD/M0WGr4bU7rduL
	4fY999yrTzZRqoDLtcvxKNpxKfCmWSODqbqf7znjY41PLUH6Oc6gWAQ7IQhI1Wmx87gXBiWT1IYBf
	2BxxcUSpuTZLE3onqr1V35kPjHkiIKO8RSjk0Pd7O/JBBshEIH/2KXdJNtfcKx5BYYA5Ab3fQ0wT2
	ig3r3uhRuRidBDTJAQFlw4dvyEpTIWzzVNIfuAFcFr5rZ94EOlYyeYHh3jUplxgr1XU3j4l4PaV2I
	kMmb1zDnbNzOTciHvf7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFXA-0004x7-It; Mon, 25 Nov 2019 14:40:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFX1-0004EI-IY
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 14:40:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id n5so16132885ljc.9
 for <linux-nvme@lists.infradead.org>; Mon, 25 Nov 2019 06:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/SvzLSQc9NaZmiRAfhKzbEgi5swALfQM0gwLxj/g1X4=;
 b=BwfnTrBZIsf+YbKNO1Y09SKRcT/7JpfVe5u9XdIKMFF3vFkXXD09OebLH+/j2ARwh9
 1UBsASBFYnpZ7Ar6c/L8nHzM0Xfqfs422qdX0ctAKCgI6tI/rKPsjOKVatdVdp8kqJP0
 K3cRMjzd/SmBmsAq/X8a8B/4z7CUO2aS6k+gls6PZjaQOfdq4KqNXHSE3FkX38mEg01z
 xprQHlhqwXFTWSyAKCm1HSJpb3EthA5hG11JB+PnE5YIRJvNkr163ZR++uBnx499Zz+X
 lIMoKPo3k+/c+gF2+Elw+iJ7EBFbVxZkYH1Ca8nAVKdb35aAptffJ4OLimFdUFjeWn41
 A8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/SvzLSQc9NaZmiRAfhKzbEgi5swALfQM0gwLxj/g1X4=;
 b=qTAM2fA3/Y3N+4yUcLPNjXGYuL/ZkzmvEpa4ctxO6Oyp0rgkDBjDs5eWQNfOADWqOY
 g5aKjl3C6t6Ki1GpXyclcLOjCRF4vG1WcbfKlm7xZJmK3fOB2M/RQ8pMFB7SJAUZ3UMi
 LakWsk1PN1uP0ToaFaefn1FAoOTuLi6YyLx5mukmGJ8/6iMpO3fBpwKCYQYF2NebKQYH
 iwLtwoSXyQ3W17l16UTdLEQsDHlIvZQeP4DqhV2GiOahwFPWDod4IITtchGocgQv7WAD
 3SKg0O6tLHWbQ5LLKkNtom5NdNOIgkUev/RMpXvLGIV//A1M3nMv6l4lwFJ68IV2/rmi
 H25Q==
X-Gm-Message-State: APjAAAUp4apnGKbud8nJvmrEtmzvVFTIB0hFqk9ZcPAogT6ckXpvRVC4
 gDSmLYY4qAOwkNIgtcl2ityyadtdjB+92BeW0AU=
X-Google-Smtp-Source: APXvYqxnV6QXzPFLNYYbJkreFA5LHHLQRoa+mUvd3RVfemUmE7NzO9TeNGK9jW4ohjEjbkzC5MK9lxV+ELGJbAuF4NI=
X-Received: by 2002:a2e:9842:: with SMTP id e2mr22522578ljj.93.1574692801789; 
 Mon, 25 Nov 2019 06:40:01 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-9-git-send-email-akinobu.mita@gmail.com>
 <CAHp75Vc6e8xq==QGtEX0MGLoV8QCGQf+vP0x-SauNHyjveZrnQ@mail.gmail.com>
In-Reply-To: <CAHp75Vc6e8xq==QGtEX0MGLoV8QCGQf+vP0x-SauNHyjveZrnQ@mail.gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Mon, 25 Nov 2019 23:39:50 +0900
Message-ID: <CAC5umyiMoByGhd6b2xWA4SLO1Lcn2+ag-yEgw6uirsCmj37mkQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] thermal: remove kelvin to/from Celsius conversion
 helpers from <linux/thermal.h>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_064003_620345_8CA982F9 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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

MjAxOeW5tDEx5pyIMjXml6Uo5pyIKSA1OjAwIEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hl
bmtvQGdtYWlsLmNvbT46Cj4KPiBPbiBTdW4sIE5vdiAyNCwgMjAxOSBhdCA0OjA5IFBNIEFraW5v
YnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhpcyByZW1v
dmVzIHRoZSBrZWx2aW4gdG8vZnJvbSBDZWxzaXVzIGNvbnZlcnNpb24gaGVscGVycyBpbgo+ID4g
PGxpbnV4L3RoZXJtYWwuaD4gd2hpY2ggd2VyZSBzd2l0Y2hlZCB0byA8bGludXgvdGVtcGVyYXR1
cmUuaD4gaGVscGVycy4KPiA+Cj4KPiA+IERFQ0lfS0VMVklOX1RPX01JTExJQ0VMU0lVU19XSVRI
X09GRlNFVCgpIGlzIG9ubHkgdXNlZCBieSBBQ1BJIHRoZXJtYWwKPiA+IHpvbmUgZHJpdmVyIGFu
ZCB0aGUgdXNhZ2UgaXMgc3BlY2lmaWMgdG8gdGhlIGRyaXZlci4gIFNvIHRoaXMgbWFjcm8KPiA+
IGlzIG1vdmVkIHRvIHRoZSBBQ1BJIHRoZXJtYWwgZHJpdmVyIHJhdGhlciB0aGFuIGdlbmVyaWMg
aGVhZGVyLgo+Cj4gSSBkaWRuJ3QgZ2V0IHRoaXMgcG9pbnQuIElmIHdlIHNwbGl0IGFsbCBoZWxw
ZXJzLCBsZXQncyBkbyBpdCBmb3IgYWxsLAo+IGFuZCBub3Qgc3ByZWFkaW5nIG1hY3JvIHBlciBk
cml2ZXIuCgpPSywgSSdsbCBhZGQgZGVjaV9rZWx2aW5fdG9fbWlsbGljZWxzaXVzX3dpdGhfb2Zm
c2V0KCkgaW4gdGhlIGhlYWRlci4KQnV0IHRoZSB1bml0IG9mICdvZmZzZXQnIGFyZ3VtZW50IHdp
bGwgYmUgaW4gbWlsbGlkZWdyZWUgaW5zdGVhZCBvZgpkZWNpZGVncmVlLCBiZWNhdXNlIGl0J3Mg
YSBiaXQgbW9yZSBnZW5lcmljLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
