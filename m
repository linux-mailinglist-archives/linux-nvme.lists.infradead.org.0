Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9607A37D27
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=kctJun1c1921zChnZaofMKkKuH15FP2oiZErcrb1MOY=; b=QSJeJYB2PvMhfb
	cs/9W/WWnIrJySZxyYDv3vd7LoLtvY61d0pNaSD8eP0cEfbiUf1M2yVXNbwWylTTYhJDlFprFuSVT
	alUF86YwAQ5UnMR9ZVt2ukq1luZI3zdObVhL0xIGnn7q9NxkQx8QrfIJUCwt7hCd3V9LZ8int+HVQ
	FExL6g24ucAbVtycGiFBqdEG+fZEOG4w/3iP7Ejx6yhegibu0ULZhyTi3M/i00codpC7EwCkVTNeV
	sA/twsRE7VOVcP9bAoqLH/tbf+8IYYfqUCKaSzg+EEI+sIJ0kCZ+BDB9cVCoWBxBQkbuAnWUQ9F/W
	x0ozrOSnYXWUaQTuZoFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxws-00018f-Q2; Thu, 06 Jun 2019 19:21:18 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxwn-000186-KJ
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559848873; x=1591384873;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=ROXhxUJ0tz6ISeYKCK7A3057bOLL0W9NZtMvmfiVQCs=;
 b=Lgpf9grWuH7n3gxR6kLhiGM+2Tvj/OLD3rl99+QwX0uLlJzaViBIpOo6
 6s3Mmd58966MKV1ZJOq61JLoui4tTRKxVNN5mOD08aIc4QacL+ONnJtU8
 CW+T3aZDJx9wkBzIoPr5rii15g5/HmXaeU3u0tYPi43GYTsFl2UB6bSL2
 y/HZf8nMGCswM/qtV6zXdUOVQhHynipBh6PpjeRQ+4ARl/XipakrkFhPP
 ESqKSawY7ych47pjiO2jGA9TTU5xFrOBKaZ+Xn3KIr17kZffExirZttV4
 RbB1K+yE+CSGZ7LkehJeS8XtQYrM2523j1ARIW5qjrXmhhL4/WtUICDcn Q==;
X-IronPort-AV: E=Sophos;i="5.63,560,1557158400"; d="scan'208";a="114927901"
Received: from mail-bn3nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.52])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 03:21:10 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GgU/WLjIjSqL4mIFTrcW+urbYjnGy28WKSOpwWJa7g=;
 b=W4VUT4yrpOR/UyuRtc/4olD5Pnb4tawkT5mr+DvseshViNZVHmkZaLvKMbt3EfQcEedjJR3X8roxsE4sgZIdpXUBdHVp9kXWYAznRWstqaklhYAs8tOK1RSE2cHSyVnuaVSicUd0t+JaSzsUdCDC7M7d5AFEkVmBAbO2SgH8LyI=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5191.namprd04.prod.outlook.com (20.178.48.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 19:21:08 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 19:21:08 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: nvme: build failure report for nvme_sync_queues()
Thread-Topic: nvme: build failure report for nvme_sync_queues()
Thread-Index: AQHVHJgvCiatydNC/EqXTEhPYiKBmg==
Date: Thu, 6 Jun 2019 19:21:08 +0000
Message-ID: <BYAPR04MB574973D3980B38C849CB6C0986170@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190606184620.GA1676@minwooim-desktop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f808eb2-c37b-4d0f-2a45-08d6eab420ed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5191; 
x-ms-traffictypediagnostic: BYAPR04MB5191:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5191D3FF59AAC5E393879E3086170@BYAPR04MB5191.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(346002)(39860400002)(376002)(366004)(53754006)(199004)(189003)(73956011)(305945005)(14454004)(7736002)(2501003)(66476007)(6436002)(52536014)(55016002)(33656002)(66066001)(6306002)(9686003)(316002)(64756008)(66446008)(478600001)(2906002)(72206003)(966005)(66556008)(66946007)(5660300002)(229853002)(110136005)(76116006)(86362001)(4326008)(71200400001)(71190400001)(26005)(186003)(53936002)(6506007)(446003)(6246003)(76176011)(486006)(25786009)(102836004)(53546011)(476003)(8676002)(7696005)(74316002)(8936002)(68736007)(81156014)(3846002)(54906003)(99286004)(256004)(81166006)(4744005)(6116002)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5191;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EpxI1WIVWW4bEg4T3C6JNOZwCMfgDXQoiReAPdu9Scli7PmEXbSyLYEY5rTwTNEh6Nw+b/VZn0vrMQtidLk92OFRSslC+i/g+eYj3B+A+RHiF+sMvSARW3q2Ai8yoAgr8QJjPPRv+XVVqTeU8HzJ74hBjGYpNcZnlQLK9AgObo+ScO1G6P3/KGu7vUEQH0wYgyriqStpY//FVRotkbsgJ4i0Od5U04WOuqjDYXuv/u5092LQ016C7EzWFTG5o1C+Ay6xYWMhbyXqQcPTxluSx0UrrMlT9hcEerysDKt/PIxBDUA7JStmP/dFQefG6cOMw65yjS0IAbSV43KFvCtbTAjLzfkNqjhkb16Y1bEVwHpI7YqrISlIovpqR2yB+bnklhLSvjNRt62oAQIh+S/qjNXR8eOD/ZXSmvxv4X+KEiE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f808eb2-c37b-4d0f-2a45-08d6eab420ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 19:21:08.5911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_122113_885514_BEEA4B61 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I've the same problem.
On 06/06/2019 11:46 AM, Minwoo Im wrote:
> Hi all,
>
> I'd have to report a build failure due to the following commit:
> Commit e7ae6d1e7c5f ("nvme-pci: Use host managed power state for suspend")
>
> Message:
> drivers/nvme/host/pci.c:2876:2: error: implicit declaration of function =
=91nvme_sync_queues=92; did you mean =91nvme_stop_queues=92? [-Werror=3Dimp=
licit-function-declaration]
>    nvme_sync_queues(ctrl);
>      ^~~~~~~~~~~~~~~~
>
> Is the following patch applied to this branch ?
>    [PATCHv4 1/4] nvme: Sync request queues on reset:
>    http://lists.infradead.org/pipermail/linux-nvme/2018-July/019166.html
>
> If I miss something here, please let mw know.
>
> Thanks,
>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
