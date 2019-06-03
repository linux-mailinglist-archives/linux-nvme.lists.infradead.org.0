Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEC9339E5
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 23:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+vDW+8ATyrMojutMMgnXzO390/242gbk8dh3/c+DAQ=; b=Zy9MlZn7Vkc3lj
	EefycrwJTEDWE3ajms8/IVIeMFpzJPxQ4NKdkXy18UM5Jl8OPXXvw1vQiqOcKsj6rJf+KTMlEg0Fc
	Qf7N2KgLlL+MTIIrCOxJIgnY6iylVUvOcqzqaPTopyXeYytUlFiAVyfmwQC+jRW0A7DO+9OrAViGN
	b8/qMeWDR4BCbFtBqkq3fqJnIjv8MPoOwzczdWHmlMC0arPLzqsTKBftreYwoNZomnlqRwKtj87lv
	Sxo6eTDN7bktDTUPGY7yQIBDtQqjzro7UO9Emwb6Aj5w8gDDAJZw84xNhGLDD3PHB4n/wvLBZLq/w
	hrTXolDXCRQEC+F/1pAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuT8-0007HY-DP; Mon, 03 Jun 2019 21:26:14 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuT3-0007HB-IO
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 21:26:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 14:26:07 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2019 14:26:07 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 3 Jun 2019 14:26:07 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.250]) with mapi id 14.03.0415.000;
 Mon, 3 Jun 2019 14:26:07 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: Oops when disconnecting from inaccessible subsystem
Thread-Topic: Oops when disconnecting from inaccessible subsystem
Thread-Index: AQHVGkBWbHKBlcmXdUiXDO2S2CDgz6aK5LSA//+MswA=
Date: Mon, 3 Jun 2019 21:26:06 +0000
Message-ID: <53AF2DF5-DE22-45D1-9CB1-A2E92EBBAC13@intel.com>
References: <3332C781-D747-42FC-8B1F-B4748961253C@intel.com>
 <5fdea4d4-4f01-bb84-27ee-b6b51aa8a11c@grimberg.me>
In-Reply-To: <5fdea4d4-4f01-bb84-27ee-b6b51aa8a11c@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.112]
Content-ID: <7A066AFBF06FBB4FB570B47F5BA08905@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_142609_637334_4742FFA7 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDYvMy8xOSwgMjoxOCBQTSwgIlNhZ2kgR3JpbWJlcmciIDxzYWdpQGdyaW1iZXJn
Lm1lPiB3cm90ZToNCg0KICAgIA0KICAgIA0KICAgID4gSGksDQogICAgPiANCiAgICA+IEkgc2Vl
IGEgMTAwJSByZXByb2R1Y2libGUga2VybmVsIG9vcHMgd2hlbiB0cnlpbmcgdG8gZGlzY29ubmVj
dCBmcm9tIGFuIGluYWNjZXNzaWJsZSBzdWJzeXN0ZW0uICBUaGlzIHdhcyB0ZXN0ZWQgd2l0aCA1
LjItcmMyICsgU2FnaSdzICJmaXggcXVldWUgbWFwcGluZyB3aGVuIHF1ZXVlIGNvdW50IGlzIGxp
bWl0ZWQiIHBhdGNoZXMuDQogICAgDQogICAgZGVmYXVsdC9yZWFkL3BvbGwgcXVldWVzPyBob3cg
bXVjaCBxdWV1ZXMgb3ZlcmFsbD8NCg0KRGVmYXVsdCBudW1iZXIgb2YgcXVldWVzLiAgTm8gLWks
IC1XIG9yIC1QIG9wdGlvbnMgc3BlY2lmaWVkIHRvIG52bWUtY2xpLiAgTm8gcmVzdHJpY3Rpb25z
IHBsYWNlZCBvbiBudW1iZXIgb2YgcXVldWVzIGZvciB0aGUgU1BESyB0YXJnZXQuDQoNClNvcnJ5
IGlmIHRoZSBtZW50aW9uIG9mIGluY2x1ZGluZyB5b3VyIHBhdGNoZXMgY29uZnVzZWQgbWF0dGVy
cy4gIEkgb25seSBtZW50aW9uZWQgaXQgdG8gY2xhcmlmeSB0aGUgcmMyKyBhbmQgdGFpbnRlZCBy
ZWZlcmVuY2VzIGluIG15IG9vcHMgbWVzc2FnZS4gIEknbSBub3QgZXhwbGljaXRseSBsZXZlcmFn
aW5nIHRoZSBmaXhlcyBzdXBwbGllZCBieSB5b3VyIHBhdGNoZXMgdG8gcnVuIG15IHRlc3RzLg0K
ICAgIA0KICAgID4gDQogICAgPiBGYWlsdXJlIGlzIHNlZW4gd2hlbiB1c2luZyBlaXRoZXIgdGhl
IGtlcm5lbCBvciBTUERLIGZhYnJpY3MgdGFyZ2V0LiAgU28gZmFyIEkndmUgb25seSB0ZXN0ZWQg
d2l0aCByZG1hLiAgU2ltcGx5IGNvbm5lY3QgdG8gYSBzdWJzeXN0ZW0sIHJlbW92ZSB0aGUgc3Vi
c3lzdGVtIGZyb20gdGhlIHRhcmdldCwgYW5kIHRoZW4gdHJ5IHRvIGRpc2Nvbm5lY3QuDQogICAg
DQogICAgSGFwcGVucyB3aXRoIHRjcCBhcyB3ZWxsPw0KICAgIA0KSSd2ZSBjb25maXJtZWQgaXQg
ZG9lcyBub3QgaGFwcGVuIHdpdGggdGNwLg0KDQotSmltDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGlu
dXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
