Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AFB2FA23
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 12:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWObjh0eUX5uLUd73O+LQu5e9brS1eDw6e/6D4zSjMA=; b=FdGW31v8mH5anH
	eRxoQ9k6tPXuC0QyZwLwRHa6GKbiK91bvjq0oBpytLLO/M7GTqlwkpD/7aN+zj0/3sgu8+XLBUTRp
	7BTVGdaF+cxa7iQHVMDzADQ1grnYS68vTYY3mmtz6Iw1oNNXxxroyZV/jqm6X5qM4SGdBA+0sQ2VG
	REJ6l/YVrFg/cKEc6i7EFjwptE7Ksn3esflqU273TxOhUxGj66oOARD9yfst192bpxFnHRhlKv1ag
	i13diPDaBloBE1qG640+NPgi0zsdUMG4s+0mooJHyn0396/YT4Hn/PFXyhuJ5fIBscSAuiIDcOzmM
	3eRrhsIjGXWalBniFSsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWI9O-00066L-IZ; Thu, 30 May 2019 10:19:10 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWI9J-00065p-5K
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 10:19:06 +0000
Received: by mail-pf1-x435.google.com with SMTP id c14so1259326pfi.1
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 03:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=isnHQue4wDfjkgN1icuOvHpdVu+ZzR4rZ4E0G5lIGZc=;
 b=ka1gHhxkUFMd+H3+BsyYzGR9RvMPpF/VK9suOcolLYVbG+Ylp0PPuOpm3vfICp50pz
 +Xr7JIOWsqnk05cZoSRLxNin1WoVvOJW/eX7ENf2eRaVLC6Qh85wbRunvarzktlw/t+N
 5lApvy3e1O3BFkZoiY5YyQAt7llQjTM4k8yYcyI3NHVPpUxTGW88I+Q3R0zi13FtP51f
 gY+S/DqWzbFDVPD+YDNnd2DoZQ0eOy6aWh2tZNKoxSN/ZTjdhnKMLZxkKjAe1AWGjsUj
 bDg6beR7WexFTbOS6xLkybPSOgW/Yuo+gyqjhoci0VZo2RJTcRwdjBEU6iRwmwUUZi70
 cJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=isnHQue4wDfjkgN1icuOvHpdVu+ZzR4rZ4E0G5lIGZc=;
 b=Bt4xQqcKISDHtUcXRFrv+tUUO3UGgrBuAz2lL1AgGLNoB3yOXbG5m2z9O0Ktpdq7Vk
 E8FKBQqmfKb+u9J/gnhO54l/REDiLpOPhRi35/6WXSiD2GJ7BAwE0/5+/gYN8otfzw8I
 X9fLks68Ov1rUmCYxiLjaJyz+kAPSg/TSGVWSe1s6rQXdLzPAdPotc8RoJb1LSEMPqSM
 517dZXB34wgZdLCy/6/GY3v32tsvgUUYckz/ItMZSbtSNeu/2v+/NwfStriJCYCHsPA/
 I2okKemxxyxZLVaY49bzlrobZ8xEJgT3hNqtjzmO0eGpgqCqVZWmcFBnP+HlsW0pT5m5
 Y4PA==
X-Gm-Message-State: APjAAAV45Deejw6TC+Y/f45MbImb2NI/hzU/1n6NM4dH4joAH3gvLKe8
 30UwGs64YcncC9SMSFrIEzo=
X-Google-Smtp-Source: APXvYqxIXc7xaf6ZkiLraES79OyQ89J+WysEmlNVpSCXVvzlc/G7eS9vIHSNQkX9xa4nvsZ0oveigw==
X-Received: by 2002:a63:dc09:: with SMTP id s9mr3067965pgg.425.1559211539871; 
 Thu, 30 May 2019 03:18:59 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h11sm2393308pfn.170.2019.05.30.03.18.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 03:18:59 -0700 (PDT)
Date: Thu, 30 May 2019 19:18:56 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
Message-ID: <20190530101854.GA8843@minwooim-desktop>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190529151517.GC28274@minwooim-desktop>
 <CAC5umyhusw+sQOn5H7ZMP=aVi00GY7R_Jff6447R=yXyUpjFoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyhusw+sQOn5H7ZMP=aVi00GY7R_Jff6447R=yXyUpjFoQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_031905_203928_BD5FAB98 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDUtMzAgMDE6NDc6MDgsIEFraW5vYnUgTWl0YSB3cm90ZToKPiAyMDE55bm0NeaciDMw
5pelKOacqCkgMDoxNSBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPjoKPiA+Cj4g
PiA+ICsvKioKPiA+ID4gKyAqIG52bWVfdGhlcm1hbF96b25lc19yZWdpc3RlcigpIC0gcmVnaXN0
ZXIgbnZtZSB0aGVybWFsIHpvbmUgZGV2aWNlcwo+ID4gPiArICogQGN0cmw6IGNvbnRyb2xsZXIg
aW5zdGFuY2UKPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGlzIGZ1bmN0aW9uIGNyZWF0ZXMgdXAgdG8g
bmluZSB0aGVybWFsIHpvbmUgZGV2aWNlcyBmb3IgYWxsIGltcGxlbWVudGVkCj4gPiA+ICsgKiB0
ZW1wZXJhdHVyZSBzZW5zb3JzIGluY2x1ZGluZyB0aGUgY29tcG9zaXRlIHRlbXBlcmF0dXJlLgo+
ID4gPiArICogRWFjaCB0aGVybWFsIHpvbmUgZGV2aWNlIHByb3ZpZGVzIGEgc2luZ2xlIHRyaXAg
cG9pbnQgdGVtcGVyYXR1cmUgdGhhdCBpcwo+ID4gPiArICogYXNzb2NpYXRlZCB3aXRoIGFuIG92
ZXIgdGVtcGVyYXR1cmUgdGhyZXNob2xkLgo+ID4gPiArICovCj4gPiA+ICtzdGF0aWMgaW50IG52
bWVfdGhlcm1hbF96b25lc19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gPiAr
ewo+ID4gPiArICAgICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgKmxvZzsKPiA+ID4gKyAgICAgaW50
IHJldDsKPiA+ID4gKyAgICAgaW50IGk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgbG9nID0ga3phbGxv
YyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwpOwo+ID4gPiArICAgICBpZiAoIWxvZykKPiA+ID4g
KyAgICAgICAgICAgICByZXR1cm4gMDsgLyogbm9uLWZhdGFsIGVycm9yICovCj4gPgo+ID4gRG8g
d2UgbmVlZCB0byBwcmludCBzb21ldGhpbmcgbGlrZSB3YXJuaW5nIGhlcmU/IElmIGt6YWxsb2Mo
KSBmYWlscywgaXQKPiA+IHdvdWxkIGJlIGdvb2QgdG8gYmUgZGlzdGluZ3Vpc2hlZCBiZXR3ZWVu
IHRoZSBudm1lIGZhaWx1cmUgYW5kIGludGVybmFsCj4gPiBmYWlsdXJlIGxpa2UgdGhpcy4KPiAK
PiBXZSB1c3VhbGx5IHJlbW92ZSB0aGUgZXJyb3IgbWVzc2FnZSBvbiBrbWFsbG9jIGZhaWx1cmUg
YmVjYXVzZSBpdCdzCj4gcmVkdW5kYW50IGFzIGxvbmcgYXMgd2UgZG9uJ3Qgc2V0IF9fR0ZQX05P
V0FSTi4KCkkgc2VlIHdoYXQgeW91IHBvaW50LgoKPiAKPiA+ID4gKwo+ID4gPiArICAgICByZXQg
PSBudm1lX2dldF9sb2coY3RybCwgTlZNRV9OU0lEX0FMTCwgTlZNRV9MT0dfU01BUlQsIDAsCj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBsb2csIHNpemVvZigqbG9nKSwgMCk7Cj4gPiA+
ICsgICAgIGlmIChyZXQpIHsKPiA+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKGN0cmwtPmRldmlj
ZSwgIkZhaWxlZCB0byBnZXQgU01BUlQgbG9nOiAlZFxuIiwgcmV0KTsKPiA+ID4gKyAgICAgICAg
ICAgICAvKiBJZiB0aGUgZGV2aWNlIHByb3ZpZGVkIGEgcmVzcG9uc2UsIHRoZW4gaXQncyBub24t
ZmF0YWwgKi8KPiA+ID4gKyAgICAgICAgICAgICBpZiAocmV0ID4gMCkKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIHJldCA9IDA7Cj4gPgo+ID4gSXQgc2VlbXMgbGlrZSB0aGF0IG52bWVfaW5p
dF9pZGVudGlmeSgpIGlzIGp1c3QgY2hlY2sgdGhlIGludGVybmFsIGVycm9yCj4gPiB3aGljaCBp
cyBpbiBuZWdhdGl2ZSB2YWx1ZSBub3cgYXMgeW91IGhhdmUgcG9zdGVkLiAgV2h5IGRvbid0IHdl
IGp1c3QKPiA+IHJldHVybiB0aGUgdmFsdWUgb2YgInJldCIgaXRzZWxmIHdpdGhvdXQgdXBkYXRp
bmcgaXQgdG8gMCA/Cj4gCj4gQm90aCB3YXlzIHdvcmsgZm9yIG1lLgo+IAo+IEkgcGVyc29uYWxs
eSBwcmVmZXIgbm90IHRvIHJldHVybiAobGVhaykgdGhlIG52bWUgc3RhdHVzIGNvZGUgZnJvbQo+
IGZvb19yZWdpc3RlcigpIGZ1bmN0aW9uLgoKT2theS4gIEluIHRoZSBwZXJzcGVjdGl2ZSBvZiBy
ZWdpc3RyYXRpb24sIHRoZSBudm1lIHN0YXR1cyBtaWdodCBub3QgYmUKbmVlZGVkIHRvIGJlIHJl
dHVybmVkLiAgQnV0IEkgdGhpbmsgaWYgd2UgcmV0dXJuIHRoZSBudm1lIHN0YXR1cyBoZXJlLApp
dCB3b3VsZCBiZSBncmVhdCBmb3IgdGhlIGxhdGVyIHRpbWUgd2hlbiB3ZSBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgaWYgdGhlIG52bWUKY29tbWFuZCBoYXMgZmFpbGVkIG9yIG5vdC4KCkJ1dCwgYW15d2F5
LCBJJ20gZmluZSB3aXRoIHRoaXMgOikKClRoYW5rcyBmb3IgeW91ciBjb21tZW50IG9uIHRoaXMg
dHJpdmlhbCBxdWVyeS4KCj4gCj4gPiA+ICsgICAgICAgICAgICAgZ290byBmcmVlX2xvZzsKPiA+
ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpF
KGN0cmwtPnR6ZGV2KTsgaSsrKSB7Cj4gPiA+ICsgICAgICAgICAgICAgc3RydWN0IHRoZXJtYWxf
em9uZV9kZXZpY2UgKnR6ZGV2Owo+ID4gPiArICAgICAgICAgICAgIGludCB0ZW1wOwo+ID4gPiAr
Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKGkpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB0
ZW1wID0gbGUxNl90b19jcHUobG9nLT50ZW1wX3NlbnNvcltpIC0gMV0pOwo+ID4gPiArICAgICAg
ICAgICAgIGVsc2UKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRlbXAgPSBnZXRfdW5hbGln
bmVkX2xlMTYobG9nLT50ZW1wZXJhdHVyZSk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAv
Kgo+ID4gPiArICAgICAgICAgICAgICAqIEFsbCBpbXBsZW1lbnRlZCB0ZW1wZXJhdHVyZSBzZW5z
b3JzIHJlcG9ydCBhIG5vbi16ZXJvIHZhbHVlCj4gPiA+ICsgICAgICAgICAgICAgICogaW4gdGVt
cGVyYXR1cmUgc2Vuc29yIGZpZWxkcyBpbiB0aGUgc21hcnQgbG9nIHBhZ2UuCj4gPiA+ICsgICAg
ICAgICAgICAgICovCj4gPiA+ICsgICAgICAgICAgICAgaWYgKCF0ZW1wKQo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKGN0cmwtPnR6
ZGV2W2ldKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgICAgICAgICB0emRldiA9IG52bWVfdGhlcm1hbF96b25lX3JlZ2lzdGVyKGN0cmws
IGkpOwo+ID4gPiArICAgICAgICAgICAgIGlmICghSVNfRVJSKHR6ZGV2KSkKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGN0cmwtPnR6ZGV2W2ldID0gdHpkZXY7Cj4gPiA+ICsgICAgIH0KPiA+
ID4gKwo+ID4gPiArZnJlZV9sb2c6Cj4gPiA+ICsgICAgIGtmcmVlKGxvZyk7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgcmV0dXJuIHJldDsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiArLyoqCj4gPiA+ICsg
KiBudm1lX3RoZXJtYWxfem9uZXNfdW5yZWdpc3RlcigpIC0gdW5yZWdpc3RlciBudm1lIHRoZXJt
YWwgem9uZSBkZXZpY2VzCj4gPiA+ICsgKiBAY3RybDogY29udHJvbGxlciBpbnN0YW5jZQo+ID4g
PiArICoKPiA+ID4gKyAqIFRoaXMgZnVuY3Rpb24gcmVtb3ZlcyB0aGUgcmVnaXN0ZXJlZCB0aGVy
bWFsIHpvbmUgZGV2aWNlcyBhbmQgc3ltbGlua3MuCj4gPiA+ICsgKi8KPiA+ID4gK3N0YXRpYyB2
b2lkIG52bWVfdGhlcm1hbF96b25lc191bnJlZ2lzdGVyKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwp
Cj4gPiA+ICt7Cj4gPiA+ICsgICAgIGludCBpOwo+ID4gPiArCj4gPiA+ICsgICAgIGZvciAoaSA9
IDA7IGkgPCBBUlJBWV9TSVpFKGN0cmwtPnR6ZGV2KTsgaSsrKSB7Cj4gPiA+ICsgICAgICAgICAg
ICAgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnR6ZGV2ID0gY3RybC0+dHpkZXZbaV07Cj4g
PiA+ICsgICAgICAgICAgICAgY2hhciBuYW1lWzIwXTsKPiA+Cj4gPiBTaW1wbGUgcXVlcnkgaGVy
ZSA6KQo+ID4KPiA+IElmIHdlIGFyZSBub3QgZ29pbmcgdG8gYWxsb3cgdGhlIG5hbWUgb2YgbGlu
ayBleGNlZWQgdGhlIGxlbmd0aCBvZiBpdHMKPiA+IG93biBkZXZpY2UgbmFtZSBsaWtlIG52bWVY
X3RlbXBZLCB0aGVuIGNhbiB3ZSBUSEVSTUFMX05BTUVfTEVOR1RIIG1hY3JvCj4gPiBoZXJlPyAg
SWYgdGhlIG5hbWUgb2YgbGluayBpcyBub3QgZXhhY3RseSBhYm91dCB0aGUgZGV2aWNlIG5hbWUg
aXRzZWxmLAo+ID4gdGhlbiBpdCdzIGZpbmUuICBXaGF0IGRvIHlvdSB0aGluayBhYm91dCBpdCA/
Cj4gCj4gT2YgY291cnNlIHdlIGNhbiB1c2UgVEhFUk1BTF9OQU1FX0xFTkdUSCBoZXJlLiAgQnV0
IHRoaXMgY2hhciBhcnJheSBpcwo+IHVzZWQgb25seSBmb3IgdGhlIHN5bWJvbGljIGxpbmsgbmFt
ZS4KPiBJdCdzIG5vdCB1c2VkIGZvciB0aGVybWFsIGNvb2xpbmcgZGV2aWNlIHR5cGUsIHRoZXJt
YWwgem9uZSBkZXZpY2UgdHlwZSwKPiBvciB0aGVybWFsIGdvdmVybm9yIG5hbWUuICBTbyBJIGp1
c3QgdXNlZCBhIHJhbmRvbSBjb25zdGFudCB0byBhdm9pZAo+IGNvbmZ1c2lvbi4KCkFncmVlZC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
