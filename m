Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2D54BF42
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wxBPjFsJtJPfEM4yv/f2adNGDE/1+kCn8IdWY3Q1lO8=; b=WRs3bgvCDSHH2a
	dC1555vT4/IJqlmI0KInxgCVw+MGjAMpqlqkC5nJKQVO0LyIi+cQMv4ZI16AN5AV27KwJ7pBJIra0
	vn6guRx5abA3oBBEPqfNXqQvRVVnt0EdwLSQnLVZs7DhtmaDQ9G4Z51hEY6Xj+x642bctu3A9oDd6
	F4DWEJkCKp9FWBz1yXe29ML94PG8TQcle49Ph+BEz7h4skNHQaEURRWH1AR6ery0eEtOgnvRa9G+q
	Sis3OVKzSm0mhiIQMe04jWQL41MI9oWkx7hpFxN3BdUNo6H5P8pA7V/lY3vtIa80YXbPuP2a5rTRw
	EOMxVFGvAb2GPrvHRQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hde29-00081D-F1; Wed, 19 Jun 2019 17:06:05 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hde23-00080n-RY
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560963982; x=1592499982;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Y/5vZBk8pIAOH9S9jLPP95g0bqUQQMgGk1dkxsi/74A=;
 b=aBsqi5qPFJ8jt1chg1ot/tp0tUi/zQOhDwYP3Rml/pLPfllxLVSWnwjD
 KOaW+t96z5fbAYWih5OYyanPf3DYxpel7GsGxKGuH1VgSFSk4R+xkuvEk
 UmijMXLV39NmThI6P1deBNdzRQW9fqbQgmgjF0DpxQ/BfcBMMSu7+WiSW
 UTSLfw5nk09nEUFwgSI49A1cxCszs11lPGxfd8/gCfT76RhC/cniBut/W
 PQ3T670SRm5Rz/TkSOayyJVMnt69HmS80C5kRBhXnh8QeWfd28iCyt8xG
 7xccLemNl1iTQBxs+zYxVvvEyRdL6cNa9i80P7dZmbOipwl1cg9R8kQLI g==;
X-IronPort-AV: E=Sophos;i="5.63,392,1557158400"; d="scan'208";a="210727498"
Received: from mail-by2nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.57])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2019 01:06:19 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sc+Kuqpu2myZs8QeRmCYdv2QNEyXduoWU7pTFUyx7uc=;
 b=EcIkACzmiZd6CS+xHgrbao5RjS+5YqNGvH1TTJ5cV+yqRZqQ3Eq35Rg0FcdMpvok+mZrGkoN2S0t5HxXNii7PCDW5U+EfqDZ0D7Ey8EOi8Qdx6AxkYQdrYt9IocDmPMQkfVh9oX5ZMOmxDA32uBY6nJ2HbMKsNYuK6lS3vjMV5Q=
Received: from DM6PR04MB5754.namprd04.prod.outlook.com (20.179.52.22) by
 DM6PR04MB4185.namprd04.prod.outlook.com (20.176.76.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Wed, 19 Jun 2019 17:05:56 +0000
Received: from DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::a07d:d226:c10f:7211]) by DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::a07d:d226:c10f:7211%6]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 17:05:56 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH V7 0/7] nvme-cli: Introduce nvme-status mapping with errno
Thread-Topic: [PATCH V7 0/7] nvme-cli: Introduce nvme-status mapping with errno
Thread-Index: AQHVJdd/tm8tcnBWbUmNXYCA+rEspQ==
Date: Wed, 19 Jun 2019 17:05:55 +0000
Message-ID: <DM6PR04MB575484ED690BAF70A81089AA86E50@DM6PR04MB5754.namprd04.prod.outlook.com>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c18bd3c-f7b8-4047-5004-08d6f4d864cf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB4185; 
x-ms-traffictypediagnostic: DM6PR04MB4185:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB4185927758CF8C9A0342CB2A86E50@DM6PR04MB4185.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(376002)(366004)(136003)(189003)(199004)(78114003)(476003)(256004)(73956011)(66476007)(91956017)(14454004)(6306002)(478600001)(9686003)(966005)(305945005)(6436002)(74316002)(53546011)(102836004)(6506007)(2906002)(72206003)(81156014)(4326008)(8936002)(81166006)(33656002)(8676002)(71200400001)(6116002)(3846002)(71190400001)(7736002)(446003)(66446008)(26005)(66556008)(66946007)(316002)(186003)(52536014)(25786009)(99286004)(64756008)(68736007)(7696005)(110136005)(229853002)(6246003)(5660300002)(66066001)(53936002)(55016002)(86362001)(76176011)(486006)(76116006)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4185;
 H:DM6PR04MB5754.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: acGs8Hi2TwyM+L83r9urtp2EyBxQWPB2kkRAcghSzDfZZH8+pSYvqneewXjEsxrYH0Rbu8AcR8R+HuF8RMe30lEZzAU6nsZA6AYJ/tzL7TKEYbStlVYPw9sTP5sADM+Ryn88TKTCjC5MFYX3/KOSznmyc6Rbei5kuHRST2rtaxvYptv6Q40twHY38sjaDDUGIu2NcsUANj3bu0WdsCCKsz2Q13J8je691rwUmjQc8STVwtFmkIeTOFe5EclxqnHyTIYwtC9G2eFFDAbyd4n+NLvIORINt12tvEmutnNeu9j9PlxEZC2/ROx06xj3aqCjS/x/kVkcqjeFwS3lCtpDDljn3Vl/btV1wh4TjWi8oMTawwKm3Vp1VcN35WIxPTYiYt0LslGd6/4Mmz1Uq+RdM5bQQBZ33PG3jNBbHEJofeA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c18bd3c-f7b8-4047-5004-08d6f4d864cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 17:05:55.9356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_100559_943397_17E24FB1 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In case if missing any of my reviews, this is for the series.

Reviewed-by: Chaitanya Kulkarni <chaianya.kulkarni@wdc.com>

On 06/18/2019 06:12 AM, Minwoo Im wrote:
> Hi Keith,
>
> Now it's v7 patchset for the nvme-status mapping with errno.  Chaitanya
> has reviewed for the first five patches, and Sagi has suggested to
> return an error for a case that numrec is different.  The 6th and 7th
> patch will make what Sagi's said.
>
> This patchset introduces nvme-status module to manage mapping
> relationships between nvme error status and errno.  It cannot be
> directly mapped in 1:1, but we can figure out what kind of errors
> happended by the return value of nvme-cli.
>
> NVMe status fields are 16bits to indicate, but UNIX return value from
> main() will be parsed in 8bits so that we need to do something about
> return value to indicate nvme error status.
>
> This patch series has been tested with:
>    - nvme pcie device controller/namespaces
>    - nvme loop target with nvme-fabrics
>
> The branch on github can be found at:
>    https://github.com/minwooim/nvme-cli.git for-1.9/return-negative-errno-v7
>
> Please pick this series.
> Thanks,
>
> Changes to previous V6:
>    - Added Reviewed-by: tags of Chaitanya for the first and second
>      commmits.
>    - Added a new command(6th) which makes it return an error when the
>      fabrics discovery retry(10 times) exhausted.
>    - Sagi has suggested that when numrec is different from the expected
>      value, then it should return an error.  The 7th patch will do it.
>
> Changes to previous V5:
>    - The first patch has been updated being without an whitespace in
>      front of new label("ret") in a function.  The other lables added
>      followed the existing style in where it belongs to.
>      The default style would be great to follow the kernel style which
>      is non-space label, as suggested by Chaitanya.
>    - The second patch has been updated to have "out" named label just
>      like the others in that file(fabrics).
>    - No functional changed in this version 6.  Only style change has been
>      applied.
>
> Changes to previous V4:
>    - Add the first three patches before introducing errno mapping module.
>
> Changes to previous V3:
>    - Fix to return 0 when given error is 0 which means success.
>      (Chaitanya)
>
> Changes to previous V2:
>    - do not overwrite the err local variable, instead returning the
>      converted errno mapped directly.
>    - return ECOMM in case of linux internal err which indicates the
>      negative values from in the middle of the subcommand.
>
> Changes to previous V1:
>    - make switch-case inline in nvme-status (Chaitanya)
>
> Minwoo Im (7):
>    nvme: Do not return in the middle of the subcommand
>    fabrics: Do not return in the middle of the subcommand
>    nvme: Return negative error value for internal errors
>    nvme-status: Introduce nvme status module to map errno
>    nvme: Return errno mapped for nvme error status
>    fabrics: return error when discovery retry exhausted
>    fabrics: Return errno mapped for fabrics error status
>
>   Makefile      |   3 +-
>   fabrics.c     |  67 +++--
>   linux/nvme.h  |   6 +
>   nvme-status.c | 155 +++++++++++
>   nvme-status.h |  14 +
>   nvme.c        | 701 ++++++++++++++++++++++++++++++--------------------
>   6 files changed, 641 insertions(+), 305 deletions(-)
>   create mode 100644 nvme-status.c
>   create mode 100644 nvme-status.h
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
