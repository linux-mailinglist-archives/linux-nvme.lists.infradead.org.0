Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF26291628
	for <lists+linux-nvme@lfdr.de>; Sun, 18 Aug 2019 12:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b4PsHxkPlzgNBVcl1r+0CA6HBtWFlG5GgFa+iGvZfwU=; b=Nt+TIzqLI5vlwhJDjiLq4qPYo
	+DftrFHmuXNcOtromkryAmwmVvR4Bzxyz4PdoG+8N2swzk3ZD1pO5EsaTTgm/3FT13EleoFoek3i1
	UZ1MWxuFbzm9tIGH6yZuTmMdjf+nY2DT3sdx3+8oHBj0vlXL+TMq7FxxoCjhLtz7x4MApZG0XzJ/b
	QEyymes+jx9RNbeGhANhvrIxo8N7iMKVA83XzaVGSizVwB2VsLeuiednPTi5o6l+sl+pAz1lDt5Fr
	bhKB78TVzUgvRDGGJ7A/2jVIIN/sWhPnYqqMsk39V5Lmm0gpby5Ozgwkl6IwxVopYZKLrgifPbQFa
	p6Miry+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzIVj-0004Ov-FJ; Sun, 18 Aug 2019 10:34:07 +0000
Received: from mail-eopbgr20065.outbound.protection.outlook.com ([40.107.2.65]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzIVe-0004Nz-JP
 for linux-nvme@lists.infradead.org; Sun, 18 Aug 2019 10:34:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddDdU5kvvjVvq3515iEQ1RmaYPSw7rFBr1O2F7vRyfpnWz8AAR5uwHkoSPGnXvixDAYf/hqsu8vvb5eAC1kzJ4UQb8xPkZrkZBO7tS1ojQZuGo+RSlKa4lRaH3EJlOgqRNDrficaThxXHM3PJ9jsLVqukJFQ2kmkOHTc2BeHJplYOU7wxsARDkMxUEueB1IHBCNa4g5Tcela9ypG9NF4R250uUJ5tRllXi4+z1uuLhGpIPe3nStt5HK3r1/iFXBGqorQzJTvuFZ32KrYpW68yXDBV50XaOkuOwt+zKeBELzLRhYAheLR9oHpbOEeIuqisIcy34c5vDAsv1f+17rqqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ORcDAq1ZDEZc8cW3WCVLefZCyaPU8O6Jcx9HxTQomY=;
 b=XnHD15stmFo6vZtaDlmM8ar3czc+SoTodHoWJWmzxqrs6zCKapCZ6Rwt1S/9bBGcYuo6wrk0SlMvdROZ9XnmxohWsczmaxXfrA08kA+TWT6v6VdpxykbJtEd22n3qRE6HFXo0ShYoKI38P2LHcAFuKryLDko06UkktuHOY6XdMCNyM0SVjlaJo89R/6XJH5umXVNJ0ZEe6QZeadqHniwRr2+h7xH+q89wPnftPaRYWKB4ZbkO84VhTs/DDVl2TMyubvb8OigKlCaBL8xt2J1crbyLqlW3vqG0+g10RMX1sZbB9rfxb4vleSh1R4FteKe1K/6zYyuLZozFg+qS7Uyww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=raithlin.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ORcDAq1ZDEZc8cW3WCVLefZCyaPU8O6Jcx9HxTQomY=;
 b=YXlYJ1BkkBrx+mDdj6cpu9/HX9uL+FMzASlUNfb7pGz9OVt2mYCwE65+GA5OM8VdRVh+e8S6861xPBSOYqtveROutUHL/y/NsYu5mj1EN7Kug+UIMBlPeSkNmnMhOARRMabZOuWqy/+0fA1ztbGQGkJTmSmlIl4Zmr3Mjv6x0XU=
Received: from DB6PR0501CA0031.eurprd05.prod.outlook.com (2603:10a6:4:67::17)
 by VI1PR05MB3488.eurprd05.prod.outlook.com (2603:10a6:802:1e::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Sun, 18 Aug
 2019 10:33:56 +0000
Received: from DB5EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by DB6PR0501CA0031.outlook.office365.com
 (2603:10a6:4:67::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2178.16 via Frontend
 Transport; Sun, 18 Aug 2019 10:33:56 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT015.mail.protection.outlook.com (10.152.20.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Sun, 18 Aug 2019 10:33:55 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 18 Aug 2019 13:33:54
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 18 Aug 2019 13:33:54 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Sun, 18 Aug 2019 13:33:48
 +0300
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, <linux-block@vger.kernel.org>,
 <linux-fsdevel@vger.kernel.org>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
 <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
 <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
Date: Sun, 18 Aug 2019 13:33:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(2980300002)(189003)(199004)(2486003)(81156014)(23676004)(446003)(305945005)(7736002)(70586007)(8676002)(76176011)(106002)(53546011)(31696002)(8936002)(3846002)(26005)(16526019)(16576012)(478600001)(6306002)(65956001)(316002)(47776003)(70206006)(81166006)(336012)(110136005)(7416002)(476003)(126002)(58126008)(5660300002)(486006)(65826007)(966005)(186003)(14444005)(356004)(65806001)(11346002)(54906003)(230700001)(6246003)(2616005)(36756003)(64126003)(86362001)(2906002)(229853002)(31686004)(53936002)(50466002)(6116002)(2201001)(4326008)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3488; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce5ac34a-9bc2-41b6-ef74-08d723c7926c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB3488; 
X-MS-TrafficTypeDiagnostic: VI1PR05MB3488:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR05MB34883ED3B96C9ED217C4B7F8B6A90@VI1PR05MB3488.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 01334458E5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: c7QHZKZWgSFn7vpzdotCA7uqvz8akaZSvIG4ycVKxYc5iQzt7uCpiC4uvdAniT6tzk7IQYitaxCqMitKh2FzyCIErvc1eVPlwGI+SRhkm6DTSGuFlSGWkxNLx8Hwh0tDV0M+U1dScDdRK9EK2HDGBEIWJv63pZvTx8zsef1leKnl2+9QuW6Fp26NdsgNvaHNThR/GZYpNDsmd0eMD33wxsNNgbDKqdxpV9BZ/NHfXIY7izOs5KczxeDwlazFdD++3RGR1kadLgl/2JIiy1X9qiGShYPkSPhMfBcOstXrx5eTSOJ+4BXeVdw20PesTYcpS4OknNAYRglp79SPWSsbkTxz+xBtTVDBaAjJPiveAF7ZpV2wA3EG0Xsi8ip3daTxQDp7xXkxSzRdrq7vlo+Wj+phaxZ80i9dJt8dIr7FmjI=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2019 10:33:55.5709 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5ac34a-9bc2-41b6-ef74-08d723c7926c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_033402_704810_876F8D07 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>, Keith
 Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/15/2019 7:06 PM, Logan Gunthorpe wrote:
>
> On 2019-08-15 6:36 a.m., Max Gurtovoy wrote:
>> On 8/2/2019 2:45 AM, Logan Gunthorpe wrote:
>>> This patch rejects any new connection to the passthru-ctrl if this
>>> controller is already connected to a different host. At the time of
>>> allocating the controller we check if the subsys associated with
>>> the passthru ctrl is already connected to a host and reject it
>>> if the hostnqn differs.
>> This is a big limitation.
>>
>> Are we plan to enable many front-end ctrl's to connect to the single
>> back-end ctrl in the future ?
> Honestly, I don't know that it's really necessary, but the limitation
> was requested by Sagi the first time this patch-set was submitted[1]
> citing unspecified user troubles. If there's consensus to remove the
> restriction I certainly can.
>
> Logan
>
> [1] http://lists.infradead.org/pipermail/linux-nvme/2018-April/016588.html

I don't understand why we don't limit a regular ctrl to single access 
and we do it for the PT ctrl.

I guess the block layer helps to sync between multiple access in 
parallel but we can do it as well.

Also, let's say you limit the access to this subsystem to 1 user, the 
bdev is still accessibly for local user and also you can create a 
different subsystem that will use this device (PT and non-PT ctrl).

Sagi,

can you explain the trouble you meant and how this limitation solve it ?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
