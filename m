Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E3370DF3
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBy4RWShAA8bYb2nUKV4QjmMpDA99xM8mkzLbSXZnkE=; b=WwtG3PA5S0Srfn
	/RTHE6E/xDteC1Mr3IT7WUFZcZIAwi9zObD2tR5YvJ6//Oyy2AjoaDTnvFq49jXknMgBkjIIMuXjE
	jMy15FLYMK85KtvdRqoLKiu7ZbwHiDRrP7WJOwS7nIvg/VCiZ2Ji5qWUVMqbiVC0ZidQOzZ7gshuI
	xooX54Xpk5YhqL3gL+eJ5lpu9nQV73kXMDrgfyNgqOl5RA3xwjSsQCcwP+wfBvYFvj4hp5cvVFhx1
	VTUNsOpM5X/rlWfL/jBHw3zt4iej0czc8xgkwF3lYH0R+JYtEifob/424z0mTC8v3Qxn9JS+pLf2k
	GoP1IIdyv4cVuYPB57mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiPw-0006UE-TH; Tue, 23 Jul 2019 00:12:33 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiPk-0006Tc-QG
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 00:12:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 17:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="320838353"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2019 17:06:47 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jul 2019 17:06:45 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.137]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 17:06:45 -0700
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: nvme-tcp: 'page must not be a Slab one'
Thread-Topic: nvme-tcp: 'page must not be a Slab one'
Thread-Index: AdVAzsH265ZDDcHwRSeHQavUYtqujQABGWyQAAA8/1AAESveAAALu2DQ
Date: Tue, 23 Jul 2019 00:06:44 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D15096@ORSMSX104.amr.corp.intel.com>
References: <B33B37937B7F3D4CB878107E305D4916D14FD1@ORSMSX104.amr.corp.intel.com>
 <6a2eedf1-8629-c5b5-257b-94cf7b3c7ae6@grimberg.me>
In-Reply-To: <6a2eedf1-8629-c5b5-257b-94cf7b3c7ae6@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTUzOTVhYWYtMTkzMy00Y2YwLThiZDItMThhNTE0YTIxODY2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNU1FRVBJRENnTGl3RDMwU2hvd2JYcXlFeTR4eXhCN2tuSDZWNnU5NkFVSldGOUh3RlhRWnB4VlJvbFI1VDhvOCJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_171220_941881_E8C5778B 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhhbmtzIFNhZ2ksDQoNCkluZGVlZCBubywgSSBkaWQgbm90IGhhdmUgdGhhdCBwYXRjaCB5ZXQu
ICBJIG5vdyBzZWUgaXQgdGFnZ2VkIEAgdjUuMy1yYzEuDQpJJ2xsIG1vdmUgdG8gdGhhdCBicmFu
Y2gsIG9yIGFsc28gdHJ5IGZvciBub3cgc3RhYmxlLXY1LjIuMSB3aXRob3V0IENPTkZJR19ERUJV
R19WTS4NCg0KQ2hlZXJzDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTYWdp
IEdyaW1iZXJnIFttYWlsdG86c2FnaUBncmltYmVyZy5tZV0gDQpTZW50OiBNb25kYXksIEp1bHkg
MjIsIDIwMTkgMzozOCBQTQ0KVG86IFd1bmRlcmxpY2gsIE1hcmsgPG1hcmsud3VuZGVybGljaEBp
bnRlbC5jb20+OyBsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcNClN1YmplY3Q6IFJlOiBu
dm1lLXRjcDogJ3BhZ2UgbXVzdCBub3QgYmUgYSBTbGFiIG9uZScNCg0KDQo+IE5ldyB0byB0aGlz
IGxpc3QsIG5vdCB0byBOVk1lX29GLsKgIEFwb2xvZ2l6ZSB1cCBmcm9udCBpZiB0aGlzIGlzIG5v
dCBhbiBhcHByb3ByaWF0ZSB1c2Ugb2YgdGhpcyBmb3J1bSwgcGxlYXNlIHNsYXAgd3Jpc3QgYXBw
cm9wcmlhdGVseSBpZiBzby4NCg0KVGhpcyBpcyBleGFjdGx5IHRoZSBjb3JyZWN0IGZvcnVtLg0K
DQo+IEFtIGRldmVsb3BpbmcgZm9yIE5WTWVfb0YvVENQLCBhbmQgc2VlaW5nIHRoZSBmYWlsdXJl
IG1lc3NhZ2UgaW4gc3ViamVjdCBsaW5lIGR1cmluZyBrZXJuZWxfc2VuZHBhZ2UuDQo+IFRoaXMg
ZmFpbHVyZSBuZXcgdG8gbWUgc3RhcnRpbmcgd2l0aCB2NS4xLsKgIFNlZSBpdCBpbiB2NS4yIGFu
ZCBzdGFibGUgNS4yLjENCj4gDQo+IFdvbmRlcmluZyBpZiB0aGlzIGlzIHJlbGF0ZWQgdG8gJ252
bWUtdGNwOiByZXBsYWNlIHNlbmRwYWdlIGNhbGxzIHdpdGggc2VuZG1zZyBjYWxscyBmb3IgU0xB
QiBjaHVua3MnPy7CoCBJZiBzbywgaXMgdGhlcmUgcGF0Y2ggaW4gdGhlIHdvcmtzIHRvIGFkZHJl
c3MgaXQsIG9yIGRpZCBJIG1pc3MgaXQuDQoNClllcywgdGhpcyBpcyBzcGVjaWZpYyB0byBDT05G
SUdfREVCVUdfVk0uDQoNCmRvIHlvdSBoYXZlIHRoaXMgcGF0Y2ggYXBwbGllZD8NCjM3YzE1MjE5
NTk5ZiAoIm52bWUtdGNwOiBkb24ndCB1c2Ugc2VuZHBhZ2UgZm9yIFNMQUIgcGFnZXMiKQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
