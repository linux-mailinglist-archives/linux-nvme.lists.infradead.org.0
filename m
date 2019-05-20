Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AD122981
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 02:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=adXcCSPKs9Nsoeup9QTSMbcLtvlRmX0mJ5lmE1LFwlw=; b=P/lj8lehC2DEuj
	w2FJv8DMzRe+ECW1bU4FqvVLi+E698XW8lXEZYGT5ABj0SKHNxDbkerUZmjfGUMIes5nm5BbuDq2d
	Kesxucl3mGB5/RnK/I5S5w9f3w3FdLfjG6JQxlbMp3Uxm0ny17yOSdsvIllXl3JnGAl/LUwnHPIlF
	Eq/JvJsRasByjQqVt7Tc+zNoA8UGm2qEetxmXZzzMrhahlgrPfjiJQ0G0BlqejRPa+zvFIb6R5kOY
	dk0FCeajaNhgO7IamNiGtu27n4mu9lBcblNNl8dQut3Ju8YFYJy9t1sZHiQhJjdy93Zy9vH04OMZ6
	lsvqPYaUbLpPKkQydRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSW33-0006xW-RJ; Mon, 20 May 2019 00:21:01 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSW2x-0006wW-Q8
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 00:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558311698; x=1589847698;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=HSPEdzbH2p1/kJMR17ODs84RAxdnzhw3nxyDQVwbNfs=;
 b=VaTcFOZgY0GO2Af96OS6IaOlpNjWywlwCbyyLStE1jVAWaFuLdqu2LyI
 s0LPrmidccSNDXl/H/etmSWuB2uP6wT/eKZD8VmnnWx8mL/DIZVhKZ1qz
 47SAHL7qPqNGaFx6V4GDBOMYuqGN5RsRcdcXd4pg4PR2/NWkDFHDVakST
 bZWC25i/jJGTZeAJa2kdGsmW+xKkAiFFnlnIlsCvpz5R1CTcNoQLZRlOO
 oNbwVIDyj/YAHr487ZK5zQRe2o+WqabQmOxv0HuaL550XADH6T6n/jipY
 wAyf9Q0ZMc//qaz+/5SwtjsT1uS3zp7ZRgAgZNyum7V/zSibQb4X51bsk g==;
X-IronPort-AV: E=Sophos;i="5.60,489,1549900800"; d="scan'208";a="208071788"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 08:21:29 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NeQlvdlpmPOeS9iZ5+Yg+kBS4D7yWh8nOaoKEpyA4E4=;
 b=jEgv92cNohQR8ILyZhVXyY3fir8ughAwXI8Q7zHtutVW750Ox3Oyd6/ST9t0Qpy/7/F5ZqSdlsHGwOWADqL1UIPrqeMciDe5v81lK7wAAN1cgFPoJ3/z4wL32EFhZF71Ezl/MzpJVFaPJoz1/52RUWqnMH9eeuuqvugyqVA5ON4=
Received: from BN8PR04MB5747.namprd04.prod.outlook.com (20.179.74.153) by
 BN8PR04MB5988.namprd04.prod.outlook.com (20.178.214.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Mon, 20 May 2019 00:20:46 +0000
Received: from BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956]) by BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 00:20:46 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme-cli: close fd before return
Thread-Topic: [PATCH] nvme-cli: close fd before return
Thread-Index: AQHVDmxB/sHGndfBjk6f7qvAb2Tu+A==
Date: Mon, 20 May 2019 00:20:46 +0000
Message-ID: <BN8PR04MB57474B1D9FD8DC489487336986060@BN8PR04MB5747.namprd04.prod.outlook.com>
References: <20190519175642.31815-1-chaitanya.kulkarni@wdc.com>
 <20190519184553.GC10876@minwooim-desktop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0abf79b2-41ea-4f72-88bc-08d6dcb90158
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BN8PR04MB5988; 
x-ms-traffictypediagnostic: BN8PR04MB5988:
x-ms-exchange-purlcount: 3
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BN8PR04MB5988EDD1F75DF80761908EB186060@BN8PR04MB5988.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(486006)(68736007)(6116002)(66066001)(3846002)(25786009)(256004)(14444005)(7736002)(4326008)(53936002)(6246003)(316002)(446003)(476003)(33656002)(74316002)(6916009)(86362001)(478600001)(966005)(72206003)(2906002)(186003)(55016002)(14454004)(6306002)(9686003)(26005)(91956017)(76116006)(73956011)(6436002)(229853002)(52536014)(66946007)(66476007)(66556008)(64756008)(66446008)(8936002)(305945005)(7696005)(5660300002)(102836004)(99286004)(81166006)(76176011)(8676002)(81156014)(71200400001)(71190400001)(6506007)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR04MB5988;
 H:BN8PR04MB5747.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aIf5ynsBK8leuK97vQEOVXxf6fDZPBhrwu9C5T3GDugkVakqT87gdHcdqgXhkC7xphMwnnF/o8/zg3qRgTegUJqcbXAp4jCPHabR3wyoxshQRtj/6R09Ua+MFD4BZ3Jt68VhiQ7V4pnmCoiu8KEyQy1VgnNmSLpcL9JOxXhYXsEUMgFBso9oM/ou7Bwb6KaQYSR13arFkodJusMoc/d38cNfqXuD/nPmxIsRJa4/yck8Qm0ZbBvlYCGrmP9ztbV34kthm1CK88ZBCkdwU91mkLUKWB4BlZdUCjR3mHHwLLgo71Ka9evRJZZVsNq88kHzsd3awjj+AgOY39GdToUNu47PwCvBz4uAXLoIjRIQalFlwSPyrrWgjvevhNAcY9oyroQtLQNllBHaMJAVEK2Dz4nmoLlcbM4zNfRPNabw7vw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0abf79b2-41ea-4f72-88bc-08d6dcb90158
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 00:20:46.7064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_172055_957999_A0187479 
X-CRM114-Status: GOOD (  14.31  )
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This only covers the code path for nvme commands failure and not the 
errno codes ans thi ps mainly to make all the nvme error and return 
codes consistent.

On 5/19/19 11:46 AM, Minwoo Im wrote:
> This kind of patches are already in Github PR:
>    https://github.com/linux-nvme/nvme-cli/pull/490
> 
>> @@ -1216,7 +1216,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>>   				fprintf(stderr, "identify failed\n");
>>   				show_nvme_status(err);
>>   			}
>> -			return err;
>> +			goto close_fd;
>>   		}
>>   		for (i = 0; i < 16; ++i) {
>>   			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0) {
>> @@ -1245,6 +1245,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>>   	else
>>   		perror("create namespace");
>>   
>> + close_fd:
>>   	close(fd);
>>   
>>   	return err;
> 
> If this patch wants to free the leaked file descriptor in case of
> errors, it needs to cover more parts than it shows above.
> You can see the patch for the create_ns() from:
>    https://github.com/linux-nvme/nvme-cli/pull/490/commits/b0c8a309266c2daf6ebadf9ab14884c6954765a1
> 
>> @@ -3198,7 +3199,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>>   				fprintf(stderr, "identify failed\n");
>>   				show_nvme_status(err);
>>   			}
>> -			return err;
>> +			goto close_fd;
>>   		}
>>   		prev_lbaf = ns.flbas & 0xf;
> 
> It also needs to be coverted with more parts to close the leaked file
> descriptor.
> You can see the patch for the format() from:
>    https://github.com/linux-nvme/nvme-cli/pull/490/commits/e3c487c6d9c145ba0b90d4ef227510b4faa33e98
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
