Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CACB10A061
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 15:35:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x89kf42EQoHhCiQm+UCvEMKXeK+rM/IPc/heRlu1pdU=; b=nf2s8Yny5hBvF5
	cVYaPJcsSe9uBL6/2bZ6BEbXLfeYane528kj32Fk7nIupueGbeCDrdyR3du90gbP1ls90ouMYBzQR
	ilnhdbCx8Ga3+Ea9yxZRpO2EgcxBesJv+kV/IQuKxoYxQZiK69OVEbjw9WLFeoRBkGRoa8OKN9nwJ
	pIIh/ZkA1fNA8vDhC2azlAP0p2PYxHE9MtdxvkSOqI8GSQv+Op975wbH3gGOeN008qkXiu0rqxi+P
	AmudH4Je28ExvR/i9R9kJQlV17A22lf/qyBlwkOO1xfBVHeDrxhfmoso160a90x6w1DgBtx8batpg
	2TDiI08ijyPAv78v5VvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbvo-0002FL-Uf; Tue, 26 Nov 2019 14:35:09 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbva-0001U0-8c
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 14:34:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id g3so20457340ljl.11
 for <linux-nvme@lists.infradead.org>; Tue, 26 Nov 2019 06:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o6Aof0yAWGeShjgJcUg1Y0lQGsYW6In2/ZZmFux/330=;
 b=LOhTfDCbXM8wo5cGG2LnHtN506MEG78VOZmbVbs05lxPZSuAEdB7bxPlo15f6tqb4J
 IYVlqXY0WPPU7xgoWiSMgFW+r6o0s0fpbuPMeI2eRUAhpwplaU3GJUz2meBOFt6AbqOP
 pUEsHlqK6njDTIyJ5bjf6xX3TUT9ZndPzz6JZZ94Nf+MsSO6gLGwDwfhWN7Ol6SspLIy
 TuCdLhNq5q7zXHVbBRz7Qs4gaN/3dwUt9vkZhjHEFUWHGRtGyaKDxDoL2CGF4u882hLI
 bhD+YCUgZFqAr21busgL++mfQmz2mVg6dhyYgCzsz2ryvknKULP0XxUaNj8Lbt7QajAq
 JwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o6Aof0yAWGeShjgJcUg1Y0lQGsYW6In2/ZZmFux/330=;
 b=sb/PBbD3H4x/w02EYlddno3aWB5kYtgMgtzMqnkgvjER5e5ZqN0zF1DXf/jst3iZiy
 aqnYiJCLrVvk8f8n6qIu7BpQTtY7Z7n7VCCs/boCNZMm9W/d8c5e2yuB44qNn7k3Ry+m
 HYESZBKy1K+EpCR67jc3A5DHXhrY49wiIwMfYuEsiiq/6GMrxB2W5Pq8YxztcdclU+x9
 6cPyXHg0q/9cs3UXF1WTbdILBrENCcc7l7aAty/xemi8qc+C0Pa3RQXiY3cl3Rt+6Bj+
 tj3K2vMG8zheVZRs6dpvJ1l3L+8h8osJJffY7RSMAWyW4m0i7lsildQRQY7qidYOpvo6
 YQtg==
X-Gm-Message-State: APjAAAXli2vg1+4RdKSCUlWuhfkwOfRpt2iSrw7mNxn/14xujly5RUFJ
 Xu+3vpzUmpmsOzNnlaDs50KiwTNPFGpSme0Qd0I=
X-Google-Smtp-Source: APXvYqxom9w1r9meKO7BwtGxZ8J84olw1mlQR/g2adENixyRp0DFx+OrWkHvlSUo6GpFwxHjIqzoDQ7OSEXi60qRUaA=
X-Received: by 2002:a05:651c:20f:: with SMTP id
 y15mr26375869ljn.31.1574778889212; 
 Tue, 26 Nov 2019 06:34:49 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-5-git-send-email-akinobu.mita@gmail.com>
 <CAHp75VfOUiN_2bW+o-AqGmAY32mmdNxP54B2f2+gj0NTEr9FTQ@mail.gmail.com>
 <CAC5umygc95VBWz1L5CTZO9kmkZL2MCEL2_z9d2TJ6Ow5+fKYPw@mail.gmail.com>
 <CAHp75VfPR7JSa7Mn5s_wJs22tXy7rC+W8x1jHLP=Npyd06BJ5w@mail.gmail.com>
In-Reply-To: <CAHp75VfPR7JSa7Mn5s_wJs22tXy7rC+W8x1jHLP=Npyd06BJ5w@mail.gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 26 Nov 2019 23:34:36 +0900
Message-ID: <CAC5umyiHsidih_VBvEOT4ApXR_ocBTqCvfFcg-gs9imcZczf6Q@mail.gmail.com>
Subject: Re: [PATCH 4/8] platform/x86: intel_menlow: switch to use
 <linux/temperature.h> helpers
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_063454_338627_45A568B3 
X-CRM114-Status: GOOD (  12.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMjbml6Uo54GrKSA0OjA3IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hl
bmtvQGdtYWlsLmNvbT46Cj4KPiBPbiBNb24sIE5vdiAyNSwgMjAxOSBhdCA0OjM1IFBNIEFraW5v
YnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiAyMDE55bm0MTHmnIgy
NeaXpSjmnIgpIDQ6NTggQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29t
PjoKPiA+ID4gT24gU3VuLCBOb3YgMjQsIDIwMTkgYXQgNDowOSBQTSBBa2lub2J1IE1pdGEgPGFr
aW5vYnUubWl0YUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiA+ID4gLSAgICAgICByZXR1cm4gcmVz
dWx0ID8gcmVzdWx0IDogc3ByaW50ZihidWYsICIlbHUiLCBERUNJX0tFTFZJTl9UT19DRUxTSVVT
KHZhbHVlKSk7Cj4gPiA+ID4gKyAgICAgICByZXR1cm4gc3ByaW50ZihidWYsICIlbGQiLCBkZWNp
X2tlbHZpbl90b19jZWxzaXVzKHZhbHVlKSk7Cj4gPiA+Cj4gPiA+IENhbiB5b3UgZXhwbGFpbiB0
aGUgY2hhbmdlICVsdSB0byAlbGQ/Cj4gPgo+ID4gSXNuJ3QgaXQgcG9zc2libGUgZm9yIGF1eCB2
YWx1ZXMgdG8gYmUgbG93ZXIgdGhhbiAwIGRlZ3JlZXMgQ2Vsc2l1cz8KPgo+IElmIGl0J3MgYSBj
aGFuZ2UgZHVlIHRvIHJlcXVpcmVtZW50IG9mIG5ldyBoZWxwZXJzLCBwdXQgaXQgaW4gdGhlCj4g
Y29tbWl0IG1lc3NhZ2UsIG90aGVyd2lzZSBsZWF2ZSBhcyBpcy4KCk9LLCBJJ2xsIGxlYXZlIGl0
IGFzIGlzLgpUaGUgZm9ybWF0IHN0cmluZyB3aWxsIGJlIGZpeGVkIGJ5IGEgc2VwYXJhdGUgcGF0
Y2guCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
