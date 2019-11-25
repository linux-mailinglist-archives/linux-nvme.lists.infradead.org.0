Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD191093F5
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 20:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66bta7L1IfAzmKUO39oV7XFLt8QaLHHwKhJmYfn3dN0=; b=MSEnTh+mrxhMq+
	GpbnNjPdVSShrMEY2LMX4QRfMiThIjQCxO83D/bp40BaykqMtwsv11RpBJL4BYUefw+EzzXAk9yRj
	qjo1ArRLTihNi3bD+H8RI5cziXpxDzYyhziVbh1M+jT95DEjDrY71KP7Hm8qt1wAltJAbrkHQ8lpQ
	2IJwAkb083BhhnwYN7iMMgcJQQmHRFahK8f9Bxltf5eC0/s3cPjSLuGE2yJXtfXUEkQbWmFqRs+CC
	Gbzg8uRTHbGw+k+ppmjBpLSbCP9GHEiZDCISJP28TGefViybzThF+I/A/dXhS5broaoHWH9aNJUR5
	CmWrNawdIl9gXShoTT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJi9-00057p-N2; Mon, 25 Nov 2019 19:07:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJi3-00057C-TE
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 19:07:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id b1so7629043pgq.10
 for <linux-nvme@lists.infradead.org>; Mon, 25 Nov 2019 11:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V6RCMCu0u2OME2YGHfLS+ptk7Pmu3SS68O9Jky4kB7Y=;
 b=gNuYAtvklCeB3PPdPcDxP20KNQXOsNyDP66uuHFOCxg8ce7xWrfKR4uD7H/U5tQSa7
 3Vi2vOJqV4PN2Ar2XZxdNxYHoiaSOkTYjh85Ts+vtNQtL2mLU6cJbeKjkbc0a5Zt/Tuf
 OudAAcbtq20THMsD6fNKGGDw7eDdVF1DfNHWFuRLYGIvXrTBs11NDhEDh7r5o+8gzxvI
 KENfZ51WYIN2CsFXPvoW5JhM6vIAY66DR6+s0wTUQq+9u2nkh9JFx09rmn9jrtPhWz4p
 OQ0XIFcRCNRwk3QVCgqdHOhwb16cxXPNmCl+YfaOlScoOYn+RNQB5HkEysOHxmsOenIC
 Dr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V6RCMCu0u2OME2YGHfLS+ptk7Pmu3SS68O9Jky4kB7Y=;
 b=bb237s7sDIF6MzQsrdAvtz0RkiuNqloN+y/+4IiB2iEnu4COuR8d1H2f/LobjsUyhI
 1T/9NN2MnJw2A/palfPYMjpcyi7s2FkVc/hKZrJvahNj0h+gLlo/2KZKK89YWU45h6AU
 Y8/gTFAAgj0kBR7mFEjYYReJm5HqK8C2b8SeJkVYyOMI6rrIJutUP75LGBJv3P5+wlI7
 zqy9SoFW1cZ6r/QoJu0KfDn7cVJKd1yf5TfJzR137RO18PzrK88XaO8oyB+idcmwkiMY
 KOO7uG5GJHGl+TF2canGrGknVHJeMs8Nx3/dYzrdSYZ0YSZ9MhNcf0axOxcnoYFImjpH
 rU2A==
X-Gm-Message-State: APjAAAX2bV7yaUzeUlRivEzQ6Goad1cGFDHH+htd/FfLu/PKHy+bVYJy
 lMe1RjZSlHsKxVZZVaLAvqZTczoBMuKtDu309bg=
X-Google-Smtp-Source: APXvYqwdv0gIuwtCK0KGXjB0lvaltYm5Uyb+DZ4bp5hvIaqB0rUkOYH37caKpsTrlUZiHIJyhhqBYx9R9AUwrZCpeRA=
X-Received: by 2002:a65:6118:: with SMTP id z24mr35095773pgu.203.1574708861836; 
 Mon, 25 Nov 2019 11:07:41 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-5-git-send-email-akinobu.mita@gmail.com>
 <CAHp75VfOUiN_2bW+o-AqGmAY32mmdNxP54B2f2+gj0NTEr9FTQ@mail.gmail.com>
 <CAC5umygc95VBWz1L5CTZO9kmkZL2MCEL2_z9d2TJ6Ow5+fKYPw@mail.gmail.com>
In-Reply-To: <CAC5umygc95VBWz1L5CTZO9kmkZL2MCEL2_z9d2TJ6Ow5+fKYPw@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 25 Nov 2019 21:07:31 +0200
Message-ID: <CAHp75VfPR7JSa7Mn5s_wJs22tXy7rC+W8x1jHLP=Npyd06BJ5w@mail.gmail.com>
Subject: Re: [PATCH 4/8] platform/x86: intel_menlow: switch to use
 <linux/temperature.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_110743_948557_31DA0D4E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgNDozNSBQTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0
YUBnbWFpbC5jb20+IHdyb3RlOgo+IDIwMTnlubQxMeaciDI15pelKOaciCkgNDo1OCBBbmR5IFNo
ZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+Ogo+ID4gT24gU3VuLCBOb3YgMjQs
IDIwMTkgYXQgNDowOSBQTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+IHdy
b3RlOgoKPiA+ID4gLSAgICAgICByZXR1cm4gcmVzdWx0ID8gcmVzdWx0IDogc3ByaW50ZihidWYs
ICIlbHUiLCBERUNJX0tFTFZJTl9UT19DRUxTSVVTKHZhbHVlKSk7Cj4gPiA+ICsgICAgICAgcmV0
dXJuIHNwcmludGYoYnVmLCAiJWxkIiwgZGVjaV9rZWx2aW5fdG9fY2Vsc2l1cyh2YWx1ZSkpOwo+
ID4KPiA+IENhbiB5b3UgZXhwbGFpbiB0aGUgY2hhbmdlICVsdSB0byAlbGQ/Cj4KPiBJc24ndCBp
dCBwb3NzaWJsZSBmb3IgYXV4IHZhbHVlcyB0byBiZSBsb3dlciB0aGFuIDAgZGVncmVlcyBDZWxz
aXVzPwoKSWYgaXQncyBhIGNoYW5nZSBkdWUgdG8gcmVxdWlyZW1lbnQgb2YgbmV3IGhlbHBlcnMs
IHB1dCBpdCBpbiB0aGUKY29tbWl0IG1lc3NhZ2UsIG90aGVyd2lzZSBsZWF2ZSBhcyBpcy4KCi0t
IApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
