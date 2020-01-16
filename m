Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD75613DD2C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 15:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajpfyFkQVJodpytT92qM9p3+WQILZrmiPu44lwkEM90=; b=ZfF/fbaLib6rMy
	t0jUTJFHdtPo1oaDkCDWvXJBKGIX3MzaoG9R3QF0Y+pleiS0dXsjAbnbwCL9FRuUqep1SqutaVRbK
	aoY7v1X60gsoUuAW8eCvbYK0AHZKY/7VkKIL/WNo7PaLjfTpFq+/QZP4UbeltjDGCRnELyEpaqnz6
	yWINSzX9lv8YBiJAqTcv9GHGYbIGyum6/LObRdhL2DwEZomjHokfO86QFBKGf8TnncLpBIc6SYTQp
	wmBN3zR/SwrwPUs46VLRqDE5IcHprgOfkSZ1Y9dpu9EYlPCEvVulIL/VOxwM9vvlFEqUe6VrY0whB
	FC/pEFggu/w7XVcL18yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5wG-0005bA-QY; Thu, 16 Jan 2020 14:16:00 +0000
Received: from forward501p.mail.yandex.net ([2a02:6b8:0:1472:2741:0:8b7:120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1is5w8-0005Zp-Em
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 14:15:57 +0000
Received: from mxback1q.mail.yandex.net (mxback1q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:39:0:640:25b3:aea5])
 by forward501p.mail.yandex.net (Yandex) with ESMTP id D97BF35008CC;
 Thu, 16 Jan 2020 17:15:41 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback1q.mail.yandex.net (mxback/Yandex) with ESMTP id OORCNMaddV-FfGeRYbc; 
 Thu, 16 Jan 2020 17:15:41 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1579184141; bh=4yds1dAAPaFstw1xk+DTNGLaxN4HfBeKCzWAsZYlcTo=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=o/ooMMWFreoaTVGM0KnZpoBakSXFEUJ2ZH0IScoMPCg79TzBY4vMu81bYGxZQqEZT
 CwkPdMUAtyEgoSzWnDIiiFcyuVirocwlJbIDCfpFiBTdqkXxKubxaNrdj0ZGA2lww4
 TJuEgSJUhUzBQVAFZfXP326lIaRAydp6XFuSO7/k=
Authentication-Results: mxback1q.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by vla4-9d01d86ae0b7.qloud-c.yandex.net with HTTP;
 Thu, 16 Jan 2020 17:15:40 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: linux-nvme <linux-nvme@lists.infradead.org>
In-Reply-To: <20191212104322.GA19996@infradead.org>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
 <20191212093341.GA20683@infradead.org>
 <3861821576146988@sas8-ed615920eca2.qloud-c.yandex.net>
 <20191212104322.GA19996@infradead.org>
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 16 Jan 2020 17:15:40 +0300
Message-Id: <416341579184141@vla4-9d01d86ae0b7.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_061552_812241_F642E8FF 
X-CRM114-Status: UNSURE (   4.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:1472:2741:0:8b7:120 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alextalker[at]yandex.ru)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

UGluZy4KCldvdWxkIGFueW9uZSBraW5kbHkgZmluYWxseSBtZXJnZSB0aGlzIGZpeD8KCkknZCBy
ZWFsbHkgYXBwcmVjaWF0ZSBpdC4KCjEyLjEyLjIwMTksIDEzOjQzLCAiQ2hyaXN0b3BoIEhlbGx3
aWciIDxoY2hAaW5mcmFkZWFkLm9yZz46Cj4gT24gVGh1LCBEZWMgMTIsIDIwMTkgYXQgMDE6MzY6
MjhQTSArMDMwMCwgVGFsa2VyIEFsZXggd3JvdGU6Cj4+IMKgbnZtZXRfcmVmZXJyYWxfcmVsZWFz
ZSgpIHdhcyBjYWxsZWQgd2hlbiBpdGVtLT5jaV9wYXJlbnQKPj4gwqBvciBpdGVtLT5jaV9ncm91
cCB3ZXJlIGFscmVhZHkgc2V0IHRvIE5VTEwgYnkgY29uZmlnZnMgaW50ZXJuYWxzLgo+Pgo+PiDC
oFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBEaWFkaXVzaGtpbiA8YWxleHRhbGtlckB5YS5ydT4K
Pgo+IExvb2tzIGdvb2QsCj4KPiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
