Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B5C24A97
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 10:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=byyTQZaSNcS4oKI4FaY8SqzTg0IcNNGqYNGQPkKDick=; b=J0/EU1L3bdDOjr/R8zzQzWjVG
	nYJii/4vORBkd0G3Vt4Frp3TY8Jei5bu46Lf4psYl+stmwWorcSKz6+B+V3wuiYFinjMJUkkKEAqO
	U7L5mxbdtRuPC2r3Qgpl06YdGn9KvVSCQR3fDvMurJm4BcO/a8oi2vF6o6wmgJgnzTsjOTW6ZUi6j
	t0+fHgGVM2+ux1an2Ge6qmtNr38NzYr56zjui57e3UFbeoRXRljb67bKrCbjDdu1rrJRCJuqiDSAX
	yQY0kKo1ndGvXGPRwzhc/EBs0q2JC7JRs8X74KoSDI2nQeuEKMMVh1y1hJXFl8ezdXiFyjQ1/+61B
	VSdbkaOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0L7-0005g9-0Y; Tue, 21 May 2019 08:41:41 +0000
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0L0-0005ef-BU
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 08:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TL16A7vO7NK6MgWs9aA9OTdnzgEdanjbdNC8zYwVPiA=;
 b=Q540+Br2IXKMnE5FHvrXpxnuRc+mSMlqTwI1lA6gOy6mwYBnr4mI7ZJNVZT2T4+ofksJ7VJR145arQZ2bvdx9aJVqfX14vbTpINJ5Nr33ppP81fPYnEz1BjwMuFvU6af/sa1mKf1xHCPGprHm4BdYk9p8mxolZc5AA2JpxVjqeU=
Received: from HE1PR05CA0233.eurprd05.prod.outlook.com (10.171.110.161) by
 VI1PR05MB6431.eurprd05.prod.outlook.com (20.179.27.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 08:41:30 +0000
Received: from VE1EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by HE1PR05CA0233.outlook.office365.com
 (2603:10a6:3:fa::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16 via Frontend
 Transport; Tue, 21 May 2019 08:41:30 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT018.mail.protection.outlook.com (10.152.18.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 08:41:29 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 11:41:29
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 11:41:29 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 11:41:27
 +0300
Subject: Re: [PATCH] nvme: copy MTFA field from identify controller
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>, "Sagi
 Grimberg" <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190520174206.29464-1-keith.busch@intel.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d73a5e9c-df4b-1670-2502-8ca9cbb89f5e@mellanox.com>
Date: Tue, 21 May 2019 11:41:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520174206.29464-1-keith.busch@intel.com>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(396003)(376002)(346002)(2980300002)(54534003)(199004)(189003)(186003)(356004)(336012)(476003)(64126003)(126002)(446003)(77096007)(11346002)(229853002)(86362001)(478600001)(4744005)(486006)(31696002)(76176011)(2616005)(16526019)(26005)(2486003)(14444005)(53546011)(5660300002)(23676004)(70586007)(70206006)(110136005)(6116002)(4326008)(8936002)(106002)(3846002)(16576012)(316002)(58126008)(6246003)(81166006)(36756003)(50466002)(81156014)(65956001)(47776003)(65806001)(2906002)(8676002)(2870700001)(305945005)(7736002)(67846002)(65826007)(31686004)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6431; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 03e8e21d-4053-4c84-fd80-08d6ddc81ec2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR05MB6431; 
X-MS-TrafficTypeDiagnostic: VI1PR05MB6431:
X-Microsoft-Antispam-PRVS: <VI1PR05MB64317A2B42C359450C5F2B4FB6070@VI1PR05MB6431.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: jZGrEsdzV2f85F0gkrLK1a8XzCGlwOzoFLanMhnzckOflXx6GQVuJk7sAzz163RaIvbpP7Cva3XBX4H6w4v8XUnPISCsbG0TwZFxudQt/VFKxCpJ7A4mLslfrnZocg+CXsSsTCellTmWvZEl6qj/ovy+zGt5uWhUQ2Hgxi32sclqRyzQG9jxFjeOaN5dCM4RbDV/VrImmWI0zsCXnQaeSNhS5RgBGPD/HRN3IWClWiV7e9eFnrFdbXhYB3EH1jStT8DcDL1BYqaqTnPVw/9fzZwU3E3M+lRO6YHcGMcpXSjhV5T4viGxANuCIzbrhjhyVJu3abLtsbjPVyOGunys7kXjXL7ILytfxZeHMcPs3v3Zapkru1Jh4EJeaOagqNNrn6fArO0qSYEZU2SYW6bnNH9jJBmEaxbQ5hPjZHUay70=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 08:41:29.5794 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e8e21d-4053-4c84-fd80-08d6ddc81ec2
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014134_391296_665C094A 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Laine Walker-Avina <laine.walker-avina@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjAvMjAxOSA4OjQyIFBNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBGcm9tOiBMYWluZSBX
YWxrZXItQXZpbmEgPGxhaW5lLndhbGtlci1hdmluYUBpbnRlbC5jb20+Cj4KPiBXZSB1c2UgdGhl
IGNvbnRyb2xsZXIncyByZXBvcnRlZCBtYXhpbXVtIGZpcm13YXJlIGFjdGl2YXRpb24gdGltZSBh
cyBvdXIKPiB0aW1lb3V0IGJlZm9yZSByZXNldHRpbmcgYSBjb250cm9sbGVyIGZvciBhIGZhaWxl
ZCBhY3RpdmF0aW9uIG5vdGljZSwKPiBidXQgdGhpcyB2YWx1ZSB3YXMgbmV2ZXIgYmVpbmcgcmVh
ZCBzbyB3ZSBjb3VsZCBvbmx5IHVzZSB0aGUgZGVmYXVsdAo+IHRpbWVvdXQuIENvcHkgdGhlIElk
ZW50aWZ5IENvbnRyb2xsZXIgTVRGQSBmaWVsZCB0byB0aGUgY29ycmVzcG9uZGluZwo+IG52bWVf
Y3RybCdzIG10ZmEgZmllbGQuCj4KPiBGaXhlczogYjZkY2NmN2ZhZTQzMyAo4oCcbnZtZTogYWRk
IHN1cHBvcnQgZm9yIEZXIGFjdGl2YXRpb24gd2l0aG91dCByZXNldOKAnSkuCj4gU2lnbmVkLW9m
Zi1ieTogTGFpbmUgV2Fsa2VyLUF2aW5hIDxsYWluZS53YWxrZXItYXZpbmFAaW50ZWwuY29tPgo+
IFtjaGFuZ2Vsb2csIGZpeCBlbmRpYW5dCj4gU2lnbmVkLW9mZi1ieTogS2VpdGggQnVzY2ggPGtl
aXRoLmJ1c2NoQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8
IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgoKTG9va3MgZ29vZCwKClJl
dmlld2VkLWJ5OiBNYXggR3VydG92b3kgPG1heGdAbWVsbGFub3guY29tPgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
