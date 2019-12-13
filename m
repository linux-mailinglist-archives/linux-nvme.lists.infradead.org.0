Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589D611E039
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 10:06:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISCA8VMViqbCwak5IVHz6WGfkBiqn8WVhltd+HNjjUc=; b=HU3i4vzCrqUopg
	sZgmSRVRf8eAIL4dwCl5RYWXrj6VJpu7/3HPG6/Q3ADIA6y3sikGqsLi1DXFKam7/fBqG6GMvN6/a
	TQ9ceUZLKgHHrcSbuUTCPxneD8LuNwE3O/w1qjmFS3u2DCH5cv/ZIvCF/eTmBOui9KU5y3dvc10fX
	3RMke7sVCD0lnCwXsaMDpRoWTJF/lS+vEOsIS6DJ0vVb6oLo573/cInFjOGODGlbhlY/IW4wc+Wqz
	0KKwWnBymM5OjCKAhHarTWCOfFrtGtydfw0Icpn9gNVjxvGAEQe6unB3A+XjDqiOXEVTSb7LKrkQQ
	+V6vqf4isAoABBAJkkVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgtr-0006fs-2U; Fri, 13 Dec 2019 09:06:15 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgtl-0006eP-Ub
 for linux-nvme@lists.infradead.org; Fri, 13 Dec 2019 09:06:11 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o11so920508pjp.9
 for <linux-nvme@lists.infradead.org>; Fri, 13 Dec 2019 01:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ybc7GcFQZhxBSK57X32yESZQ6FjJoJQQPD9To3J0myM=;
 b=CQzvdSwKXT6OZG3K59nTAtaRHtSC3h0QcLA2xgc6gg5Gblm/BbbxRNfewJg890m8pE
 iR5ZC11NhfttOSQxOX3JmDVncxwL7YPN/AgWkc0u1w1oPc4V1Xm/cA+wzLePF3TQiCWq
 pLu8liKGIJzgJB36Mh2fm0yOHPPsL/J0KxNHg+R4JKmtpypICr72yJG8qfWhRWuu1aWB
 838tVgHCzSa5LQEe9jyZ3BkRrblfNFrRAjBlQub+TyL+nbLyAh/mEtum0Ly7TobthhU5
 VOnooUi7JejHvzYnh3ZT9QsyqeQJTiMPGEdB4I5+GjPKwK6/R5h8KOxasJTMuJmlbD9k
 id1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ybc7GcFQZhxBSK57X32yESZQ6FjJoJQQPD9To3J0myM=;
 b=N9WOLKPNRGwa95RXXG9T50XuDboqiMpwgFaefjtbZS9mIk9qN/2bJBfH7Xu+2BlO+Y
 sn6I8uDVSPnZgoUfAihMQkiVrMpUe8nuiLfp2ATbgSfrzkqt3KKKtX8dYvDBLt+/rwPt
 aalwm0hPt6JbAEcCPshJyd6ADDnT4E9V9mANVizHib5jM82THDXXhM05qgJumU1Cne+o
 y9pWSka/b1WTrLuG2qy4ssI2WEC/NnGNKCcW7ar4IWqkCSrUT1o00THb/XyCxvXkNwwC
 U8V1QETdQe/EUNirKiBgWKgMgigHIc0HeILmHHszRGRzOGOzzOsOWD/o+tUIXqMh2aiv
 JHXQ==
X-Gm-Message-State: APjAAAVpy0gBGFMstJyPLokPPM1igXfMmy9gXgm4I4W3DF07pqDyBluQ
 kRyTxS0GM/nqACGVYHCmqWqdOnvEsAjsosQmMJzst+5U
X-Google-Smtp-Source: APXvYqzCHj1+Sq6cO+qQd7QUtpkAonXpYK4lPwrvxQH1PraWW7di5xCFjd9b+JkQT+3TEHdPKq6H3su9VgqGnoSHcL8=
X-Received: by 2002:a17:902:aa08:: with SMTP id
 be8mr14525504plb.255.1576227968997; 
 Fri, 13 Dec 2019 01:06:08 -0800 (PST)
MIME-Version: 1.0
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
 <1576075099-3441-4-git-send-email-akinobu.mita@gmail.com>
 <CAHp75VfSUafrg82WcfUA4LhSFaNQSgZp39oVQGD=M124urC=xA@mail.gmail.com>
 <CAC5umygGZqWh2rRGMLvPhWFvD9Mv-5u6stY3c+5Z9_QC6OrNvA@mail.gmail.com>
In-Reply-To: <CAC5umygGZqWh2rRGMLvPhWFvD9Mv-5u6stY3c+5Z9_QC6OrNvA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 13 Dec 2019 11:05:59 +0200
Message-ID: <CAHp75VdDLUR0N2VxRW97t4BSUgFcPCajGGdhRBdFjOw0W+SPKA@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] platform/x86: asus-wmi: switch to use
 <linux/units.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_010609_985551_5C04C243 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>, linux-iio <linux-iio@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMTMsIDIwMTkgYXQgNjowNiBBTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0
YUBnbWFpbC5jb20+IHdyb3RlOgo+IDIwMTnlubQxMuaciDEy5pelKOacqCkgMDozMiBBbmR5IFNo
ZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+Ogo+ID4gT24gV2VkLCBEZWMgMTEs
IDIwMTkgYXQgNDozOSBQTSBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+IHdy
b3RlOgoKPiA+ID4gKyAgICAgICByZXR1cm4gc3ByaW50ZihidWYsICIlbGRcbiIsCj4gPgo+ID4g
JWQgLT4gJWxkIG11c3QgYmUgZXhwbGFpbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZSAoZS5nLiAi
ZHVlIHRvCj4gPiBmdW5jdGlvbiByZXR1cm5lZCB0eXBlKS4KPgo+IE9LLgo+Cj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgZGVjaV9rZWx2aW5fdG9fbWlsbGljZWxzaXVzKHZhbHVlICYgMHhG
RkZGKSk7Cj4gPgo+ID4gSSBwcmVmZXIgdG8gaGF2ZSB0aGlzIGluIG9uZSBsaW5lLgo+Cj4gSXQg
Y2F1c2VzIGxpbmUgb3ZlciA4MCBjaGFyYWN0ZXJzLgo+IFdlIGhhZCB0aGUgc2FtZSBjb252ZXJz
YXRpb24gaW4gdjEgOikKCkFuZCBJIHJlYWxseSBkb24ndCBjYXJlIGFib3V0IHRoaXMuCgotLSAK
V2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
