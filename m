Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144FC1FFB5C
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 20:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ElWTH+EF1jjHHivQgUHEwqCvzmMEhFOjZdiTNbRmiXU=; b=UdnG+y60WGxzlo
	uOF09SrNZTUpmZMZTQBEJSieeQaovycmkyVSaU4QOKFFD6YYrdqYj8UkToxXjFw0Wb65J23r4z4bt
	TThZzsqw9v+wseF5l6SJLQZrKAHpPMD3aEBKy+fD5aFBt5V+pMefZlQ4IdnlWHR5XVzth/MjxqKeR
	WPeXl9WPl0R6+X7KJCYXhj9AiCiHJaYzwhRxRAhFbQyRUfiRO3urqLY4zDFYuFbJ6Ln9TTMXuQJn+
	xbj9l60cOP3U1a+ZgJYVYJeG9xN5sxEjXnZjrjgq9Zwyf3TV7UmK/wzrvkIlNM90OFqKsOhZGsk8H
	Ss9ubL5h7R4lw8W5K1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzhv-0006ov-RA; Thu, 18 Jun 2020 18:56:15 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzhr-0006fZ-5Y
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 18:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592506571; x=1624042571;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=OFgigRSwN+Mq8SSrdSJKqrqlSgI5bdvATmoRBjkLqAgkdU6zcDwICj8q
 gXNM8mCSh3j72FxJWtly88XT2eAQBmDj7Z4Z4+vvg44ymxaiOk6am6i2N
 MXcuqEmeYUaJxuXJBhDAENERnClL6cfNauT2xjQT308Ag/vj+APZ+Y5uT
 Y+1y4BboE5R5BO2LYXf4HkDg5NrzPX0SOxuXnSi+ONCdPSns3Mx+99cKM
 2gtp7qbf+6wPQDwnVyBNBa5eO3KlxlkqC0n9Cv2iSkmWFkyxFaqYFjMLG
 tDip9P5Qfj/S2cpUc/WfKSSzOOkLDPdWda+Sc0Dkkg1Mv6eDjf6igh9TO A==;
IronPort-SDR: EZ3Y188CGWklXOdqyOB4JIrpHdA2jUs4wyKHiKBIR8gmgb+Uw4UJ9lB57dH3ayqhW8EomOxh8o
 OCS+v/8pHfIS6ARdJ2CSHYOOwFX3b+hkq6BjN/VC/dVG/ee0uKnKI/nX2DF6QD/BB8e5LZmWzn
 GNmwWRGNGKTefnoyup/750UUTCjumGiK0qJ3XyPxYnvLWUb/i30Fp6zMfp2zJQv7Cx2XQ9os2s
 +BjP3rKVFB7VvegWjO+uqxHR6PvjUIq0n3JUvNdMUyn0BlVklzKoMgkpbxvr5Be6S1HBRYEM4B
 HIw=
X-IronPort-AV: E=Sophos;i="5.75,252,1589212800"; d="scan'208";a="141729825"
Received: from mail-dm6nam12lp2176.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.176])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2020 02:56:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epErgLKPzyB6J6Db9gD52jZMuoIqdKJT4nToO8eQkaTzKbk2NX4lcYAfscPoQDRDmNe6sTixahnMHMjCDJia1Rv1bFp+7s6DzndaL+86sDgrN6z/TbhqPDAzjajrRBPn1jw885rEauxTlGYay3mYTI5qJD4Y+1akGhRlYTWd8gLlw+tOQDIofTG7Iltdftvk/NUARPC05JDgwEN712dV5Mr5pBM/U9SN/Y4JjaJn/MobBb3gdeI4KaA6KZwdcP2TLP4kO3Sl+DX9sn+HlUvBOuzBmHYrk9b/7lfoXlJORaXGuaCDLNsCFgsbBgCHgBcgCiwBInd5XdUAjzRI416A1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=BVdj9SPDGQT5/9bgble39+aWgvXvi2LGV2W41rW2CznwQB5oRfdW4dcI8W4TEe+Cm/DbBMdJ3Wgc7KrX6Tz91LLvYJIe3g54Vg3HhXI1jFYbb79yef5XKtkNyilnSsJqLyWSx9t4MjcJL1olf83mhVqGGTKlflfNCK9m9bUty08ymN/HNNtx/LzGsjLQ1f/MTSgUx5I3db92N+a5pjAZsFvqhTCvNba6QhgDpj/I1Yy7jGG7hyQTdTZZmY2R1u3c09wQhMeMy8DR7G2cgs/qZKeNKVeuQXZkt7i1xW/iB42+v6ycBX2be7QaAJL42JzxxJjIEvmraOqleb6pGUPDcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8FZ0D3PP/OudJ5uuxCAz/C/vBHo8wESZoPwxTWqVEI=;
 b=YAfPY5R5CNR4rhGokLuCN2FoXBFk4ISbdzXP+FNr7oMPIvwDKMN76c3PxfwBt5ZvkfyK01G0pX8ICEBI2+XuZ7ThyLld8zBsM32gjtiai69EQK5wEOLfQ6UJ7gvMjQlrxAhtwj/tcUheOSW97dzUYnq15GbasJd+gSR/4F85QYg=
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 (2603:10b6:803:47::21) by SN6PR04MB5248.namprd04.prod.outlook.com
 (2603:10b6:805:fc::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 18:56:04 +0000
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2]) by SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 18:56:04 +0000
From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
To: Keith Busch <kbusch@kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "hch@lst.de" <hch@lst.de>, "sagi@grimberg.me"
 <sagi@grimberg.me>
Subject: Re: [PATCHv2 2/5] null_blk: introduce zone capacity for zoned device
Thread-Topic: [PATCHv2 2/5] null_blk: introduce zone capacity for zoned device
Thread-Index: AQHWRYBXnvz1lAnFS0+TL4B5y9ZGJw==
Date: Thu, 18 Jun 2020 18:56:04 +0000
Message-ID: <SN4PR0401MB35988765B207BD9F7C8D792E9B9B0@SN4PR0401MB3598.namprd04.prod.outlook.com>
References: <20200618145354.1139350-1-kbusch@kernel.org>
 <20200618145354.1139350-3-kbusch@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [129.253.240.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a2cae3b0-5b17-4a64-2e2f-08d813b940b8
x-ms-traffictypediagnostic: SN6PR04MB5248:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB52486C74763702BA44D1068A9B9B0@SN6PR04MB5248.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R4vJBxumdBKGHX4mPxFC+3kMaFYhe8X0p3XUpAjFgowNwrN7qRyGEhnpCV11eYSS2ah9DGozt14M0so0Yv2Gh4Tbl8teXuDWDEd2V4EEtO/WlKyb+akDT+9LV3jdUcRDBHy4/iaqzpRX/IcH6EmpCAW8EESwwGNF+2MY92z2XIHrz06k3gz4ghV1ljY4k4tbrdrTHD/BS0FAMDot+0lCUiE7b2iqwld8+1AT4g24pwWyfsbcJ1QJ1pqFv46LlcmuYcof6/DLyIV/P9fTXrhLqTZh8k9GD0a8uT35wO6Fp3ym7yR5nEALqxijLQBYLExtWH1DUbrZODLdWG9JU7eSiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN4PR0401MB3598.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(39860400002)(396003)(366004)(376002)(186003)(26005)(8676002)(316002)(6506007)(4270600006)(54906003)(478600001)(2906002)(558084003)(52536014)(71200400001)(33656002)(7696005)(5660300002)(66446008)(4326008)(110136005)(66946007)(91956017)(76116006)(66476007)(66556008)(64756008)(9686003)(55016002)(8936002)(86362001)(19618925003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jFhDHO7tTNhg+v/4Bm5A3+GWSeGLlY3XcVUwIb1urn31tXHlMoI3+2MfmQQ47UCgpbnKRqksMLixZIUEaZdRvXI8u1fkTR1M5Mlglq8RtBP7rJ+KA120LEqB0tlDDh8TnQ6kH/6nETMYfhkc3+0XdQVVtEKlyPzG7KP9qwQ9IvboSXrjkKUu0IkxTPt+kGveB1q2Gz8+ckOHsTruB5Nfz9KU3k616f7gXbIdgSWsAzFQxU4fOMN988dbkk8NaJaGMFaNJHsE5sDugs49bGT0Y918JSZbJ1Xp8qZVDuztHYbErAaWKB92bUVbUKt+vOR0TPmohbzQxIxEojegJMlZxVlb/vPM4pUkA5VA5xxYOTpPVMfPRuql/XZPe3QImdTgnMZm9w1KtUFj0mrL0lsHhiQXzj9du14/ts4uBfAZpl5R6QCfvzOCwUe84T4vBq87sRkys2MijaNaxIeiRm1p+GiyBaZ6BbW6i65s0ljhlGCZcn1/1R3Dq+aGkUnMUjsN
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2cae3b0-5b17-4a64-2e2f-08d813b940b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 18:56:04.7195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TWBLw7zKd+FUfsQ4HSHt03BMI78bzepkKd0ELG7Ms7883Q7AtdsGIRxZwZ6YSbUCLWYrsc86SrTMdUVKsWjWLgixQmPsRihmk8H+yhtLl54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5248
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_115611_362819_C70A7E45 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>, Daniel Wagner <dwagner@suse.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
