Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6C675796
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZGhS5Tc5AI5WGsdOgFREtmfhb3iZ1NlI1uuQmOACEE=; b=VWhQwXjzYEyUP+
	mZ7z4gJZ1RU1PJw7r9TcrGrb1RmjtfrgQt1VCxxpD/CHWBYzfXBPpypVBGHFZ5N8YQXkrB4gQiqw4
	JV7BtgeLeBU07aiqIpGgvGdVjRsFBd6JdpFNjO6i+mlIBlEIuwkcY/LjK5jS/N2kboaN40sufUD7e
	nAID05B1Bnw8Bju8HC3KyUqRezqvtIBesGQvsoxs4no7tvjUI3V6CP7UDg1hQbUU77KqCvsal2XAB
	puf9K3QknuQgvoysPJD28GliSvwOT2k1O+3EjZYLS+z8XPxRCh4p/zp6sBad+Jr6Rt9R3qfMoEZb6
	Ba4q2kFWjR1xc0KYUt4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqj82-0003lE-0U; Thu, 25 Jul 2019 19:10:14 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqj7n-0003jq-1I
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:10:00 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PJ9TVS030354
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 15:09:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=yOHoEQkSsDfP24SDvr5fiFJG5lcJCIiIhTif5iodhjI=;
 b=cQf2S3V0rCpm+CYids27pBqEqF7NiXThyZVl77LYvjKwIk/cHgJ1u3dtM9bNCdtX+KiW
 zxIZG7rk1p87C2gv7sFSwQCZAShGwARcj6HAeKrGMEE6xFU+JqzHrlHw7gQISeBJBoFW
 s06FN37VWp1xX2xv+pxDxQLPR16/V1cNQgIvCJ32wgkuGEe2YRnNdEhepQupymunkCgI
 bW2FXOBlOH/pZ6/HHJxiCGO38tOygHErddi6KXb8slnVRx3BL3Pv9+pAnB4Y2nPDzqtn
 TNkGfo6SK0dzXVGBrbYQWatvM0GxNXr147Gmxmxr+EIUWus0q2M/3Dex9n2QLZ80SZln jw== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2ty6gxuesy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 15:09:55 -0400
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PJ7o1v008209
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 15:09:54 -0400
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
 [143.166.148.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2tydtgvjug-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 15:09:54 -0400
X-LoopCount0: from 10.166.132.129
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1336651854"
From: <Mario.Limonciello@dell.com>
To: <kai.heng.feng@canonical.com>, <rafael@kernel.org>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcCAAGObgIAAFWCA//+5UYA=
Date: Thu, 25 Jul 2019 19:09:25 +0000
Message-ID: <e7bbeedaa0df409a8348f4c2b7b1359e@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <46857EDA-081E-4622-A8D7-D337127A38DE@canonical.com>
In-Reply-To: <46857EDA-081E-4622-A8D7-D337127A38DE@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-25T19:09:24.2733079Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907250227
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_120959_250907_DD202591 
X-CRM114-Status: GOOD (  34.15  )
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
 keith.busch@intel.com, rajatja@google.com, hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYWktSGVuZyBGZW5nIDxrYWku
aGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI1LCAyMDE5
IDE6MjAgUE0NCj4gVG86IFJhZmFlbCBKLiBXeXNvY2tpDQo+IENjOiBMaW1vbmNpZWxsbywgTWFy
aW87IFJhZmFlbCBKLiBXeXNvY2tpOyBLZWl0aCBCdXNjaDsgQ2hyaXN0b3BoIEhlbGx3aWc7IFNh
Z2kNCj4gR3JpbWJlcmc7IGxpbnV4LW52bWU7IExpbnV4IFBNOyBMaW51eCBLZXJuZWwgTWFpbGlu
ZyBMaXN0OyBSYWphdCBKYWluDQo+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gQ29tbWl0ICJu
dm1lL3BjaTogVXNlIGhvc3QgbWFuYWdlZCBwb3dlciBzdGF0ZSBmb3INCj4gc3VzcGVuZCIgaGFz
IHByb2JsZW1zDQo+IA0KPiANCj4gW0VYVEVSTkFMIEVNQUlMXQ0KPiANCj4gYXQgMDE6MDMsIFJh
ZmFlbCBKLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz4gd3JvdGU6DQo+IA0KPiA+IE9uIFRo
dSwgSnVsIDI1LCAyMDE5IGF0IDY6MjQgUE0gPE1hcmlvLkxpbW9uY2llbGxvQGRlbGwuY29tPiB3
cm90ZToNCj4gPj4gK1JhamF0DQo+ID4+DQo+ID4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+Pj4gRnJvbTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29t
Pg0KPiA+Pj4gU2VudDogVGh1cnNkYXksIEp1bHkgMjUsIDIwMTkgOTowMyBBTQ0KPiA+Pj4gVG86
IFJhZmFlbCBKLiBXeXNvY2tpDQo+ID4+PiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxs
d2lnOyBTYWdpIEdyaW1iZXJnOyBsaW51eC0NCj4gPj4+IG52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgTGltb25jaWVsbG8sIE1hcmlvOyBMaW51eCBQTTsgTEtNTA0KPiA+Pj4gU3ViamVjdDogUmU6
IFtSZWdyZXNzaW9uXSBDb21taXQgIm52bWUvcGNpOiBVc2UgaG9zdCBtYW5hZ2VkIHBvd2VyDQo+
ID4+PiBzdGF0ZSBmb3INCj4gPj4+IHN1c3BlbmQiIGhhcyBwcm9ibGVtcw0KPiA+Pj4NCj4gPj4+
DQo+ID4+PiBbRVhURVJOQUwgRU1BSUxdDQo+ID4+Pg0KPiA+Pj4gSGkgUmFmYWVsLA0KPiA+Pj4N
Cj4gPj4+IGF0IDE3OjUxLCBSYWZhZWwgSi4gV3lzb2NraSA8cmp3QHJqd3lzb2NraS5uZXQ+IHdy
b3RlOg0KPiA+Pj4NCj4gPj4+PiBIaSBLZWl0aCwNCj4gPj4+Pg0KPiA+Pj4+IFVuZm9ydHVuYXRl
bHksDQo+ID4+Pj4NCj4gPj4+PiBjb21taXQgZDkxNmIxYmU5NGI2ZGM4ZDI5M2FiZWQyNDUxZjMw
NjJmNmFmNzU1MQ0KPiA+Pj4+IEF1dGhvcjogS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVs
LmNvbT4NCj4gPj4+PiBEYXRlOiAgIFRodSBNYXkgMjMgMDk6Mjc6MzUgMjAxOSAtMDYwMA0KPiA+
Pj4+DQo+ID4+Pj4gICAgIG52bWUtcGNpOiB1c2UgaG9zdCBtYW5hZ2VkIHBvd2VyIHN0YXRlIGZv
ciBzdXNwZW5kDQo+ID4+Pj4NCj4gPj4+PiBkb2Vzbid0IHVuaXZlcnNhbGx5IGltcHJvdmUgdGhp
bmdzLiAgSW4gZmFjdCwgaW4gc29tZSBjYXNlcyBpdCBtYWtlcw0KPiA+Pj4+IHRoaW5ncyB3b3Jz
ZS4NCj4gPj4+Pg0KPiA+Pj4+IEZvciBleGFtcGxlLCBvbiB0aGUgRGVsbCBYUFMxMyA5MzgwIEkg
aGF2ZSBoZXJlIGl0IHByZXZlbnRzIHRoZQ0KPiA+Pj4+IHByb2Nlc3Nvcg0KPiA+Pj4+IHBhY2th
Z2UNCj4gPj4+PiBmcm9tIHJlYWNoaW5nIGlkbGUgc3RhdGVzIGRlZXBlciB0aGFuIFBDMiBpbiBz
dXNwZW5kLXRvLWlkbGUgKHdoaWNoLCBvZg0KPiA+Pj4+IGNvdXJzZSwgYWxzbw0KPiA+Pj4+IHBy
ZXZlbnRzIHRoZSBTb0MgZnJvbSByZWFjaGluZyBhbnkga2luZCBvZiBTMGl4KS4NCj4gPj4+Pg0K
PiA+Pj4+IFRoYXQgY2FuIGJlIHJlYWRpbHkgZXhwbGFpbmVkIHRvby4gIE5hbWVseSwgd2l0aCB0
aGUgY29tbWl0IGFib3ZlIHRoZQ0KPiA+Pj4+IE5WTWUgZGV2aWNlDQo+ID4+Pj4gc3RheXMgaW4g
RDAgb3ZlciBzdXNwZW5kL3Jlc3VtZSwgc28gdGhlIHJvb3QgcG9ydCBpdCBpcyBjb25uZWN0ZWQg
dG8NCj4gPj4+PiBhbHNvDQo+ID4+Pj4gaGFzIHRvIHN0YXkgaW4NCj4gPj4+PiBEMCBhbmQgdGhh
dCAiYmxvY2tzIiBwYWNrYWdlIEMtc3RhdGVzIGRlZXBlciB0aGFuIFBDMi4NCj4gPj4+Pg0KPiA+
Pj4+IEluIG9yZGVyIGZvciB0aGUgcm9vdCBwb3J0IHRvIGJlIGFibGUgdG8gZ28gdG8gRDMsIHRo
ZSBkZXZpY2UgY29ubmVjdGVkDQo+ID4+Pj4gdG8gaXQgYWxzbyBuZWVkcw0KPiA+Pj4+IHRvIGdv
IGludG8gRDMsIHNvIGl0IGxvb2tzIGxpa2UgKGF0IGxlYXN0IG9uIHRoaXMgcGFydGljdWxhciBt
YWNoaW5lLA0KPiA+Pj4+IGJ1dA0KPiA+Pj4+IG1heWJlIGluDQo+ID4+Pj4gZ2VuZXJhbCksIGJv
dGggRDMgYW5kIHRoZSBOVk1lLXNwZWNpZmljIFBNIGFyZSBuZWVkZWQuDQo+ID4+DQo+ID4+IFdl
bGwgdGhpcyBpcyByZWFsbHkgdW5mb3J0dW5hdGUgdG8gaGVhci4gIEkgcmVjYWxsIHRoYXQgd2l0
aCBzb21lIGRpc2tzDQo+ID4+IHdlIHdlcmUNCj4gPj4gc2VlaW5nIHByb2JsZW1zIHdoZXJlIE5W
TUUgc3BlY2lmaWMgUE0gd2Fzbid0IHdvcmtpbmcgd2hlbiB0aGUgZGlzayB3YXMNCj4gPj4gaW4g
RDMuDQo+ID4+DQo+ID4+IE9uIHlvdXIgc3BlY2lmaWMgZGlzaywgaXQgd291bGQgYmUgZ29vZCB0
byBrbm93IGlmIGp1c3QgcmVtb3ZpbmcgdGhlDQo+ID4+IHBjaV9zYXZlX3N0YXRlKHBkZXYpDQo+
ID4+IGNhbGwgaGVscHMuDQo+ID4NCj4gPiBZZXMsIGl0IGRvZXMgaGVscC4NCj4gPg0KPiA+PiBJ
ZiBzbywgOg0KPiA+PiAqIHRoYXQgbWlnaHQgYmUgYSBiZXR0ZXIgb3B0aW9uIHRvIGFkZCBhcyBh
IHBhcmFtZXRlci4NCj4gPj4gKiBtYXliZSB3ZSBzaG91bGQgZG91YmxlIGNoZWNrIGFsbCB0aGUg
ZGlza3Mgb25lIG1vcmUgdGltZSB3aXRoIHRoYXQNCj4gPj4gdHdlYWsuDQo+ID4NCj4gPiBBdCB0
aGlzIHBvaW50IGl0IHNlZW1zIHNvLg0KPiA+DQo+ID4+Pj4gSSdtIG5vdCBzdXJlIHdoYXQgdG8g
ZG8gaGVyZSwgYmVjYXVzZSBldmlkZW50bHkgdGhlcmUgYXJlIHN5c3RlbXMgd2hlcmUNCj4gPj4+
PiB0aGF0IGNvbW1pdA0KPiA+Pj4+IGhlbHBzLiAgSSB3YXMgdGhpbmtpbmcgYWJvdXQgYWRkaW5n
IGEgbW9kdWxlIG9wdGlvbiBhbGxvd2luZyB0aGUgdXNlciB0bw0KPiA+Pj4+IG92ZXJyaWRlIHRo
ZQ0KPiA+Pj4+IGRlZmF1bHQgYmVoYXZpb3Igd2hpY2ggaW4gdHVybiBzaG91bGQgYmUgY29tcGF0
aWJsZSB3aXRoIDUuMiBhbmQgZWFybGllcg0KPiA+Pj4+IGtlcm5lbHMuDQo+ID4+Pg0KPiA+Pj4g
SSBqdXN0IGJyaWVmbHkgdGVzdGVkIHMyaSBvbiBYUFMgOTM3MCwgYW5kIHRoZSBwb3dlciBtZXRl
ciBzaG93cyBhDQo+ID4+PiAwLjh+MC45Vw0KPiA+Pj4gcG93ZXIgY29uc3VtcHRpb24gc28gYXQg
bGVhc3QgSSBkb27igJl0IHNlZSB0aGUgaXNzdWUgb24gWFBTIDkzNzAuDQo+ID4+DQo+ID4+IFRv
IG1lIHRoYXQgY29uZmlybXMgTlZNRSBpcyBkb3duLCBidXQgaXQgc3RpbGwgc2VlbXMgaGlnaGVy
IHRoYW4gSSB3b3VsZA0KPiA+PiBoYXZlDQo+ID4+IGV4cGVjdGVkLiAgV2Ugc2hvdWxkIGJlIG1v
cmUgdHlwaWNhbGx5IGluIHRoZSBvcmRlciBvZiB+MC4zVyBJIHRoaW5rLg0KPiANCj4gIEZyb20g
d2hhdCBJ4oCZdmUgb2JzZXJ2ZWQsIH4wLjhXIHMyaWRsZSBpcyBhbHJlYWR5IGJldHRlciB0aGFu
IFdpbmRvd3MgKH4xVykuDQo+IDAuM1cgaXMgd2hhdCBJIHNlZSBkdXJpbmcgUzUuDQoNCk9oIHRo
YW5rcyBmb3IgY29uZmlybWluZywgSSdtIHByb2JhYmx5IG1peGluZyB1cCB3aXRoIGFub3RoZXIg
c3lzdGVtLg0KDQo+IA0KPiA+DQo+ID4gSXQgbWF5IGdvIHRvIFBDMTAsIGJ1dCBub3QgcmVhY2gg
UzBpeC4NCj4gPg0KPiA+IEFueXdheSwgSSBydW4gdGhlIHMyaWRsZSB0ZXN0cyB1bmRlciB0dXJi
b3N0YXQgd2hpY2ggdGhlbiB0ZWxscyBtZQ0KPiA+IHdoYXQgaGFzIGhhcHBlbmVkIG1vcmUgcHJl
Y2lzZWx5Lg0KPiANCj4gVGhlIFhQUyA5MzcwIGF0IG15IGhhbmQgZG9lcyByZWFjaCB0byBzMGl4
IGR1cmluZyBzMmlkbGU6DQo+ICMgY2F0IC9zeXMva2VybmVsL2RlYnVnL3BtY19jb3JlL3NscF9z
MF9yZXNpZGVuY3lfdXNlYw0KPiAxNTk5ODQwMA0KPiANCj4gU28gSSB0aGluayBrZWVwIHRoZSBy
b290IHBvcnQgaW4gRDAgaXMgbm90IHRoZSBjdWxwcml0IGhlcmUuDQo+IE1heWJlIHNvbWV0aGlu
ZyBpcyB3cm9uZyBvbiB0aGUgQVNQTSBzZXR0aW5ncz8NCj4gDQo+IEthaS1IZW5nDQoNCkkgaGF2
ZSBhIDkzODAgb24gaGFuZCBhbmQgSSdtIGFsc28gc2hvd2luZyBzbHBzMCByZXNpZGVuY3kgd2l0
aCB0aGUgU1NEIGluIGl0DQphbmQgdGhpcyBzZXJpZXMgKEh5bml4IEJDNTAxKS4NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
