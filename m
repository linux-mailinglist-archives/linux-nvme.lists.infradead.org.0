Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACEF6C9D0
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 09:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=KLsUhdyBa8GWpovDfI2tTvWe0gHIr/KPLA9UjTGV3a0=; b=s6LFLOexlxZ1ZI
	/iOOQszr2rYzj3uTx6nBJN+wHPlruFJHeIPutioGdUFh5G4dIK1KU+4zlZ8DNwsodeaqWvZl3EpVU
	YrCwTYp4w40MOrok6Zrr9ThtFmt+vIHbShdY5337EYZaWeJiteI+epBBHxqCDJ7DA5rZkzbMsoB38
	IvIrKkM9aWRUNsymtzL78AEbwoK+gq/sjMntGUEOtUojDE92wcE3UzsJaeU2kr5IDSJb91WPyoj9d
	8l0JPAxAMn6UcBCj+hb/OlVdGCUo6po8wRJRUs7SDRADMu79bpW/z3xshFGwwevWajwvGspoHnqS5
	NB7vsp+AxACl7VIWV6AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0cb-0008NU-Ae; Thu, 18 Jul 2019 07:14:33 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0c6-0008Ms-Rk
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 07:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563434061; x=1594970061;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=xRxNpXTHflpYTvBlYvAX0bIeEjVwlMvwP3DJmFfoDzE=;
 b=Ch8X2HvgoONBJuan4t4MYYzeQbha0/uhVJUknsGNj7oJrldnyohWtjd9
 OVf86Vl+bN72ngklcOOLSH8x0E5xbHon5bIbjVHCOvAZNPidrRuAfkran
 QPV39np9aYYtbGeHoMKARKeNkabHuLPiviP78HVQTBGms5bqbk/3073Lc
 TPo9aXp3fxXbfLhhQ2JcMiZ41mAcROjhXmXFKzkDhDu56zKOv55SOnGNZ
 nctTZyO/0J+j4y5CihEWjxeChbkBYkpvXn4HzKPD9i07LfwOjh6Byw5vs
 03VflkX+Eu506mlRMFrcGrnnHUHzN/CiW5Us0rzvSQNfexJFs0DRpPlyp A==;
IronPort-SDR: QQ2xr3OKXQq9UjSnUFIjQL+w8p9xSNSBn+Exc9GKoo4C4H2ULrF6gOS3ocizlvNNMhjAt2zUdY
 XeXZCDc+gtQ/yXMfshSJaH4MOIQqUkCFt/urDLHZ5+MZHwbXpeiCyB5Fp/FCwIsd+PBFPji2Db
 6j+aQlWP3mUnGpgzrBJbMoiIt51yybw44Bd7eBB6bFhDmBY7kfplicVGnRnkf10tTTCZfXSEe1
 HfkEkWdDS6qp+wTPRWAJuJSQn8rkOryJVaVhku/9Ym9FppuBunfviOc1GYJ2H3gY5wa2TfT1jQ
 rWo=
X-IronPort-AV: E=Sophos;i="5.64,276,1559491200"; d="scan'208";a="213360459"
Received: from mail-co1nam03lp2051.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.51])
 by ob1.hgst.iphmx.com with ESMTP; 18 Jul 2019 15:14:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FByrG3EECScg2eqWhtTIUluFKL5/zyetklUPe6HG1jAgysnJWlHbiBINksM8m6DMet6pjJpB/9z5wtmDHf6ELu3rj5KqhFaH7e1HuQfY+XUXuhfdRmujBbl4pv8DwEnQW1XuZ0H59PEsMNz7StI5zIpjMCzW5/JyHnogVdLMIRfGPplWo29n75E5ubOS5XOneHhyhQUSb1NNO6Vyrk4aIq5Oz67ueAQnfNx71W2Q6Kh2suMqTTVJSQ9A9vt17pVy5W7Y3CCGSpSLIL4Pg8OH5Be3tsLl5Uen0UVRMZBF5G7UEzRFD21eqsQ+kqnZuvr0rJIsaPxE8b5qINGghoWWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRxNpXTHflpYTvBlYvAX0bIeEjVwlMvwP3DJmFfoDzE=;
 b=MoKWJju5kSOVHn4MkxW6F94ZUh51eV4Z0aMOrQFKOs2uXUwVGS1ZK5WDTxLcWEcYar/4wsU2AsLSj4CNLTsKoFdl9zRG4c1U1/84DGwtJoozsTUFmb+jsAO0hHveVPTv/hBjbUXgewbkJonRaW8RlzvSzI9AekiKUt9buI6G5VxZx+VtJI8beGDd5C5YGFHlTp6aAB8I5bULBk/DsynnWQLWiOPVyW6HwRgpezS6E3eO5EObgbFQPhFTcrXP9Rp1vavLHEnwHasYc+58rzwjni21+cyaGwrRg3iQI9oO1SxJdSyLe5mcSpw87eQWXJYb0hNzuKFkODbZT4nPIXxFwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRxNpXTHflpYTvBlYvAX0bIeEjVwlMvwP3DJmFfoDzE=;
 b=Si7M2nf3ld+B5NJxb44B/mRGkbFDLiIvf6NMPuP5tCkjnJjM7DDo2KY0BrHWdTJpuf7XGqsHPtb1lpkNtRgennJUNf6Qf30X3D8R3kPJR0+kzoWpFvD8gCAJffqH3yyGzx/qOgttWy9RE0ZoXWXd/klwOUiSbZK6x3QLspfif6Q=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB3846.namprd04.prod.outlook.com (52.135.214.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Thu, 18 Jul 2019 07:13:57 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 07:13:57 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Keith Busch
 <keith.busch@gmail.com>
Subject: Re: Duplicate tag error with 5.2
Thread-Topic: Duplicate tag error with 5.2
Thread-Index: AQHVPQGtycP5nx5l902GqwDALRljIw==
Date: Thu, 18 Jul 2019 07:13:57 +0000
Message-ID: <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 084dc193-b92d-45b1-37cc-08d70b4f8004
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3846; 
x-ms-traffictypediagnostic: BYAPR04MB3846:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB384600E0590B9722FF19ABBFE7C80@BYAPR04MB3846.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(366004)(376002)(396003)(199004)(189003)(51444003)(54094003)(25786009)(6246003)(478600001)(966005)(68736007)(305945005)(7736002)(33656002)(74316002)(14454004)(4326008)(53546011)(6506007)(186003)(26005)(102836004)(256004)(486006)(476003)(446003)(2906002)(7696005)(76176011)(9686003)(6306002)(55016002)(66066001)(53936002)(6436002)(3846002)(6116002)(52536014)(76116006)(91956017)(8936002)(110136005)(99286004)(66476007)(66556008)(66946007)(66446008)(8676002)(64756008)(86362001)(5660300002)(316002)(71200400001)(71190400001)(229853002)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3846;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WxJmi2kqJFMqkIbyIxaH9mUbUXN84rcWS5NvMxvbe3FKecaTxD+Rqu0f28MZSoVUQlwXntH/5unQfp8R3AgY0MGkt0wqKE4cHmLfRXeWYhYQeXrWinqLUnjVzzRvvxgux13nz13xOpAllaeaOkKx3EVPFGlWzLpGcRVI/NoVmV1IgG/+u1TxEv+Eu5X3QCcGrj5LylUaOPV85XtK556g/8YOybseWF/kAoTGdggyIZfUYDMaUda14RXpv7iQSh742eL7MX8QeY0Q3zbw9cEmesxoBFYkMhOknCFwRAizBvowQXuPErsFEtdjCmgbUTLNN0KlBn/OycqT+AYXWTys4qmi6ZXNrhwNMv0Wqxaio66EM00hsTEWT25yoTfgF2mPH80GXCkTK+9tIxbNgpsx88Tf9gF4uU+npy/1dcj+Iws=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 084dc193-b92d-45b1-37cc-08d70b4f8004
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 07:13:57.2937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_001402_980149_9A857CE4 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019/07/18 15:01, Benjamin Herrenschmidt wrote:
> On Thu, 2019-07-18 at 15:27 +1000, Benjamin Herrenschmidt wrote:
>>
>> Actually the original printk's ignored the qid. I have a theory, trying
>> to test it now.
>>
>> The problem tends to happens around when smartd starts. I wonder if the
>> Apple drive is assuming a unique tag set accross both IO and admin
>> queue...
>>
>> I'll do more digging.
> 
> Ok. I think that's it.
> 
> I reduced the IO queue to 4 entries (3 usable) and the admin queue to 6
> (4 usable), and added printk's of submitted and completed tags.
> 
> I can trigger the problem easily now running smartctl -c /dev/nvme0n1
> and doing a bit of IOs. It seems to happen when the IO and Admin queue
> use the same tag.

So isn't it that you are getting a completion cqe for an admin queue command in
an IO completion queue ? Or the reverse ? Given how weird this NVMe device seems
to be, it may be a possibility. In addition to the command ID (tag), if you
print the cqe queue ID (le16_to_cpu(cqe->sq_id)), what do you see ?

> I verified after the crash, going to MacOS and getting the log from the
> T2 chip, that the tag it complains about *is* the one that we happened
> to have used accross both queues at the point where it dies.
> 
> Now, I am not that familiar with the tag management/allocation code,
> how hard would it be to split the tags accross the queues ? I suppose I
> could easily add a quirk to do +32 to the tags used on the IO queue...

The admin queue has its own tagset (nvme_dev->admin_tagset), separate from IO
queues (nvme_dev->tagset). So I do not see how this would solve the problem.

> (Provided they support arbitrary sized tags up to 16 bits).
> 
> Cheers,
> Ben.
> 
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
