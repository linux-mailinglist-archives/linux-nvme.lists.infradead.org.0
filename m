Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369DA348F7
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 15:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3TDoXp8FIAygQzDU976y5hSRleYCJkJFueXAg7tg7w=; b=nDsXR5mw0hmj7I
	3SZXg0TAw/NY4/ZeDg/trHa3DT5dnINoTHl3DyRv00hmutxlR83Ifw5sN6mruRhiAKiVSSfjtpHtV
	QP/+9HbrJ9218CESZsWzv2DxGpKj7U0XjEZ2eMrneqkPuBH/F8FbU+8z1qGaOC10IeuS1rhBqMnEc
	7OtdrjF0CgYgzU1bZM+EvS1hHu0eKcGpLN7TqjYt6YJZQ62DPy6ke9xWPour57iseXx3JoUFYw141
	obw9kPxJAQQbXRTMx8Dp1iwAnBnAGswnJAN3608tQu/sBHm6Xe+TaUvCJclLN4EQNh+FlYdEITdVM
	FP3VNFU4vkdtJtAowuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9cH-0000tM-Kd; Tue, 04 Jun 2019 13:36:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9cC-0000ss-Dt
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 13:36:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh12so2282956plb.4
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 06:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=k/oEc1y/yKQ5yL4XDF2EnpDVhxk2SoUwnrpaSbVyXxU=;
 b=lMv3ToRBrNceMpEclfi8nnfp9EwP+q2b4b/sOZgbiZl0mLFZfbjw2qQRjbetoxK8A1
 26lcqgb9UQbSVg24WaBPHvb9QGtF8HV1qgUaCC+UPRnlCMjpEPJL3Gm2FFTPCljrPJVw
 Zq/h/+W3TqSsnrR7F+HIkmd557DEyTy8spxgfSjcsKD7I1arDS7XnmWMC80q1zG+x/ib
 eOaPaYFGKRRq4KS4ArFtpqTbfC2jBsfVclHyysvDuY5iUmuPYQZAKe679wYQi3w9Ueai
 vdtJhd4tXsmvg0z8mPKLM7uwrkxeC5vHwIY5DBkXXCluC2KF6fnlAtbRZyXobyiJe0U4
 xBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=k/oEc1y/yKQ5yL4XDF2EnpDVhxk2SoUwnrpaSbVyXxU=;
 b=e3TTrTAHr7LCCa75tTq3dWXxrLzUSBzEaveOhmSdjIiW4LNMP58PvuUqT+ZfMWrZQU
 iOkpxE0i/uyQeW2gSVeqGee9g0IaO81Zhe7cfXeudB7jx5WnT/TyL5Le0MsHWghxVJFI
 Mt3X0BwU/Mkp6mVkop6mPDpcxXxOt+GYFC8Qtd3tnu/TByXLYmZn1rPTtMXk3s775fv8
 aesuKbXdUbBDkglOLeE93sWPSTsTUJZc1dALcPgz+aJJz/SzO0Lwi5m4yCRutFLtecnS
 cvzDy/d0kDE1j6drmQZbcuVxi0xaPh8DHQN2gwLwaHWBEO3XU6tNXKoQhhHHPTi/dvbv
 yZdg==
X-Gm-Message-State: APjAAAUPzO1DYtSNXVUq7pLWcAKWmiUNKHhzRGpqVrLOO8QR0a+vOQkg
 wPMMT8h7dr4wnjaXLVfaWQjiz3jpq4guA6Rx//R53KieCK8=
X-Google-Smtp-Source: APXvYqyah366O5PiI3hFuKgE3ti5ADc21hRhcczUI1AYe68igwQjxp0RXKKjTzV9h9CnnZiXizaQ+UbFtIg1xkvvcEA=
X-Received: by 2002:a17:902:9004:: with SMTP id
 a4mr23671766plp.109.1559655393904; 
 Tue, 04 Jun 2019 06:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-3-git-send-email-akinobu.mita@gmail.com>
 <20190604072336.GC15680@lst.de>
In-Reply-To: <20190604072336.GC15680@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 4 Jun 2019 22:36:22 +0900
Message-ID: <CAC5umyho33qSbyxDo3m0mUd4nkxBuorXDs3TxcgAM0fao+1DqQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] nvme: enable to inject errors into admin commands
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_063636_495438_9F6E1305 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIg05pelKOeBqykgMTY6MjQgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Ogo+Cj4gPiAgICAgICBzdHJ1Y3QgbnZtZV9mYXVsdF9pbmplY3QgKmZhdWx0X2luamVjdCA9IE5V
TEw7Cj4gPiAgICAgICB1MTYgc3RhdHVzOwo+ID4KPiA+IC0gICAgIC8qCj4gPiAtICAgICAgKiBt
YWtlIHN1cmUgdGhpcyByZXF1ZXN0IGlzIGNvbWluZyBmcm9tIGEgdmFsaWQgbmFtZXNwYWNlCj4g
PiAtICAgICAgKi8KPiA+ICAgICAgIGlmIChkaXNrKSB7Cj4gPiAgICAgICAgICAgICAgIHN0cnVj
dCBudm1lX25zICpucyA9IGRpc2stPnByaXZhdGVfZGF0YTsKPiA+Cj4gPiAgICAgICAgICAgICAg
IGlmIChucykKPiA+ICAgICAgICAgICAgICAgICAgICAgICBmYXVsdF9pbmplY3QgPSAmbnMtPmZh
dWx0X2luamVjdDsKPgo+Cj4gTm90IG5ldyBpbiB0aGlzIGNvZGUsIGJ1dCBob3cgY291bGQgbnMg
ZXZlciBiZSBOVUxMIGhlcmU/CgpOb3QgbGlrZWx5LiAgU2hvdWxkIHdlIHNpbXBseSByZW1vdmUg
dGhpcyBjaGVjayBvciBhZGQgV0FSTl9PTl9PTkNFKCk/Cgo+ID4gQEAgLTI1Nyw2ICsyNjYsOCBA
QCBzdHJ1Y3QgbnZtZV9jdHJsIHsKPiA+ICAgICAgICAqLwo+ID4gICAgICAgc3RydWN0IHRoZXJt
YWxfem9uZV9kZXZpY2UgKnR6ZGV2WzldOwo+ID4gICNlbmRpZgo+Cj4gTG9va3MgbGlrZSB0aGlz
IHNlcmllcyBzZWVtIHRvIGJlIGJhc2VkIG9uIHRoZSB0aGVybWFsIHpvbmUgc2VyaWVzLgoKT29w
cy4KCj4gPiAtc3RydWN0IG52bWVfZmF1bHRfaW5qZWN0IHsKPiA+IC0jaWZkZWYgQ09ORklHX0ZB
VUxUX0lOSkVDVElPTl9ERUJVR19GUwo+ID4gLSAgICAgc3RydWN0IGZhdWx0X2F0dHIgYXR0cjsK
PiA+IC0gICAgIHN0cnVjdCBkZW50cnkgKnBhcmVudDsKPiA+IC0gICAgIGJvb2wgZG9udF9yZXRy
eTsgICAgICAgIC8qIEROUiwgZG8gbm90IHJldHJ5ICovCj4gPiAtICAgICB1MTYgc3RhdHVzOyAg
ICAgICAgICAgICAvKiBzdGF0dXMgY29kZSAqLwo+ID4gLSNlbmRpZgo+Cj4gSXQgd291bGQgYmUg
bmljZXIgdG8gYWxyZWFkeSBtb3ZlIGl0IHVwIGVhcmxpZXIgd2hlbiB5b3UgY2hhbmdlIHRoZSBp
ZmRlZgo+IGd1YXJlZC4KCk9LLgoKPiBPdGhlcndpc2UgdGhlIHdob2xlIHNlcmllcyBsb29rcyBm
aW5lOgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
