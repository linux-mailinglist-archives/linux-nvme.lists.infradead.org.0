Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C438A35153
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 22:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjnBCOVlv79+L3K0X0G4wDwLkMgdgn9dzn/M/aEwicM=; b=cljTbmkzNxHU0a
	TtdDA0t5GRVh99xOtDiS/HMj5xoVYO1x9tWnG9fOsMLVS23PNc8t4JzoW4VLEeaivnq/edPdRpuK8
	EXtCXS1K8cA4FliTRxTR8v1wxDyayxabM2AzhUAZMfF9MYZGLQ7giGwPdCNFqVm/OavQpEqUphjzn
	J85ag82JkFitbLiCDKYInHEywDjFbMS7IIVw/lbiglGsuNZbVJe+wS2Rh+yyK78cvV12pX2rW9xo2
	ZixT6My1ldwlVi9/ipNT/ZHEUWfT1H21XyS/T2vJZRqolnttofMRb0QSNBBIi+BSEWk4E9Tg30Nya
	qMZt8uZdO3BeZMq9uDZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGMt-0002jl-99; Tue, 04 Jun 2019 20:49:15 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGMo-0002jP-ES
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 20:49:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:49:08 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2019 13:49:08 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 4 Jun 2019 13:49:08 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.126]) with mapi id 14.03.0415.000;
 Tue, 4 Jun 2019 13:49:08 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Max Gurtovoy <maxg@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Thread-Topic: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Thread-Index: AQHVGmHCpHLls/ICnUC9eESHTfFT86aLBKaA//+OKICAATpoAIAAJ3YAgAAEd4A=
Date: Tue, 4 Jun 2019 20:49:07 +0000
Message-ID: <DB6F75EA-7725-4A0C-B9B6-FB7350526AAF@intel.com>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
In-Reply-To: <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <346787774F613842AFB1CEEC49EBEF3A@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_134910_567000_8C880CDD 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

DQoNCu+7v09uIDYvNC8xOSwgNjozNCBBTSwgIk1heCBHdXJ0b3ZveSIgPG1heGdAbWVsbGFub3gu
Y29tPiB3cm90ZToNCg0KICAgIEphbWVzLA0KICAgIA0KICAgIGNhbiB5b3UgdGVzdCB0aGUgYXR0
YWNoZWQgcGF0Y2ggKHdpdGhvdXQgdGhlIHJldmVydCkgPw0KDQpIaSBNYXgsDQoNClRoaXMgcGF0
Y2ggd29ya3Mgb24gbXkgc3lzdGVtLg0KDQpUZXN0ZWQtYnk6IEppbSBIYXJyaXMgPGphbWVzLnIu
aGFycmlzQGludGVsLmNvbT4NCg0KVGhhbmtzLA0KDQotSmltDQoNCiAgICANCiAgICAtTWF4Lg0K
ICAgIA0KICAgIE9uIDYvNC8yMDE5IDI6MTEgUE0sIE1heCBHdXJ0b3ZveSB3cm90ZToNCiAgICA+
IEhpIFNhZ2kvQ2hyaXN0b3BoLA0KICAgID4NCiAgICA+IHBsZWFzZSBkb24ndCByZXZlcnQgdGhp
cyBjb21taXQgeWV0IG9uIHRoZSBicmFuY2guIEknbSBzZW5kaW5nIGEgZml4IA0KICAgID4gdG8g
aXQgaW4gMSBob3VyIGZvciBKYW1lcyBhcHByb3ZhbC4NCiAgICA+DQogICAgPiAtTWF4Lg0KICAg
ID4NCiAgICA+IE9uIDYvNC8yMDE5IDI6MjYgQU0sIEhhcnJpcywgSmFtZXMgUiB3cm90ZToNCiAg
ICA+Pg0KICAgID4+IE9uIDYvMy8xOSwgNDoxNCBQTSwgIlNhZ2kgR3JpbWJlcmciIDxzYWdpQGdy
aW1iZXJnLm1lPiB3cm90ZToNCiAgICA+Pg0KICAgID4+ICAgICAgICAgICA+IFRoaXMgY29tbWl0
IGNhdXNlZCBhIGtlcm5lbCBwYW5pYyB3aGVuIGRpc2Nvbm5lY3RpbmcgZnJvbSBhbg0KICAgID4+
ICAgICAgPiBpbmFjY2Vzc2libGUgY29udHJvbGxlci4NCiAgICA+PiAgICAgID4NCiAgICA+PiAg
ICAgID4gLS0NCiAgICA+PiAgICAgID4gbnZtZSBudm1lMDogUmVtb3ZpbmcgY3RybDogTlFOICJ0
ZXN0bnFuMSINCiAgICA+PiAgICAgID4gbnZtZV9yZG1hOiBudm1lX3JkbWFfZXhpdF9yZXF1ZXN0
OiBoY3R4IDAgcXVldWVfaWR4IDENCiAgICA+PiAgICAgID4gQlVHOiB1bmFibGUgdG8gaGFuZGxl
IGtlcm5lbCBwYWdpbmcgcmVxdWVzdCBhdCAwMDAwMDAwMDgwMDAwMjI4DQogICAgPj4gICAgICA+
IFBHRCAwIFA0RCAwDQogICAgPj4gICAgICA+IE9vcHM6IDAwMDAgWyMxXSBTTVAgUFRJDQogICAg
Pj4gICAgICA+IC4uLg0KICAgID4+ICAgICAgPiBDYWxsIFRyYWNlOg0KICAgID4+ICAgICAgPiAg
IGJsa19tcV9leGl0X2hjdHgrMHg1Yy8weGYwDQogICAgPj4gICAgICA+ICAgYmxrX21xX2V4aXRf
cXVldWUrMHhkNC8weDEwMA0KICAgID4+ICAgICAgPiAgIGJsa19jbGVhbnVwX3F1ZXVlKzB4OWEv
MHhjMA0KICAgID4+ICAgICAgPiAgIG52bWVfcmRtYV9kZXN0cm95X2lvX3F1ZXVlcysweDUyLzB4
NjAgW252bWVfcmRtYV0NCiAgICA+PiAgICAgID4gICBudm1lX3JkbWFfc2h1dGRvd25fY3RybCsw
eDNlLzB4ODAgW252bWVfcmRtYV0NCiAgICA+PiAgICAgID4gICBudm1lX2RvX2RlbGV0ZV9jdHJs
KzB4NTMvMHg4MCBbbnZtZV9jb3JlXQ0KICAgID4+ICAgICAgPiAgIG52bWVfc3lzZnNfZGVsZXRl
KzB4NDUvMHg2MCBbbnZtZV9jb3JlXQ0KICAgID4+ICAgICAgPiAgIGtlcm5mc19mb3Bfd3JpdGUr
MHgxMDUvMHgxODANCiAgICA+PiAgICAgID4gICB2ZnNfd3JpdGUrMHhhZC8weDFhMA0KICAgID4+
ICAgICAgPiAgIGtzeXNfd3JpdGUrMHg1YS8weGQwDQogICAgPj4gICAgICA+ICAgZG9fc3lzY2Fs
bF82NCsweDU1LzB4MTEwDQogICAgPj4gICAgICA+ICAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9o
d2ZyYW1lKzB4NDQvMHhhOQ0KICAgID4+ICAgICAgPiBSSVA6IDAwMzM6MHg3ZmEyMTU0MTcxNTQN
CiAgICA+PiAgICAgID4gLS0NCiAgICA+PiAgICAgID4NCiAgICA+PiAgICAgICAgICAgU2hvdWxk
IGFkZDoNCiAgICA+PiAgICAgIFJlcG9ydGVkLWJ5OiBIYXJyaXMsIEphbWVzIFIgPGphbWVzLnIu
aGFycmlzQGludGVsLmNvbT4NCiAgICA+Pg0KICAgID4+IFRoYW5rcyBTYWdpLiAgSSBjYW4gY29u
ZmlybSB0aGF0IHJldmVydGluZyB0aGlzIHBhdGNoIGVsaW1pbmF0ZWQgdGhlIA0KICAgID4+IGtl
cm5lbCBwYW5pYyBvbiBteSBzeXN0ZW0uDQogICAgPj4gICAgICAgICAgID4gU2lnbmVkLW9mZi1i
eTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4NCiAgICA+Pg0KICAgID4NCiAgICA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQogICAgPiBM
aW51eC1udm1lIG1haWxpbmcgbGlzdA0KICAgID4gTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnDQogICAgPiBodHRwczovL2V1cjAzLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29t
Lz91cmw9aHR0cCUzQSUyRiUyRmxpc3RzLmluZnJhZGVhZC5vcmclMkZtYWlsbWFuJTJGbGlzdGlu
Zm8lMkZsaW51eC1udm1lJmFtcDtkYXRhPTAyJTdDMDElN0NtYXhnJTQwbWVsbGFub3guY29tJTdD
ZWZkNjRlODI3ODY3NGQ5MDg3NTIwOGQ2ZThkZDdkNDElN0NhNjUyOTcxYzdkMmU0ZDliYTZhNGQx
NDkyNTZmNDYxYiU3QzAlN0MwJTdDNjM2OTUyNDM1MzI5ODQyNDM5JmFtcDtzZGF0YT1hcWJCc0lP
UEJMSzduR2h2Z0xBUEIlMkZpUW9SMFF6RWllJTJGV1BwTDVmRSUyQllZJTNEJmFtcDtyZXNlcnZl
ZD0wIA0KICAgID4NCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbnZtZQo=
