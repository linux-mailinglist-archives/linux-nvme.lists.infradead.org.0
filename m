Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85913801C
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=HGcZ6bAr6nfHO5KhkwDmKO4ms1R8rXs6c4Mm1RyJ4uA=; b=bgv+yYKo9B5BC9
	lr9eBlRzaZsBZyFHBjpp0NXivRRlwtRUTFxH6xE7V8W/gRQK9/Kj0jOM/goANB7UGWtSnq9utlEXN
	iYTX5CpWFBoBNP+cslVEaomEbJ3UQ0ZM97oKX/VweBXntjhhLms5hUIPYCOOlwQ21XBu4bmdLYFIy
	ogcMSgmnxg32RyhisyUQ20dTmx7C4S/+uKYtbkerNXjHUEkJJLZTUvxxstyO6a1Qft4Fby0ahSfzH
	0aTA5JzcikcNHK/tEk6orJnrbZD08jznI3UBmZbj2GW2VRrjZNtIgEwT6sw+cJCxsIkQhfAOTx9W6
	1iuij1IXeL+sWXKKaiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ0PY-00007X-3Y; Thu, 06 Jun 2019 21:59:04 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0PN-000070-Ti
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:58:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559858334; x=1591394334;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Ik+N3hpR7p4d9B+fd87AH+8RY+FmUoS1sknDM8lsZsg=;
 b=h6DFSpPmYL1T3NR6BhykHVGdayqCT7SLTc2Nb4f/f3YeVyIyGvmRDr8j
 DUGS2Qu5RnyNWH+l0CkpVX6DxZ8PwTWM0n9eo/bexX6dUnFaUBQBTxi1K
 Iv3Ehbq3PvB4RCQN+TaU0GiBXu2d/KLcmQDBW2v+D+TAT9uS4B+qOi4CP
 /SQcn80RIgE1JHwHSLAHVzklnO0JEBpymELgW8kuOYfmqUXEQrv+QC3+d
 MilPtzIIC+RdD7f2dftTHFqrJtu8pLjEJ5Wk4EucDb9LjO84MmaxgInHC
 1wIxMQNgqBBmFu9Dehg/qmU4a/J6BhTEUFczcbs9l3xLsVx3s2VheUfBb w==;
X-IronPort-AV: E=Sophos;i="5.63,560,1557158400"; d="scan'208";a="111267125"
Received: from mail-bl2nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.52])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 05:58:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V15OB6utpjiNWbFlrc5umpnxBEOUyKK0mOnhQcl4Pf4=;
 b=RwFq257VTMjxadTtqo5M4mtqrQ78kFzsLId6lJdhtAen+4Fivh4wRkHD6IfGo/0QgMbAwo5t/QgZ5zbh0H4LYO+9j5mdFtiPCox//9vWlRwMTAEGcd1r2weRi1UtRUJNmVZib+pXz2SgCSOv+7NhnMT8Ssw/z674JP+IYnOp3Mg=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5304.namprd04.prod.outlook.com (20.178.49.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 21:58:43 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 21:58:43 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Keith Busch <keith.busch@intel.com>, 
 Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Thread-Topic: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Thread-Index: AQHVHK7x9AI8IuFdkEGytuTT5fcunw==
Date: Thu, 6 Jun 2019 21:58:42 +0000
Message-ID: <BYAPR04MB5749B5AE84E2FF715D13346986170@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
 <BYAPR04MB5749E9F546E6EA5415BEB20686170@BYAPR04MB5749.namprd04.prod.outlook.com>
 <969c0a9c-2e5a-b609-5c3b-411f9f2bf6ca@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38a7c91f-5e67-43ea-1cd7-08d6eaca2436
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5304; 
x-ms-traffictypediagnostic: BYAPR04MB5304:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5304637A630FA124A1BC895586170@BYAPR04MB5304.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(136003)(396003)(346002)(39840400004)(199004)(189003)(8676002)(81156014)(81166006)(8936002)(186003)(6436002)(74316002)(72206003)(446003)(26005)(54906003)(476003)(486006)(305945005)(7696005)(7736002)(68736007)(316002)(33656002)(229853002)(102836004)(6246003)(76176011)(53546011)(55016002)(110136005)(6506007)(2906002)(99286004)(25786009)(66446008)(6116002)(4744005)(478600001)(71200400001)(86362001)(3846002)(53936002)(4326008)(71190400001)(5660300002)(256004)(9686003)(52536014)(14454004)(76116006)(64756008)(66946007)(66556008)(73956011)(66476007)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5304;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pOXfmOtTY8geJio74O87E7ZULpG66KIcPo1nGy8QNBJ+inxPqfeADLfAR1oM5uAPp2oCdj2E7ClyWoHtCJ+h1PAxnrLTEnuf0wWzzsA29WE9pQ7kk240WRRVXMhvS116rQkxsES6gteXNdeHsjct1Xg7+jgvAd8tavKWG1ay8Vpt7tEKKjoY/l1ux0Cclqh1ex6cvU2fdWZH5wltCY7P75OSqMaFf6CL3SM/pHAg+QMBj5kANMlccbO4nacOm1Qu3ZACLKK7qIOCxHSMNnY1R4PV38Wa9xx3S2+/QkzV2MFqLoHXJfHFWHVI9qEvRKkNyN6dUN2wf2rVJgfGg/fFceptpnJGqDxwkv4pljyycKkomrXApzYcoQtPEbM0ISon5rmxePBCfH3ccM4gVX+s3vSwjQXupCcR6QbgUrSELrY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38a7c91f-5e67-43ea-1cd7-08d6eaca2436
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 21:58:42.9934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5304
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_145854_727723_2BC1A5A2 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 06/06/2019 02:48 PM, Bart Van Assche wrote:
> On 6/6/19 2:42 PM, Chaitanya Kulkarni wrote:
>> Looks good. One quick question though do you actually have a controller
>> on which you have tested this feature ?
>
> Hi Chaitanya,
>
>   From the cover letter of this patch series: "These patches
> compile correctly but have not been tested in any other way."
>
> Bart.
>
Thanks.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
