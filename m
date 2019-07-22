Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39647082F
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 20:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G3FmVfOoqyjIiuOmVTEdO28XAwYRqGSPJPLHuHCdRzA=; b=FZEFJ4znUXp6x5ke5ScP9IkrN
	HPDGBbLsaM4kg5ocVO2qL2+jya+K3zeQ4tad0Q5qFLboDYdHY8JIWYht5CYRrA6gIIxbYznxAgwCy
	a4fFKcp2ozDEI5ra1GG2e+Ef/+ndbEzWJDu4HMPPEtPZQFoO0sJLKVRkYAZ2UTi+yXJjS0L8Dp9fJ
	2VlpSAM4QYKotvBlt7f+D/IW9F4z47aPWhgN691fP26XQGTVWpD0IhCtc2jJA5zPS/HaJwsNq9wZU
	JjeXv1wZsrpC7W8H+gh9kly1PyDcPw4juehwjePNDSzWOZOuavOGXVh+K1ksZcx49fcPbriSTekOY
	U3cevAeWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcmh-0004N7-Gg; Mon, 22 Jul 2019 18:11:39 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcmN-0004Ip-BZ
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 18:11:25 +0000
Received: by mail-ot1-f53.google.com with SMTP id n5so41247711otk.1
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 11:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tCcwnFmD0/o9OYj73kUP50cOreR3tDiaYKe57y1EEgg=;
 b=HpweCPoU/Hx+mwHYi/0/TXYV5/AUO5ggL2OYEPH42mVLY5Goq/yQO8wOMiG26m2m3V
 Ke0xZuFFIeNjHtRr3NmlisRRR0FAcsfISEhj7XK5kQvVxAXuNHKt4HuiyHyk/W6BnikH
 qCuLMkeVkF6Kdu6QAEsaSdGKRZy1AMqGVab4iInt6d6kFk/xKAF12wUJ01NPQNlBDbH7
 UOFHGi1I36a6nqyxLDnyKgUDwKZeSAdZ4EUUfhoNbfHCpGOzvP1UyuER6v2DYo39RNvc
 gBhIJfV5p0XoR8cIGfF/m2zaIggUh8R3JGXBhg3/ftbtLuvVIaD/YatcBSuOq4UORtdP
 NdZA==
X-Gm-Message-State: APjAAAWz4UWpD9nEI3m2eR/l8QVcryJdd50e9et3nWgXzL8YH7HO+liA
 asfNNZhQ/X9od4T/uYuEAA8=
X-Google-Smtp-Source: APXvYqyukFncX6DEfphxx/yIoG8yrg5vYDh/0IvWVTR9CMrW0V9VIZqTY/sFH/9+It/kTb5x+AGeXg==
X-Received: by 2002:a9d:19e5:: with SMTP id k92mr19830784otk.65.1563819073881; 
 Mon, 22 Jul 2019 11:11:13 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i63sm14326176oih.18.2019.07.22.11.11.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 11:11:13 -0700 (PDT)
Subject: Re: [PATCH 0/4] small set of nvme cleanups
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org
References: <20190719194546.24229-1-sagi@grimberg.me>
 <3086fcef-efb2-85e4-4e36-2c5734cf3068@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <49f5b976-ce60-63a0-d5dc-4d650de41de5@grimberg.me>
Date: Mon, 22 Jul 2019 11:11:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3086fcef-efb2-85e4-4e36-2c5734cf3068@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_111120_185285_4EBA0FCB 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gVGhlIGNoYW5nZXMgbG9vayBmaW5lIGV4Y2VwdCBmb3IgMSBtYWluIGlzc3VlOsKgIEFsbCBv
ZiB0aGUgbnZtZiAKPiB0cmFuc3BvcnRzIGNhbGwgbnZtZV9lbmFibGVfY3RybCgpLCB3aGljaCBz
dGlsbCByZWZlcmVuY2VzIGN0cmwtPmNhcCwgCj4gYmVmb3JlIHRoZXkgY2FsbCBudm1lX2luaXRf
aWRlbnRpZnkoKS4KCllvdSdyZSByaWdodCwgSSdsbCBtb3ZlIHRoZSBjYXAgcmVnaXN0ZXIgcmVh
ZCB0byBudm1lX2VuYWJsZV9jdHJsLgoKVGhhbmtzIQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
