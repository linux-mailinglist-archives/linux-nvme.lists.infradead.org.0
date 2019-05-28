Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4242D2D135
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 23:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWxiFscPnZZMuNtoVkTq9fL47+n5l+cF1yL2Ik7klCk=; b=aewA7WXthJdNQ9
	wZRb9GWzo4/j5Bk5a5pOOkk5UzLlkq9149zX/ZUnSTJI052z3XW+NBsIEKO/usyKdhwbouzU0WzYs
	KijUHJN/8kkpwx/Gfg0qyYTxcp7Gxt4zDTZ0q36K8xSZWXl2NccWE1c7y5fBidy03wysuWUZQqj83
	jVt7QuHIJ3i1wdDYg51jK8JWZxBOKp8ayH/A2DNBc4Ik5MQ2bnVSpvLrz0SbmgaZAu8wtvegKJAeI
	vVVZSvwoJHsCBsBTPT1+9dldA5cYACsJCuFIq56SIYfYxfmKFdoccy26hX8VldbypT0JHgwxAGl+F
	HYiKQAyfl7+aDeCPvrUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjzb-0003aa-Gk; Tue, 28 May 2019 21:50:47 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjzV-0003aA-V7
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 21:50:44 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 14:50:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,524,1549958400"; d="scan'208";a="179352955"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2019 14:50:41 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 28 May 2019 14:50:40 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.224]) with mapi id 14.03.0415.000;
 Tue, 28 May 2019 14:50:40 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/2] nvme-tcp: fix queue mapping when queue count is
 limited
Thread-Topic: [PATCH 2/2] nvme-tcp: fix queue mapping when queue count is
 limited
Thread-Index: AQHVEeaSXm6TFcC5AEWCkKdWiOCyNaaBGvoA
Date: Tue, 28 May 2019 21:50:40 +0000
Message-ID: <F5720435-0411-4AFF-9263-55879768708B@intel.com>
References: <20190524041004.23200-1-sagi@grimberg.me>
 <20190524041004.23200-2-sagi@grimberg.me>
In-Reply-To: <20190524041004.23200-2-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <41996FDB82B1144A9A91B0FFF9BF5381@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_145042_832187_835171FF 
X-CRM114-Status: GOOD (  12.49  )
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
VGhlIHJ1bGVzIGFyZToNCiAgICAxLiBpZiBubyB3cml0ZSBxdWV1ZXMgYXJlIHJlcXVlc3RlZCwg
d2UgYXNzaWduIHRoZSBhdmFpbGFibGUgcXVldWVzDQogICAgICAgdG8gdGhlIGRlZmF1bHQgcXVl
dWUgbWFwLiBUaGUgZGVmYXVsdCBhbmQgcmVhZCBxdWV1ZSBtYXBzIHNoYXJlIHRoZQ0KICAgICAg
IGV4aXN0aW5nIHF1ZXVlcy4NCiAgICAyLiBpZiB3cml0ZSBxdWV1ZXMgYXJlIHJlcXVlc3RlZDoN
CiAgICAgIC0gZmlyc3QgbWFrZSBzdXJlIHRoYXQgcmVhZCBxdWV1ZSBtYXAgZ2V0cyB0aGUgcmVx
dWVzdGVkDQogICAgICAgIG5yX2lvX3F1ZXVlcyBjb3VudA0KICAgICAgLSB0aGVuIGdyYW50IHRo
ZSBkZWZhdWx0IHF1ZXVlIG1hcCB0aGUgbWluaW11bSBiZXR3ZWVuIHRoZSByZXF1ZXN0ZWQNCiAg
ICAgICAgbnJfd3JpdGVfcXVldWVzIGFuZCB0aGUgcmVtYWluaW5nIHF1ZXVlcy4gSWYgdGhlcmUg
YXJlIG5vIGF2YWlsYWJsZQ0KICAgICAgICBxdWV1ZXMgdG8gZGVkaWNhdGUgdG8gdGhlIGRlZmF1
bHQgcXVldWUgbWFwLCBmYWxsYmFjayB0byAoMSkgYW5kDQogICAgICAgIHNoYXJlIGFsbCB0aGUg
cXVldWVzIGluIHRoZSBleGlzdGluZyBxdWV1ZSBtYXAuDQogICAgDQogICAgQWxzbywgcHJvdmlk
ZSBhIGxvZyBpbmRpY2F0aW9uIG9uIGhvdyB3ZSBjb25zdHJ1Y3RlZCB0aGUgZGlmZmVyZW50DQog
ICAgcXVldWUgbWFwcy4NCiAgICANCiAgICBSZXBvcnRlZC1ieTogSGFycmlzLCBKYW1lcyBSIDxq
YW1lcy5yLmhhcnJpc0BpbnRlbC5jb20+DQogICAgQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3Jn
PiAjIHY1LjArDQogICAgU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVy
Zy5tZT4NCg0KVGhhbmtzIFNhZ2kuICBUaGlzIHdvcmtzIHRvby4NCg0KVGVzdGVkLWJ5OiBKaW0g
SGFycmlzIDxqYW1lcy5yLmhhcnJpc0BpbnRlbC5jb20+DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
