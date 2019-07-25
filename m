Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ABC753DA
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 18:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhvRYVaAk2EUDraUVP6xOQ4YDACXldnqaHH//SnDcig=; b=gxb5q/jOjxO6v6
	SShPRemjUonL0mH7aWM9SSGLOsXiEFSZJeUYIjHrMHrKu3PwaAIOnjpFSfZP5UH4pzXR12E907p2z
	cCaQbbddS/62wXPgMC4xdW8sDaSGA1Gu80IC1DBXeRvP+X9F7UBgbrlJi/dAWRmMqsVG6M/GWx7QY
	IkFSy+lIeS2wy+GRSKCFI7X3xDLZJ5rJaZTwl/IZUEHX2EWzY4/LjTkbS4uFVzEwfN6khc8x9x+l2
	2xiPeiWKeQdTca2PEYBchd8MG92vXjnR1FnV7YKR/PMHWYM2SM27tnOcfN6wX8uTiv+6sDRkeIMJr
	zDsnoFbU+10murAe8OTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgXw-0001km-Ev; Thu, 25 Jul 2019 16:24:48 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgX9-0001Xh-Fn
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 16:24:01 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PG0Hep024902
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:23:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=hgeOWCF5225x8T7FXLIFD/0bcalsAY0rIcUyWAy7H8c=;
 b=sT8ZX2WfhOoVVp02SKsmeZiCSjlKygXO88tDw2SsoRgVzyW4rHjzeFxZ8f7CK5D/EPDt
 wkHxE2CfNbu8pqOR+K9L8jpoePWkazhPTxQRl8ItA0K761zHDEfsDy9eq0wlTL33dlJ5
 jslb45J+7x9LUtjnuV4jf9tM6vcWd5DLC17JoGajSaJLNjFP84tAuWKMS2eq5fBmPrVA
 4+UGGlPN2IrYHNMCRzUrdfGVnonE4PnLIIeXRsoUUAZB6hqw8mIkTpxIqZK+iw0lqOOr
 euBlKExvQ7XJYQG57mIZfqFvBvt57jYE8Ca4Sp3JH/zRAnTbZNwCEFnig3UjU6LNHqAt IQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2ty6gxtsbd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:23:56 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PFw8vF059767
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:23:55 -0400
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0a-00154901.pphosted.com with ESMTP id 2tyffg0ebj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 12:23:55 -0400
X-LoopCount0: from 10.166.132.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="836039950"
From: <Mario.Limonciello@dell.com>
To: <kai.heng.feng@canonical.com>, <rjw@rjwysocki.net>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcA=
Date: Thu, 25 Jul 2019 16:23:53 +0000
Message-ID: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
In-Reply-To: <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-25T16:10:40.2048648Z;
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092359_860804_A370B9B8 
X-CRM114-Status: GOOD (  29.04  )
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, rajatja@google.com,
 hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

K1JhamF0DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FpLUhlbmcg
RmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVs
eSAyNSwgMjAxOSA5OjAzIEFNDQo+IFRvOiBSYWZhZWwgSi4gV3lzb2NraQ0KPiBDYzogS2VpdGgg
QnVzY2g7IENocmlzdG9waCBIZWxsd2lnOyBTYWdpIEdyaW1iZXJnOyBsaW51eC0NCj4gbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBMaW1vbmNpZWxsbywgTWFyaW87IExpbnV4IFBNOyBMS01MDQo+
IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gQ29tbWl0ICJudm1lL3BjaTogVXNlIGhvc3QgbWFu
YWdlZCBwb3dlciBzdGF0ZSBmb3INCj4gc3VzcGVuZCIgaGFzIHByb2JsZW1zDQo+IA0KPiANCj4g
W0VYVEVSTkFMIEVNQUlMXQ0KPiANCj4gSGkgUmFmYWVsLA0KPiANCj4gYXQgMTc6NTEsIFJhZmFl
bCBKLiBXeXNvY2tpIDxyandAcmp3eXNvY2tpLm5ldD4gd3JvdGU6DQo+IA0KPiA+IEhpIEtlaXRo
LA0KPiA+DQo+ID4gVW5mb3J0dW5hdGVseSwNCj4gPg0KPiA+IGNvbW1pdCBkOTE2YjFiZTk0YjZk
YzhkMjkzYWJlZDI0NTFmMzA2MmY2YWY3NTUxDQo+ID4gQXV0aG9yOiBLZWl0aCBCdXNjaCA8a2Vp
dGguYnVzY2hAaW50ZWwuY29tPg0KPiA+IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAyMDE5
IC0wNjAwDQo+ID4NCj4gPiAgICAgbnZtZS1wY2k6IHVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3Rh
dGUgZm9yIHN1c3BlbmQNCj4gPg0KPiA+IGRvZXNuJ3QgdW5pdmVyc2FsbHkgaW1wcm92ZSB0aGlu
Z3MuICBJbiBmYWN0LCBpbiBzb21lIGNhc2VzIGl0IG1ha2VzDQo+ID4gdGhpbmdzIHdvcnNlLg0K
PiA+DQo+ID4gRm9yIGV4YW1wbGUsIG9uIHRoZSBEZWxsIFhQUzEzIDkzODAgSSBoYXZlIGhlcmUg
aXQgcHJldmVudHMgdGhlIHByb2Nlc3Nvcg0KPiA+IHBhY2thZ2UNCj4gPiBmcm9tIHJlYWNoaW5n
IGlkbGUgc3RhdGVzIGRlZXBlciB0aGFuIFBDMiBpbiBzdXNwZW5kLXRvLWlkbGUgKHdoaWNoLCBv
Zg0KPiA+IGNvdXJzZSwgYWxzbw0KPiA+IHByZXZlbnRzIHRoZSBTb0MgZnJvbSByZWFjaGluZyBh
bnkga2luZCBvZiBTMGl4KS4NCj4gPg0KPiA+IFRoYXQgY2FuIGJlIHJlYWRpbHkgZXhwbGFpbmVk
IHRvby4gIE5hbWVseSwgd2l0aCB0aGUgY29tbWl0IGFib3ZlIHRoZQ0KPiA+IE5WTWUgZGV2aWNl
DQo+ID4gc3RheXMgaW4gRDAgb3ZlciBzdXNwZW5kL3Jlc3VtZSwgc28gdGhlIHJvb3QgcG9ydCBp
dCBpcyBjb25uZWN0ZWQgdG8gYWxzbw0KPiA+IGhhcyB0byBzdGF5IGluDQo+ID4gRDAgYW5kIHRo
YXQgImJsb2NrcyIgcGFja2FnZSBDLXN0YXRlcyBkZWVwZXIgdGhhbiBQQzIuDQo+ID4NCj4gPiBJ
biBvcmRlciBmb3IgdGhlIHJvb3QgcG9ydCB0byBiZSBhYmxlIHRvIGdvIHRvIEQzLCB0aGUgZGV2
aWNlIGNvbm5lY3RlZA0KPiA+IHRvIGl0IGFsc28gbmVlZHMNCj4gPiB0byBnbyBpbnRvIEQzLCBz
byBpdCBsb29rcyBsaWtlIChhdCBsZWFzdCBvbiB0aGlzIHBhcnRpY3VsYXIgbWFjaGluZSwgYnV0
DQo+ID4gbWF5YmUgaW4NCj4gPiBnZW5lcmFsKSwgYm90aCBEMyBhbmQgdGhlIE5WTWUtc3BlY2lm
aWMgUE0gYXJlIG5lZWRlZC4NCg0KV2VsbCB0aGlzIGlzIHJlYWxseSB1bmZvcnR1bmF0ZSB0byBo
ZWFyLiAgSSByZWNhbGwgdGhhdCB3aXRoIHNvbWUgZGlza3Mgd2Ugd2VyZQ0Kc2VlaW5nIHByb2Js
ZW1zIHdoZXJlIE5WTUUgc3BlY2lmaWMgUE0gd2Fzbid0IHdvcmtpbmcgd2hlbiB0aGUgZGlzayB3
YXMgaW4gRDMuDQoNCk9uIHlvdXIgc3BlY2lmaWMgZGlzaywgaXQgd291bGQgYmUgZ29vZCB0byBr
bm93IGlmIGp1c3QgcmVtb3ZpbmcgdGhlIHBjaV9zYXZlX3N0YXRlKHBkZXYpDQpjYWxsIGhlbHBz
Lg0KDQpJZiBzbywgOg0KKiB0aGF0IG1pZ2h0IGJlIGEgYmV0dGVyIG9wdGlvbiB0byBhZGQgYXMg
YSBwYXJhbWV0ZXIuDQoqIG1heWJlIHdlIHNob3VsZCBkb3VibGUgY2hlY2sgYWxsIHRoZSBkaXNr
cyBvbmUgbW9yZSB0aW1lIHdpdGggdGhhdCB0d2Vhay4NCg0KPiA+DQo+ID4gSSdtIG5vdCBzdXJl
IHdoYXQgdG8gZG8gaGVyZSwgYmVjYXVzZSBldmlkZW50bHkgdGhlcmUgYXJlIHN5c3RlbXMgd2hl
cmUNCj4gPiB0aGF0IGNvbW1pdA0KPiA+IGhlbHBzLiAgSSB3YXMgdGhpbmtpbmcgYWJvdXQgYWRk
aW5nIGEgbW9kdWxlIG9wdGlvbiBhbGxvd2luZyB0aGUgdXNlciB0bw0KPiA+IG92ZXJyaWRlIHRo
ZQ0KPiA+IGRlZmF1bHQgYmVoYXZpb3Igd2hpY2ggaW4gdHVybiBzaG91bGQgYmUgY29tcGF0aWJs
ZSB3aXRoIDUuMiBhbmQgZWFybGllcg0KPiA+IGtlcm5lbHMuDQo+IA0KPiBJIGp1c3QgYnJpZWZs
eSB0ZXN0ZWQgczJpIG9uIFhQUyA5MzcwLCBhbmQgdGhlIHBvd2VyIG1ldGVyIHNob3dzIGEgMC44
fjAuOVcNCj4gcG93ZXIgY29uc3VtcHRpb24gc28gYXQgbGVhc3QgSSBkb27igJl0IHNlZSB0aGUg
aXNzdWUgb24gWFBTIDkzNzAuDQo+IA0KDQpUbyBtZSB0aGF0IGNvbmZpcm1zIE5WTUUgaXMgZG93
biwgYnV0IGl0IHN0aWxsIHNlZW1zIGhpZ2hlciB0aGFuIEkgd291bGQgaGF2ZQ0KZXhwZWN0ZWQu
ICBXZSBzaG91bGQgYmUgbW9yZSB0eXBpY2FsbHkgaW4gdGhlIG9yZGVyIG9mIH4wLjNXIEkgdGhp
bmsuDQoNCj4gQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSB0aGUgb3V0cHV0IG9mIGBudm1lIGlkLWN0
cmwgL2Rldi9udm1lKmAgYW5kIEnigJlsbA0KPiB0ZXN0IHRoZSBOVk1lIGNvbnRyb2xsZXIgb24g
WFBTIDkzODAuDQo+IA0KPiBLYWktSGVuZw0KPiANCj4gPg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
