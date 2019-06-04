Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5765D35024
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 21:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+txZ+F7QcqeOjSSX77JELFDZVKIKyOZt8MHj42WGFG4=; b=o5Mpc20HxQ9uSi
	PbzyE5TFDtj/65wpIEZ+JdIDEZMRKwUpUfbDtLpQopVcT1CCKsHGbeN1PLdjMugoabcF2U0ukYfJ4
	EFw9Uafs/nJy1lVJWHh7O9LhSut6tmEiVKm6NV+bbbf5VXhOtMN+FWOseFBj7bXBwKGp2NkV0nybe
	aOUIBawtuwKsA+gYN+ZL3jmWW+w/byYVc8QxssFwvjUGqyU6nYfaOCdlKMQxEc0v303c2XnS77HjJ
	SZOtWrvZ5ziImgR+9HvHk2QN1eZ4vd3d3JN2VS/UxKNSTkEcR6Tl//19135JPjY+jQ1g87SZsDVID
	Iin4auL3cJJhJOZvzrwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYEmf-0002V1-L6; Tue, 04 Jun 2019 19:07:45 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYEma-0002Ue-KZ
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 19:07:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 12:07:39 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 04 Jun 2019 12:07:39 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 4 Jun 2019 12:07:39 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.175]) with mapi id 14.03.0415.000;
 Tue, 4 Jun 2019 12:07:38 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Thread-Topic: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Thread-Index: AQHVGmHCpHLls/ICnUC9eESHTfFT86aLBKaA//+OKICAATpoAIAAJ3YAgAAln4CAAADAAIAAAYcAgAA01gD//4thAA==
Date: Tue, 4 Jun 2019 19:07:38 +0000
Message-ID: <AC876DA0-F1E0-4FFD-A990-87D47A2091C6@intel.com>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
 <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
 <288d4db3-ca7e-c60f-b7ac-5a6ff2771235@grimberg.me>
 <20190604190501.GB28398@lst.de>
In-Reply-To: <20190604190501.GB28398@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <C7F3B84EC78FB14CA8E19232C6EE92E2@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_120740_748713_A4DA2B4C 
X-CRM114-Status: GOOD (  13.16  )
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
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDYvNC8xOSwgMTI6MDUgUE0sICJDaHJpc3RvcGggSGVsbHdpZyIgPGhjaEBsc3Qu
ZGU+IHdyb3RlOg0KDQogICAgT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDg6NTU6NTZBTSAtMDcw
MCwgU2FnaSBHcmltYmVyZyB3cm90ZToNCiAgICA+DQogICAgPj4+PiBKYW1lcywNCiAgICA+Pj4+
DQogICAgPj4+PiBjYW4geW91IHRlc3QgdGhlIGF0dGFjaGVkIHBhdGNoICh3aXRob3V0IHRoZSBy
ZXZlcnQpID8NCiAgICA+Pj4NCiAgICA+Pj4gTWF4LCBJIHRoaW5rIHRoYXQgaXRzIHByZXR0eSBs
YXRlIGZvciB0aGlzIGNoYW5nZSBmb3IgNS4yLA0KICAgID4+PiBJJ20gbGVhbmluZyB0b3dhcmRz
IHJldmVydGluZyB0aGUgb2ZmZW5kaW5nIHBhdGNoIGZvciA1LjItcmMgYW5kDQogICAgPj4+IGdl
dHRpbmcgdGhpcyBpbnRvIDUuMw0KICAgID4+DQogICAgPj4gYXJlIHlvdSBzdXJlID8NCiAgICA+
Pg0KICAgID4+IHdlJ3JlIG9ubHkgYXQgcmMzLi4NCiAgICA+DQogICAgPiBUaGlzIGlzIGJleW9u
ZCBhIGJ1ZyBmaXgsIGl0cyBhIGJlaGF2aW9yIGNoYW5nZSwgd2l0aCBwb3NzaWJsZSBvdGhlcg0K
ICAgID4gaW1wbGljYXRpb25zLiBUaGlzIGlzIHJlYWxseSBzb21ldGhpbmcgdGhhdCBpcyBtZXJn
ZSB3aW5kb3cgbWF0ZXJpYWwNCiAgICA+IEkgdGhpbmsuIEkgd291bGQgcmF0aGVyIGxldCBpdCBz
aXQgZm9yIG52bWUtNS4zIGZvciBhIHdoaWxlIGJlZm9yZQ0KICAgID4gd2UgbWVyZ2UgaXQuDQog
ICAgPg0KICAgID4gQ2hyaXN0b3BoLCBkbyB5b3UgaGF2ZSBhIGRpZmZlcmVudCBwcmVmZXJlbmNl
Pw0KICAgIA0KICAgIFRoZSBvcmlnaW5hbCBwYXRjaCBmcm9tIE1heCBmaXhlZCBhIHNlcmlvdXMg
aXNzdWUsIHNvIEknZCBwcmVmZXIgbm90DQogICAgdG8gcmV2ZXJ0IGl0LCBlc3BlY2lhbGx5IGFz
IHdlIGFyZSBvbmx5IGF0IHJjMy4gIFRoYXQgYXNzdW1lcyB3ZQ0KICAgIGNhbiBhZ3JlZSBvbiBh
IGZpeCBpbiB0aGUgbmV4dCBjb3VwbGUgb2YgZGF5cy4NCg0KSSdsbCB0ZXN0IE1heCdzIHByb3Bv
c2VkIHBhdGNoIHRoaXMgYWZ0ZXJub29uIGFuZCByZXBvcnQgYmFjay4NCiAgICANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
