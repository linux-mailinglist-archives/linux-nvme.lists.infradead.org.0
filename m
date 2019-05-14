Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5BD1CDA3
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 19:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxyHmmmBZmXsYYiUqilAWVXNTNkEtoHwJe37mwibW/w=; b=ho9xcJ04NedzoJ
	b3q3Co6ce5VuXURWq2zu7uocAY0uqePZqhXd8d8OGVV8l5X83bN++Vnn1/Pvum/iSLQP8e3klmpI5
	LaGDVnvvhZ0+CeGVTbUeNT2gNqPHCUw1jLaVujZbXVoMpXaCrJIWKFZfJxD75uND/BRIbDuCPDZDn
	lrq+LtLswApcH3+SEZDVtr+2JZRxpib+PP4rirbhgwf0uc77J7/3kE6W5n5ZssX1T+/bvUE0kFvPp
	jjon2FTLOaaAtFc0pWkF0lW2O7sBCAK9+lLdeJOQOp5BBDPUAGR1vMyNuHvtbWMCAlAKQ3PBMi0tL
	ReaMD9/Ewpkxtnqv5kUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQayl-0005Vd-05; Tue, 14 May 2019 17:12:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQayT-0005Fq-CE
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 17:12:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:12:19 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 14 May 2019 10:12:19 -0700
Date: Tue, 14 May 2019 11:06:59 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH] nvme-cli: align comments for struct telemetry_log_page_hdr
Message-ID: <20190514170659.GA19977@localhost.localdomain>
References: <1557846878-25595-1-git-send-email-akinobu.mita@gmail.com>
 <70b80155-d4a8-b53e-7022-0f5f704b1338@acm.org>
 <CAC5umyi6GQh38R2q5xpBXisJjFVgkkEcPxnJ-geo1fKHYOLAuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyi6GQh38R2q5xpBXisJjFVgkkEcPxnJ-geo1fKHYOLAuw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101222_218407_19BF4B65 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDE6Mjc6MzZBTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQ15pyIMTXml6Uo5rC0KSAwOjIyIEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFz
c2NoZUBhY20ub3JnPjoKPiA+Cj4gPiBPbiA1LzE0LzE5IDU6MTQgUE0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+ID4gQWxpZ24gdGhlIGZpZWxkIG1lbWJlciBjb21tZW50cyBmb3Igc3RydWN0IHRl
bGVtZXRyeV9sb2dfcGFnZV9oZHIuCj4gPiA+IFRoaXMgYWxzbyB1c2VzIHRhYnMgaW5zdGVhZCBv
ZiBzcGFjZXMgdG8gYWxpZ24gZmllbGQgbWVtYmVycy4KPiA+Cj4gPiBIaSBBa2lub2J1LAo+ID4K
PiA+IEhhdmUgeW91IGNvbnNpZGVyZWQgdG8gdXNlIHRoZSBrZXJuZWwtZG9jIHN5bnRheCBpbnN0
ZWFkIG9mIGFsaWduaW5nIHRoZQo+ID4gY29tbWVudHM/IFNlZSBhbHNvCj4gPiBodHRwczovL3d3
dy5rZXJuZWwub3JnL2RvYy9Eb2N1bWVudGF0aW9uL2tlcm5lbC1kb2MtbmFuby1IT1dUTy50eHQu
Cj4gCj4gSSBwZXJzb25hbGx5IHByZWZlciB0byB1c2UgdGhlIGtlcm5lbC1kb2Mgc3ludGF4LiAg
U28gaWYgbm8gb25lIGNvbXBsYWlucywKPiBJIHdpdGhkcmF3IHRoaXMgcGF0Y2ggYW5kIHdpbGwg
c2VuZCBhIHBhdGNoIHRvIGNvbnZlcnQga2VybmVsLWRvYyBzeW50YXguCgpNZSB0b28uIEtlcm5l
bCBzdHlsZSBpcyBwcmVmZXJyZWQuIFdlJ3ZlIGp1c3QgYmVlbiB0b28gbGVuaWVudCBvbgplbmZv
cmNpbmcgaXQsIHNvIEkgd291bGQgYXBwcmVjaWF0ZSB0aGVzZSBzdHlsZSBmaXhlcy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
