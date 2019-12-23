Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052AD129642
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Dec 2019 14:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orzgjKOI1VVPAESghoYhmooWnrTC/76bqbbKOvw3pF0=; b=ABGqtXDo8eUBKE
	EfgNqIx+ji0us4TnLQRlRxSAwAZUFV56Fz7PMu5L7v8+ESVc16KEsA/JcWykjbvsSM3uHSDO6cKUH
	siCX7+PLB5fcC512+eFavwiL/Qay64uclFFiqL8oMeezbruIaY/ODyBuyV7Q3e7+4FSNlKNyg18yN
	ecarJM5H6N6pAWUNatj5weY9P4wLNPbdQXUUB8hGFdzo8lLkuGcL+Tijpa7s/ZsEGcGY8ixMO+HzW
	nfhwklVKvgwrCICg6LQ4/OpQSP6bjxpR+2XP9N+0FyaOHNOIvsgD2OiTTPt8RJx3ttvMUKLyJeS5k
	EG76ehGdQPMag2niM9mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijNRG-0001hf-I1; Mon, 23 Dec 2019 13:07:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijNRC-0001hA-8K
 for linux-nvme@lists.infradead.org; Mon, 23 Dec 2019 13:07:55 +0000
Received: by mail-lf1-x142.google.com with SMTP id y1so12575048lfb.6
 for <linux-nvme@lists.infradead.org>; Mon, 23 Dec 2019 05:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5eJH2So2Y3KqY/K1ixMNRpaPpKx0b38bhcNlkypecC0=;
 b=N7FN0ncLXb065P3FN14ZDLucMWMpNKGbWPL84vdRLA17Kc3XtT8pnSKLjbseUPj918
 b9yDdgKBeG55jltDFLk9cDzyCHWPNVXrw4qoKL0NK/RoO24MAp8q04nFdEJcZpgaT5BF
 Q15J2JBVrmMrQx4zFr9FLZw/VeElcbpyV3hIkGOi1aH3of4W5V7Pz5pv99zVfEeU/F0K
 SoqCCo4ejdPWZ5XPiDBHIxGsbm8jsgy1f4YZ0a2rDR8r1ttquMOBRfzWSCRjKNS9W/oB
 PELHjv9r8rJchpunfS3Od1m02nbafGGlA5trUX/4PLKhVRONJM6uv5xUiPD//ox37mFL
 dK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5eJH2So2Y3KqY/K1ixMNRpaPpKx0b38bhcNlkypecC0=;
 b=gguqxqgeAX6dyK0PFb1/3eus73Up9ErPz6zCUk4LQjEDfznzTTgrjpQnZOhEI2vL42
 uBbXQF3+mI94DFTfppg71zRu76WYfxAZPQJgdDg24zsfV+ocmPZXGYmF6ngsYdFlA7rS
 Pu7yZwODVbjADfOMDrsGnKdx6lgcoCIn96b7qqPf3GUN04v7reDIljHkFVlhO785HC/I
 FmnwUsELty/bI9kjOe8YwWovToO07QPOSlP3svs8E7ZUSa+W7LtvtOff4txM2zpmEQfu
 3395fLgMmV0wZCzFGGhOr36SrzWk8/uw/3DXCEdsEaKs5KukwDCgn8siFEvql/daurRy
 j5rw==
X-Gm-Message-State: APjAAAV+Jd70A4OyX5ccx0ZdZdXRE4U/Y8Dm8VY59E2Vv1nUWK6WNfkP
 lPlAqdADr+HfeTmOY8OkzfKgOlEstKrL86BVMLu/u1U5hVU=
X-Google-Smtp-Source: APXvYqx35NtG2msl9BoMH2SPDevhyYA9MZsbmqBAxBohTRg/NXhM9CHIaYC1N0ZR9f0Dh28z9OhNSEDQtt4irLWQGH0=
X-Received: by 2002:ac2:4a89:: with SMTP id l9mr16617018lfp.121.1577106471345; 
 Mon, 23 Dec 2019 05:07:51 -0800 (PST)
MIME-Version: 1.0
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Mon, 23 Dec 2019 22:07:39 +0900
Message-ID: <CAC5umygqpmb0s8zHC+TFEFffQmsU4N1hUs_XWGDLtqkJEccfBw@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] add header file for kelvin to/from Celsius
 conversion helpers
To: Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>, 
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 linux-iio <linux-iio@vger.kernel.org>, 
 LKML <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_050754_324502_756B5225 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Stanislaw Gruszka <sgruszka@redhat.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Christoph Hellwig <hch@lst.de>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 Andy Shevchenko <andy@infradead.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QW5kcmV3LAoKQ291bGQgeW91IHRha2UgYSBsb29rIGF0IHRoaXMgc2VyaWVzLCBhbmQgY29uc2lk
ZXIgaW5jbHVkaW5nIGludG8gLW1tIHRyZWU/CgoyMDE55bm0MTLmnIgxNeaXpSjml6UpIDE0OjE2
IEFraW5vYnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT46Cj4KPiBUaGVyZSBhcmUgc2V2
ZXJhbCBoZWxwZXIgbWFjcm9zIHRvIGNvbnZlcnQga2VsdmluIHRvL2Zyb20gQ2Vsc2l1cyBpbgo+
IDxsaW51eC90aGVybWFsLmg+IGZvciB0aGVybWFsIGRyaXZlcnMuICBUaGVzZSBhcmUgdXNlZnVs
IGZvciBhbnkgb3RoZXIKPiBkcml2ZXJzIG9yIHN1YnN5c3RlbXMsIGJ1dCBpdCdzIG9kZCB0byBp
bmNsdWRlIDxsaW51eC90aGVybWFsLmg+IGp1c3QgZm9yCj4gdGhlIGhlbHBlcnMuCj4KPiBUaGlz
IGFkZHMgYSBuZXcgPGxpbnV4L3VuaXRzLmg+IHRoYXQgcHJvdmlkZXMgdGhlIGVxdWl2YWxlbnQg
aW5saW5lCj4gZnVuY3Rpb25zIGZvciBhbnkgZHJpdmVycyBvciBzdWJzeXN0ZW1zLCBhbmQgc3dp
dGNoZXMgYWxsIHRoZSB1c2VycyBvZgo+IGNvbnZlcnNpb24gaGVscGVycyBpbiA8bGludXgvdGhl
cm1hbC5oPiB0byB1c2UgPGxpbnV4L3VuaXRzLmg+Cj4gaGVscGVycy4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
