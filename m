Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF036D82A
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xsuof2y3CnQcUGcmLf8tI+U6EbV80oDCzRYPWoOteCU=; b=RvzwDP07foxyEM
	5lgcsF4ZY7lpMile3R6sQEzUS7a7BcdVXa2XWfl7hcXVDQpu2JcyGuBCPJ7W6E3CWWMuSK4WMw4GD
	kA5Qqrf2QPV8gVmul2jt6OI/bwgaS1b6U1hRX6Guh2bHZB49EslHOK8ffrspO4djZZNr99w7CWaU5
	ggANRbjJZK5ulMHsaEnHhEg3b/YvIC0EaDRhCajjrC6z+WetH3u3R7UkLGrI75ixkbFdizrfMqBW2
	8DN1nm6MSynJd51K6pMA1fcH2l4KS1abKBFlaTyYIDeJ03VoUQe9fmnhurATGOyE308Wlc/1dApHo
	FDsjldI3SjZqULZsP3dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHP4-0006h0-Du; Fri, 19 Jul 2019 01:09:42 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHOw-0006gN-Cs
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563498574; x=1595034574;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=sKY4EZFfqeviP00OyMKUTBQeDIVeAwfOSHRyOwjXjDo=;
 b=Wh2m0mZT82SIOlVo8q9r7PEOkPmgRNuCYhzpOG3t9CwzokwmTeI0Y771
 SSUi8YpA3jPYogUpmf72TsU3oS6Rlr6ZSnALCr0nk7Qhk2+dO6RbL/KWg
 Kj2893Df6k3niP5mOiFE7ZlCAFTOyEDgq7+3xA4wPQ2dPaerh/MhGQBzb
 AG2nJKVTGDdgytkeu6f+v0l5ihUGlYQlI5dxwfg6ststqtmnq3i/jsWhA
 PEEJh9ieg1uGJL0X5Al+HXQgEW12TYWOpt1gjRwTTsK4H9Cq83bNjdFZ7
 9Bq6kb8rECVbtdQKj7NHY1vW4Oox2u9NJs/XO4XG2s3XPSl63qTZCiIDN w==;
IronPort-SDR: JvPUVVhY1manyf7DqQODN2F3hLF1185dq66lfaXGbJF9luxUOdYNLB38ncsher19So1v7PwRgo
 x85siBVqogQgRLOfXM0fcIZDoQ73tLV/7s87xElKleXeYSjrW6Ai2RS7ykSjTpsBUqFrPev2Yg
 Fp+TTAEUpj5Ag02cfSvHozaJtDVaZSUeaZXx3Ad3/Mgl+ge3/V7qR7A9Nohoo75pcZbISDIYuX
 gv+kArNUEToJAqjrKf5oLa9j8wKy40JfQk3NtA2vUKe09ExzoNK8dCnDerk0LUNxj2XTvVuPPZ
 1B8=
X-IronPort-AV: E=Sophos;i="5.64,280,1559491200"; d="scan'208";a="118225141"
Received: from mail-sn1nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.54])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jul 2019 09:09:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JvCKRtV8js7Q0egVcf3+UUroI2AnQVUv0pdrGa8dUp1M5cQCUDuxaEgn9T/ByoNMx5UzyiGX4PjRmy969lrJpiKj5F/jfWDtXHfvJvYvSgeyIopQBrILYG72zxcoV4qBiehT5CBxZZ1mZBsWnVvPRGzybf4t6OfHQxP2k+hKL+EABHyVWNbS6vs3fUOQ1MimE45UDvDf5xmTF1yT3JlAxQIRh+LrD0kHxcBVjeMMVUxyDd5UgMrlVUGdi+nR3s3hu+EXO1Zxu6JtnrKUM4+DN9naWR0HamDO3ZbrKTCOR8EjJAAfQVh6X37/BLqjtzyRhtZP88AM7TZ7uIoyiop6ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKY4EZFfqeviP00OyMKUTBQeDIVeAwfOSHRyOwjXjDo=;
 b=WQBM+5f0Zk3ZUzFBYPCxdvCFEmfcHae/Jpc3DDtb9baAJQf4isnQUvVDAIfFHkySOxYXFEcOGc9DeJm9b43+i5IO4ZeLrYnybtSpE4n8+Wtd65O+11At1NPxq5ztKkrBdqCyfM5BRcpSrWSmab+4L27ATLlbdNRVCKRjnwxD/1NawK2pMR16yU+QeGZfwPZtVKNnW/8UCuizOgoqQpeldDUzlUYdjSTK0wsDkS61d3gSWPxrdakcST+YB8ZvywwMYxLeIbAIUp4NoSMTdwELcaGIDpUpEWTukKiWF+4Rx2ESYpJBaiQytm6qyxVCCCLZiTcXL0JGXr7VcxUQB0WxqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKY4EZFfqeviP00OyMKUTBQeDIVeAwfOSHRyOwjXjDo=;
 b=vxJ1P/QbMx+MQoPrBLhVLq2q0Z1h3qUJTHliEWewooW8cofCi5j+bD83aKnNoGDvhSGqftY+/gytMLPTQuNtU0gYPEnD0THcNmT69ttoWC4NlKXg/kNQtCjVxexgPA1WNh5UoJhkG2FXq1lDQgO6G5Jo5iOuOFAlZ5F7gcpTOkk=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB4488.namprd04.prod.outlook.com (52.135.237.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.14; Fri, 19 Jul 2019 01:09:28 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 01:09:28 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Keith Busch
 <keith.busch@gmail.com>
Subject: Re: Duplicate tag error with 5.2
Thread-Topic: Duplicate tag error with 5.2
Thread-Index: AQHVPQGtycP5nx5l902GqwDALRljIw==
Date: Fri, 19 Jul 2019 01:09:28 +0000
Message-ID: <BYAPR04MB58167459AA9933C66694C2D2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
 <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <50c35ab3db7745875476c0966bf191ab42de4dd1.camel@kernel.crashing.org>
 <BYAPR04MB58163BC85D7A5351BC053D43E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <5f29b93ba4bf2f7bd8b0a77bc5f82f4cbb9e8f98.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ff07f8d-a06f-4811-88ee-08d70be5bf81
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4488; 
x-ms-traffictypediagnostic: BYAPR04MB4488:
x-microsoft-antispam-prvs: <BYAPR04MB44887475AE7F0D766BB22811E7CB0@BYAPR04MB4488.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(199004)(189003)(51444003)(14454004)(229853002)(256004)(66556008)(66476007)(64756008)(110136005)(52536014)(7736002)(9686003)(66946007)(66446008)(99286004)(486006)(71190400001)(71200400001)(91956017)(316002)(76116006)(86362001)(5660300002)(66066001)(26005)(6436002)(25786009)(186003)(102836004)(68736007)(4326008)(76176011)(478600001)(7696005)(3846002)(2906002)(53546011)(6506007)(53936002)(305945005)(33656002)(6116002)(55016002)(8936002)(446003)(8676002)(81166006)(81156014)(476003)(74316002)(6246003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4488;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5ZzcsegLRAenBZ2DUWplSH8KhqjPHv1TqGYWKnT83QQuCVQs2DmMja8wzmRkT9w8l+IFH3/icQS3SXuQJZMWTTcWES4dZVchJ1zY6CT8/lTWmesI2RyZN0gTFW7VgSeWOEXlnQmdmVvq7nA2mv52b9h1gEsCuBWS0zq75gGk5/50TeDj2ZQDCEuYThDzeqYIgtGikI6PyjmGWLpoUjFWY19x/fF8yAcd+fHiMfglmzcHPpkXTtfvJnQhSV/yhalAoDpg/8rPqlTJgeZhA0UW3HiTisGlBzMUKR5hjD1b2PP2gJHdvaKpwojjMe4DgW44mSETMcpWRATdDTBYCRbCdY7im08dSQovH3II/gu+Yz2K/D+dYiK8ZJ5QxVWZCts/S98De23S4uqzlKGYg94U7eTI9s9uePS9lRWiZxcSqaY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ff07f8d-a06f-4811-88ee-08d70be5bf81
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 01:09:28.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_180934_561528_538E4A6B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2019/07/19 10:00, Benjamin Herrenschmidt wrote:
> On Fri, 2019-07-19 at 00:53 +0000, Damien Le Moal wrote:
>>
>> If the admin req completion comes in the wrong queue, then the admin queue
>> completion queue should not be changing and not need any head/doorbell tweaks.
>> It simply stays as is. Since I think that nvme_handle_cqe is used for all
>> commands regardless of submission type (normal, polled, sync, etc), this should
>> work in all cases. Not sure at all for all this. Some side effects are
>> definitely possible. But worth a try I think.
> 
> I've printed the queue I get completions from and they arrive in the
> right queues. So that doesn't seem to be the issue.

OK... But then how is it possible to get a bad tag error ? if the commands are
issued and completes in the correct queues, the tagsets are independent and
should not clash in any way. This is really weird.

> Apple's implementation is a SW one running on the T2 chip, I suspect
> it's just completely broken and they don't care because they have their
> own driver.

Got it, but if the prints show correct cqueues, Linux normal driver should
work... Or is it a problem with a buggy T2 controller implementation resulting
in some completions being queued twice ? Really weird HW :)

> 
> I'll clean up my latest fix, test more and send it. It applies on top
> of the 3 patches I sent earlier.
> 
> Cheers,
> Ben.
> 
> 
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
