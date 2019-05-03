Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D166112D59
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRKUD/vyOAjzYfBQwqs5O7HtTBrqWsLgUf395xfTGzs=; b=W9Pa/0pB1F2X12
	w80MpWIRXaPBJmCzKXFQE5B6oI+bqnU/WZC4j5RuBoSBNyEv2kNlYYg+yEgF7BYaL3ctaM1lvldLe
	gt6DAkj8/duZMog+PmUoGtC0P3xhPePOa4YkxB0ysH+6bI9w9IpoWf121AvYivgYnlyTgpei1H5Nq
	WZOblaMOTD/lCZx2BWmJ/MH/S1L88fEPwTyaHNKOF4f0K0Ks4l2pPKh0r7c/mh8coTQQ1Ze24uXKL
	qERWgIOkbp3gXOa48XYvWm84rwDINK3VPJ6n3Ove5IChLJFECFarJBDzRRRYTfceKeG9vqRN/Mcrd
	DJxvDjwICR1ZNSlLYKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMX8v-0007Eg-L0; Fri, 03 May 2019 12:18:21 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMX8q-0007EB-7c
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:18:17 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 05:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="167227563"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2019 05:18:14 -0700
Date: Fri, 3 May 2019 06:12:32 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
Message-ID: <20190503121232.GB30013@localhost.localdomain>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
 <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_051816_334431_26406946 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMTI6Mzg6MDhQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQ15pyIMuaXpSjmnKgpIDIyOjAzIEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNj
aEBpbnRlbC5jb20+Ogo+ID4gT24gVGh1LCBNYXkgMDIsIDIwMTkgYXQgMDU6NTk6MTdQTSArMDkw
MCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gPiBUaGlzIGVuYWJsZXMgdG8gY2FwdHVyZSBzbmFw
c2hvdCBvZiBjb250cm9sbGVyIGluZm9ybWF0aW9uIHZpYSBkZXZpY2UKPiA+ID4gY29yZWR1bXAg
bWFjaGFuaXNtLCBhbmQgaXQgaGVscHMgZGlhZ25vc2UgYW5kIGRlYnVnIGlzc3Vlcy4KPiA+ID4K
PiA+ID4gVGhlIG52bWUgZGV2aWNlIGNvcmVkdW1wIGlzIHRyaWdnZXJlZCBiZWZvcmUgcmVzZXR0
aW5nIHRoZSBjb250cm9sbGVyCj4gPiA+IGNhdXNlZCBieSBJL08gdGltZW91dCwgYW5kIGNyZWF0
ZXMgdGhlIGZvbGxvd2luZyBjb3JlZHVtcCBmaWxlcy4KPiA+ID4KPiA+ID4gLSByZWdzOiBOVk1l
IGNvbnRyb2xsZXIgcmVnaXN0ZXJzLCBpbmNsdWRpbmcgZWFjaCBJL08gcXVldWUgZG9vcmJlbGwK
PiA+ID4gICAgICAgICByZWdpc3RlcnMsIGluIG52bWUtc2hvdy1yZWdzIHN0eWxlIHRleHQgZm9y
bWF0Lgo+ID4KPiA+IFlvdSdyZSBzdXBwb3NlZCB0byB0cmVhdCBxdWV1ZSBkb29yYmVsbHMgYXMg
d3JpdGUtb25seS4gU3BlYyBzYXlzOgo+ID4KPiA+ICAgVGhlIGhvc3Qgc2hvdWxkIG5vdCByZWFk
IHRoZSBkb29yYmVsbCByZWdpc3RlcnMuIElmIGEgZG9vcmJlbGwgcmVnaXN0ZXIKPiA+ICAgaXMg
cmVhZCwgdGhlIHZhbHVlIHJldHVybmVkIGlzIHZlbmRvciBzcGVjaWZpYy4KPiAKPiBPSy4gIEkn
bGwgZXhjbHVkZSB0aGUgZG9vcmJlbGwgcmVnaXN0ZXJzIGZyb20gcmVnaXN0ZXIgZHVtcC4gIEl0
IHdpbGwgd29yawo+IG91dCB3aXRob3V0IHRoZSBpbmZvcm1hdGlvbiBpZiB3ZSBoYXZlIHNuYXBz
aG90IG9mIHRoZSBxdWV1ZXMuCgpDb3VsZCB5b3UgYWN0dWFsbHkgZXhwbGFpbiBob3cgdGhlIHJl
c3QgaXMgdXNlZnVsPyBJIHBlcnNvbmFsbHkgaGF2ZQpuZXZlciBlbmNvdW50ZXJlZCBhbiBpc3N1
ZSB3aGVyZSBrbm93aW5nIHRoZXNlIHZhbHVlcyB3b3VsZCBoYXZlIGhlbHBlZDoKZXZlcnkgZGV2
aWNlIHRpbWVvdXQgYWx3YXlzIG5lZWRlZCBkZXZpY2Ugc3BlY2lmaWMgaW50ZXJuYWwgZmlybXdh
cmUKbG9ncyBpbiBteSBleHBlcmllbmNlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
