Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB802325A0
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=q8BEFKD0Mpo3/YcgxLMclUBv4PhU6kN2M+m29xvwITE=; b=dEraNv8DfzOv75
	8zT5h9KR9eZ5Ew0ysLowaO50RaBnqkG1daZ91EcwQz1/Xyj+hhrLmUU2HI2oobQ+jlELMjIBf26cl
	07tFEFPuj5GQem1nwxODpKvg9vY/xew6PWy1i71/MxMbDnjyIOPsR8Nz8hb4yIJwbH+M4ifmxK60u
	WIWkdl+rbOeiaD6VvtHNZmKeeJn5a5yAur4gwzWH/UawaeWuvxosaGwmfntg+FdxhULNJIeAievOD
	Sz69PzWQU3Y2LoIyLXj+b64Q1HpO6rdBCbFwFHhRwhHdb/i5qOKjiehm+4u2iH/6ufGtEnnV4P8ok
	Jlklx/BNsqbgkmViiaIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZo6-0007HY-IL; Sun, 02 Jun 2019 23:22:30 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZo1-0007B0-72
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:22:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559517745; x=1591053745;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Sfnpyf7Qs1ogjZHtoJLxUo3Um1U1yZuwiol7J8Rly9U=;
 b=VUDKg6H8DlTbUy62T2HPzr9eaxwv6Ki+aark81HpK9tsAoRCju0kLweQ
 U8V9tNfJA1OC/yRK9nSIJMnhYCvnKsI32allNOMUt2kvtzu+XYGetC6/j
 zwkkfpiHT7waYvakfUaJPM5iYXYuoQZnb/wdKeXOhhoKtscDASOy4PZni
 NJgPkeHoYCvxotWSotPsOMNH8GOr7UQuucsGw3KMpDKElUosTVorOWFt9
 MBD4psBF5kcMRraWxwMcveHnovEYBJYETmd8I8XufNPvFuVTBYG0Uhzg4
 4cMQoNf8PDnBa2Hkhx0vP6g3Hoq9usDATSE6udyiLvSjwa3t8ldQmDSaj A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="110879290"
Received: from mail-by2nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.59])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:22:23 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J3jKg4gZiS9tNQr7fyXAHvhfVMCfZHUQo1HylQ2xRXU=;
 b=pZId419tQhfetP5GdaMzdf3XHmLzW6aNLBLem1n8nPZx69K/GgXPS11BC91OarREBnW6dV/lIkDFDeLvGgr1lpQWAdRoFpom4n8F2z6c+RdD3m7Na5zaEO+InTQPb3FUC1y2c4leyER30uyUGTYTOaYwGajAm2Izd2tZ7RmlBes=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5544.namprd04.prod.outlook.com (20.178.232.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.16; Sun, 2 Jun 2019 23:22:21 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:22:21 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli: add default value for nsid of write-zeroes
Thread-Topic: [PATCH] nvme-cli: add default value for nsid of write-zeroes
Thread-Index: AQHVGEe4wPMBqCsNR0WEqvMzyO3kdg==
Date: Sun, 2 Jun 2019 23:22:21 +0000
Message-ID: <BYAPR04MB5749A32C48ADD555EF1B6A8C861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190601070003.20142-1-minwoo.im.dev@gmail.com>
 <bfac4b78-937c-42e8-1be1-f9a81ad22ab7@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5b000f4-67d1-4328-a61e-08d6e7b12996
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5544; 
x-ms-traffictypediagnostic: BYAPR04MB5544:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB55446602F0EF407C16461551861B0@BYAPR04MB5544.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(366004)(346002)(39840400004)(189003)(199004)(55016002)(9686003)(102836004)(74316002)(76176011)(6246003)(478600001)(6306002)(54906003)(4326008)(4744005)(110136005)(53546011)(6506007)(8936002)(7696005)(33656002)(2906002)(81166006)(7736002)(305945005)(71200400001)(71190400001)(8676002)(86362001)(81156014)(14454004)(256004)(486006)(6116002)(476003)(52536014)(68736007)(2501003)(446003)(66066001)(229853002)(25786009)(6436002)(53936002)(99286004)(3846002)(66476007)(73956011)(66556008)(64756008)(66446008)(66946007)(26005)(186003)(316002)(5660300002)(966005)(72206003)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5544;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TXMA13MfmTOCQVj8p5PE5rd2SAhzL4jWav/gDFzURU/wSJWk4GMKf5nwdWrTpUScz1Ft5Z7+ouoVnJeYYRtbO7Tw78vTElBjLTY+UyMyrtNzdvrydcOdScj04g6+8TXWpzWen2HLsxBG7YQUInJzhrkvJqWlsd2TsUOa2O0XSSKc6BwE5xmsX1QipyXm/jeQBRzGOylBKeNvyDZjwZQARuPniZJJjw9jOfrWHG+wBBf1HZtgO5mG2qh47136yUF2UY1mK7NQPsPxfFE45garGqKismfMGGvGQlpp4S9H00N0u3SGZ3J8Fq+yoHNzxOROSUKB/jdtq64OpcwhLzrq2WUuxQQHi8sc6RYGxYRkZnxf0es6X5yvLS/r+jCobf0XRQR57tqkpvBpG4XV1MaENZSyyfjWL11GaTxZXZ8R/mM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b000f4-67d1-4328-a61e-08d6e7b12996
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:22:21.1251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5544
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_162225_382219_8E01CCFE 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/2/19 12:12 AM, Sagi Grimberg wrote:
>> diff --git a/nvme.c b/nvme.c
>> index 9819fcb..a7a96a1 100644
>> --- a/nvme.c
>> +++ b/nvme.c
>> @@ -3731,6 +3731,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>>   
>>   	struct config cfg = {
>>   		.start_block     = 0,
>> +		.namespace_id    = 0,
> This is implicitly set to 0. You should mention that you add this just
> for clarification, and its not fixing a bug.
Is this breaking any testcases or expected behavior ?
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
