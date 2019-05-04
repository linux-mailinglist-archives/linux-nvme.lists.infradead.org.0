Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D453F13A92
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 16:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Lk+HCCCtbRjENiBtSJPPD98Yp9bFFWafzNa/pKIUp0=; b=WB47NHHsc1yed4
	/rWdGzmelpqAq34GGcRRsKct/ZbhuQdxV+gEiyLZjVqjLvvVMdQ0EQAz5S5QWycGP8ABzpPl64kIC
	Ev44Wwi89Q98yX0ryusa27SYdRgIpMWVVYDb2MqNq2FXFL9ccMADMKDI4HDvdP3NaXMOq7+7uy1gd
	XVLXCVFLd38+vi6V6CbblTi9Z8t+hbxvfKbvQGminP0bDVw3XPAOyobqJiuGUotDxHFmzSJwwY3/n
	DJSqR+VHD4761ofkwaG9NFcPatAytwPG9pWPYzL3aMpLt68P6/blPSPWLbEhq2jnUIwdy0DJ236j+
	dqtFMvvfpDWsif1NJLcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvdB-0005L7-Kh; Sat, 04 May 2019 14:27:13 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvd5-0005Ep-Qp
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 14:27:09 +0000
Received: by mail-pg1-x52a.google.com with SMTP id h1so4181592pgs.2
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 07:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YwuBHfxUv+FsNTRE8OYRjXR2YtGLoZqY0npSTmEsbfw=;
 b=EWcuTvn96WfVDGvWWPSnvmbcRd2uBXRiUVok0LeVOv7Lm/ZVRvPqql8jQsig+RYPPQ
 mhwXmmocTPWWAxZLtYPx/t3nu5shKRqPOz5UipgEP58g9vhEbQ0izwN0UiADH6ZOtu8T
 4My7UHNsA+VrGyEZa9uDAlrUIwJOxQNokLn8Gbyt8I5JuSmExn8lvfjkKxinWl+dp9J1
 7J66tmcWqCevyrh2wmgMzpEpIe2X3Ayl4U38x5jILrI90w5cjt8jfyL+Uy766tDzhO7A
 HrSBrSFWpdywz82D1vCb8dc3GjBQd4QyCx3yDodcvbNcHWJwTzl0geXdmRI+Exw5gQXq
 WM1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YwuBHfxUv+FsNTRE8OYRjXR2YtGLoZqY0npSTmEsbfw=;
 b=VgDH9EgiyhKUyPIEHuPEsz2lsDoXRg4vxnFssdrIom2pPcfNiszxrdVW46k4ng+qza
 K0OpqwGMV4zw3HAUwwmsEdT/I7uvz7d4a4Hg08hu0gJu7fvb2om7h0clHhS9vIHNZZQf
 hy4Gm+CMZUa2oKIQhXUnFzgDrWY/vlTMtJKeBsrLeEs57WRnTX9Kp73gOZi9FJTZR9IF
 oolqtwwuxEVQjTSgDbHf+3DnMfpd4agwSPpzdMv86HXxK2p3GaBlkf4kAbxamJvLYopD
 +Si1shuCFR9vATadBqUHcoNy8Sl1BqQN2IaUQVT3rhyaJIUGd73pJdxAzqdo3uuDq0/X
 rNvA==
X-Gm-Message-State: APjAAAVqD+goFZz0Q89aFNCkNqa3COySjv1ySG5w50PMcvVK0LEoDaoS
 3bzlsZfPM2jXh4nh2FifQ4qf+2tMv5oaZdieVo0=
X-Google-Smtp-Source: APXvYqyjzRNY6LxBhCOHZqPyasesLIaHD+lDP6hp0I048CH4/ILXVyk1V0RMtV+/tBP8AIOUIn6Xf2Pz8gc9/tNqQ8o=
X-Received: by 2002:a63:6988:: with SMTP id
 e130mr19062126pgc.150.1556980026387; 
 Sat, 04 May 2019 07:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
 <66a5d068-47b1-341f-988f-c890d7f01720@gmail.com>
In-Reply-To: <66a5d068-47b1-341f-988f-c890d7f01720@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 4 May 2019 23:26:55 +0900
Message-ID: <CAC5umyjsAh7aZ8JEh8=QMXpNwRdnxxfdPBDwmuVKfafG+rT-PA@mail.gmail.com>
Subject: Re: [PATCH 3/4] nvme-pci: add device coredump support
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_072707_952795_883AC249 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jens Axboe <axboe@fb.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg05pelKOWcnykgMTk6MDQgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWls
LmNvbT46Cj4KPiBIaSwgQWtpbm9idSwKPgo+IFJlZ2FyZGxlc3MgdG8gcmVwbHkgb2YgdGhlIGNv
dmVyLCBmZXcgbml0cyBoZXJlLgo+Cj4gT24gNS8yLzE5IDU6NTkgUE0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+ICsKPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG52bWVfcmVnIG52bWVfcmVnc1td
ID0gewo+ID4gKyAgICAgeyBOVk1FX1JFR19DQVAsICAgICAgICAgImNhcCIsICAgICAgICAgIDY0
IH0sCj4gPiArICAgICB7IE5WTUVfUkVHX1ZTLCAgICAgICAgICAidmVyc2lvbiIsICAgICAgMzIg
fSwKPgo+IFdoeSBkb24ndCB3ZSBqdXN0IGdvIHdpdGggInZzIiBpbnN0ZWFkIG9mIGZ1bGwgbmFt
ZSBvZiBpdCBqdXN0IGxpa2UKPiB0aGUgb3RoZXJzLgoKSSB0cmllZCB0byBpbWl0YXRlIHRoZSBv
dXRwdXQgb2YgJ252bWUgc2hvdy1yZWdzJy4KCj4gPiArICAgICB7IE5WTUVfUkVHX0lOVE1TLCAg
ICAgICAiaW50bXMiLCAgICAgICAgMzIgfSwKPiA+ICsgICAgIHsgTlZNRV9SRUdfSU5UTUMsICAg
ICAgICJpbnRtYyIsICAgICAgICAzMiB9LAo+ID4gKyAgICAgeyBOVk1FX1JFR19DQywgICAgICAg
ICAgImNjIiwgICAgICAgICAgIDMyIH0sCj4gPiArICAgICB7IE5WTUVfUkVHX0NTVFMsICAgICAg
ICAiY3N0cyIsICAgICAgICAgMzIgfSwKPiA+ICsgICAgIHsgTlZNRV9SRUdfTlNTUiwgICAgICAg
ICJuc3NyIiwgICAgICAgICAzMiB9LAo+ID4gKyAgICAgeyBOVk1FX1JFR19BUUEsICAgICAgICAg
ImFxYSIsICAgICAgICAgIDMyIH0sCj4gPiArICAgICB7IE5WTUVfUkVHX0FTUSwgICAgICAgICAi
YXNxIiwgICAgICAgICAgNjQgfSwKPiA+ICsgICAgIHsgTlZNRV9SRUdfQUNRLCAgICAgICAgICJh
Y3EiLCAgICAgICAgICA2NCB9LAo+ID4gKyAgICAgeyBOVk1FX1JFR19DTUJMT0MsICAgICAgImNt
YmxvYyIsICAgICAgIDMyIH0sCj4gPiArICAgICB7IE5WTUVfUkVHX0NNQlNaLCAgICAgICAiY21i
c3oiLCAgICAgICAgMzIgfSwKPgo+IElmIGl0J3MgZ29pbmcgdG8gc3VwcG9ydCBvcHRpb25hbCBy
ZWdpc3RlcnMgYWxzbywgdGhlbiB3ZSBjYW4gaGF2ZQo+IEJQLXJlbGF0ZWQgdGhpbmdzIChCUElO
Rk8sIEJQUlNFTCwgQlBNQkwpIGhlcmUgYWxzby4KCkknbSBnb2luZyB0byBjaGFuZ2UgdGhlIHJl
Z2lzdGVyIGR1bXAgaW4gYmluYXJ5IGZvcm1hdCBqdXN0IGxpa2UKJ252bWUgc2hvdy1yZWdzIC1v
IGJpbmFyeScgZG9lcy4gIFNvIHdlJ2xsIGhhdmUgcmVnaXN0ZXJzIGZyb20gMDBoIHRvIDRGaC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
