Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8426E70C
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 17:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=At1JpMV2IsRZ5f+eE4Dpcj97Lh5/OGOY9bdarVDicQk=; b=gn9YnO0WtxIZ8G
	fNvGSvVq5uR3z2mD8IllwZ1si209b90ez6JvQdVJmh1U2wZmwAbV09p/EtD2SDJyNmFDsp6vjMNa/
	Gg+xDE60LqSDr6Dq8ZU9FKqVljGlauC2VJAujnMsKy6L+2ymZBL1dOmh9E6Tna0EbBb0M9lutrQyX
	RtlOEvSOcbX0oyfw2mKR/Lqp5/9X0VsnOMmft1gGj/UclAjc8gGEK2Zj2W2GfcjVcPwCOEf3UrnRS
	qBGS9tjwRsx+r120CQYI0OQ82Kc3YZkXl2Yo644h7kAG1x5P2jch8b6RXC55BhHhZB3LUD54uJM5s
	wrIK2+NMSNVbWxVy9Rlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8g9-000190-Qp; Mon, 29 Apr 2019 15:58:53 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8g4-00018U-LN
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 15:58:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556553529; x=1588089529;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zrqZ4c/OMb7V5rM4tL/jxDbgvP1fZUYKCTiNWW50CJ8=;
 b=JvsDLqilvd959BF7ph5ylB2ZK0zLA9GYIJ9fcAfpx35x0Myv/hlNJ/Hr
 l7SZPjdm955Qqohe6UYCuIpL6ncyn5G6IXHEBLTZK8zqY4Whk/WUG+QvB
 0Gm1wKqjdS0iKpmWhYm958NTsZjWYEkhowOi3hUZCcyF8bbZN7KfV9ex4
 hLKoTxjXCqFltdkNNb/V0QFfNvW3mezu/3hW/DxtF7iz3LBrV123XthcY
 Wyj3s7MFPkmW/q/FTA3I7K4lkOoN/ZFG995RNhmFuGoSvU3j1xZZArX+f
 Wp0YoNSRwu3at0b8m7fC0Qf7rZguoLB+LZc6HSyzGHbi98tb2BwCZaPAB A==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="107088074"
Received: from mail-dm3nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.58])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 23:58:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zrqZ4c/OMb7V5rM4tL/jxDbgvP1fZUYKCTiNWW50CJ8=;
 b=OiPIh7vLf0Uz1IrS1GeM5r/ZwYJGqEBUPuHOsPLMZi4CiPkM8dn08uVKglO9Wof93lR3a/wzUb6335XrLLA3sNJdUvvvHhPmS7UUogGODdQ6B/XRPW2wjPwvYLxHvTQy5HO/GKdwhEvKA5DSdj/kaW9zcPKe/hzODlQ8wcHH4lQ=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5408.namprd04.prod.outlook.com (20.178.7.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 15:58:44 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Mon, 29 Apr 2019
 15:58:44 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 1/2] nvme: improve logging
Thread-Topic: [PATCH 1/2] nvme: improve logging
Thread-Index: AQHU+xBUo0FM00EFFE+9qRUYvDXFOKZTDViA///QBAA=
Date: Mon, 29 Apr 2019 15:58:43 +0000
Message-ID: <41639D1A-D6E4-46D3-9070-53E22197E48E@wdc.com>
References: <20190425024041.17657-1-chaitanya.kulkarni@wdc.com>
 <20190425024041.17657-2-chaitanya.kulkarni@wdc.com>
 <20190428120546.GB9759@infradead.org>
 <SN6PR04MB452781752A97CA874A973C7186380@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190429115027.GA25365@infradead.org>
In-Reply-To: <20190429115027.GA25365@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.18.0.190414
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:d036:1799:1729:fb2b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3205639f-5304-4f1c-9229-08d6ccbb8e84
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5408; 
x-ms-traffictypediagnostic: SN6PR04MB5408:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5408A02A8FA1D43E5E6B0BA386390@SN6PR04MB5408.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(396003)(39860400002)(136003)(189003)(199004)(76176011)(68736007)(4326008)(25786009)(97736004)(6486002)(6436002)(305945005)(71200400001)(33656002)(83716004)(71190400001)(7736002)(186003)(486006)(6116002)(446003)(476003)(11346002)(2616005)(46003)(8676002)(8936002)(81166006)(81156014)(6916009)(93886005)(6512007)(53936002)(229853002)(102836004)(99286004)(6246003)(256004)(2906002)(66946007)(14454004)(478600001)(72206003)(6506007)(91956017)(36756003)(4744005)(54906003)(73956011)(66446008)(64756008)(66556008)(66476007)(58126008)(82746002)(5660300002)(86362001)(76116006)(316002)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5408;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tQdEEKQHeCUjAIayZ132vjjPSBH/l2FgZElANw1L9hpEywrdU3k9doNxRz1fwC0RyUVGd5hiA92ZG8uskFAUgjjFA5QJEDgBvD61ARU4psyOox9Wk+OtfOlZNpuGRn0CXfOCpzeQFQO4Ghku0WDO6ShJkJGUET9v/nFW2m0NO922q+HTWAjU7QK0BsjVVKI3asjEE2YIcSc9+viOCyTCAmqUJ47CZWufv0fa9+IQtG15Yibq3Lh+pBCYKvUAkQ8wbCKbJTHgb9gc/7/CwAKVEDC8yFsiQtR0fHTVj0xqJ4e33V9tR73AyGqSLAuHHqaZkNEnq3P4Pw2+qtBihqRrAa7QbV/Fui8/pLSB7Qs1aOvRZAHFiFkhaw4dbY4vZQ7p7S/5oA5IzFRq7JnHB/eLXXOrVgxe2viuhDoivg8qyAI=
Content-ID: <BBCB6594D8B0CE499025CCD39F1FDEDE@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3205639f-5304-4f1c-9229-08d6ccbb8e84
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 15:58:44.0086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5408
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_085848_822290_EDFE22E8 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "hare@suse.com" <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T2theSwgdGhhdCB3b3JrcyB0b28uDQoNCu+7v09uIDQvMjkvMTksIDQ6NTAgQU0sICJDaHJpc3Rv
cGggSGVsbHdpZyIgPGhjaEBpbmZyYWRlYWQub3JnPiB3cm90ZToNCg0KICAgIE9uIFN1biwgQXBy
IDI4LCAyMDE5IGF0IDA3OjMyOjMyUE0gKzAwMDAsIENoYWl0YW55YSBLdWxrYXJuaSB3cm90ZToN
CiAgICA+IEkndmUgYWN0dWFsbHkgc3VnZ2VzdGVkIHRoYXQgaW4gbXkgcmV2aWV3IGJ1dCB0aGVu
IGl0IGlzIHN0YXRpYyANCiAgICA+IGFmdGVyYWxsLiBJJ2xsIG1vdmUgaXQgdG8gaGVhZGVyIG5l
YXIgTlZNRV9DVFJMX1hYWCBkZWZpbml0aW9ucy4NCiAgICA+IExldCBtZSBrbm93IGlmIHlvdSBw
cmVmZXIgYW55IG90aGVyIHBsYWNlLg0KICAgIA0KICAgIEp1c3Qga2VlcCBpdCBuZWFyIHRoZSB0
b3Agb2YgbXVsdGlwYXRoLmMuLiAgQnV0IEkgY2FuIGZpeCB0aGF0IHVwDQogICAgaWYgaXQgaXMg
dGhlIGxhc3QgcmVtYW5pbmluZyBpc3N1ZSBpbiB0aGUgbmV3IHZlcnNpb24uDQogICAgDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
