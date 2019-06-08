Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68B43A186
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 21:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Q9nqMg0kNaHo/Wao3enb5GYA8t/5HPUEcHcEKQ8Bd50=; b=GpQGxuYdxzzC1W
	a91H3h4tIu2e4550beCb/bGaCtG+PYiAdlH7AAR3oz8SX95QAuaY9iEmsjnzKPxsC0docdnVmFg1/
	va77s4G409inhyrAGdMmnj4Jy33Sqm02A1Kbyr2DhIe6TuQmgi44dZ834w4QPKcGGm3qzF1YIa18s
	3FfjWEaIEmrgzY0xijjH+lr4l7fYX4iXg8PhOrsKs64dJcWS1oJdb2GYT6xoGZXH21kEyJetRWkPk
	FIqWx/WrtXHEbjVqiol1r2IMR9MfYVV3dJkZgR7E1K+rQHIV69OCH28TH9aGJVmmgHs/biu7kpIT1
	csRHjIYYY9TpUkRzgZFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZh95-0001Zt-3t; Sat, 08 Jun 2019 19:36:55 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZh8z-0001ZU-8f
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 19:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560022609; x=1591558609;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=foS1KKuOhJhZPTUqR+eVGa21JexS7ZKo+GCjYRK2D/g=;
 b=LodRlRFdimZitsLjMuazyn76Xa74E2l/MxLOSfR9sRH2MlC7K7y+W0LI
 R1u03qq/nec8D7e4CGT6+WGGFSJCwpJ3a7xpcgSuPihV43T2aQZ7rnZhS
 rGGOgXf4PxE2gxGlcyUYXDwWKT2hVFOoZg6G5fXA10POTazH4fsy8I4+L
 VGSHpjC3iZ/frU710W71QufshtCptHL6BqQhP5XrhKSTuHxoB1MqP7s52
 aNY5dD2h2bthEmyHKzO8L5Nu5mcyyeh7D/NiYeQI/NA1W1CNsDsKPtUxB
 wHP6q/PcMt/J06HyTqyQbzpQR4958DwQSqoEomoEwnD1iH9aLc8BhKYsa w==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="115046665"
Received: from mail-bn3nam01lp2053.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.53])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 03:36:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SO7m69f0ItayvHlNrCInbjA7b0AH9eNKiKCXdG2/Ywo=;
 b=eQHDEZ95i9U/EvWkpQT7Y6bHxtaKqD/R7DvKRlEbn7gvPy7wgCa0v1kDnQUPFv6J0R80oD7TYhzBUEpqniBitEOcDwqch693ZdRkd3MOUCQL1YFAvIGnNNEjW/D+MM1zhI5yQ2R9zY8cq1O9H0ztjTIxKgS5zp1I56Y7jly/VQk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5350.namprd04.prod.outlook.com (20.178.50.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Sat, 8 Jun 2019 19:36:43 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 19:36:43 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Thread-Topic: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Thread-Index: AQHVGuv2tmlqanNO0kCoAv+r+YkzCQ==
Date: Sat, 8 Jun 2019 19:36:42 +0000
Message-ID: <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53e1bbba-70d4-4ce9-793b-08d6ec48a2a9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5350; 
x-ms-traffictypediagnostic: BYAPR04MB5350:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB535008BFDFDE734BE432FF8F86110@BYAPR04MB5350.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(76176011)(26005)(186003)(71200400001)(7696005)(6506007)(53546011)(476003)(8676002)(81156014)(81166006)(102836004)(6116002)(71190400001)(3846002)(2906002)(6436002)(33656002)(7736002)(305945005)(66066001)(86362001)(74316002)(76116006)(68736007)(66556008)(66476007)(64756008)(478600001)(66446008)(5660300002)(25786009)(53936002)(55016002)(72206003)(73956011)(66946007)(54906003)(316002)(9686003)(14444005)(256004)(8936002)(52536014)(486006)(99286004)(4326008)(6246003)(14454004)(2501003)(229853002)(446003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5350;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RV34Tqbxud6k1ZiojkzLQQe9jeA3pvBRjZUwiD1q6EcYJJKHdbpBAtQuHHQy9tToOlZ10Y5bf459JClzFUAjVMZsz5wRacFY0WGuKLvSpVL3bKQIJeSpSv5Jty0k8FD4crPSAAZnxsCvjgovq/NLapVmU7mSYHrMx6RnJdu5v6QkRra+YRie9uXbIXgO7Dii6sHj9EiLppDKLIfWZVvkPrEtUqU1jKygHx9I79c5bJ+Kqrlmw3I+J/y+stygXtHX1EfFJVCSgWXzFmqOQak8JuUQlov/m2dWZsbONvWvz0VELdpPLZ9KXgQyIr3nRyYiTpdIMVPTank3DmAHVipuDQ6axtVsqX2x5/0QEATd2nXbR4xL3+U7bzL8tPMpOgpgFQ+wInR+vbuOKS/mZAcFNsdp5sLUxTN6G5O7qw43OHI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53e1bbba-70d4-4ce9-793b-08d6ec48a2a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 19:36:42.8401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_123649_435772_4A1DC99A 
X-CRM114-Status: GOOD (  17.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 06/04/2019 08:41 AM, Minwoo Im wrote:
> If discover has been failed due to a nvme status, it will be returned to
> main() with mapped value for fabrics get log page command.
>
> Now connect command related status cannot be added in this patch because
> kernel is not currently returning the nvme status, it's instead
> returning -EIO if fails.  errno for connect command can be added once
> kernel is ready to return the proper value for nvme status.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   fabrics.c | 19 +++++++++++++------
>   1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index 7be7f59..81c2d9d 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -35,6 +35,7 @@
>
>   #include "parser.h"
>   #include "nvme-ioctl.h"
> +#include "nvme-status.h"
>   #include "fabrics.h"
>
>   #include "nvme.h"
> @@ -295,7 +296,7 @@ enum {
>   };
>
>   static int nvmf_get_log_page_discovery(const char *dev_path,
> -		struct nvmf_disc_rsp_page_hdr **logp, int *numrec)
> +		struct nvmf_disc_rsp_page_hdr **logp, int *numrec, int *status)
>   {
>   	struct nvmf_disc_rsp_page_hdr *log;
>   	unsigned int hdr_size;
> @@ -400,6 +401,7 @@ out_free_log:
>   out_close:
>   	close(fd);
>   out:
> +	*status = nvme_status_to_errno(error, true);
>   	return error;
>   }
>
> @@ -849,6 +851,7 @@ static int do_discover(char *argstr, bool connect)
>   	struct nvmf_disc_rsp_page_hdr *log = NULL;
>   	char *dev_name;
>   	int instance, numrec = 0, ret, err;
> +	int status = 0;
>
>   	instance = add_ctrl(argstr);
>   	if (instance < 0)
> @@ -856,7 +859,7 @@ static int do_discover(char *argstr, bool connect)
>
>   	if (asprintf(&dev_name, "/dev/nvme%d", instance) < 0)
>   		return -errno;
> -	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
> +	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
>   	free(dev_name);
>   	err = remove_ctrl(instance);
>   	if (err)
> @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
>   	case DISC_GET_NUMRECS:
>   		fprintf(stderr,
>   			"Get number of discovery log entries failed.\n");
> +		ret = status;
>   		break;
>   	case DISC_GET_LOG:
>   		fprintf(stderr, "Get discovery log entries failed.\n");
> +		ret = status;
>   		break;
>   	case DISC_NO_LOG:
>   		fprintf(stdout, "No discovery log entries to fetch.\n");
> @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
>   	case DISC_NOT_EQUAL:
>   		fprintf(stderr,
>   		"Numrec values of last two get discovery log page not equal\n");
> +		ret = DISC_OK;
Can you please explain above assignment ?
>   		break;
>   	default:
>   		fprintf(stderr, "Get discovery log page failed: %d\n", ret);
> @@ -1000,7 +1006,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>   	}
>
>   out:
> -	return ret;
> +	return nvme_status_to_errno(ret, true);
>   }
>
>   int connect(const char *desc, int argc, char **argv)
> @@ -1047,8 +1053,9 @@ int connect(const char *desc, int argc, char **argv)
>   	instance = add_ctrl(argstr);
>   	if (instance < 0)
>   		ret = instance;
> +
>   out:
> -	return ret;
> +	return nvme_status_to_errno(ret, true);
>   }
>
>   static int scan_sys_nvme_filter(const struct dirent *d)
> @@ -1181,7 +1188,7 @@ int disconnect(const char *desc, int argc, char **argv)
>   	}
>
>   out:
> -	return ret;
> +	return nvme_status_to_errno(ret, true);
>   }
>
>   int disconnect_all(const char *desc, int argc, char **argv)
> @@ -1212,5 +1219,5 @@ int disconnect_all(const char *desc, int argc, char **argv)
>   		}
>   	}
>   out:
> -	return ret;
> +	return nvme_status_to_errno(ret, true);
>   }
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
