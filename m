Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229C017D6C
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 17:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7EZ/VTEIFO8r98sSIswKmkpV3ukmDoE/sCBHMbLINI=; b=W+cgn4kaQfWeoT
	mjvv/k8ykfTa2UDbZvu+shCDvTulS97flSWXqxhxAzSTe45CW4ym88JxCa9SvAP2MmywjtBBCoPKL
	U/vgql7zXcSLjZbK2cR7+xiLfv/kPLfIkh0Wnsb6kLFQMToRg8sdtGUpevSLhFiBIlclZxbPPDkm2
	2CDvgIEz91EHdadhYzBqF9HK73WY39Lakq5CgZoMCSo5rfEo/XhCbf985Uew+MgcFIhDF5+lghCdu
	8sF2KlXQc7N+kEjXvIf3Dj+7qrVYOAGCfiZCnYfnKHNSw67zCZVJi/U/4d1QW+/LxdXI1yAWeB+cL
	RxWc1xDC2XTUNrQRuBog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOgJ-0000Rp-02; Wed, 08 May 2019 15:40:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOgE-0000RS-Lp
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 15:40:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id e6so10292909pgc.4
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 08:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UacGnCWSnnX/ubt9WP8ILRmg8JHZOIflTzuul+wE29g=;
 b=pO7AzAIshGQWIb7xrPc8YYgQb+Vt5N9C4mFtDnZOpFvN0YMxmPEpIwd+gHGYjrINXL
 uALm4Pj1ez13Swz3eRdqCfEZtpb3jkDLRifI9SHF2vWZ2HDJ1AlhA/bjtAvOeEv/eecY
 P/Couz7yq52evabS7CIhMMmHR+ydwFilOCWXxzYHur6gK+PkPaMFN75LHXiXAv0+6UIh
 BJ4s2PUCFVhRPzlUePVhClTOnXKh6H6rtC05KIqWjAHNCdJZnj5qt5FTLS3hbItI2Ume
 oYGXOfg0FuHMdu8sH4JFVBeSM5hNF3zirnQ3z+MY/GqMuMS4eLH7y5MLYDYOaOTOn+Ig
 ryGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UacGnCWSnnX/ubt9WP8ILRmg8JHZOIflTzuul+wE29g=;
 b=WwWT5AcRtcCEIMZ/wVvioDO2V8KpLQ2vVgKkVUep75qEbBaZT9gGjobvgcn2CusEiw
 HQJsw6jlkImZGDvN0owTuab786w3ary6DAMBsOxG4D4plX8OAo7bZJ8lqRuFyeVRn5gb
 cw9uTsBRpcwAE+mCDFHaDHf48A9NEZosK5tB8C3vc9Hn/+p4fKFUvlOYUuqRFDXRTo73
 03oFWS15PrBSmdLZBnHVkNZuVbKyxEUSBcd7nblyxrCL4gESmJpyGcVF3a4ksySrOSB8
 1/6CTmkI16dwMKVuI4UUZv6YC29e2EQIBkScKCcqlnKM7FALA+nbm4hZRumjYEeYvLyN
 chFA==
X-Gm-Message-State: APjAAAWPByXRbQK+yBJ4RorB7KBKz40TOepJ53LhvCo/V7u0lgaa6IVC
 AgR3QaYKHs9sahOHOSKHKT1BbE2RFOO+EKJspCQ=
X-Google-Smtp-Source: APXvYqywTP1cYBFMFV/ThSpGRRP6TzQDBKhQTDunwcu/png1t7dYBTbmqTQi0QRyAetOsFnIST5lW00y7j8qYZl/L9Q=
X-Received: by 2002:a63:fc08:: with SMTP id j8mr26566098pgi.432.1557330025512; 
 Wed, 08 May 2019 08:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-4-git-send-email-akinobu.mita@gmail.com>
 <aced1953-4ea2-c8b1-9ee9-068e92ae1f8a@intel.com>
In-Reply-To: <aced1953-4ea2-c8b1-9ee9-068e92ae1f8a@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 9 May 2019 00:40:14 +0900
Message-ID: <CAC5umyiLgyGambM+umb3GoYV-0Eo-CFiyy5RLhKGTq+fBTcZtQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] devcoredump: allow to create several coredump
 files in one device
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_084026_738563_2C876821 
X-CRM114-Status: GOOD (  11.39  )
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
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg45pelKOawtCkgMjozNSBIZWl0a2UsIEtlbm5ldGggPGtlbm5ldGguaGVpdGtl
QGludGVsLmNvbT46Cj4KPgo+Cj4gT24gNS83LzIwMTkgMTA6NTggQU0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+IEBAIC0yOTIsNiArMzA5LDEyIEBAIHZvaWQgZGV2X2NvcmVkdW1wbShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIHN0cnVjdCBtb2R1bGUgKm93bmVyLAo+ID4gICAgICAgaWYgKGRldmljZV9h
ZGQoJmRldmNkLT5kZXZjZF9kZXYpKQo+ID4gICAgICAgICAgICAgICBnb3RvIHB1dF9kZXZpY2U7
Cj4gPgo+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8IGRldmNkLT5udW1fZmlsZXM7IGkrKykgewo+
ID4gKyAgICAgICAgICAgICBpZiAoZGV2aWNlX2NyZWF0ZV9iaW5fZmlsZSgmZGV2Y2QtPmRldmNk
X2RldiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRldmNk
LT5maWxlc1tpXS5iaW5fYXR0cikpCj4gPiArICAgICAgICAgICAgICAgICAgICAgLyogbm90aGlu
ZyAtIHNvbWUgZmlsZXMgd2lsbCBiZSBtaXNzaW5nICovOwo+Cj4gSXMgdGhlIGNvbmRpdGlvbmFs
IG5lY2Vzc2FyeSBpZiB5b3UgYXJlbid0IGdvaW5nIHRvIGRvIGFueXRoaW5nPwoKVGhlIGRldmlj
ZV9jcmVhdGVfYmluX2ZpbGUoKSBpcyBkZWNsYXJlZCB3aXRoIF9fbXVzdF9jaGVjaywgc28gaWdu
b3JpbmcKdGhlIHJldHVybiB2YWx1ZSBlbWl0cyB3YXJuaW5nLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGlu
dXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
