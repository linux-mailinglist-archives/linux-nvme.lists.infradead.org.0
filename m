Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DACB34031
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 09:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlkMxtRta6E7Awl1a9mNNze5dNwnxiM1CTHtYUjrDco=; b=OYXQAfdFUt76Q4
	Cgfg9bzUp4+IpBOH6s5OcCkEy5llY5OgI91jEAWdW3kIIqwnNpOBQObhRHxelLUc97gyzhPR0LCuu
	MJIbMUUQkzpmzt9EEzdZhYR/chfniJ5N1W+fYFc0ATbsiqA983f28KwzE74ZkcPTLpvqdBB8J9Q7c
	nvfTaT2Z9gl3u49PWzdsgnw6ImDhysnY2gtsTmh3q/85E0dLN3+JPmrxba1i6X+vMOwx+0tf+c7BL
	0t5rV2ARJa2HjMkBOXvAJlYM2nYgsMexYkw/D39SwMCcgZlDGOEV2yo82d31i/jGtMVF40CK4bulT
	AhjzUOfjgPaLSSmPlUAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3wK-00032U-QJ; Tue, 04 Jun 2019 07:33:00 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3wF-00031y-Ju
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 07:32:56 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3F56D68B02; Tue,  4 Jun 2019 09:32:30 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:32:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 3/3] nvme: notify thermal framework when temperature
 threshold events occur
Message-ID: <20190604073229.GI15680@lst.de>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-4-git-send-email-akinobu.mita@gmail.com>
 <20190601090353.GE6453@lst.de>
 <CAC5umyg_nDjtLyJM8iNF5f+YdQ6EG+G5ks-uFqu_VFiX2=e=qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyg_nDjtLyJM8iNF5f+YdQ6EG+G5ks-uFqu_VFiX2=e=qQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003255_805132_A9297022 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gU3VuLCBKdW4gMDIsIDIwMTkgYXQgMTA6NDY6MTJQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQ25pyIMeaXpSjlnJ8pIDE4OjA0IENocmlzdG9waCBIZWxsd2lnIDxoY2hA
bHN0LmRlPjoKPiA+Cj4gPiBTbyBiZWZvcmUgd2UgYWxsb3dlZCB1c2Vyc3BhY2UgdG8gZ2V0IHNt
YXJ0IEFFTiBub3RpZmljYXRpb25zIHRocm91Z2gKPiA+IHVldmVudCwgYW5kIHdvdWxkIGV4cGVj
dCB1c2Vyc3BhY2UgdG8gY2xlYXIgdGhlIEFFTi4gIEkgdGhpbmsgdGhpcwo+ID4gY291bGQgYXQg
bGVhc3QgcG90ZW50aWFsbHkgYnJlYWsgZXhpc3RpbmcgdXNlcnNwYWNlIGJ5IG5vdyBkb2luZyB0
aGF0Cj4gPiBpbiBrZXJuZWwgc3BhY2UuCj4gCj4gVGhpcyBjaGFuZ2UgdW5jb25kaXRpb25hbGx5
IHNldHMgTlZNRV9TTUFSVF9DUklUX1RFTVBFUkFUVVJFIGZsYWcgaW4KPiBudm1lX2VuYWJsZV9h
ZW4oKSwgaXQgY291bGQgYmUgcHJvYmxlbWF0aWMgZm9yIGV4aXN0aW5nIHVzZXJzcGFjZS4KPiBT
byBpdCdzIGJldHRlciB0byBwcm92aWRlIGEga25vYiB0byBlbmFibGUvZGlzYWJsZSB0aGUgZXZl
bnQgbm90aWZpY2F0aW9uCj4gYW5kIHdlIGNhbiB1dGlsaXplIGdldF9tb2RlKCkvc2V0X21vZGUo
KSBpbiB0aGUgdGhlcm1hbF96b25lX2RldmljZV9vcHMuCj4gCj4gT3RoZXIgdGhhbiB0aGF0LCB0
aGlzIGNoYW5nZSBkb2Vzbid0IHJlbW92ZSBjdHJsLT5hZW5fcmVzdWx0LCBzbyBleGlzdGluZwo+
IHVzZXJzcGFjZSBzdGlsbCByZWNlaXZlcyBOVk1FX0FFTj0qIHVldmVudHMuCgpBbmQgdGhhdCBp
cyB0aGUgcHJvYmxlbS4gIEJlY2F1c2UgZm9yIG5vdGlmaWNhdGlvbnMgd2UgZXhwZWN0IHVzZXJz
cGFjZSB0bwpyZWFkIHRoZSBsb2cgcGFnZSBhbmQgY2xlYXIgdGhlIGV2ZW50LCB3aGlsZSB3ZSBh
cmUgbm90IGRvaW5nIGl0IGluIGtlcm5lbApzcGFjZS4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
