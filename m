Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EB9EB17C
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 14:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWCzCEIt4ztLHYJmj6H6nZ8yX37ogTcgH4op7UaO3wQ=; b=pyqhjxt/V3r1QU
	/x09kIXCwPKIvEZmxsGkEyYDEkGWqMIdeyBJtZ37lnIpDtUWG+nAxtagImQFGjJSGMV1bc7Ai9twu
	HUccdMPcN9rz1l1VwYcmO5QavQPEO/e1ovcajjF26mOMMIoEUfzf7v8CAnZBuIkAv9KP8edqJbV8E
	Jjj0xVivbf2K0HLkwzjhReSHN80dV7BjowLHSeh0TB306xz/Hpp+Bw+tDUJyWN9XBn3iDbVBY3Qt+
	enOecq9KJ+xbN06aQrTzRD05SkTHkkhLS1oPDGHMdAj0BdyAC95H9vCdpqe9idKFq953w8SOcRWfJ
	03Xr+HujUOwF31YpB7pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAn7-0001Vi-JQ; Thu, 31 Oct 2019 13:47:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAmv-0001UO-Gx
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 13:46:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so4077845pgd.11
 for <linux-nvme@lists.infradead.org>; Thu, 31 Oct 2019 06:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q5d0ydYp/ptTQ9vHd3UzSNtpmE/REEwTqm2IaznSbE4=;
 b=JDJR04Z2x1prHv1ALXSs8WeR/FfMUBuDg+FckRq9WOy3QuTjr4tv8/K+URJwEBgW7w
 XoGJ3BDWa5NLEIG0kBg5dv0nwIMywUA+4UfLFe57n+3xO9lORFCV3GPyDLu82qW5WODA
 cdLz+IW9KIOVl84p39YNMiK0/KTFvC4r//22hCtAP7x7iP5EwZU9bz7xuie41/UaPgZ5
 8MIF+wrBv/+KIkAoy2afLqJ/iSQiZvGXRQ4ApWhgnxLPpgoW0vlHPKdjF3Fa0Q6ubVtT
 iiV4JUA98oeMQttYJNQxViYfSsT3RmHjBCcv7KqM/+y5s5CqT6FNppSsxdtelzDLfhOT
 AMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q5d0ydYp/ptTQ9vHd3UzSNtpmE/REEwTqm2IaznSbE4=;
 b=W+eU7o7FsW32lWYi6Tyy9m6KK3OSF+9X1nmls/CCov/xDZFEGCUl0ykCNXcwGvV7r6
 iff3fMKM1uU2sj2o8IoEFoj/XhkkD/tYq9pnSBp31kLSUBPtncVAIAc20j0Cu/jCkQRl
 u0N/IyqbBtuslqITch2rHh3vtyUDEYhntlArWjWDmsqUlCj5v+KQuok1HblynOj5dsxU
 kXNhgNMjY130SxmiJXPAyM4INvfCbu56mYBhOfwkU12xBCVXjoA3j9m10RqOspM+PJlG
 Gs+L5a/ZSnY0kDOPGS2SvRNHTy7ol4+dBJrzxgQ+ksSw3osh6nirySRF4UZDSefqd4yT
 ZHzQ==
X-Gm-Message-State: APjAAAVz7uIG9XXDqVnegcuM/JIYNGC8l3jmafH0aGGVV9ZCkCBNrX7/
 gY7nApPzT9LEPEuMAVHHPQoOgm/gXhPJrXbIFxw=
X-Google-Smtp-Source: APXvYqy7EE4JFOOg5FTnK+3IMnUZVKb5ZAfLuaHrGr2eAWfbGLp8iZxTZ9qxwC9iNhwEkm6Psecrym4OGrhakGAJewo=
X-Received: by 2002:a17:90a:f48f:: with SMTP id
 bx15mr7672163pjb.115.1572529616927; 
 Thu, 31 Oct 2019 06:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191029223214.18889-1-linux@roeck-us.net>
 <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
 <20191030140511.GA14252@lst.de>
In-Reply-To: <20191030140511.GA14252@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 31 Oct 2019 22:46:46 +0900
Message-ID: <CAC5umyg-QAvyKdSYQnVdST=p7CAGCQjmWpfc=rnK3dau36Y+mg@mail.gmail.com>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_064657_568823_24ECDB19 
X-CRM114-Status: GOOD (  14.74  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Chris Healy <cphealy@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEw5pyIMzDml6Uo5rC0KSAyMzowNSBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5k
ZT46Cj4KPiBPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAwODoxNjo0OFBNICswOTAwLCBBa2lub2J1
IE1pdGEgd3JvdGU6Cj4gPiBUaGUgbnZtZV9pbml0X2lkZW50aWZ5KCkgY2FuIGJlIGNhbGxlZCBt
dWx0aXBsZSB0aW1lIGluIG52bWUgY3RybCdzCj4gPiBsaWZldGltZSAoZS5nICdudm1lIHJlc2V0
IC9kZXYvbnZtZSonIG9yIHN1c3BlbmQvcmVzdW1lIHBhdGhzKSwgc28KPiA+IHNob3VsZCB3ZSBu
ZWVkIHRvIHByZXZlbnQgbnZtZV9od21vbl9pbml0KCkgZnJvbSByZWdpc3RlcmluZyBod21vbgo+
ID4gZGV2aWNlIG1vcmUgdGhhbiB0d2ljZT8KPiA+Cj4gPiBJbiB0aGUgbnZtZSB0aGVybWFsIHpv
bmUgcGF0Y2hzZXRbMV0sIHRoZXJuYWwgem9uZSBpcyByZWdpc3RlcmVkIGluCj4gPiBudm1lX2lu
aXRfaWRlbnRpZnkgYW5kIHVucmVnaXN0ZXJlZCBpbiBudm1lX3N0b3BfY3RybCgpLgo+Cj4gU28g
R3VlbnRlciBzYWlkIGFib3ZlIHRoZSB0aGVybWFsIHN1YnN5c3RlbSBjb3VsZCB1c2UgdGhlIGlu
Zm9ybWF0aW9uCj4gZnJvbSBod21vbiBhcyB3ZWxsLiAgRG9lcyB0aGlzIG1lYW4gdGhpcyBwYXRj
aCB3b3VsZCBzb2x2ZSB5b3VyIG5lZWRzCj4gYXMgd2VsbD8KClRoZSBtYWluIHJlYXNvbiBJIGNo
b3NlIHRoZXJtYWwgZnJhbWV3b3JrIHdhcyB0byB1dGlsaXplIHRoZSB0ZW1wZXJhdHVyZQp0aHJl
c2hvbGQgZmVhdHVyZSBmb3Igbm90aWZpY2F0aW9uIG9uIGNyb3NzaW5nIGEgdHJpcCBwb2ludCB0
ZW1wZXJhdHVyZQp3aXRob3V0IHBvbGxpbmcgZm9yIHNtYXJ0IGxvZy4KCkJ1dCB0aGUgZGV2aWNl
IEkgdXNlZCBmb3IgdGVzdGluZyBkb2Vzbid0IHNlZW0gdG8gcmVwb3J0IGFzeW5jaHJvbm91cwpl
dmVudCBpbW1lZGlhdGVseSwgc28gSSdtIG5vdCBmdWxseSBzdXJlIHRoYXQncyB1c2VmdWwgZm9y
IG5vdy4KCkkgaGF2ZSBubyBwcm9ibGVtIHdpdGggdGhpcyBudm1lIGh3bW9uIHBhdGNoLiAgTWF5
YmUgd2UgY2FuIGludGVncmF0ZQp0aGUgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGZlYXR1cmUgaW50
byB0aGUgbnZtZSBod21vbiBhZnRlcndhcmQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
