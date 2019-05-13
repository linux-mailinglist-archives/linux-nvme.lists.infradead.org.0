Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7421B95F
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahUMMPLRSO/Jn2x5CMrhKr+bXwvNQPc+xGnqzOXKJKs=; b=Gaz6znbJzoSxPa
	fjt8/nK6c3vP4OVfQRIERAs2O428/jwC6/t7aZLrZZ29dpIboL276TZgS4TPkzbiLUnIgU08U1rPM
	HtgbDMgSVW2kMNf2Sh0HoO3MNcXKGE2YddOZdz+oueOjB6A7Y+hAgyDnbyyuC1oe73a0uN4G99dNb
	EPI5UF/8kZ/Qibyt+9tg2c0Q9nR43WQ/Xp4lJPJpsZiM4l9yNpDOA3MOhYZhAF5LEcspvcMmRcRDJ
	IqV+TzREenuMISsAEsFCEIlLYFNiS6bbUfRJvF/dMoAsAytUoSGh5QoyZyowCUzaxhJpkZ59CeZbv
	mo03PM2kXHSfR2yxuCog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCSP-0008Pn-OL; Mon, 13 May 2019 15:01:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCS7-0008Kb-2x
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:01:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so6905974pgi.10
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 08:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wqVVN3IIgShUqzAShGWEI+byOb6ln1yA8gH7qqjTguw=;
 b=BwZRENipTYdf44NKxuyIB0lt0XfhTgELdsx+5j8XBjRFb4y/gV+ZkXtYj+r8r7aZuE
 8nMs3gaatVq38w7uj5RBuigzmFBSXh0JM0xwYo0aSV259ZAmfyql1d34478aub07/vGx
 GeIFAuf9+TaN6NDBgMLsPYbCWPgBjUwJZc5OWRPXGELo6EgPmnDLk6jOGqtmFIng6+fd
 9vEG5i1/qTvnhqwcerEvL7E5fXKNY4YqvpriP40b0rqNnZ/fkVBHGJMXu89Opfuqus5h
 fPsB+H4DtY/Nz4lMdzuUJojeg2DPdESrd4kx3MqgHADcInwqA9CWyBNPxSe4BKCQ/cDj
 EM4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wqVVN3IIgShUqzAShGWEI+byOb6ln1yA8gH7qqjTguw=;
 b=Hfb/H5Kh0wTCDqx6ccs1HEzdQlH0fOJlXnn4P1VOLpaICOvUg3Kt9v2uJ6YK2crEiV
 ZDic6GeJiSK6UPPfCZV87usqAmdSOqkqBrOmBZ397v5trNG4eRwzBOW3mO7OJqd/XRMv
 6T0U44clf9wn6+54GgsdpIy/MjrbAyzucPhQZbRf65iVf35HiLNQSftQOda8dUAW2iRi
 iylM3KPRo2owK9MnG9jGAa8fI9DJlmhiYCsjIoYm689ogpSM4v6gCZ2uaM3f7gz7rLI6
 uymhSnpQOnr65g0ZPhCRrTMKGhYERSeUQwJ9whqRqQwb/8QRpFAIkApWV+/zb4GC2/xX
 CCJw==
X-Gm-Message-State: APjAAAWuzVlSCL8LgIt3ndrrnD/hb52mfPYyGIHcBiSqKmoRDmhIEmuv
 4ttbmox/7NHMo4fgv3L0i8qgeNlQuAOoTzgopvw=
X-Google-Smtp-Source: APXvYqzb1pC6YBP8f3TrWUM/qVw4SAVtN8Iti9N+i3omIf8rlJuWnxt3bcuzdImJEKQIWIiazHiY3NOPOlmGNNbODA8=
X-Received: by 2002:aa7:9214:: with SMTP id 20mr33394163pfo.202.1557759678130; 
 Mon, 13 May 2019 08:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
 <20190513135031.GC15318@localhost.localdomain>
In-Reply-To: <20190513135031.GC15318@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 14 May 2019 00:01:07 +0900
Message-ID: <CAC5umyhT1MW_d8wjFj2qBaf1+j0b62yP_OzuGUbnV+_tnpkrEw@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080119_132424_BDCCD994 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxM+aXpSjmnIgpIDIyOjU1IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9y
Zz46Cj4KPiBPbiBTdW4sIE1heSAxMiwgMjAxOSBhdCAwODo1NDoxNUFNIC0wNzAwLCBBa2lub2J1
IE1pdGEgd3JvdGU6Cj4gPiArc3RhdGljIHZvaWQgbnZtZV9jb3JlZHVtcF9sb2dzKHN0cnVjdCBu
dm1lX2RldiAqZGV2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkZXZfY29yZWR1bXBtX2J1bGtf
ZGF0YSAqYnVsa19kYXRhOwo+ID4gKwo+ID4gKyAgICAgaWYgKCFkZXYtPmR1bXBzKQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm47Cj4gPiArCj4gPiArICAgICBidWxrX2RhdGEgPSBudm1lX2NvcmVk
dW1wX2FsbG9jKGRldiwgMSk7Cj4gPiArICAgICBpZiAoIWJ1bGtfZGF0YSkKPiA+ICsgICAgICAg
ICAgICAgcmV0dXJuOwo+ID4gKwo+ID4gKyAgICAgaWYgKG52bWVfY29yZWR1bXBfdGVsZW1ldHJ5
X2xvZyhidWxrX2RhdGEsICZkZXYtPmN0cmwpKQo+ID4gKyAgICAgICAgICAgICBkZXYtPm51bV9k
dW1wcy0tOwo+ID4gK30KPgo+IFlvdSdsbCBuZWVkIHRoaXMgZnVuY3Rpb24gdG8gcmV0dXJuIHRo
ZSBzYW1lICdpbnQnIHZhbHVlIGZyb20KPiBudm1lX2NvcmVkdW1wX3RlbGVtZXRyeV9sb2cuIEEg
bmVnYXRpdmUgdmFsdWUgaGVyZSBtZWFucyB0aGF0IHRoZQo+IGRldmljZSBkaWRuJ3QgcHJvZHVj
ZSBhIHJlc3BvbnNlLCBhbmQgdGhhdCdzIGltcG9ydGFudCB0byBjaGVjayBmcm9tCj4gdGhlIHJl
c2V0IHdvcmsgc2luY2UgeW91J2xsIG5lZWQgdG8gYWJvcnQgdGhlIHJlc2V0IGlmIHRoYXQgaGFw
cGVucy4KCk9LLiAgTWFrZSBzZW5zZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
