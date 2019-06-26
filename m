Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D656E14
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 17:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90cDtLZxH9raI4RT7hRt6Ecq5nU3LpBFfeSQDUoLKJY=; b=t/D5AhcDJ22+Nw
	e1GfwEV8Z+/Xv6X9lw9FL5ZELQZHPnwBO82xwT/TW3TqxB6chqLdZNDdy39t86a1bKnI0/M2mlw3r
	dY6Hx+YN8IFWBJzmexHhQE59M4MZ/gbNrK3WIGOYVP5YSVqoyYED5Rzmecj4DsxyRNOuBEWZEE82S
	Ytiu5e5IQ0aRVXUu2RWjUTpUOhZ3zbPB3NMlatEr1WW8WZQsCprYuqUHnzCmAJrzUYMRLb9CM8gXT
	MDj7OnAFLnoVf5E7u2946k46zL06FrILPVGyQDOPV2Us65udf4YYFDu0hHXSQUX1Z9Z0PjjwMt5wB
	xiZI39+30/9EN3FV0TJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAE2-0004u2-Bt; Wed, 26 Jun 2019 15:52:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgADu-0004sy-Vi
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 15:52:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so1425103pgn.1
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 08:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HkPZhKVnh+qdvDEc8DXxUejx1F5VL/Izq9TwqeEZ6EE=;
 b=rK/KjgnmCgBGSBy0AAJEVwtKInDV12WaxjxIzJJuc0WS+kblwMGxrjo8mKJ2LDLZIX
 XxX6T8+vkFhiImxx2OfOg9L8lWQqciYeFdoncUglDaW6ygbYvnOHMLemQKC1y7dKdhmc
 HfQjP56WhrxzTgyiGPZieCDUT0GGeKHkrpGfST+9BcE53HI/rDmj+1cOTQnLoUlfYcq5
 Ix7/SbcZUkUWKDNK2kzjdPgo668IY2KJLLGlEFYuPCwPoWKqTezzFSUKay5V2BnVlKFP
 CDoD2XTqN/Ng2FDFEksAKBOy2MWKmxwTW3a/IqYdzf1Pl7VkF22ogGLyGcK++m3tLr94
 yEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HkPZhKVnh+qdvDEc8DXxUejx1F5VL/Izq9TwqeEZ6EE=;
 b=AMcKfdXQXnPfhe9H43Lu1ziLOyRQjQZ6B8BbXgTmqCkof4HBGZXjjnIxjM9ClozKPN
 b1eU4le1KC1eff2j/tJU5CI0g8vngHT/XTTfaqnnSl4nD54SXFHTpIuU7EETKVr9XeAR
 UlHp+z7QZ4/a39TKsevQqoJOxedIGCUPkfygJ3P+/9iFqCrhsHv0LkEg2pYCJo46hbts
 GQmAbaLGjOcCR5zo1E6RB29tVDMtTubYAkeCM0r7fDXwU47epxr8OvK/jYCOjE+48trs
 4Dc0ZT0Zd/M5e/3YHKRcq3Z8omwlG6ocppdz/G94YiZT0uLsooHLmkF3emokzGdb0i40
 qvZg==
X-Gm-Message-State: APjAAAWY2MBdj0RahNrOsRjHbEwmy/Cc5s98pGbDm9plr0c49M62ZdWw
 sfKfR9JVwQfd/IWqf/hGuPT/KQwGSIqNVeeUW+I=
X-Google-Smtp-Source: APXvYqz9+ULgvtedXAWfTd7GPHpvJKUfRSirjlPpCRI4Ppfvy+USfi3IAFz2Yd0ASafWfSWTKCoTJkpjZmiWE/tIyjI=
X-Received: by 2002:a17:90a:d681:: with SMTP id
 x1mr5460230pju.13.1561564354050; 
 Wed, 26 Jun 2019 08:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
 <1560439238-4054-3-git-send-email-akinobu.mita@gmail.com>
 <1561474998.19713.13.camel@intel.com>
In-Reply-To: <1561474998.19713.13.camel@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 27 Jun 2019 00:52:22 +0900
Message-ID: <CAC5umyjhU7Xv=UyhfO5ikDwpGBTXCdaggfLt9UM7ZygUL1O1DQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] nvme: add thermal zone devices
To: Zhang Rui <rui.zhang@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_085239_027221_1548754B 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIgyNuaXpSjmsLQpIDA6MDMgWmhhbmcgUnVpIDxydWkuemhhbmdAaW50ZWwuY29t
PjoKPgo+IE9uIOS6lCwgMjAxOS0wNi0xNCBhdCAwMDoyMCArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+ID4gVGhlIE5WTWUgY29udHJvbGxlciByZXBvcnRzIHVwIHRvIG5pbmUgdGVtcGVyYXR1
cmUgdmFsdWVzIGluIHRoZQo+ID4gU01BUlQgLwo+ID4gSGVhbHRoIGxvZyBwYWdlICh0aGUgY29t
cG9zaXRlIHRlbXBlcmF0dXJlIGFuZCB0ZW1wZXJhdHVyZSBzZW5zb3IgMQo+ID4gdGhyb3VnaAo+
ID4gdGVtcGVyYXR1cmUgc2Vuc29yIDgpLgo+ID4KPiA+IFRoaXMgcHJvdmlkZXMgdGhlc2UgdGVt
cGVyYXR1cmVzIHZpYSB0aGVybWFsIHpvbmUgZGV2aWNlcy4KPiA+Cj4gPiBPbmNlIHRoZSBjb250
cm9sbGVyIGlzIGlkZW50aWZpZWQsIHRoZSB0aGVybWFsIHpvbmUgZGV2aWNlcyBhcmUKPiA+IGNy
ZWF0ZWQgZm9yCj4gPiBhbGwgaW1wbGVtZW50ZWQgdGVtcGVyYXR1cmUgc2Vuc29ycyBpbmNsdWRp
bmcgdGhlIGNvbXBvc2l0ZQo+ID4gdGVtcGVyYXR1cmUuCj4gPgo+ID4gL3N5cy9jbGFzcy90aGVy
bWFsL3RoZXJtYWxfem9uZVswLSpdOgo+ID4gICAgIHwtLS10eXBlOiAnbnZtZTxpbnN0YW5jZT4t
dGVtcDxzZW5zb3I+Jwo+ID4gICAgIHwtLS10ZW1wOiBUZW1wZXJhdHVyZQo+ID4gICAgIHwtLS10
cmlwX3BvaW50XzBfdGVtcDogT3ZlciB0ZW1wZXJhdHVyZSB0aHJlc2hvbGQKPiA+Cj4gPiBUaGUg
dGhlcm1hbF96b25lWzAtKl0gY29udGFpbnMgYSAnZGV2aWNlJyBzeW1saW5rIHRvIHRoZQo+ID4g
Y29ycmVzcG9uZGluZyBudm1lCj4gPiBkZXZpY2UuCj4gPgo+ID4gT24gdGhlIG90aGVyIGhhbmQs
IHRoZSBmb2xsb3dpbmcgc3ltbGlua3MgdG8gdGhlIHRoZXJtYWwgem9uZSBkZXZpY2VzCj4gPiBh
cmUKPiA+IGNyZWF0ZWQgaW4gdGhlIG52bWUgZGV2aWNlIHN5c2ZzIGRpcmVjdG9yeS4KPiA+Cj4g
PiAtIHRlbXAwOiBDb21wb3NpdGUgdGVtcGVyYXR1cmUKPiA+IC0gdGVtcDE6IFRlbXBlcmF0dXJl
IHNlbnNvciAxCj4gPiAuLi4KPiA+IC0gdGVtcDg6IFRlbXBlcmF0dXJlIHNlbnNvciA4Cj4gPgo+
ID4gSW4gYWRkaXRpb24gdG8gdGhlIHN0YW5kYXJkIHRoZXJtYWwgem9uZSBkZXZpY2UsIHRoaXMg
YWxzbyBhZGRzCj4gPiBzdXBwb3J0IGZvcgo+ID4gcmVnaXN0ZXJpbmcgdGhlIERUIHRoZXJtYWwg
em9uZSBkZXZpY2UuCj4gPgo+IEkgZG9uJ3Qgc2VlIHN0YW5kYXJkIHRoZXJtYWwgem9uZSBkZXZp
Y2UgYW5kIERUIHRoZXJtYWwgem9uZSBkZXZpY2UgYXJlCj4gcmVnaXN0ZXJlZCBhdCB0aGUgc2Ft
ZSB0aW1lIHZlcnkgb2Z0ZW4sIGVzcGVjaWFsbHkgaWYgdGhleSByZXByZXNlbnQKPiB0aGUgc2Ft
ZSBzZW5zb3IuCgpHb29kIHBvaW50LgoKSXQgaXMgcG9pbnRsZXNzIHRvIHJlZ2lzdGVyIGJvdGgg
c3RhbmRhcmQgYW5kIERUIHRoZXJtYWwgem9uZSBkZXZpY2VzIGZvcgp0aGUgc2FtZSBzZW5zb3Iu
ICBXZSBzaG91bGQgcmVnaXN0ZXIgZWl0aGVyIG9uZS4gKGkuZS4gZmlyc3RseSB0cnkgdG8KcmVn
aXN0ZXIgRFQgdGhlcm1hbCB6b25lLiAgSWYgbm8gdGhlcm1hbCB6b25lcyBmb3VuZCBmb3IgdGhl
IHNlbnNvciBpbgpkZXZpY2UgdHJlZSwgdGhlbiB0cnkgdG8gcmVnaXN0ZXIgc3RhbmRhcmQgb25l
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
