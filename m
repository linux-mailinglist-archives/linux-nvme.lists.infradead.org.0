Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FA7108FFF
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 15:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/ZaJ/Wtq/zerF6bHWoocpBcTZPMdq4HQ5j/mGG+RD4=; b=relQ/9LvvijfFp
	Qk+pqpja07m9QZ9mYjo/ICUDHJt0rSfEpBoLo+KX5XeNyoHP+DVaOpew/EFxtI0kvDp5bVgDbGe+b
	S3oSXuA+MjYZPHkFfZPvVky5tTj0HwKlEDe8VPJ4ro+3Xd8HAF58IcxH7K6SI+SeCZ09iU7/s6WDE
	HHE+ChJC+yUHAzZmxuQC646kAO64zsczuPBw+QctPB3JjlkozphxtCnfZvRQOIGm4DKXz8J+9BOxZ
	aiPw8zPkZ2mvL0yxPyBlqfmSTubMt09VA9KeUDN7BcYy+AquwtqMiKIcJ7Ja3RJ1sokIitcFT+i/V
	Ieq1kdGxv/TQxZe96sCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFOa-0001WL-21; Mon, 25 Nov 2019 14:31:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFOT-0001Vl-CU
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 14:31:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id v24so11180426lfi.7
 for <linux-nvme@lists.infradead.org>; Mon, 25 Nov 2019 06:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WJcL6zJlFuqqleMc2SkLefhJBqvomh77ELiAskEiwdQ=;
 b=JIdutctR8IGj0nY1GGFA1Nq9c87pfVEoit1PdYDo/pucpBPAiji50N0+eqzrWGReAH
 L5uzVZ6rMcd1FbkUZulHYKl1RixdeGyaXul59/1oyq/kPLmGckhYHYGlqdTsFDL0/3TW
 3JdVfKYUVAAR0fnwmNNEidkvFN1DQyolIrAwhXwCaJL3Yknlll5eOTSlTY7ir4jNNHlu
 d77dyp5tyvy3Fnke+HFu517JmSDHr8sl0nXEBMwS46ZctA0FF/kza+YAxW3azNbDiOaM
 0hJ6swR/nWe9Es/0nuuEcqNW2Rh4JvCAF/fhs/lYLH3LkySw4/ggx1dIKAmDB2cUK3e1
 3afA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WJcL6zJlFuqqleMc2SkLefhJBqvomh77ELiAskEiwdQ=;
 b=GBxSE2catUqTzy3X0TI99xHSe7inQ2rUh0AYamMSmO7L0a9XqcSS7m500Ti3ysChaN
 W7CphbaZY3GEorUqz5wdc6UTIMJhfbGVl640TGTeEC6TnnfYH7PjGC/h2xdxxXTo/nK/
 udPpX9PyCIyvN2OLwZZlBaiHTSL6ojJEfTkaroPQv+8Edi0ElSaS6Ovmcfk4qs4Z6GOu
 j7uSM9alf1Y3HxKFMt2We4GilQIpL3X0ZJKBZctgJaYUBxB/IIkdz/Hw1jgijO8XZJwM
 yxvPXZTwg/CMZTsTTH5rdJMyDRMilHwvmUf1pcr1cjjvqkFsrPGDKbZ//q0N7Y6D5rem
 aIJg==
X-Gm-Message-State: APjAAAWq3A2B9D4iKdsac/FnSMK/t1EdqPTETDn/1VC/YvSHHwVi3Q4L
 hyZgYNr5iYqOC1XECkGVIaemE+Af2vh+PCWwrVM=
X-Google-Smtp-Source: APXvYqxXUiBF72dN+bSBfP+dVzJMyJQkB60RLYR3XrsVNUjjUY9fqHd5g80b2368oc2at00TYuTPqWhSDRZ3kyYJLlw=
X-Received: by 2002:ac2:50cc:: with SMTP id h12mr11281925lfm.29.1574692271621; 
 Mon, 25 Nov 2019 06:31:11 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-3-git-send-email-akinobu.mita@gmail.com>
 <00fff683-d0e2-67ae-83e3-c472fdbe9e1d@roeck-us.net>
In-Reply-To: <00fff683-d0e2-67ae-83e3-c472fdbe9e1d@roeck-us.net>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Mon, 25 Nov 2019 23:31:00 +0900
Message-ID: <CAC5umyh4Ay_PnFGp4fA0_VSimD_Bm-+xpVz56jZnd5bT239B8w@mail.gmail.com>
Subject: Re: [PATCH 2/8] ACPI: thermal: switch to use <linux/temperature.h>
 helpers
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_063113_427857_94000D47 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 LKML <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMjXml6Uo5pyIKSAwOjE3IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVz
Lm5ldD46Cj4KPiBPbiAxMS8yNC8xOSA2OjA4IEFNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gPiBU
aGlzIHN3aXRjaGVzIHRoZSBBQ1BJIHRoZXJtYWwgem9uZSBkcml2ZXIgdG8gdXNlIGNlbHNpdXNf
dG9fZGVjaV9rZWx2aW4oKQo+ID4gYW5kIGRlY2lfa2VsdmluX3RvX2NlbHNpdXMoKSBpbiA8bGlu
dXgvdGVtcGVyYXR1cmUuaD4gaW5zdGVhZCBvZiBoZWxwZXJzCj4gPiBpbiA8bGludXgvdGhlcm1h
bC5oPi4KPiA+Cj4gPiBUaGlzIGlzIHByZXBhcmF0aW9uIGZvciBjZW50cmFsaXppbmcgdGhlIGtl
bHZpbiB0by9mcm9tIENlbHNpdXMgY29udmVyc2lvbgo+ID4gaGVscGVycyBpbiA8bGludXgvdGVt
cHJhdHVyZS5oPi4KPiA+Cj4gcy90ZW1wcmF0dXJlL3RlbXBlcmF0dXJlLwo+Cj4gTG9va3MgbGlr
ZSB0aGlzIGFwcGxpZXMgdG8gYWxsIHBhdGNoZXMuCgpPb3BzLiAgSSdsbCBmaXggaW4gdGhlIG5l
eHQgdmVyc2lvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
