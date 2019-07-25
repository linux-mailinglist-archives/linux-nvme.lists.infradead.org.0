Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9326F755BD
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7wNsCfxmu301UJ6RNNGuyk3h6gWbcxwXFDumJS+96E=; b=cXueXziyJfOwk6
	bkFTSTaQol8z7IWxz3kyuaoBw/991sqINcBFPSC9GoCdngN8x/6AZwgjA8+EgGPHxmq3OU3qcxcqO
	Y8kE8nfR3HXxppqZXkBPlLYA5S+tvx1Ot+zxQVTRp7xXAw0wMhBdg6yRsO9M5+iG8AepGmmBr4yfm
	Z9zSV0R5rhXMPTKcUc+C4bPuDrFVbehURrkso8zdDHZmGnjc6EYbQkfQcmQoViStRoptg2hVZtSWz
	qdNFJBwJ5ZJXOgR91V2SyR+F+VM7rUZBX5TzmEmxR8pRewOT7nJZt9Ny7gxe4qgKhl4sr5JfTfyUV
	Z7lZvljiCW/NGK8S7GJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhYJ-0007i6-G3; Thu, 25 Jul 2019 17:29:15 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhUU-0003eb-6e
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:25:21 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PG0HJ3024897
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 13:25:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=7uNodDrk01ChL1s9//1t+libWb7qCFp4yPUOaDftePc=;
 b=y32S+Owo32Zcs7i3TZ9nRdbDEMwyM0aVO/ZUySUqiF50J1dMCZJj1dDmMGHbm56sYY1F
 AqUN9sUYJMjcns8q1lWi9+Cy3qjlNRY7huJE5Y0sCJl9xBMRJRPbJZbRqBpv6z5QQvw6
 TBhL0Eddx+BVxTHBU/J1sJdCNReAaKM0DXcFhpnFBZiD3iw8d2eq44czudrpCUmdyiGB
 UqWfhHrPex5tnHCeYoF0JN9/kMQVbjy9dJ4ItNb8k4Q/IvK+cYWBKCE8H3n0JKa/3DSO
 LQIj+0/kdvjRoJbJfkObE9qC7qzs0zJq+lBLMSQKAx5q7kBmUU+VKuxgyvraeoMH0aXe TQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2ty6gxu19y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 13:25:16 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PFw9RT059813
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 13:25:16 -0400
Received: from ausxipps306.us.dell.com (AUSXIPPS306.us.dell.com
 [143.166.148.156])
 by mx0a-00154901.pphosted.com with ESMTP id 2tyffg19w5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 13:25:15 -0400
X-LoopCount0: from 10.166.132.131
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="352773000"
From: <Mario.Limonciello@dell.com>
To: <rafael@kernel.org>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcCAAGObgP//sO5A
Date: Thu, 25 Jul 2019 17:23:51 +0000
Message-ID: <1c37b80fd8284911936a3f4bc9e840a0@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
In-Reply-To: <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-25T17:23:50.4293268Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907250188
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102518_456093_111B2A8E 
X-CRM114-Status: GOOD (  35.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, rajatja@google.com,
 hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8
cmFmYWVsQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI1LCAyMDE5IDEyOjA0
IFBNDQo+IFRvOiBMaW1vbmNpZWxsbywgTWFyaW8NCj4gQ2M6IEthaS1IZW5nIEZlbmc7IFJhZmFl
bCBKLiBXeXNvY2tpOyBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7IFNhZ2kNCj4gR3Jp
bWJlcmc7IGxpbnV4LW52bWU7IExpbnV4IFBNOyBMaW51eCBLZXJuZWwgTWFpbGluZyBMaXN0OyBS
YWphdCBKYWluDQo+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gQ29tbWl0ICJudm1lL3BjaTog
VXNlIGhvc3QgbWFuYWdlZCBwb3dlciBzdGF0ZSBmb3INCj4gc3VzcGVuZCIgaGFzIHByb2JsZW1z
DQo+IA0KPiANCj4gW0VYVEVSTkFMIEVNQUlMXQ0KPiANCj4gT24gVGh1LCBKdWwgMjUsIDIwMTkg
YXQgNjoyNCBQTSA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4g
K1JhamF0DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9t
OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+DQo+ID4gPiBTZW50
OiBUaHVyc2RheSwgSnVseSAyNSwgMjAxOSA5OjAzIEFNDQo+ID4gPiBUbzogUmFmYWVsIEouIFd5
c29ja2kNCj4gPiA+IENjOiBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7IFNhZ2kgR3Jp
bWJlcmc7IGxpbnV4LQ0KPiA+ID4gbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnOyBMaW1vbmNpZWxs
bywgTWFyaW87IExpbnV4IFBNOyBMS01MDQo+ID4gPiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25d
IENvbW1pdCAibnZtZS9wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUNCj4gZm9yDQo+
ID4gPiBzdXNwZW5kIiBoYXMgcHJvYmxlbXMNCj4gPiA+DQo+ID4gPg0KPiA+ID4gW0VYVEVSTkFM
IEVNQUlMXQ0KPiA+ID4NCj4gPiA+IEhpIFJhZmFlbCwNCj4gPiA+DQo+ID4gPiBhdCAxNzo1MSwg
UmFmYWVsIEouIFd5c29ja2kgPHJqd0Byand5c29ja2kubmV0PiB3cm90ZToNCj4gPiA+DQo+ID4g
PiA+IEhpIEtlaXRoLA0KPiA+ID4gPg0KPiA+ID4gPiBVbmZvcnR1bmF0ZWx5LA0KPiA+ID4gPg0K
PiA+ID4gPiBjb21taXQgZDkxNmIxYmU5NGI2ZGM4ZDI5M2FiZWQyNDUxZjMwNjJmNmFmNzU1MQ0K
PiA+ID4gPiBBdXRob3I6IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNjaEBpbnRlbC5jb20+DQo+ID4g
PiA+IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAyMDE5IC0wNjAwDQo+ID4gPiA+DQo+ID4g
PiA+ICAgICBudm1lLXBjaTogdXNlIGhvc3QgbWFuYWdlZCBwb3dlciBzdGF0ZSBmb3Igc3VzcGVu
ZA0KPiA+ID4gPg0KPiA+ID4gPiBkb2Vzbid0IHVuaXZlcnNhbGx5IGltcHJvdmUgdGhpbmdzLiAg
SW4gZmFjdCwgaW4gc29tZSBjYXNlcyBpdCBtYWtlcw0KPiA+ID4gPiB0aGluZ3Mgd29yc2UuDQo+
ID4gPiA+DQo+ID4gPiA+IEZvciBleGFtcGxlLCBvbiB0aGUgRGVsbCBYUFMxMyA5MzgwIEkgaGF2
ZSBoZXJlIGl0IHByZXZlbnRzIHRoZSBwcm9jZXNzb3INCj4gPiA+ID4gcGFja2FnZQ0KPiA+ID4g
PiBmcm9tIHJlYWNoaW5nIGlkbGUgc3RhdGVzIGRlZXBlciB0aGFuIFBDMiBpbiBzdXNwZW5kLXRv
LWlkbGUgKHdoaWNoLCBvZg0KPiA+ID4gPiBjb3Vyc2UsIGFsc28NCj4gPiA+ID4gcHJldmVudHMg
dGhlIFNvQyBmcm9tIHJlYWNoaW5nIGFueSBraW5kIG9mIFMwaXgpLg0KPiA+ID4gPg0KPiA+ID4g
PiBUaGF0IGNhbiBiZSByZWFkaWx5IGV4cGxhaW5lZCB0b28uICBOYW1lbHksIHdpdGggdGhlIGNv
bW1pdCBhYm92ZSB0aGUNCj4gPiA+ID4gTlZNZSBkZXZpY2UNCj4gPiA+ID4gc3RheXMgaW4gRDAg
b3ZlciBzdXNwZW5kL3Jlc3VtZSwgc28gdGhlIHJvb3QgcG9ydCBpdCBpcyBjb25uZWN0ZWQgdG8g
YWxzbw0KPiA+ID4gPiBoYXMgdG8gc3RheSBpbg0KPiA+ID4gPiBEMCBhbmQgdGhhdCAiYmxvY2tz
IiBwYWNrYWdlIEMtc3RhdGVzIGRlZXBlciB0aGFuIFBDMi4NCj4gPiA+ID4NCj4gPiA+ID4gSW4g
b3JkZXIgZm9yIHRoZSByb290IHBvcnQgdG8gYmUgYWJsZSB0byBnbyB0byBEMywgdGhlIGRldmlj
ZSBjb25uZWN0ZWQNCj4gPiA+ID4gdG8gaXQgYWxzbyBuZWVkcw0KPiA+ID4gPiB0byBnbyBpbnRv
IEQzLCBzbyBpdCBsb29rcyBsaWtlIChhdCBsZWFzdCBvbiB0aGlzIHBhcnRpY3VsYXIgbWFjaGlu
ZSwgYnV0DQo+ID4gPiA+IG1heWJlIGluDQo+ID4gPiA+IGdlbmVyYWwpLCBib3RoIEQzIGFuZCB0
aGUgTlZNZS1zcGVjaWZpYyBQTSBhcmUgbmVlZGVkLg0KPiA+DQo+ID4gV2VsbCB0aGlzIGlzIHJl
YWxseSB1bmZvcnR1bmF0ZSB0byBoZWFyLiAgSSByZWNhbGwgdGhhdCB3aXRoIHNvbWUgZGlza3Mg
d2Ugd2VyZQ0KPiA+IHNlZWluZyBwcm9ibGVtcyB3aGVyZSBOVk1FIHNwZWNpZmljIFBNIHdhc24n
dCB3b3JraW5nIHdoZW4gdGhlIGRpc2sgd2FzIGluDQo+IEQzLg0KPiA+DQo+ID4gT24geW91ciBz
cGVjaWZpYyBkaXNrLCBpdCB3b3VsZCBiZSBnb29kIHRvIGtub3cgaWYganVzdCByZW1vdmluZyB0
aGUNCj4gcGNpX3NhdmVfc3RhdGUocGRldikNCj4gPiBjYWxsIGhlbHBzLg0KPiANCj4gWWVzLCBp
dCBkb2VzIGhlbHAuDQo+IA0KPiA+IElmIHNvLCA6DQo+ID4gKiB0aGF0IG1pZ2h0IGJlIGEgYmV0
dGVyIG9wdGlvbiB0byBhZGQgYXMgYSBwYXJhbWV0ZXIuDQo+ID4gKiBtYXliZSB3ZSBzaG91bGQg
ZG91YmxlIGNoZWNrIGFsbCB0aGUgZGlza3Mgb25lIG1vcmUgdGltZSB3aXRoIHRoYXQgdHdlYWsu
DQo+IA0KPiBBdCB0aGlzIHBvaW50IGl0IHNlZW1zIHNvLg0KDQpPSywgSSd2ZSBhc2tlZCBzb21l
b25lIGluIG15IGxhYiB0byBjaGVjayBhY3Jvc3MgYSB2YXJpZXR5IG9mIG90aGVyd2lzZSB3b3Jr
aW5nIFNTRHMNCndpdGggdGhhdCBtb2RpZmljYXRpb24uDQoNCkhvcGVmdWxseSBLSCBjYW4gYWxz
byBhY2NvbXBsaXNoIGluIGhpcyBsYWIgdGhhdCBhcyBoZSBoYXMgbW9yZSBTU0RzIHJlYWRpbHkg
YXZhaWxhYmxlLg0KDQo+IA0KPiA+ID4gPiBJJ20gbm90IHN1cmUgd2hhdCB0byBkbyBoZXJlLCBi
ZWNhdXNlIGV2aWRlbnRseSB0aGVyZSBhcmUgc3lzdGVtcyB3aGVyZQ0KPiA+ID4gPiB0aGF0IGNv
bW1pdA0KPiA+ID4gPiBoZWxwcy4gIEkgd2FzIHRoaW5raW5nIGFib3V0IGFkZGluZyBhIG1vZHVs
ZSBvcHRpb24gYWxsb3dpbmcgdGhlIHVzZXIgdG8NCj4gPiA+ID4gb3ZlcnJpZGUgdGhlDQo+ID4g
PiA+IGRlZmF1bHQgYmVoYXZpb3Igd2hpY2ggaW4gdHVybiBzaG91bGQgYmUgY29tcGF0aWJsZSB3
aXRoIDUuMiBhbmQgZWFybGllcg0KPiA+ID4gPiBrZXJuZWxzLg0KPiA+ID4NCj4gPiA+IEkganVz
dCBicmllZmx5IHRlc3RlZCBzMmkgb24gWFBTIDkzNzAsIGFuZCB0aGUgcG93ZXIgbWV0ZXIgc2hv
d3MgYSAwLjh+MC45Vw0KPiA+ID4gcG93ZXIgY29uc3VtcHRpb24gc28gYXQgbGVhc3QgSSBkb27i
gJl0IHNlZSB0aGUgaXNzdWUgb24gWFBTIDkzNzAuDQo+ID4gPg0KPiA+DQo+ID4gVG8gbWUgdGhh
dCBjb25maXJtcyBOVk1FIGlzIGRvd24sIGJ1dCBpdCBzdGlsbCBzZWVtcyBoaWdoZXIgdGhhbiBJ
IHdvdWxkIGhhdmUNCj4gPiBleHBlY3RlZC4gIFdlIHNob3VsZCBiZSBtb3JlIHR5cGljYWxseSBp
biB0aGUgb3JkZXIgb2YgfjAuM1cgSSB0aGluay4NCj4gDQo+IEl0IG1heSBnbyB0byBQQzEwLCBi
dXQgbm90IHJlYWNoIFMwaXguDQo+IA0KPiBBbnl3YXksIEkgcnVuIHRoZSBzMmlkbGUgdGVzdHMg
dW5kZXIgdHVyYm9zdGF0IHdoaWNoIHRoZW4gdGVsbHMgbWUNCj4gd2hhdCBoYXMgaGFwcGVuZWQg
bW9yZSBwcmVjaXNlbHkuDQoNClRvIGVjaG8gdGhlIHJlcXVlc3QgZWFybGllciwgaXQgd291bGQg
YmUgZ29vZCB0byBrbm93IGV4YWN0bHkgd2hpY2ggU1NEIHlvdSBoYXZlDQpoZXJlIGluIHlvdXIg
OTM4MC4gIFNwZWNpZmljYWxseSBJJ2QgbGlrZSB0byBrbm93IHRoZSB2ZW5kb3IvbW9kZWwgYW5k
IGlmIHRoZSBTU0QNCnlvdSdyZSB1c2luZyByZXF1ZXN0cyBITUIuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
