Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D422EC687
	for <lists+linux-nvme@lfdr.de>; Fri,  1 Nov 2019 17:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knQQInEf+AvQFCOeaR8VMAw4RXX2/hfA4UEP4ZeHpmk=; b=egEkth03xwQvIk
	jCPsPKWUHoYvxFrtoehJ4DWv8cJa8VhAuAuEsjZp7OnWMqDdYX/R5mYQZuWldD1aBLJXDwYN55UNA
	DpD1/iywvhp8VOtpeGYsfzkzKfoHfcW02hwvTtKYchhXX80KvDtfolYLVosect/cSb2zCvLopHZua
	RYOlrpoIpd+FVwiieC4DLUkSLBl7QPREZllmXsYaVfWBTVbQh8ViHPdKIqodY7qwF5s/hjZ3iyjtw
	QF+OoCFoUC8Chyt9Zit7o69BjvIAX+7Ne3mv2wO80NLQUzrTHu2awF9xSM0akHHyjHYZqam2Lsnzy
	BZqum2iocsUxy59neJ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZdw-0005xr-20; Fri, 01 Nov 2019 16:19:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZdr-0005we-85
 for linux-nvme@lists.infradead.org; Fri, 01 Nov 2019 16:19:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id 15so6786833pgt.7
 for <linux-nvme@lists.infradead.org>; Fri, 01 Nov 2019 09:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dAGwFFDGn7AorxgIz/AEpdCiGhCVLv3rIV9fz6SUeP8=;
 b=UMeh5QejuPBHRPk70ICMaxUtljVz04aSCgfhYqis0E+f/qX9YksRLO7gylTYEKYdZS
 mY9BheeLRGuXG96psRHLn7eGWKCfiXCVooi3Nr0pcj3xbx2JxEuIzoA5NikKE+TwNcac
 Czof0g0/HS6tjeFTLI3/C15xuzNymXh4xk/+5dl1tK0aCNXvDpZM/Cboof8NnyTLUGaJ
 5IbU+Tod3smBHkiY8bEnMCuwChwcxbDBZSc18TTgQc9rUsf3QZtbQyYcd/PmHgY81sNi
 Q7R5vkOLrftO5A+Hp7WcOYjnqVl2MANl57fpvIWa6ly2F/Bn0aiAELMZOR+mvVP8pXR6
 QbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dAGwFFDGn7AorxgIz/AEpdCiGhCVLv3rIV9fz6SUeP8=;
 b=p6imk45EmqVcN5inuJitYwmVGBEz4lgM0g4RhpRElYjr3LgMv8xJk2PrjeDwW9cV8R
 uZh746XUxIDteTJni9FHFm/3CwFf7uYX1w41+iSm5LLMlGMCh9VEmpsALZMwx9ik/Fsm
 FNlDvbP1ivxIY0nwVIF690wWjtMxnE8EIQyFuqbdYG706VrPP630ZXFqDrEDtZ66XCkH
 1x+HELiH8Bj8bLWkHqtRXqVI8J8LU0RdYkpqEahkZPSd5NaGkbqCOmCJEELvv36g/aWd
 ZBBCMgPb2BmenRWN0Sljo08XRVc0xA0xAf01vEOSkXZGn79dTeDEuKkS+Bpy5pKYQwNg
 mEww==
X-Gm-Message-State: APjAAAVqkxgOgWcfLOTkUhrNETHQGbz0L7BdQle3zOemYun+QViBTlr2
 Um9Jj8R8K05FFc/xIuR1ACw/AaLjx49TojVB9lw=
X-Google-Smtp-Source: APXvYqyI9lotw31W/ZvoHgHNajTKgybh89AhP1kwZOAh1wJBGAWlmqvLx8kWHzHz2ipfEJOIxWHoPn6XBMDYrjsksTw=
X-Received: by 2002:a62:fb06:: with SMTP id x6mr6778318pfm.231.1572625154324; 
 Fri, 01 Nov 2019 09:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191101035646.25644-1-linux@roeck-us.net>
In-Reply-To: <20191101035646.25644-1-linux@roeck-us.net>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 2 Nov 2019 01:19:03 +0900
Message-ID: <CAC5umyhiOiAiYWs2Y=L5133CCQNnAgi8oq6AbGzgkznZKz5f-w@mail.gmail.com>
Subject: Re: [PATCH v3] nvme: Add hardware monitoring support
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_091915_292858_8208358A 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMeaXpSjph5EpIDEyOjU2IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVz
Lm5ldD46Cj4gK3ZvaWQgbnZtZV9od21vbl9pbml0KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4g
K3sKPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGN0cmwtPmRldmljZTsKClNob3VsZCB3
ZSB1c2UgJ2N0cmwtPmRldicgaW5zdGVhZCBvZiAnY3RybC0+ZGV2aWNlJz8KClRoZSAnY3RybC0+
ZGV2aWNlJyBpcyBhIHBvaW50ZXIgdG8gY2hhciBkZXZpY2UgYW5kIHRoZSAnLT5vZl9ub2RlJyBt
ZW1iZXIKaXMgTlVMTC4KClNvIGlmIGRldm1faHdtb25fZGV2aWNlX3JlZ2lzdGVyX3dpdGhfaW5m
bygpIChpLmUuIF9faHdtb25fZGV2aWNlX3JlZ2lzdGVyKQppcyBjYWxsZWQgd2l0aCAnY3RybC0+
ZGV2aWNlJywgaXQgZG9lc24ndCBhdHRlbXB0IHRvIHJlZ2lzdGVyIGEgc2Vuc29yIHRvIGEKRFQg
dGhlcm1hbCB6b25lIChpLmUuIGh3bW9uX3RoZXJtYWxfYWRkX3NlbnNvcigpIGlzIG5vdCBjYWxs
ZWQgYXQgYWxsKS4KClRoaXMgY2hhbmdlIHdhcyByZXF1aXJlZCwgd2hlbiBJIHRyaWVkIHRoaXMg
bnZtZSBod21vbiBwYXRjaCB3aXRoIHRoZQpmb2xsb3dpbmcgRFQgdGhlcm1hbCBzZXR1cC4KCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMTU2MTk5MDM1NC00MDg0LTMt
Z2l0LXNlbmQtZW1haWwtYWtpbm9idS5taXRhQGdtYWlsLmNvbS8KCj4gKyAgICAgICBzdHJ1Y3Qg
bnZtZV9od21vbl9kYXRhICpkYXRhOwo+ICsgICAgICAgc3RydWN0IGRldmljZSAqaHdtb247Cj4g
KyAgICAgICBpbnQgZXJyOwo+ICsKPiArICAgICAgIGRhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBz
aXplb2YoKmRhdGEpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghZGF0YSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAgIGRhdGEtPmN0cmwgPSBjdHJsOwo+ICsgICAg
ICAgbXV0ZXhfaW5pdCgmZGF0YS0+cmVhZF9sb2NrKTsKPiArCj4gKyAgICAgICBlcnIgPSBudm1l
X2h3bW9uX2dldF9zbWFydF9sb2coZGF0YSk7Cj4gKyAgICAgICBpZiAoZXJyKSB7Cj4gKyAgICAg
ICAgICAgICAgIGRldl93YXJuKGRldiwgIkZhaWxlZCB0byByZWFkIHNtYXJ0IGxvZyAoZXJyb3Ig
JWQpXG4iLCBlcnIpOwo+ICsgICAgICAgICAgICAgICBkZXZtX2tmcmVlKGRldiwgZGF0YSk7Cj4g
KyAgICAgICAgICAgICAgIHJldHVybjsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBod21vbiA9
IGRldm1faHdtb25fZGV2aWNlX3JlZ2lzdGVyX3dpdGhfaW5mbyhkZXYsIGRldl9uYW1lKGRldiks
IGRhdGEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAmbnZtZV9od21vbl9jaGlwX2luZm8sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMKTsKCklmIHRoZSBhYm92ZSBjaGFuZ2UgaXMg
YXBwbGllZCwgdGhlIHNlY29uZCAnbmFtZScgYXJndW1lbnQgaXMgY2hhbmdlZApmcm9tICdudm1l
MCcgdG8gJzAwMDA6MDE6MDAuMCcgYXMgYSBzaWRlIGVmZmVjdC4gIFNvIHdlIG1heSB3YW50IHRv
CmNoYW5nZSB0aGUgc2Vjb25kIGFyZ3VtZW50LCB0b28uCgo+ICsgICAgICAgaWYgKElTX0VSUiho
d21vbikpIHsKPiArICAgICAgICAgICAgICAgZGV2X3dhcm4oZGV2LCAiRmFpbGVkIHRvIGluc3Rh
bnRpYXRlIGh3bW9uIGRldmljZVxuIik7Cj4gKyAgICAgICAgICAgICAgIGRldm1fa2ZyZWUoZGV2
LCBkYXRhKTsKPiArICAgICAgIH0KPiArfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
