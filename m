Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE18433BE7
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6koOCdYuFrAxkOL0iClrjVKlcp6YxkOuczFtYEEvNUk=; b=PjnstEWfI361E4
	ES49saC11OoonKdpqnuu8VRAid93jxOEt5N8ZGGv77wzon+nIiVRVM30iOfBNt7UudjuiNDPfkaHu
	UbGUu6g8UvHITWfzJLzvA33Lg/xmQi9LbSzAv6GnqS3MzUimz7BcCRpH4mLFPZNw4Q17BjAg/aOHm
	rt5u9XPdJ/WznFdRfZi0nUQa/EB71xM/uMCqpma29BRjRQioYtbpvy1MY0+OLrEHogK0VHP8nG4b2
	Np2C7365JqHIgF/rnaEZkKm3R9P2DlZAvYj3JFJVOB4FX21UKajhzvbBPXaeX0ixiUXtNj1zouu5D
	7xfZelSledL2otrIZGlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwLj-0001QA-6p; Mon, 03 Jun 2019 23:26:43 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwLe-0001Pk-6x
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 23:26:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 16:26:36 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jun 2019 16:26:36 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 3 Jun 2019 16:26:36 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.238]) with mapi id 14.03.0415.000;
 Mon, 3 Jun 2019 16:26:36 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] Revert "nvme-rdma: remove redundant reference between
 ib_device and tagset"
Thread-Topic: [PATCH] Revert "nvme-rdma: remove redundant reference between
 ib_device and tagset"
Thread-Index: AQHVGmHCpHLls/ICnUC9eESHTfFT86aLBKaA//+OKIA=
Date: Mon, 3 Jun 2019 23:26:35 +0000
Message-ID: <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
In-Reply-To: <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <0325865E8813B24EAA55C837A00E9801@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_162638_266570_789E6E9C 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDYvMy8xOSwgNDoxNCBQTSwgIlNhZ2kgR3JpbWJlcmciIDxzYWdpQGdyaW1iZXJn
Lm1lPiB3cm90ZToNCg0KICAgIA0KICAgID4gVGhpcyBjb21taXQgY2F1c2VkIGEga2VybmVsIHBh
bmljIHdoZW4gZGlzY29ubmVjdGluZyBmcm9tIGFuDQogICAgPiBpbmFjY2Vzc2libGUgY29udHJv
bGxlci4NCiAgICA+IA0KICAgID4gLS0NCiAgICA+IG52bWUgbnZtZTA6IFJlbW92aW5nIGN0cmw6
IE5RTiAidGVzdG5xbjEiDQogICAgPiBudm1lX3JkbWE6IG52bWVfcmRtYV9leGl0X3JlcXVlc3Q6
IGhjdHggMCBxdWV1ZV9pZHggMQ0KICAgID4gQlVHOiB1bmFibGUgdG8gaGFuZGxlIGtlcm5lbCBw
YWdpbmcgcmVxdWVzdCBhdCAwMDAwMDAwMDgwMDAwMjI4DQogICAgPiBQR0QgMCBQNEQgMA0KICAg
ID4gT29wczogMDAwMCBbIzFdIFNNUCBQVEkNCiAgICA+IC4uLg0KICAgID4gQ2FsbCBUcmFjZToN
CiAgICA+ICAgYmxrX21xX2V4aXRfaGN0eCsweDVjLzB4ZjANCiAgICA+ICAgYmxrX21xX2V4aXRf
cXVldWUrMHhkNC8weDEwMA0KICAgID4gICBibGtfY2xlYW51cF9xdWV1ZSsweDlhLzB4YzANCiAg
ICA+ICAgbnZtZV9yZG1hX2Rlc3Ryb3lfaW9fcXVldWVzKzB4NTIvMHg2MCBbbnZtZV9yZG1hXQ0K
ICAgID4gICBudm1lX3JkbWFfc2h1dGRvd25fY3RybCsweDNlLzB4ODAgW252bWVfcmRtYV0NCiAg
ICA+ICAgbnZtZV9kb19kZWxldGVfY3RybCsweDUzLzB4ODAgW252bWVfY29yZV0NCiAgICA+ICAg
bnZtZV9zeXNmc19kZWxldGUrMHg0NS8weDYwIFtudm1lX2NvcmVdDQogICAgPiAgIGtlcm5mc19m
b3Bfd3JpdGUrMHgxMDUvMHgxODANCiAgICA+ICAgdmZzX3dyaXRlKzB4YWQvMHgxYTANCiAgICA+
ICAga3N5c193cml0ZSsweDVhLzB4ZDANCiAgICA+ICAgZG9fc3lzY2FsbF82NCsweDU1LzB4MTEw
DQogICAgPiAgIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YTkNCiAgICA+
IFJJUDogMDAzMzoweDdmYTIxNTQxNzE1NA0KICAgID4gLS0NCiAgICA+IA0KICAgIA0KICAgIFNo
b3VsZCBhZGQ6DQogICAgUmVwb3J0ZWQtYnk6IEhhcnJpcywgSmFtZXMgUiA8amFtZXMuci5oYXJy
aXNAaW50ZWwuY29tPg0KDQpUaGFua3MgU2FnaS4gIEkgY2FuIGNvbmZpcm0gdGhhdCByZXZlcnRp
bmcgdGhpcyBwYXRjaCBlbGltaW5hdGVkIHRoZSBrZXJuZWwgcGFuaWMgb24gbXkgc3lzdGVtLg0K
ICAgIA0KICAgID4gU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5t
ZT4NCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
