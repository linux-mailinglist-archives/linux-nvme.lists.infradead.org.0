Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430D427F6D
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7T+rWLn7VX0+JokA57i2SG3ropGP6DshD3rh4ssv6I=; b=s7iF8MTnC5n5VD
	MN64cWGE8DsalsgMmmDTOzGLbhPPVSvp1t4b5DHZqpO/eBhsZGcIGNts28xheVXW28ECLBG3PqwvC
	yQbBsNHD5RQvapE4TzD718eZFhGuIgEmq9453GCll7jfxUFrtR3Gne9r8t9k+HCrDUyvwqVYx9jvM
	RHQv28ZWRVN8BxJyz4XmwqTCCZi2jps/dmacrG1lZrZPBmZB+NTXLJK/qPAOSceZYsrYDeTWSaisp
	yCZZY99YI6wt1giYAvKp+KAH8w8UEFnefw8BHlxWccK8Uso+8u4vNELDqX2uZGTh6I2P/3+CU1y+6
	8+uKsl5Sz/FMWn6x+5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTobL-0006jR-Eg; Thu, 23 May 2019 14:21:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTobG-0006ix-M2
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:21:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id g21so2851406plq.0
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ndu0C78u89Vpd1DZzdszrXEuSgM18mXqDDSkzxtz1S4=;
 b=CVNBJ/cjDL3pknGbhrYYTqpqp06CVRzA5cs2LqAxogdYA+R8Av9i31Yp/FiVvnm4wM
 hDMU4+a0Eq3Sx9hM5F/7Vi/1FNJmQxkYTpm69IM1yJ1W1YVduMnK2QrSLq9k9m9aOu/1
 kGxBBAjH474TdBOmWWzEHMR7b2BStg82cCKNv4SqfrymthZ7krc0bSM5A28Y4HblwKCQ
 AIbAc4Ldoi+326GgW01FDBLjUEYYnAmzCNqo+39HrCETwIDh6bKYLI+kodRZtir+XJs1
 TRPXXKkMb8sZ2fmNSlMzW/iFokac72VlGhV1jypclCNRXn1Iixrg0MPKYORzFbuC/ah7
 myyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ndu0C78u89Vpd1DZzdszrXEuSgM18mXqDDSkzxtz1S4=;
 b=nuEvnJOY/IN5XqXSszbzLDcsJK5aMb7nIAAEUx1zuhyRev8L6udu4E56W66UMh7LAw
 hLAMYlVayiGZQGsyIb0C6bFw8jSAKVbPdKUs6p6ty8Le0wxajLMvJ96ghLarU7khg/Yv
 vjVcCdQfL23Dppmv26xfswvnZ2/ZbATYJLelAiFMaooqSrBKU5VwtJhYmYoXtAZBbFAC
 7zvabarxY/THcpLg0nBFW4IjCCuLSUzyYRs0ioIgZk8Eqkk0SoJ/MIcVTxdX+gnaTJJ9
 uJujfA/7VaOYRPTnfx6Y5YvfPdQc6J0ZP0RziJCxQjfTumQIBpais1CoGOGjY2ogLeTS
 zwiA==
X-Gm-Message-State: APjAAAXrcnNTkRngiLEvQI6r4c1T/p3QqG22RzUI/bs4ga8YQuYp/K1k
 vLfwi9MtW+XibVngbC4XXu2EsfHVcaJUW4L+iobdzZuiWOw=
X-Google-Smtp-Source: APXvYqyz0tMzVw19CQQcSqtHkHaiGJKrShsUgAzME/k1OZ9BDWY8ufKzGVZYuJ52SoOWAsRj+hyc/QHFjIvRzUGzSuI=
X-Received: by 2002:a17:902:7283:: with SMTP id
 d3mr54000194pll.274.1558621299898; 
 Thu, 23 May 2019 07:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-5-git-send-email-akinobu.mita@gmail.com>
 <20190522174648.GA26477@infradead.org>
In-Reply-To: <20190522174648.GA26477@infradead.org>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 23 May 2019 23:21:28 +0900
Message-ID: <CAC5umyhsnk_g5N+k_dMiBenPopGCLHg35+X2Jg+sEPBf2ZLKHA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] nvme-pci: support thermal zone
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072142_724696_91AA73F7 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyM+aXpSjmnKgpIDI6NDYgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRl
YWQub3JnPjoKPgo+IElzIHRoZXJlIGFueSBnb29kIHJlYXNvbiB3aHkgd2UgbmVlZCB0byBjYWxs
IHRoaXMgZnJvbSB0aGUgUENJZSBkcml2ZXIKPiBpbnN0ZWFkIG9mIGhhbmRsaW5nIGl0IGFsbCBp
biB0aGUgY29yZT8KCk9LLiBJJ2xsIG1vdmUgdGhlIHRoZXJtYWwgem9uZXMgcmVnaXN0cmF0aW9u
IGFuZCB1bnJlZ2lzdHJhdGlvbiBpbnRvIHRoZQpjb3JlIG1vZHVsZS4KCkNhbGwgbnZtZV90aGVy
bWFsX3pvbmVzX3JlZ2lzdGVyKCkgaW4gbnZtZV9pbml0X2lkZW50aWZ5KCksIGFuZCBjYWxsCm52
bWVfdGhlcm1hbF96b25lc191bnJlZ2lzdGVyKCkgaW4gbnZtZV9zdG9wX2N0cmwoKS4KCj4gU3Vy
ZSBub24tUENJZSBkZXZpY2VzIGFyZSB1c3VhbGx5IGV4dGVybmFsLCBidXQgc28gYXJlIHNvbWUg
UENJZQo+IGRldmljZXMsIHNvIGlmIHdlIHJlYWxseSBjYXJlIGFib3V0IHRoYXQgd2UgbmVlZCBz
b21lIHNvcnQgb2YgZmxhZwo+IGFueXdheS4KCkknbSBnb2luZyB0byBub3QgdXNlIHRoZSBmbGFn
IGluIG5leHQgdmVyc2lvbi4KSWYgdGhlcmUgaXMgYSBkZW1hbmQsIHdlJ2xsIGhhdmUgJ3VzZV90
eicgb3IgJ25vX3R6JyBmbGFnIGluIG52bWVfY3RybC4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
