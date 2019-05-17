Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F2721ABC
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 17:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+DVYyN/19XC7IqYhfAy8wuW1yR/mmkYHwScJnUyyfk=; b=KMzKmXJtCWrrvC
	T+UZmYCXaXiT5c/7w/sN09d9pvxx+9afyxhhA7XDWo5gWVM0VUppMb59qi5nHURDqOXnxLsnVtMEW
	akSnH0lla8gqkus7dHvKvFp2s21nBGpHAVfe/h/7VD4YVWuR8bjYpbymNhY1FRgkE86XhVvZWGjj9
	nkB5qsP57GC1nAIbanrY649kpKeZVfSm+jlVaXOx9ulVtHVTeYENhoKfDGucMqy2EwQaMgkiKxTWB
	0N+5FiTxg4m+HhJ21favxVX8RlqZckyPvlP9ItuVjfwXwpbl5b0fC4BH9KlzdXQMZ/CMwxgM/uDRn
	Ao/tEzs1JH3M/GGUPw+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReuU-0000s4-Ca; Fri, 17 May 2019 15:36:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReuO-0000rN-OK
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 15:36:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so3527614plz.1
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=46oHXKvqSKWOuSCep8CgcAD851AYqrmGpjUGnxm4x+Q=;
 b=L9MqeWCSAyXVGeJCFI/FaJ3sCxf/aJ5yg2oT3O6lhu/oOBqXXWD3ZFQNTak6miv1Ql
 8mlbx7Ha0iF5Qqd9GY/JUMQLKHiVuV/dJW6qARLP6zqNPYBMzV5jax5GwOsDdOafVzBf
 CypQyGcXFiY11xx4tEEfCCNdyFtl56FE48Gb1gLAjS8Xt+OD3peA41KSk8n65cxl2IRo
 VB8vCZ6Q0X5lYvxWC+4aCAQCfkivbHzCWJ7xj2lnYMkP7ykZbAdkz6U8RqCycghQ7fwH
 hS5pH/laHP4Lz6bOdbZOBrDvjSmMuf6RBn9WdoXo8Y8OQ7kk8QWUWsA3UZfW7Wf5bYJ4
 NnQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=46oHXKvqSKWOuSCep8CgcAD851AYqrmGpjUGnxm4x+Q=;
 b=pdtnJV0rGAcmw30/gEZu5TUo09f2hdqgtzXnh8sTMhEcB7U9FSL3yGoQsyL4yciqjj
 9UE25L0fya5NF27nrkf+4BFYJWsayLhcDveTxrOVWd8428zofjRnzRtsKDApx/jsEGhX
 HFh2MeocDy7XXHQtA6VDRHJKKix85r1zwl2t1m8A6ligpap17nJKz8zxCaa1GFtxZHJl
 65Idc8BLyF1pkVVnaYImyrgAJ/V1F2XPPrc9X05yHmas7/YBOiE64gWUFlDw1LW195jp
 WO5J/XadWts1JzS+czUClNGeuTTuefQJghoJoLr3/1NEW46vPduJ/FHHihttJlQL/O+F
 oyng==
X-Gm-Message-State: APjAAAXeZNrw65bU+xDI4wMbw3TYzEnEqKyaNvGw4dlufJebvgAFT2Rp
 kECMyNL1Gn/VcAES2/TcgXyvF/BI3Ru/1rXsWzg=
X-Google-Smtp-Source: APXvYqxzP0QWgEuoEYzgQJxETVLl03tm1qImUSkV4WabYS1+qZ+EYdKcv8RUBdDHD5xoUJkkk+GfiSfuppl6Sd56ulQ=
X-Received: by 2002:a17:902:56a:: with SMTP id
 97mr18854602plf.20.1558107392336; 
 Fri, 17 May 2019 08:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <2bf1e2cf-b922-d947-c939-375aba75994d@intel.com>
 <CAC5umygRTpq3GktaMKBdC8+-ghkJKCzFME+rm+V6vasrOAyOPw@mail.gmail.com>
 <20190517150924.GA25006@localhost.localdomain>
In-Reply-To: <20190517150924.GA25006@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 18 May 2019 00:36:21 +0900
Message-ID: <CAC5umyhu6_s_CTvOL4_Rp7unqcw+jt9fPo++iGnumqDFQJecxA@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083632_812224_96E5031B 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxOOaXpSjlnJ8pIDA6MTQgS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3Jn
PjoKPgo+IE9uIFNhdCwgTWF5IDE4LCAyMDE5IGF0IDEyOjAxOjU3QU0gKzA5MDAsIEFraW5vYnUg
TWl0YSB3cm90ZToKPiA+Cj4gPiBUaGlzIGlzIHdvcmtfc3RydWN0LCBub3Qgd29ya3F1ZXVlLiAg
U28gaXQgY2FuJ3QgYmUgZGVzdHJveWVkLgo+ID4gQnV0IEkgbm90aWNlZCB0aGF0IHdlIHNob3Vs
ZCBjYWxsIGZsdXNoX3dvcmsgZm9yIHRoZXJtYWxfd29yayBhdAo+ID4gdW5yZWdpc3RlcmluZyB0
aGVybWFsIHpvbmUgZGV2aWNlcy4KPgo+IEluc3RlYWQgb2YgY3JlYXRpbmcgeWV0LWFub3RoZXIt
d29ya19zdHJ1Y3QsIGxldCdzIGFwcGVuZCB0aGlzIGV2ZW50J3MKPiBhY3Rpb24gdG8gdGhlIGV4
aXN0aW5nIGFzeW5jX2V2ZW50X3dvcmsuCgpHb29kIGlkZWEuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
