Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB3F266D6
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smjK0YPdQzdH152PzJVZFrPkA8ru1TQE62wsURsdpoc=; b=ajKldydbm7q0lC
	0YacuYimY4Fvvlth2tFRLRqAAQ2EDvw2ZODqdMCTiUB9kJuEuKfHucU34Lx4wdVmLgLKC3rRVK4Jv
	LYLNYp/3rXEMZxO3OcjmyMEnLaKmAK7br98O3LMHfJmAIGIikTXenEDy379UGA6pk+fDg04gFUzQ9
	janRJby0NcTZSObwZ4AKhz0r4uYYizn1N1VK60mkO6GXzPANOVSUzHODwDbscwmvAaR1gsMX0Otoq
	ULamzicdRaeJmZmBL94RuP9e7lAwI6NTMHAaIzQW4e9Ejhuzzk0yyB/zMDo08/fkyF5ce8U4LENQr
	KYiGTS2FkJ0nobdCqWBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTT5v-0001ON-Lj; Wed, 22 May 2019 15:23:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTT5q-0001Mh-QY
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:23:52 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so1238278plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 08:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KEHUlVRwOUqUR0G9pKydXDrTlMBnpUN3P5XbzZmAyQU=;
 b=cHSIt3r1Mf+SDHZ2hxMYFYLBv+9vOTFJtajhkuNxbF7y3wnf9jHDJ+o0pMA2T0lHA1
 chp9yohr58CMqLjPkl/MCDTRTG7yrlO8xqugp/uIj9WsSdvUWmUCfGQRwApPs4CUGaXd
 ouZtU+Cf7f6Shn/y/KEW0R+k03OzYPrEm9g+Umay/ExJzPFn/fgTLofDFIJ0lzlCG6Eu
 rqujMG9BZGtBnJTqriPDlsIM6S9yG1PUe0VXxIkay/O7Fvra0pz7ogs++saYAfjgegoM
 45J6mRRdj6UggyrCUTn0Q9nGWiPOA5nxOC+rDHNbuyghWx4cKkjKVTAG+qWVGcNBlwFt
 g9ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KEHUlVRwOUqUR0G9pKydXDrTlMBnpUN3P5XbzZmAyQU=;
 b=t/FmgtWgZxLI46Ym+brYO53UjQ9D8wxKp3n8X02wfziNAwDsGjotppOXfzIBE5JTse
 RftUfE/4iZ9v+82aeOZmbY9fzFRTGtlisHcqOeu/8cMJ8navCCQJ56FT3GXp22S0/AjF
 tSsp1x2Ont7R0Uc05C/ipQs3t3K4rnGQtHOlgy1x6LBZr03VLgFLbK21Qcik43fLDaec
 o/mRf54fxeuHpaynDt1h6s/5XnmLF8DfpJDVIr3/ZhNKCU4glWac9eVB/TlKGTf5K3bE
 couEtBSEvOW3bP8mTiePP4LqMKlzPVCvhwhOvL0eYcyWQap8H4mofQw1IPpd0qPAc5Ey
 ojzg==
X-Gm-Message-State: APjAAAURKy1yzqDniKpUBZQj7uUyroug/CeVbqzflFK1kxmuYclS+R5J
 1zbTSVsA7yJ0swgsPA55Eg4MysrFSEFEkGtl9gs=
X-Google-Smtp-Source: APXvYqzFQFmEsH3/064oxAVgtmEWl85JnsEVsjNxSmomphsa1ybji8nHBbmM/fOY47niJ+LdXppCM8NqhGDIusKLIF4=
X-Received: by 2002:a17:902:7283:: with SMTP id
 d3mr46836903pll.274.1558538629991; 
 Wed, 22 May 2019 08:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <44154394-c0a0-4895-d406-ea357a906cfe@intel.com>
In-Reply-To: <44154394-c0a0-4895-d406-ea357a906cfe@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 23 May 2019 00:23:38 +0900
Message-ID: <CAC5umyghtb58HB08PPZsds5Kf82wr3jq0HPG4861_9JS7KF4gw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082350_869552_B9AD798D 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgyMuaXpSjmsLQpIDY6MDUgSGVpdGtlLCBLZW5uZXRoIDxrZW5uZXRoLmhlaXRr
ZUBpbnRlbC5jb20+Ogo+Cj4KPgo+IE9uIDUvMjEvMjAxOSAxMDowNCBBTSwgQWtpbm9idSBNaXRh
IHdyb3RlOgo+ID4gK3N0YXRpYyBpbnQgbnZtZV9zZXRfb3Zlcl90ZW1wX3RocmVzaChzdHJ1Y3Qg
bnZtZV9jdHJsICpjdHJsLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
bnNpZ25lZCBpbnQgc2Vuc29yLCBpbnQgdGVtcCkKPiA+ICt7Cj4gPiArICAgICB1bnNpZ25lZCBp
bnQgdGhyZXNob2xkID0gc2Vuc29yIDw8IE5WTUVfVEVNUF9USFJFU0hfU0VMRUNUX1NISUZUOwo+
ID4gKyAgICAgaW50IHN0YXR1czsKPiA+ICsgICAgIGludCByZXQ7Cj4gPiArCj4gPiArICAgICBp
ZiAoV0FSTl9PTl9PTkNFKHNlbnNvciA+PSBBUlJBWV9TSVpFKGN0cmwtPnR6ZGV2KSkpCj4gPiAr
ICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gKwo+ID4gKyAgICAgaWYgKHRlbXAgPiBO
Vk1FX1RFTVBfVEhSRVNIX01BU0spCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+
ID4gKwo+ID4gKyAgICAgdGhyZXNob2xkIHw9IHRlbXAgJiBOVk1FX1RFTVBfVEhSRVNIX01BU0s7
Cj4gPiArCj4gPiArICAgICByZXQgPSBudm1lX3NldF9mZWF0dXJlcyhjdHJsLCBOVk1FX0ZFQVRf
VEVNUF9USFJFU0gsIHRocmVzaG9sZCwgTlVMTCwgMCwKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICZzdGF0dXMpOwo+Cj4gSSdtIG5vdCBzdXJlIGFib3V0IGJlc3QgcHJhY3RpY2Vz
IGhlcmUgYnV0IHNpbmNlICdzdGF0dXMnIGlzIHVudXNlZCwgeW91Cj4gY2FuIHBhc3MgaW4gYSBO
VUxMIHBvaW50ZXIuIFRoZSBjYWxsZWQgZnVuY3Rpb24gZGVhbHMgd2l0aCBpdCBjb3JyZWN0bHku
CgpPSy4gIE1ha2Ugc2Vuc2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1udm1lCg==
