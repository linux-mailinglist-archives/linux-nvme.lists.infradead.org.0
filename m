Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817261B965
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRhBGRM+aib7Js4NWyqppHy8jjLP+XWFJRsE3VpKkL4=; b=H83uROYgD7hDzU
	FYj/Vb5BpoFORe1tYMo+knGPfNyVD35iaTYFC/cZU5HECH4w/pNs78qRIv42MNJf7difs4Rh1Ql0Y
	T+wvxuVC/cih7opNZGSdsRH8ojzU7/X6x1u1kFcFS5xH61AcHqAP/mw8PkgJP3mIFd+kzzeSHRbBE
	uatFZztymNJp6Z+5fUt3UlCSn1McnWcMTHgiP/vnkqnUY+uUP4w0BQ62LFunbqlxUSs1Ifep1wLk3
	Wel2PTCE3Ia8JtnCL+SctjxSWJpDl+48R8SS/MMy0E2DRB/LSTGVG1ReNiUJCJoYd3sqWakRZo0jZ
	uowdRolUv4mY6hfXC5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCSu-0000Eh-Fl; Mon, 13 May 2019 15:02:08 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCSp-0000EH-CO
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:02:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so7337642pfm.13
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 08:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C7voGvIz1Mro50lqBnPKKj2CWBhaokOwzo7P+5YBsm8=;
 b=p4xxK9Mtx+xg5+k+hZu9ZBOfd0Sf1jrR3sIiWSG/lyTOQtD+Q8c/mSfXlpRX2UHFdx
 IWzvaZfGuFsrAnS7jAOduiso+wNQMqNnL1JHU9xHIHWl+r9+i3gq5FNFyD5lAtKkJ84J
 6smJ66yf9FEYk0amnNLRgUH0DNsD1qapxtA3Uw6ONaMrJy3WvxAVUfOK5/Xu4fUsEgqC
 rB0bRzJeq+givqfupC5xMLgzkxhWs21s6FIvoDneGMyLyeDps0M8d6N40uUjanpgwFgo
 Kg6FTMpYwOEraKAnCnTzyh0Odeojfvqg0ytInx9P3zVTC8C5K8fvWWSAKnLyklmL5Hnq
 wuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C7voGvIz1Mro50lqBnPKKj2CWBhaokOwzo7P+5YBsm8=;
 b=btktye6l+RtXtU9B8BFBj4RVyVkKO42eV1B2lh2bSCVK/+r+BAef89fQhSJSwhL6da
 lvf1MZqO2tAtn2aptkdQypFfimjYmMz61BWyTfK4kN5Noc+i9cgBv2g7rjh9g8cl7Gmn
 Gq7zvEpE/9rQwewPkvAyxR6xCWP9RUVsJNBPBX6opWnl4mdqRKaXpEaZpwJAkty5Bs0W
 rb3GW8JTdLOsKQspGwEDGcELzK028uL4+r+UAWqzX2VMLpjpAbjWvUpWDhaxurnELxv/
 +ywhgAEnfwYYCRJifZb8atFCNoER7UunIzFX174QGdsFtAO3pE+HgyVnqpFWI9VNJa4Z
 kOGQ==
X-Gm-Message-State: APjAAAUUePxin8BGvgROTofnk6ujwR0+DIqrcCXGhjcGKzlrcZsTiegL
 qWpWRylHay3k5eie1nm23tpNI9zvTSv+De3LR1M=
X-Google-Smtp-Source: APXvYqzp9FkkuUjdWmn0w1KnmfDMwzRBLLXx/D3EzBYNrlWhBjehcPBiILMqNMEjQjfhBB4PZXDGZJog/qYs8AhyIs4=
X-Received: by 2002:a63:6988:: with SMTP id
 e130mr32026855pgc.150.1557759722780; 
 Mon, 13 May 2019 08:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
 <20190513140246.GB24840@lst.de>
In-Reply-To: <20190513140246.GB24840@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 14 May 2019 00:01:51 +0900
Message-ID: <CAC5umygobKcQ4NacG7cGkuqXR1qLUFCRBovWu5n=EOs=mu=esg@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080203_420480_E411645B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxM+aXpSjmnIgpIDIzOjAzIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRl
PjoKPgo+IFVzYWdlIG9mIGEgc2NhdHRlcmxpc3QgaGVyZSBpcyByYXRoZXIgYm9ndXMgYXMgd2Ug
bmV2ZXIgdXNlCj4gaXQgZm9yIGRtYSBtYXBwaW5nLiAgV2h5IGNhbid0IHlvdSBzdG9yZSB0aGUg
dmFyaW91cyBwYWdlcyBpbiBhCj4gbGFyZ2UgYmlvX3ZlYyBhbmQgdGhlbiBqdXN0IGlzc3VlIHRo
YXQgdG8gdGhlIGRldmljZSBpbiBvbmUKPiBnZXQgbG9nIHBhZ2UgY29tbWFuZD8gIChvciBhdCBs
ZWFzdCBhIGZldyBpZiBNRFRTIGtpY2tzIGluPykKCk9LLiAgSSdsbCB0cnkgdG8gdXNlIGJpb192
ZWMgYW5kIHNlZSBob3cgaXQgZ29lcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
