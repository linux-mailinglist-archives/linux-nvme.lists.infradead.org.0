Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A62F9379
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 16:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iNdAI9DJIwy+fj0JzN51oVPBdLxYmmnc1Ih7+FLNpk=; b=IimBCrhjfP/QRj
	VOZFGsWe5CfxjPGCHMIuEXsxQMlcXIIj3jYxG7ahy8YIn4T3fANCwOGXT/XYJZzF5qeU5gpDd1Uss
	CgNKmztih53xbcwrS6ws/hBszNXP3ogRJYQafxCo9d4azpdE+qKyxax0kc1f5a4yeJuY6Z1QUWYiz
	TOh7QVBbB6JD9hOx2j+X2uN41TQw6Wj94rXKe5c7BVj1RT7u1HXP7scbDZVKqXO/RKBMU9FK+Om84
	pEU+kkDzsVxVx+anzV+nO/KojIf3hrUicUH81RJ60TJX8kbld/LBUwcAbnoQ9s3zQeAnFlKtGFaQt
	xZkfz9KUBN+LWqxXDLNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXeu-0005H7-HQ; Tue, 12 Nov 2019 15:00:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXep-0005GS-S2
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 15:00:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id t5so18182581ljk.0
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 07:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iM9vIrvF71SlXNaCy32ws36CT30vUrEEvwG8JDY3Y90=;
 b=VYmjpmT/pEQRTMR71BkEIT7ffs2Zo5YGAccCqw+vOS959rUluA4SXPHnEXvZdk1Bdg
 kUewqPBiCIT5N+XrvT3YRvmHDvIq5h1DfQoJErQ9fBrFABRhyxgYRJ40TZN2y4CcpSZj
 wp/4Mwp53aCkIvwgFP6EoaVZIGHV8pgLuk4jTWfW+5nf7j6KtTrqm8jph8QrQa9tDxIR
 RiiDZisqEipP045CFDy9SB9YvmLcOh2QPumBwy7NewtBt+8QblF1XlQUIq3ShD6N535n
 Anmub6kmnFfSValjXpTuZgwM42dBirfIvR6R/QSzfGLvAYlM2DOXzytphcDZKz5FaDTN
 KReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iM9vIrvF71SlXNaCy32ws36CT30vUrEEvwG8JDY3Y90=;
 b=jbXlo78DrvnyfVZUCSH/Tnv6a+wl3KmRwzfQe7YwTgwammtEInDqCTEDVX8Cpfm5gK
 MCGQIG46fvXj04hBFbRNCAB1NVlN6CUD+e9CkFjmVCo7KHfuRJRhZpeR+7MBwnd7fZnQ
 6N4x12lBHDQ1YzsJA3Sad077VbzgldjxTb/yktHE6rzs3Wut3/MXDHvrSqiiKc3dkz2m
 p1MH0d35Dd+paUEUZBANMOOlivALuguT1JZHvywSkyTCRkBM3IidobAjmB/0sUaxI0pj
 uKSSeHCwOlVQeViS/ApxakoiKPatJ2Ot2AxQOH+whHTOJ8/0VUcgTTxnnutknh3O+66N
 7CYw==
X-Gm-Message-State: APjAAAV+MRmib5+pcrrsqYsNoBKRoDVIYkRKDUghkkAA/SEN1Gw2AMRr
 25ZDbxBXyRtzesaZ7OPEj9Lq/ZVz35qekWO+IWo=
X-Google-Smtp-Source: APXvYqz4PlNcFY3pbT0OqPixLSr/FY4Ak0mQ9u+xpjL8eub1QWuRXmm2MHQv87xs9UUwEbi+68rddQ61w5y6frhBnu8=
X-Received: by 2002:a2e:9842:: with SMTP id e2mr20504769ljj.93.1573570833778; 
 Tue, 12 Nov 2019 07:00:33 -0800 (PST)
MIME-Version: 1.0
References: <1573395466-19526-1-git-send-email-akinobu.mita@gmail.com>
 <20191111165306.GA19814@lst.de>
 <CAC5umyi97UJZzk+4soD+th0BZ71WfnOqnTWWuTYKyo6aWTdLXA@mail.gmail.com>
 <20191112142127.GA11580@lst.de>
In-Reply-To: <20191112142127.GA11580@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 13 Nov 2019 00:00:22 +0900
Message-ID: <CAC5umygX=uBQsWV8O=9NL3HeVNo_iMcq7BE-vA-wpQtyU5iV3Q@mail.gmail.com>
Subject: Re: [PATCH] nvme: hwmon: provide temperature min and max values for
 each sensor
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_070039_929388_CBA451F2 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMTLml6Uo54GrKSAyMzoyMSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT46Cj4KPiBPbiBUdWUsIE5vdiAxMiwgMjAxOSBhdCAxMToxOTo0NlBNICswOTAwLCBBa2lub2J1
IE1pdGEgd3JvdGU6Cj4gPiBPSy4gSSdsbCBhZGQgdHdvIG1hY3Jvcy4KPiA+Cj4gPiAjZGVmaW5l
IE1JTExJQ0VMU0lVU19UT19LRUxWSU4odCkgKCh0KSAvIDEwMDAgKyAyNzMpCj4gPiAjZGVmaW5l
IEtFTFZJTl9UT19NSUxMSUNFTFNJVVModCkgKCgodCkgLSAyNzMpICogMTAwMCkKPgo+IENhbiB5
b3UgYWRkIHRoZW0gdG8gbGludXgvdGhlcm1hbC5oIHRoYXQgYWxyZWFkeSBoYXMgc2ltaWxhcgo+
IGhlbHBlcnM/CgpTaG91bGQgd2UgYWRkIGEgbmV3IGxpbnV4L3RlbXBlcmF0dXJlLmggc28gdGhh
dCBhbnkgb3RoZXIgZHJpdmVycyBvcgpzdWJzeXN0ZW1zIChpbmNsdWRpbmcgdGhlcm1hbC5oIGFu
ZCBod21vbi5oKSBjYW4gdXNlIHRoZXNlIG1hY3Jvcz8KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
