Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4A32593
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 00:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BCkfWfJEcj3tn4jCW1jNkVfxKsTYZEoAWFs6B6KTQxk=; b=sczVyIEZyy9Szo
	uCtF/R1/rwA00DnG1evG7A6LZok0zhUnhwDtWJtw4KF8JqsmGT3cJ6MraeWFVOvoVvtcBukc0VPQc
	ePstnnmSt94ZgyTZEO2iSa62gYVeecNoCeLfvGYCekevtFWACE4LQr31y4nOouBJ0CCztG3frnCQQ
	+O8HWnkvjSAKDzOcfcUxHNMbqtLlFbige9jqDwr1c2Kqx6NB4Zx00co3YMcvjlFm++qY2uQmygfAz
	zU2OF21FHvpHtAy3t6D10xmVd5jQRjie1M685kiX+w6pqYrERkWeY0hh6ay2jwHpffVHXLiqzI9fJ
	W0TAEVTzr/8qV8iOVPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZPh-0007Ia-MY; Sun, 02 Jun 2019 22:57:17 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZPc-0007Hx-56
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 22:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559516233; x=1591052233;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=SedZaaxngoESeYneQWMGfpl0VvRGZQZ4SvzW010NBuk=;
 b=iYdIm5oXs1jpr4yi44oRbzbG8rUjqz6Bn20a7TdIYlWIqryedbFOwHhA
 hR5fARJYYmGq6GEtKoJ0FGM72CwElh918BMRpz/XOTcWcMpOyxU6MJfIR
 Q9x8ItVNvJ3JQOSTALDyMwrEvOpRjo/lOiHpejgA7ka968fn4JeDtLh2u
 WyGvt1K2dLoyYzEzDsmAlKfGwzHUBJqEyyJ2/fE1T9k/2iGmpS34AxcW8
 4nq121sYEu5UulIGeCsPDG+pE6Ma8B6wJMU6G8wONKoFOAxV2DLk3HpdR
 ayq3yYRU7Qa41Pmc3t7FRyCJvF5SfnQLci3XNRCduiA1UnIBk7FIHFZ3v A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="114564606"
Received: from mail-bn3nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.51])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 06:57:11 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7i4W3fd9jcfZzoL6ZqnyhLKZyEX1vNBdJGmfHKlUsUs=;
 b=gqcdzlLClQdtHk4J6WhLtZs8UFQauqaqOgQHQS9CBB+sZtiwi7kDMug3OZsaTlcFYdHH98Efe88GH06Hn0tO5iMhmuiTI4D0ES+7UG3sEBg6MSEXWRVhNImPGa2akKDcT347kbgDyJs7OWoGnUEwGPX8vXecOu8tOaV14Vf+Q/Q=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5656.namprd04.prod.outlook.com (20.179.56.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.16; Sun, 2 Jun 2019 22:57:08 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 22:57:08 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: fix data_len to 0 for bdev-backed write_zeroes
Thread-Topic: [PATCH] nvmet: fix data_len to 0 for bdev-backed write_zeroes
Thread-Index: AQHVGPVqe31JCxIvf0GtCuPTjNN2Qw==
Date: Sun, 2 Jun 2019 22:57:08 +0000
Message-ID: <BYAPR04MB57498FFBBE30504483A61590861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190602034339.11246-1-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0486fbf9-adfc-4569-de31-08d6e7ada3d7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5656; 
x-ms-traffictypediagnostic: BYAPR04MB5656:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5656EC5E8CF7226AEBFAADB1861B0@BYAPR04MB5656.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(39860400002)(376002)(366004)(346002)(51914003)(199004)(189003)(81166006)(81156014)(256004)(14444005)(8936002)(25786009)(5660300002)(305945005)(7736002)(4326008)(8676002)(76116006)(6436002)(478600001)(476003)(2501003)(54906003)(73956011)(66556008)(229853002)(486006)(66476007)(33656002)(66946007)(66446008)(64756008)(72206003)(446003)(110136005)(14454004)(53936002)(55016002)(316002)(186003)(7696005)(99286004)(26005)(68736007)(76176011)(52536014)(6246003)(2906002)(86362001)(3846002)(6116002)(74316002)(102836004)(53546011)(6506007)(9686003)(71190400001)(66066001)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5656;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LLCb7R9aWnnRzEIEp99HaCZVzu8VgZojLRDsau0dPjvwuK85E0EP8oEdgZPlc8Q5+EUEZ5N9Cp4S2sMNPZGZsH52UteeMaggGW6FRDa8AI8CJcK0HJ6fgOhBdB5yu+gkXs+wQcfOX0iJn8dKyOrimQvPYaFNjJg+63nmR2cBj7IO7MURqiXM/FQD6o6bjknTf6WvokR1E/CTrqREqD+YuIzWfnfBS5pmqhI2dNChD4AN8iiqJq0wbkuxiNL67F6n1Lg1rkc+iCEDcmyEHZKU5az4H9X/xjRWTZvDQfN1FpMeUm+U+K5xSJILcVnBxIA+8b4F0u48tTnQP+TrrN6LaLmu1J6p+pSIlAf1H3qdSwDNourp1inFjrV5PxpqoH2saNYay6ICP2E4GgqSBfihuMiZ1u3P0fmxL79kPuiuFS8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0486fbf9-adfc-4569-de31-08d6e7ada3d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 22:57:08.2676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_155712_316072_DDD47756 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks for the fix.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 6/1/19 8:44 PM, Minwoo Im wrote:
> The WRITE ZEROES command has no data transfer so that we need to
> initialize the struct (nvmet_req *req)->data_len to 0x0.  While
> (nvmet_req *req)->transfer_len is initialized in nvmet_req_init(),
> data_len will be initialized by nowhere which might cause the failure
> with status code NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR randomly.  It's
> because nvmet_req_execute() checks like:
>
> 	if (unlikely(req->data_len != req->transfer_len)) {
> 		req->error_loc = offsetof(struct nvme_common_command, dptr);
> 		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
> 	} else
> 		req->execute(req);
>
> This patch fixes req->data_len not to be a randomly assigned by
> initializing it to 0x0 when preparing the command in
> nvmet_bdev_parse_io_cmd().
>
> nvmet_file_parse_io_cmd() which is for file-backed I/O has already
> initialized the data_len field to 0x0, though.
>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  drivers/nvme/target/io-cmd-bdev.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
> index 3efc52f9c309..7a1cf6437a6a 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -293,6 +293,7 @@ u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req)
>  		return 0;
>  	case nvme_cmd_write_zeroes:
>  		req->execute = nvmet_bdev_execute_write_zeroes;
> +		req->data_len = 0;
>  		return 0;
>  	default:
>  		pr_err("unhandled cmd %d on qid %d\n", cmd->common.opcode,



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
