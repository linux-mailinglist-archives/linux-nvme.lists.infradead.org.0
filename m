Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5635717D9B
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 17:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jqVgrutrxNl8xOkjTBSrkAYzhJpqMlU40VojH5Ih1o=; b=BERKtYcdtQVa63
	CXCGfem/2rLnrjL9ESE52Nsi9KiY4rYRIFp79BASSlSvFgnBdYBNaVg5PkkMUv8OcBLn8fTWNa386
	q5ELqB4eyCx4akjTBIO3pO82muEFxIrjNmbSybK3Fl/2y/xPhmMjGVonOxjGsyAm3NJczo0doA0oE
	pLoiq0bC7JhQ7reO9EondG+Icr7I93B76w0pNztys0iEIrI2tiA5uwu+eAOFy8P6eUgBYCzH9nq82
	LQq1HacHCoH5gzLglCh5ob0Lotn1RDMktNnG5c31yR/Z78H0NXIZ4aHWfJVdNTxY7/GXMwQnmf4H/
	vTETqyhDRuzOA8OSnxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOvx-0005Yc-BX; Wed, 08 May 2019 15:56:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOvs-0005Y7-86
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 15:56:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id 145so315138pgg.9
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 08:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iBHtYpRsc712Jhf8r1jzS0KUOogBgaASzE45fG6Wcrk=;
 b=oVTDq0VgZYvgpI1y9y4+DccGKoeBrl6DvatY0dzm2NiYUXphf/oYmeygPHZCSY2QvA
 pmz0UOwGi93pZPyP7X4Gy2XPKYYVjHQVuG37fccJvZbAdlGUzB9c75qKridESGgLPD4M
 lse3wmXa1uCUzlwmoichBtUOV9S86GKIE0562diLN8zZlzmZA2Z7/d9zqCVsmqrq7yxm
 v4LFcVsRg1TgtMoXaM2aem82JBVmNWyeu5PXsWjILO1lbGo/WIFjjSj/pTIcSBb0JFhQ
 3e/xomKGMP+8lUxxl/1eIR/OXH8kqXqg35zZcR9uE+KKG+Gf22knKmo7VnWYP9hKNvnQ
 F3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iBHtYpRsc712Jhf8r1jzS0KUOogBgaASzE45fG6Wcrk=;
 b=N9EZyI9xKU9xqXj+NRTpyt4mpaYUD7KudCT55bjEOs8RU9GoULwF2VTC+RKCr8NIaU
 4qTDLhPECeH6veyPmwYSG7WFKWbYnnGR6TlYbkoZ+yw4rXeIe9wYa67MMzbBqmY1/iqh
 0LH9o79R8veF4vJFU2UoHXiHvWPOmfBrco1Qq0kBhNntxGReqMTJ01OZBXIXEGDrwxmI
 cASSZ+DLsF0Ofx2N7cC5y6qfZDWzNi9Z1rqqo9Z7oPNPH0gsJ8tkOnnDBQuSkmK1vsXr
 XezbV1lqnww8APuQICxGZOjFFuUXDXLxq27b0No3VMwrIyHBNvSZVq/Uj5I5tcLRjNOa
 uVDw==
X-Gm-Message-State: APjAAAX8Ls70RDjEoc8Pc1eTA3huvi0jHOOkaxSUrza6BPCrWD5Xrt/F
 kixS2ie4OcbBBkX4iW3n0EY7hmmvjmfktWiX1uc=
X-Google-Smtp-Source: APXvYqyqfPaJ8sWq2tO5xRtoUCLKX/06gKK05XCIY4tOxB0M86pv/YGaMfPEDT0DgIx+zQ+kSmjz8JdAoJq8HUjzSWc=
X-Received: by 2002:a65:480c:: with SMTP id h12mr46853626pgs.266.1557330995251; 
 Wed, 08 May 2019 08:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
 <a4ec2c1a-1ff7-52fe-07bd-179613411536@intel.com>
 <20190507212241.GA7113@localhost.localdomain>
In-Reply-To: <20190507212241.GA7113@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 9 May 2019 00:56:24 +0900
Message-ID: <CAC5umyhkeqD6ndh0OXauibZfz+BTd_EU9X81uebttp9gmxEYhg@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_085636_316147_D8FB4213 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg45pelKOawtCkgNjoyOCBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+
Ogo+Cj4gT24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDI6MzE6NDFQTSAtMDYwMCwgSGVpdGtlLCBL
ZW5uZXRoIHdyb3RlOgo+ID4gT24gNS83LzIwMTkgMTA6NTggQU0sIEFraW5vYnUgTWl0YSB3cm90
ZToKPiA+ID4gKwo+ID4gPiArc3RhdGljIGludCBudm1lX2dldF90ZWxlbWV0cnlfbG9nX2Jsb2Nr
cyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB2b2lkICpidWYsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzaXplX3QgYnl0ZXMsIGxvZmZfdCBvZmZzZXQpCj4gPiA+
ICt7Cj4gPiA+ICsgICBjb25zdCBzaXplX3QgY2h1bmtfc2l6ZSA9IGN0cmwtPm1heF9od19zZWN0
b3JzICogY3RybC0+cGFnZV9zaXplOwo+ID4KPiA+IEp1c3QgY3VyaW91cyBpZiBjaHVua19zaXpl
IGlzIGNvcnJlY3Qgc2luY2UgcGFnZSBzaXplIGFuZCBibG9jayBzaXplIGNhbgo+ID4gYmUgZGlm
ZmVyZW50Lgo+Cj4gVGhleSdyZSBhbHdheXMgZGlmZmVyZW50LiBjdHJsLT5wYWdlX3NpemUgaXMg
aGFyZC1jb2RlZCB0byA0aywgd2hpbGUKPiBzZWN0b3JzIGFyZSBhbHdheXMgNTEyYi4KCk9vcHMu
ICBJIG1pc3VuZGVyc3Rvb2QgaG93IGN0cmwtPm1heF9od19zZWN0b3JzIGlzIGluaXRpYWxpemVk
IGZyb20gTURUUy4KQWxzbyBvdmVyZmxvdyBjaGVjayB3YXMgcmVxdWlyZWQgaGVyZSBmb3IgdGhl
IGFyY2hpdGVjdHVyZXMgdGhhdCB1c2UKInVuc2lnbmVkIGludCIgc2l6ZV90LgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
