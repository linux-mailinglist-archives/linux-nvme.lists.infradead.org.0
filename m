Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE732594
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dtT7o0V16Wu58ESrUQsc9fxgXgsKr1nJ5XG7XEwxmNQ=; b=O4uHSIe1bBIErG
	GYqgDO7vYWFcGW5VDmPIoFF3xYU7j0BDuasri800wop3/WUE1PjtzbKPalFY1GBxZoeXiRESk+tws
	Wv6Y5RWC/nRzZPcjuRJGcpP6Hspm3ZIkQZjF5ORbD5n9mErcz1L2AFi36xMpAwI37ei586Ix3Q3XU
	HsLP7PUzVf8ACiQtxgQlOpP7fdjFjm3d0hk2P+CaDN3QocFeWz8NaSgRiZ5gCU5ssoyG8MxdzJdNp
	b5O9EjOxPQwV7sQolTj7dxbYx+gOvbl8MbMrruVD4tTU/aSLAxZMgpg0bFZMVBR0zqXsT3k3QQcX8
	BNWQfveScPR0iajiRX4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZWC-0000Zm-V0; Sun, 02 Jun 2019 23:04:00 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZW6-0000ZG-M4
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:03:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559516634; x=1591052634;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=IB67MOjgB3qh/YTG0Y36QVCqXLvZxbm4ekGOu79sQyU=;
 b=DCjie2l+9ZvXtPl+bw7XS5B+iiJltIMnrh4a+hbFMGfKOYE11FXhTWS3
 7YMndXz+XgKWtKEsa82JgPNTMGQj1VakvdfPlGsx00RSSsmanFnUZEJH/
 Lu/1/d5AJUSdErObKmGF3FadRmA38sqLXTi+XhlFhFT8IprEtk8I0fnXw
 N6PTEwhwr8chy/rdOhfkLTRRtTBIoUxy/vY5NTzlssPimfypYDIpD8cCa
 JJRH4C6FwBt/50kTaJP/Ucs6JWKUI5Ka7WSbO51FtkIbLTacxfkQmSbVL
 cqDJ60S3Iuy/ebU+g2gYIfc4SjG6k2PP5CWJNhjq3UE3JT9UGIiO55CE7 g==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="215885113"
Received: from mail-dm3nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.53])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:03:53 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/CRwcZPBybRtZcD+wyoWi0jlS8hYg4IEyj6TMZCkg4=;
 b=HPPvDN55idJal24dlwQ8nQvUZUGEMkcQx4LJB12aPqDcrjMux4q+Um2PDQB3DXDqmQcyFfIWkQtK746a+Ra+RxL9iA7epDe/PuAzOYDxMxgOe1Z5ku29AHVS4zQD4xjpFWuJf0rshpAh50/5m6IngvooK06mxkYTseysA15X6XQ=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5656.namprd04.prod.outlook.com (20.179.56.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.16; Sun, 2 Jun 2019 23:03:52 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:03:52 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "minwoo.im@samsung.com" <minwoo.im@samsung.com>, Minwoo Im
 <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
Thread-Topic: [PATCH V5 1/6] nvme: Do not return in the middle of the
 subcommand
Thread-Index: AQHVEXf2kV2OAMfCDEyBzK/6TeNfcw==
Date: Sun, 2 Jun 2019 23:03:52 +0000
Message-ID: <BYAPR04MB574964DAEA1B94732AE1E349861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-2-minwoo.im.dev@gmail.com>
 <CGME20190524013628epcas4p2a5b6451a173e112a13157f193fb29321@epcms2p2>
 <20190524014037epcms2p26b77433a8c919b847ccb9f8acbb2485a@epcms2p2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de940b1c-3069-4b85-841c-08d6e7ae948e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5656; 
x-ms-traffictypediagnostic: BYAPR04MB5656:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5656272FC972ACEA58967949861B0@BYAPR04MB5656.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(376002)(39860400002)(396003)(136003)(189003)(199004)(52536014)(68736007)(26005)(76176011)(6246003)(53936002)(55016002)(316002)(186003)(99286004)(7696005)(6506007)(9686003)(102836004)(74316002)(53546011)(71200400001)(4744005)(71190400001)(66066001)(86362001)(2906002)(6116002)(3846002)(7736002)(305945005)(8676002)(4326008)(81156014)(81166006)(25786009)(8936002)(5660300002)(256004)(72206003)(64756008)(66446008)(66946007)(66476007)(33656002)(110136005)(14454004)(446003)(486006)(478600001)(6436002)(76116006)(2501003)(476003)(66556008)(73956011)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5656;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: el05To7PBeT3IgmlPoSATkqXikqQyPGTBpQtyREuM5gciW7no4CiFS1wa4YAC3l+Bf0K1UE4GEA0iz+mW5SdCClBLldIyNbEM4P1ltwulydZbMUMIbIkD348zQNClCWDDkbsBTweFONTeJtvayMfRRRfFDWzZYZB6qulheb/rFX1oEHFHuJNic30eRqCiW3yz9JlPbQdFLqFzuKN7GtuoFyePXkSpErgzUxfgX1nLHOaGDFJIs/tGTsMHp6NpiL1NEl1LsIjIGKtti2B92phQY5hsdym4Rz1BZ9DBmXXqhqXqq69h8ZFHRcgaw3YaqetplylSFM2oykcQDf8BOy+D/zKwJuNlgOgkH0iSWawiS+hRwapCreQtr127GWpNW/Qen925n25wSdgpMqXjqZg4w5UMC5b1+qNrbtIvMnoIV0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de940b1c-3069-4b85-841c-08d6e7ae948e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:03:52.0288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_160354_841593_EC07B2D9 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/23/19 6:41 PM, Minwoo Im wrote:
> Some functions have label with an whitespace, but some don't.   I didn't
> wanted to involve those kind of clean-up things in this series.  I just made labels
> with its own function's previuos style, if there's not label, I put an whitespace
> prior to label.
>
> I was thinking that it could be cleaned-up at once later.  Do you really think that
> those kind of clean-up things are involved in this commit?

We should at least try and use the default style irrespective of the
inheriting existing style

which will trigger more cleanups. Begin said that now the question is
what is default style ?

I'd just stick to non space labels as that is something been consistent
with kernel code.

>
> Thanks for your review.
> Chaitanya,
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
