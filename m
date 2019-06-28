Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6DB5A015
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 17:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZdEjnL/NEyNZDvUqRr4eGIqH35hv1xzKYhp2iBsL28=; b=P9QA63qXVQ7BoD
	5N5bfE/lUVgn7Mi5qEqNVxmXNLuZcvdwxVq/GmvZ7IV09rWHpMtpMjiqWMAGOt3E3mp0uE8H3F7Mn
	jyQ/Sep8f1TqlVXlDoI1Jt1GWa6/ZK46UGyXNfyYBL+bdwIeJoy4Hwo7pPCAjMhbdeG4sqeWHQKzz
	Zja4izALfk13ObM3PqONJMVJbQB32H2cZv3lPmbYfElsvaqyhqQl+xSvKBuErGbj6PBfLkJfMOOkQ
	Yf2uqZIeB/mtcLXKkHxqRdOzSCONVXF3CNh8JUlwZhLShOCA3SKN3rwCIC9azJ0+T3LVFjXBVBwzh
	rKoLStcWa2TYJDHLc4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtFb-0004Vn-OB; Fri, 28 Jun 2019 15:57:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtFT-0004V9-Rb
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 15:57:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id x15so9602574wmj.3
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 08:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wxiJ0Py1BE8Z+8GDLum/znTVbocpCo+0p2g4WsgPq+U=;
 b=jICs71drass6uhcYgQQFV2jNMq8bgE9CQj2JLq45S6AEcOTeEpKEcrRV27dcaf+KNX
 3idpVKIsXoISGszBSW2pM6qRHFEYV2xYVbg6n9i/bu3krm3uMrQoiFjZG0LRQn4jaS0f
 bwiYr+oxeaa2eXfPO1qSPi+b8+M3cF9JTo/jYyhpYJ8/ifN6e0cleUYJ2rG2RBGisDv1
 7F0IE8woPzqlBMeMEhDqpRMNbpbSTc0XYMYwh/vkoJElnnzz3agy+mtA0EU7t3rHiVke
 0N4jKvd760uNv+XB5vqF8jsSYCTRXHhi0g/PGzwjJHmFHb0SdJBDLXSwKLhZfV7tP1A2
 UZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wxiJ0Py1BE8Z+8GDLum/znTVbocpCo+0p2g4WsgPq+U=;
 b=BcTU2AkMvj6ocwoo2JTZe4wegrLFrBcgSWs82KvcmnWCJEzohrCjB0K9sPbXV931gM
 P3iZTCVlibpLAAD7uQuHnE2H4TocA3ChjrkSi0U4C0MccKwXglaj3+yKPYIeSYfjdTeB
 yYI+lF2R3ZiUm7Z1BO+gLDCPSikDy3AYytJPN7PrgL4frbc2qGz67ur7yVCUmWY7oGoe
 eobSiobXHYXSDteHcMLe9gTTY9lUUkREjHtULqyOcR8jz0FA+aX1QyuEdue4j2WXszR7
 z1qKyARquqXwjSUEl57MXEC7Gyq02veviivD/8fKUdNpOmDgdIoRnXOhH4ovHRABK08O
 +/Gw==
X-Gm-Message-State: APjAAAUXRRTUGCS1d/oHfN00nSzlISfRtBo3FvP6kfPwaWfNycaBUotH
 m9nmjaVyr4W15ymrQbGpVhwi5UueXXrDz6zTT5k=
X-Google-Smtp-Source: APXvYqzbI8iEqZSPn8N/P8HKRn/KFRnWNx4EPochs9CsAZYejtmbHcrhuW0jBHi4fSpRq32xxlUk4EWFspZuSQPj1sQ=
X-Received: by 2002:a7b:c3d7:: with SMTP id t23mr7552427wmj.94.1561737433931; 
 Fri, 28 Jun 2019 08:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <6e3b0f511a291dd0ce570a6cc5393e10d4509d0e.1561385989.git.zhangweiping@didiglobal.com>
 <20190627103719.GC4421@minwooim-desktop> <20190627110342.GA13612@lst.de>
In-Reply-To: <20190627110342.GA13612@lst.de>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Fri, 28 Jun 2019 23:57:01 +0800
Message-ID: <CAA70yB5uve6x-t56u7RcM8=JNSXh644uErC5z4m5h2C1rkSuvA@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] nvme: add support weighted round robin queue
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_085715_918220_A3347BDD 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keith.busch@intel.com, linux-block@vger.kernel.org,
 Minwoo Im <minwoo.im.dev@gmail.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IOS6jjIwMTnlubQ25pyIMjfml6Xlkajlm5sg
5LiL5Y2INzowNuWGmemBk++8mgo+Cj4gT24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDc6Mzc6MTlQ
TSArMDkwMCwgTWlud29vIEltIHdyb3RlOgo+ID4gSGksIE1haW50YWluZXJzCj4gPgo+ID4gV291
bGQgeW91IGd1eXMgcGxlYXNlIGdpdmUgc29tZSB0aG91Z2h0cyBhYm91dCB0aGlzIHBhdGNoPyAg
SSBsaWtlIHRoaXMKPiA+IGZlYXR1cmUgV1JSIGFkZGl0aW9uIHRvIHRoZSBkcml2ZXIgc28gSSBy
ZWFsbHkgd2FudCB0byBoZWFyIHNvbWV0aGluZwo+ID4gZnJvbSB5b3UgZ3V5cy4KPgo+IFdlIGFy
ZSBhdCB0aGUgZW5kIG9mIHRoZSBtZXJnZSB3aW5kb3cgd2l0aCB0b25zIG9mIHRoaW5ncyB0byBz
b3J0IG91dC4KPiBBIGdpYW50IGZlYXR1cmUgc2VyaWVzIHdpdGggYSBsb3Qgb2YgaW1wYWN0IGlz
IG5vdCBhdCB0aGUgdG9wIG9mIHRoZQo+IHByaW9yaXR5IGxpc3QgcmlnaHQgbm93LgoKSGkgQ2hy
aXN0b3BoLAoKVGhlcmUgYXJlIHNvbWUgZmVlZGJhY2sgaW4gVjMsIEkgcmVhbGx5IHdhbnQgdG8g
Z2V0IHNvbWUgbW9yZSBmZWVkYmFjayBmcm9tIHlvdQphbmQgb3RoZXIgcGVvcGxlLCBhdCB0aGF0
IHRpbWUgSSBwb3N0IFY0LgoKU28gcGxlYXNlIGdpdmUgc29tZSBjb21tZW50cyBmb3IgVjMgYXQg
eW91ciBjb252ZW5pZW5jZSBhZnRlciB0aGlzIG1lcmdlIHdpbmRvdy4KClRoYW5rcyBhIHRvbgpX
ZWlwaW5nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
