Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48577E2F9
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 21:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3NPzAnjHp+Fh9MpQk4eV+RHlH1E0/UhYE+eSONiS88=; b=j6coVPjC0AHksv
	AeOai9laoQm2TqDB6vtlKn2dvBIcVdLeX56V1VNQuWAbnt9JgnseQIQ9y+GjzhghdXSdquwGpFr/d
	YlqwUED0collZlVVCTnZFGPDucr5ICV/qZYcg2OBPrg/Od4ZTgqr4JQHNZKQr0yCwn/8jRX8DMEBn
	nCGUJIuakuuVs9kDAktnfQyJqpoaK7APK5HTJemcnepnjb9fqnNvnZBkHFridoD08tdIQJ90W05XL
	MCVjbRlDDqqNYb8DrV3WBIjo4CrpK43ff6zyBzwDZ3ZnVcSuGHae2Z0lSKVzKW6ihhJtKR13VfaX1
	hDMU0KoKfoMBPLTZv2cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htGOL-0001Bc-Hf; Thu, 01 Aug 2019 19:05:33 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htGOF-0001An-9d
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 19:05:29 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x71J4cF6022169
 for <linux-nvme@lists.infradead.org>; Thu, 1 Aug 2019 15:05:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=aMU0JvXRw/3R6ekqux0ut3/qPMlNPKpxNdWEUOqXXhI=;
 b=eVsneD2EL5mhfpW1QFo3cXt8ALI+MSbfgyddEBHhkna+ZeXaIvWaUYFDuKFxK/iqhm5p
 GyrKWLqavl5dE0iDR4vBLZ7cHF3BNOCReoCY6/lWAiPFJ1m12azP6lts6P21FIaihrWw
 4FzwuRBrLGzQjZr4C/lJqjAP9fZFoU+7xrzeLGXlwICnt2u0F3LJP/N+MFdt51NYp7jL
 4UYbm27J1cKSef0lE8d4zRrcd23SVQ9tlQkGaJ4GX28SSNtjTXVvWO1QbYOm3LdD/dtF
 2eZppdtmgFrd8mYo5izU9R0hF+/eC2puczJ0Y0uNpjCrnkooUud5+7iWK1EDSF+QKsn6 iw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2u42wdgstk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 15:05:24 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x71J3J6U145472
 for <linux-nvme@lists.infradead.org>; Thu, 1 Aug 2019 15:05:23 -0400
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0a-00154901.pphosted.com with ESMTP id 2u430x2xn9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 15:05:22 -0400
X-LoopCount0: from 10.166.132.132
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="838852024"
From: <Mario.Limonciello@dell.com>
To: <rafael@kernel.org>, <kai.heng.feng@canonical.com>, <kbusch@kernel.org>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcCAAGObgIAHcfaAgABB9YD//9WSkIAAb9eAgAAIQgD//8kpUAALdBYAADIaeYAAAeOLAAAAd84AABYXlgAAEZduAAAHfW7g
Date: Thu, 1 Aug 2019 19:05:20 +0000
Message-ID: <38d4b4b107154454a932781acde0fa5a@AUSX13MPC105.AMER.DELL.COM>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
 <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
 <70D536BE-8DC7-4CA2-84A9-AFB067BA520E@canonical.com>
 <CAJZ5v0hFYEv_+vFkrxaCn_pNAbyqmO_cLb5GOLNn_xxRRwjh2g@mail.gmail.com>
In-Reply-To: <CAJZ5v0hFYEv_+vFkrxaCn_pNAbyqmO_cLb5GOLNn_xxRRwjh2g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-01T19:05:19.2643793Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-01_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908010198
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908010199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_120527_462853_BB65F71A 
X-CRM114-Status: GOOD (  30.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, rajatja@google.com,
 hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSYWZhZWwgSi4gV3lzb2NraSA8
cmFmYWVsQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMSwgMjAxOSAxMjoz
MCBQTQ0KPiBUbzogS2FpLUhlbmcgRmVuZzsgS2VpdGggQnVzY2g7IExpbW9uY2llbGxvLCBNYXJp
bw0KPiBDYzogS2VpdGggQnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBTYWdpIEdyaW1iZXJnOyBs
aW51eC1udm1lOyBMaW51eCBQTTsgTGludXgNCj4gS2VybmVsIE1haWxpbmcgTGlzdDsgUmFqYXQg
SmFpbg0KPiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dIENvbW1pdCAibnZtZS9wY2k6IFVzZSBo
b3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUgZm9yDQo+IHN1c3BlbmQiIGhhcyBwcm9ibGVtcw0KPiAN
Cj4gDQo+IFtFWFRFUk5BTCBFTUFJTF0NCj4gDQo+IE9uIFRodSwgQXVnIDEsIDIwMTkgYXQgMTE6
MDYgQU0gS2FpLUhlbmcgRmVuZw0KPiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90
ZToNCj4gPg0KPiA+IGF0IDA2OjMzLCBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPiA+DQo+ID4gPiBPbiBUaHUsIEF1ZyAxLCAyMDE5IGF0IDEyOjIyIEFNIEtl
aXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4gPj4gT24gV2VkLCBKdWwg
MzEsIDIwMTkgYXQgMTE6MjU6NTFQTSArMDIwMCwgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6DQo+
ID4gPj4+IEEgY291cGxlIG9mIHJlbWFya3MgaWYgeW91IHdpbGwuDQo+ID4gPj4+DQo+ID4gPj4+
IEZpcnN0LCB3ZSBkb24ndCBrbm93IHdoaWNoIGNhc2UgaXMgdGhlIG1ham9yaXR5IGF0IHRoaXMg
cG9pbnQuICBGb3INCj4gPiA+Pj4gbm93LCB0aGVyZSBpcyBvbmUgZXhhbXBsZSBvZiBlYWNoLCBi
dXQgaXQgbWF5IHZlcnkgd2VsbCB0dXJuIG91dCB0aGF0DQo+ID4gPj4+IHRoZSBTSyBIeW5peCBC
QzUwMSBhYm92ZSBuZWVkcyB0byBiZSBxdWlya2VkLg0KPiA+ID4+Pg0KPiA+ID4+PiBTZWNvbmQs
IHRoZSByZWZlcmVuY2UgaGVyZSByZWFsbHkgaXMgNS4yLCBzbyBpZiB0aGVyZSBhcmUgYW55IHN5
c3RlbXMNCj4gPiA+Pj4gdGhhdCBhcmUgbm90IGJldHRlciBvZmYgd2l0aCA1LjMtcmMgdGhhbiB0
aGV5IHdlcmUgd2l0aCA1LjIsIHdlbGwsIHdlDQo+ID4gPj4+IGhhdmUgbm90IG1hZGUgcHJvZ3Jl
c3MuICBIb3dldmVyLCBpZiB0aGVyZSBhcmUgc3lzdGVtcyB0aGF0IGFyZSB3b3JzZQ0KPiA+ID4+
PiBvZmYgd2l0aCA1LjMsIHRoYXQncyBiYWQuICBJbiB0aGUgZmFjZSBvZiB0aGUgbGF0ZXN0IGZp
bmRpbmdzIHRoZSBvbmx5DQo+ID4gPj4+IHdheSB0byBhdm9pZCB0aGF0IGlzIHRvIGJlIGJhY2t3
YXJkcyBjb21wYXRpYmxlIHdpdGggNS4yIGFuZCB0aGF0J3MNCj4gPiA+Pj4gd2hlcmUgbXkgcGF0
Y2ggaXMgZ29pbmcuICBUaGF0IGNhbm5vdCBiZSBhY2hpZXZlZCBieSBxdWlya2luZyBhbGwNCj4g
PiA+Pj4gY2FzZXMgdGhhdCBhcmUgcmVwb3J0ZWQgYXMgImJhZCIsIGJlY2F1c2UgdGhlcmUgc3Rp
bGwgbWF5IGJlDQo+ID4gPj4+IHVucmVwb3J0ZWQgb25lcy4NCj4gPiA+Pg0KPiA+ID4+IEkgaGF2
ZSB0byBhZ3JlZS4gSSB0aGluayB5b3VyIHByb3Bvc2FsIG1heSBhbGxvdyBQQ0kgRDNjb2xkLA0K
PiA+ID4NCj4gPiA+IFllcywgaXQgbWF5Lg0KPiA+DQo+ID4gU29tZWhvdyB0aGUgOTM4MCB3aXRo
IFRvc2hpYmEgTlZNZSBuZXZlciBoaXRzIFNMUF9TMCB3aXRoIG9yIHdpdGhvdXQNCj4gPiBSYWZh
ZWzigJlzIHBhdGNoLg0KPiA+IEJ1dCB0aGUg4oCccmVhbOKAnSBzMmlkbGUgcG93ZXIgY29uc3Vt
cHRpb24gZG9lcyBpbXByb3ZlIHdpdGggdGhlIHBhdGNoLg0KPiANCj4gRG8geW91IG1lYW4gdGhp
cyBwYXRjaDoNCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBtLzcwRDUzNkJF
LThEQzctNENBMi04NEE5LQ0KPiBBRkIwNjdCQTUyMEVAY2Fub25pY2FsLmNvbS9ULyNtNDU2YWE1
YzY5OTczYTNiNjhmMmNkZDQ3MTNhMWNlODNiZTUxNDUNCj4gOGYNCj4gDQo+IG9yIHRoZSAkc3Vi
amVjdCBvbmUgd2l0aG91dCB0aGUgYWJvdmU/DQo+IA0KPiA+IENhbiB3ZSB1c2UgYSBETUkgYmFz
ZWQgcXVpcmsgZm9yIHRoaXMgcGxhdGZvcm0/IEl0IHNlZW1zIGxpa2UgYSBwbGF0Zm9ybQ0KPiA+
IHNwZWNpZmljIGlzc3VlLg0KPiANCj4gV2Ugc2VlbSB0byBzZWUgdG9vIG1hbnkgInBsYXRmb3Jt
LXNwZWNpZmljIGlzc3VlcyIgaGVyZS4gOi0pDQo+IA0KPiBUbyBtZSwgdGhlIHN0YXR1cyBxdW8g
KGllLiB3aGF0IHdlIGhhdmUgaW4gNS4zLXJjMikgaXMgbm90IGRlZmVuc2libGUuDQo+IFNvbWV0
aGluZyBuZWVkcyB0byBiZSBkb25lIHRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbi4NCg0KUmFmYWVs
LCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byB0cnkgcG9wcGluZyBvdXQgUEM0MDEgZnJvbSB0aGUg
OTM4MCBhbmQgaW50byBhIDkzNjAgdG8NCmNvbmZpcm0gdGhlcmUgYWN0dWFsbHkgYmVpbmcgYSBw
bGF0Zm9ybSBpbXBhY3Qgb3Igbm90Pw0KDQpJIHdhcyBob3BpbmcgdG8gaGF2ZSBzb21ldGhpbmcg
dXNlZnVsIGZyb20gSHluaXggYnkgbm93IGJlZm9yZSByZXNwb25kaW5nLCBidXQgb2ggd2VsbC4N
Cg0KSW4gdGVybXMgb2Ygd2hhdCBpcyB0aGUgbWFqb3JpdHksIEkgZG8ga25vdyB0aGF0IGJldHdl
ZW4gZm9sa3MgYXQgRGVsbCwgR29vZ2xlLCBDb21wYWwsDQpXaXN0cm9uLCBDYW5vbmljYWwsIE1p
Y3JvbiwgSHluaXgsIFRvc2hpYmEsIExpdGVPbiwgYW5kIFdlc3Rlcm4gRGlnaXRhbCB3ZSB0ZXN0
ZWQgYSB3aWRlDQp2YXJpZXR5IG9mIFNTRHMgd2l0aCB0aGlzIHBhdGNoIHNlcmllcy4gIEkgd291
bGQgbGlrZSB0byB0aGluayB0aGF0IHRoZXkgYXJlIHJlcHJlc2VudGF0aXZlIG9mDQp3aGF0J3Mg
YmVpbmcgbWFudWZhY3R1cmVkIGludG8gbWFjaGluZXMgbm93Lg0KDQpOb3RhYmx5IHRoZSBMaXRl
T24gQ0wxIHdhcyB0ZXN0ZWQgd2l0aCB0aGUgSE1CIGZsdXNoaW5nIHN1cHBvcnQgYW5kIA0KYW5k
IEh5bml4IFBDNDAxIHdhcyB0ZXN0ZWQgd2l0aCBvbGRlciBmaXJtd2FyZSB0aG91Z2guDQoNCj4g
DQo+ID4gPg0KPiA+ID4+IEluIHdoaWNoIGNhc2Ugd2UgZG8gbmVlZCB0byByZWludHJvZHVjZSB0
aGUgSE1CIGhhbmRsaW5nLg0KPiA+ID4NCj4gPiA+IFJpZ2h0Lg0KPiA+DQo+ID4gVGhlIHBhdGNo
IGFsb25lIGRvZXNu4oCZdCBicmVhayBITUIgVG9zaGliYSBOVk1lIEkgdGVzdGVkLiBCdXQgSSB0
aGluayBpdOKAmXMNCj4gPiBzdGlsbCBzYWZlciB0byBkbyBwcm9wZXIgSE1CIGhhbmRsaW5nLg0K
PiANCj4gV2VsbCwgc28gY2FuIGFueW9uZSBwbGVhc2UgcHJvcG9zZSBzb21ldGhpbmcgc3BlY2lm
aWM/ICBMaWtlIGFuDQo+IGFsdGVybmF0aXZlIHBhdGNoPw0KDQpUaGlzIHdhcyBwcm9wb3NlZCBh
IGZldyBkYXlzIGFnbzoNCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51
eC1udm1lLzIwMTktSnVseS8wMjYwNTYuaHRtbA0KDQpIb3dldmVyIHdlJ3JlIHN0aWxsIG5vdCBz
dXJlIHdoeSBpdCBpcyBuZWVkZWQsIGFuZCBpdCB3aWxsIHRha2Ugc29tZSB0aW1lIHRvIGdldA0K
YSBwcm9wZXIgZmFpbHVyZSBhbmFseXNpcyBmcm9tIExpdGVPbiAgcmVnYXJkaW5nIHRoZSBDTDEu
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
