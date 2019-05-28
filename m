Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCE2D132
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 23:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXpk3nNn9O+hh69k/4Mij1BEsZYN4A+laVom0Fhp/gY=; b=eZw3GhY0vAKUoH
	ejzND9qJ/xcWFE/wEe8obbLa8Oh1+s5Ruku5tSr4jJnxn5TdIiiTJbYVgGE/NLxEi5DvyefhOSCDx
	fW5GKexi+D1z/Ot7GbWMk73501fYm02RQg211wYDsuqKhbSLE+AF9RkSZTgb0/QFcO47Ly8gZR/CD
	8+5dd2uo1hbxjzS+e37mTm7FySwXb4mCmidWbyPitu1zXe5UF92VdIQJZQaj7nyH5OwDSkkoaIwC8
	maGaUIFsNTMC2O9lbzjRjnvn2zitKn+hx++lR7q0ZTHj1MMnL6NNUIdmUF0GsShGGDA68tEgGEPEE
	FMDrCv14iiGEIGgEzCLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjyv-0002AA-AF; Tue, 28 May 2019 21:50:05 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjyo-00023P-W9
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 21:50:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 14:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,524,1549958400"; d="scan'208";a="179352692"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2019 14:49:56 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 28 May 2019 14:49:56 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.170]) with mapi id 14.03.0415.000;
 Tue, 28 May 2019 14:49:56 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
Thread-Topic: [PATCH 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
Thread-Index: AQHVEeaTk1nbasbQ2E67MCGR5nM2X6aBGsWA
Date: Tue, 28 May 2019 21:49:55 +0000
Message-ID: <03D3DDE9-F714-4F30-8716-BBCA97CBEDF8@intel.com>
References: <20190524041004.23200-1-sagi@grimberg.me>
In-Reply-To: <20190524041004.23200-1-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <2716512A9F0A5244BCAB602D5C5AC79A@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_144959_084397_04B3F331 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvMjMvMTksIDk6MTAgUE0sICJTYWdpIEdyaW1iZXJnIiA8c2FnaUBncmltYmVy
Zy5tZT4gd3JvdGU6DQoNCiAgICBXaGVuIHRoZSBjb250cm9sbGVyIHN1cHBvcnRzIGxlc3MgcXVl
dWVzIHRoYW4gcmVxdWVzdGVkLCB3ZQ0KICAgIHNob3VsZCBtYWtlIHN1cmUgdGhhdCBxdWV1ZSBt
YXBwaW5nIGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGFuZA0KICAgIG5vdCBhc3N1bWUgdGhhdCBhbGwg
cXVldWVzIGFyZSBhdmFpbGFibGUuIFRoaXMgZml4ZXMgYSBjcmFzaA0KICAgIHdoZW4gdGhlIGNv
bnRyb2xsZXIgc3VwcG9ydHMgbGVzcyBxdWV1ZXMgdGhhbiByZXF1ZXN0ZWQuDQogICAgDQogICAg
VGhlIHJ1bGVzIGFyZToNCiAgICAxLiBpZiBubyB3cml0ZS9wb2xsIHF1ZXVlcyBhcmUgcmVxdWVz
dGVkLCB3ZSBhc3NpZ24gdGhlIGF2YWlsYWJsZSBxdWV1ZXMNCiAgICAgICB0byB0aGUgZGVmYXVs
dCBxdWV1ZSBtYXAuIFRoZSBkZWZhdWx0IGFuZCByZWFkIHF1ZXVlIG1hcHMgc2hhcmUgdGhlDQog
ICAgICAgZXhpc3RpbmcgcXVldWVzLg0KICAgIDIuIGlmIHdyaXRlIHF1ZXVlcyBhcmUgcmVxdWVz
dGVkOg0KICAgICAgLSBmaXJzdCBtYWtlIHN1cmUgdGhhdCByZWFkIHF1ZXVlIG1hcCBnZXRzIHRo
ZSByZXF1ZXN0ZWQNCiAgICAgICAgbnJfaW9fcXVldWVzIGNvdW50DQogICAgICAtIHRoZW4gZ3Jh
bnQgdGhlIGRlZmF1bHQgcXVldWUgbWFwIHRoZSBtaW5pbXVtIGJldHdlZW4gdGhlIHJlcXVlc3Rl
ZA0KICAgICAgICBucl93cml0ZV9xdWV1ZXMgYW5kIHRoZSByZW1haW5pbmcgcXVldWVzLiBJZiB0
aGVyZSBhcmUgbm8gYXZhaWxhYmxlDQogICAgICAgIHF1ZXVlcyB0byBkZWRpY2F0ZSB0byB0aGUg
ZGVmYXVsdCBxdWV1ZSBtYXAsIGZhbGxiYWNrIHRvICgxKSBhbmQNCiAgICAgICAgc2hhcmUgYWxs
IHRoZSBxdWV1ZXMgaW4gdGhlIGV4aXN0aW5nIHF1ZXVlIG1hcC4NCiAgICAzLiBpZiBwb2xsIHF1
ZXVlcyBhcmUgcmVxdWVzdGVkOg0KICAgICAgLSBtYXAgdGhlIHJlbWFpbmluZyBxdWV1ZXMgdG8g
dGhlIHBvbGwgcXVldWUgbWFwLg0KICAgIA0KICAgIEFsc28sIHByb3ZpZGUgYSBsb2cgaW5kaWNh
dGlvbiBvbiBob3cgd2UgY29uc3RydWN0ZWQgdGhlIGRpZmZlcmVudA0KICAgIHF1ZXVlIG1hcHMu
DQogICAgDQogICAgT25lIHNpZGUtYWZmZWN0IGNoYW5nZSBpcyB0aGF0IHdlIHJlbW92ZSB0aGUg
cmRtYSBkZXZpY2UgbnVtYmVyIG9mDQogICAgY29tcGxldGlvbiB2ZWN0b3JzIGRldmljZSBsaW1p
dGF0aW9uIHdoZW4gc2V0dGluZyB0aGUgcXVldWUgY291bnQuDQogICAgTm8gcmRtYSBkZXZpY2Ug
dXNlcyBtYW5hZ2VkIGFmZmluaXR5IHNvIHRoZXJlIGlzIG5vIHJlYWwgcmVhc29uIGFzDQogICAg
d2UgY2Fubm90IGd1YXJhbnRlZSBhbnkgdmVjdG9yIGJhc2VkIHF1ZXVlIG1hcHBpbmcuIFRoaXMg
Y2hhbmdlIGlzDQogICAgc3F1YXNoZWQgaGVyZSBiZWNhdXNlIHRoaXMgcGF0Y2ggbmVlZHMgdG8g
Z28gdG8gc3RhYmxlIGtlcm5lbCBhbmQNCiAgICBpdHMgc2ltcGxlciBoYXZpbmcgaXQgaGVyZSB0
aGFuIGhhdmluZyBpdCBsaXZlIG9uIGl0cyBvd24gd2l0aG91dA0KICAgIGEgY2xlYXIgaW5kaWNh
dGlvbiB3aHkgaXQgZW5kZWQgdXAgaW4gc3RhYmxlIGtlbnJlbHMuDQogICAgDQogICAgUmVwb3J0
ZWQtYnk6IEhhcnJpcywgSmFtZXMgUiA8amFtZXMuci5oYXJyaXNAaW50ZWwuY29tPg0KICAgIENj
OiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS4wKw0KICAgIFNpZ25lZC1vZmYtYnk6IFNh
Z2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+DQoNClRoYW5rcyBTYWdpLiAgVGhpcyB3b3Jr
cyBmb3IgbWUuDQoNClRlc3RlZC1ieTogSmltIEhhcnJpcyA8amFtZXMuci5oYXJyaXNAaW50ZWwu
Y29tPg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
