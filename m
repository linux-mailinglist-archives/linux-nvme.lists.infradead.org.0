Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF315307
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 19:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=30u2fS4eak966udSJMdkatI7NGBGcXuUodrq7UCOeLs=; b=QfDRQaHZSe4t1d
	BlwvMgL+XuRF66Cgr+RVR2BMzJST6A67AUIqtdbyNrHSwY0pdlmIEEbPidz/suZ5GuotbSh9DNDKa
	aMX5KBvRROKFZ+Hi+A4FJJFvjLx0+NoCeE50ZMvlDdGhqiDU4kfjEtLbK5GoiYrQq3hx2/g5YHgBF
	gT540gfrDRTfOvhIdbDjfgZ+0Qj5/xi9HXPkZ4W9tLxjBTUNPkelIxpUVcIWJ7NwNuukKsgGK97aU
	jDreMEP4XWs3Pm+KmefoeatWAOguW5m1xhBV2Jrow5AxPL48GrXnDFtM3FCFB4MD3LwNrBgnH/Nrh
	xqvXhc0mYs0Kkxx1Qe1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhiJ-0006ZQ-SV; Mon, 06 May 2019 17:47:43 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhiE-0006Yq-CU
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 17:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557164859; x=1588700859;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=L4avvjgBVpOnX3mqCUD9i++5DXwh0cv767RyuurzlQw=;
 b=i5iXkw3AI64qib0EZoW6/9l4mVHzA/SPgU9R0rOTG1Ukk1KarZvrz9AO
 9wHTgfy/qR2/0YyAtwt2XsEfi7DqR+8a6MXE4GSJv5p0KphQvK29jR5Ud
 Nv/kgJg+22ZJNKOSIzdCn+nx8GKqz86q0kpgzzkjmTu1VfdfDcPp6RpH9
 ZUm4A8FexbNcCVzd+Pz5mppRTjccQHv/Ay5NPA64QpXtpvFTyiQnBLAir
 vUG5tDTN436wVHXUzmEVs0NNCmemO9vmrDmAW6GduQVmvR/86S4E32796
 L4dSjjolJX4jd20bD4/xcVgrL5oNx1vCPuSJhYkNCDexd6Ke7HGFJeU8X w==;
X-IronPort-AV: E=Sophos;i="5.60,438,1549900800"; d="scan'208";a="112576429"
Received: from mail-dm3nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.53])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 01:47:36 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H4pGq1VEQ50QfqDDPynobxJyR1A3g0JCEsgwaGbO9/M=;
 b=HpCSaKOOSVnDYyqW1aAJvzGmQTfNqNh4N8Kh5zi2NLp2NJKt7rBkNN9S3bxFequ7nuQZ9KdpaQ5+FIbaavLnPZKLE9PkbDm7q3KX6OR834+f7zWo9fIQP7b73JwBZwh8errPVFcRADI215P93MlNyzDdmh8Fv4fKt3mMtIjVAbc=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4701.namprd04.prod.outlook.com (52.135.122.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 17:47:34 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 17:47:34 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Mon, 6 May 2019 17:47:34 +0000
Message-ID: <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f6c351d-8122-45a2-f92b-08d6d24aebce
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4701; 
x-ms-traffictypediagnostic: SN6PR04MB4701:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB47018998F54C47733E4EC84586300@SN6PR04MB4701.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(39860400002)(376002)(396003)(199004)(189003)(26005)(186003)(4326008)(25786009)(6246003)(74316002)(446003)(305945005)(7736002)(53936002)(5660300002)(66066001)(476003)(8936002)(8676002)(81156014)(81166006)(486006)(6436002)(316002)(72206003)(110136005)(102836004)(68736007)(229853002)(9686003)(86362001)(55016002)(54906003)(76176011)(73956011)(76116006)(91956017)(66946007)(66446008)(64756008)(66556008)(66476007)(7696005)(14454004)(6506007)(6116002)(3846002)(53546011)(52536014)(99286004)(33656002)(2906002)(478600001)(256004)(14444005)(71200400001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4701;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wo90gWaSl1vS3X6qmhSYK3vUVCM2A4nKrihObCaZJc1MlmhRZbxNfoBzPEmme3LAqxas5r1pPdL+7Z3UIX2s1byqJdpuVgcIEysL7C4fW5MuBorsCkk8dx/snT1eXZkSFsKpqYOJh+VAHJGWPnN/uENxRf5o46HAFVeZCR5VK90ZB35C76XYQkPDXBEpjqq3AGY59wtu8tnKJmwbvm3J4+bhg8ZDryX+f/KkQi0brbKPhkcWiiT1dlIrluH5o8/Xir+wXvjiyScEEr84bSdUz+3CqnvWCSVpEIKn3Fi5Uci5GG0zuX6OEddu8q/4aw44so/z7acyFbJBXZqkaQUywGa9qm2kaz0VzHCrl7jPaVZePliEwgrJOxYeZU81PWgZC/V5WftMTzSA9S//jE9MesQGpZ0dshOq+BkAFuAXlJQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f6c351d-8122-45a2-f92b-08d6d24aebce
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 17:47:34.3445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4701
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_104738_514006_655337AF 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/06/2019 09:54 AM, Minwoo Im wrote:
>> We need to get rid the string comparison as much as we can e.g.
>> in following output the nvme-cli output should not be compared
>> but the return value itself.
>>
>> -Discovery Log Number of Records 1, Generation counter 1
>> +Discovery Log Number of Records 1, Generation counter 2
>> =====Discovery Log Entry 0======
>> trtype: loop
>> adrfam: pci
>> subtype: nvme subsystem
>> -treq: not specified
>> +treq: not specified, sq flow control disable supported
>> portid: X
>> trsvcid:
>> subnqn: blktests-subsystem-1
>>
>> Reason :- we cannot rely on the output as it tends to change
>> with development which triggers fixes in blktests, unless
>> testcase is focused on entirely on examining the output of
>> the tool.
>
> Totally agree with you.  nvme-cli is going to keep updated and output
> format might be changed which may cause test failure in blktests.
>
> If Johannes who wrote these tests agrees to not check output result from
> nvme-cli, I'll get rid of them.
>
> By the way, Checking the return value of a program like nvme-cli might
> not be enough to figure out what happened because this test looks like
> wanted to check the output of discover get log page is exactly the same
> with what it wanted to be in case data size is greater than 4K.
>

I wasn't clear enough.

It doesn't check for the return value for now. What needs to happen is :-

1. Get rid of the variable strings which are not part of the discovery
    log page entries such as Generation counter.
2. Validate each log page entry content.
3. Check the return value.

We cannot *only* rely on the nvme-cli return value or on the output.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
