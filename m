Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CAD3259A
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=QeTo0KgT6C/NJ2+/R7eTCA+YhJOSpHdC/f1qKz/mXr8=; b=ZNsssjmAAA6aB0
	sP0+EWjJHLbt/vslQF9N8rjoMrdmcsyBBfLJ98HPOxO3VNoGr2gundoc7nSTz781kInLQQTViop+n
	eW2UN2bvc9fLemjS6vrZ7xXIgY7zzS3F3OIESFyHh/Yy8pUgskh8ypZkkHcIUeZuAG42GJprxg/m9
	phSlZysF0aaVWq1/gT8veWFwWbPtvlqNmiIjNBbRrUKmDuxrXKIiN7IOmthW8b3LO3+y6VrbUhP1Z
	eFVPldkMpIhPIKAcTg4DhEEm0wXqTK4NLL27VThxaPlLNcdzOt7lpfJ8FmD8Ol8KoQTrXqTQ+Tu9W
	DRwQJvpTaLOmB0f2TbRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZgI-00045Y-5I; Sun, 02 Jun 2019 23:14:26 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZg9-000456-WF
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559517257; x=1591053257;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=PU8Zkx1k39k5xhMKK+XPd9q46COJXL1IkTWIp1Y9Om4=;
 b=MRDd2KksdCsHfPXE9FLU8WHQkBYmPLaO/rWEb1bf+MGoif+o+OSJVD9j
 pceGD/bDmgm6tQwUSdYimH6bQAtOPP7O+cAPIcJ4uaFEee0f5dAOtUMnM
 dPN7KkWggIegPYAZJR85/cclgfNfh/E+S1D75B1cUiy+3iMMIKwP9U2yF
 MvJqrgUJgnKa8aIKkI+Wyd2WaKppMWjIVjRy1itHxnCa9agXW+gOdb/tB
 8+/3fkaIl58ahVV6s7PNbcfNSJdIcVrrmZQkhrO7X6ALDou/b9oevAcw7
 Z3UW4Zn1QSfeSuVoaLHU+cNGMf/NvBqlVmL/EAgJyNmZIs32VLtA1B+R/ Q==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="215885650"
Received: from mail-cys01nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.57])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:14:16 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/u+ubH8tTj1oBk902WrBH7inEcheRhMcjenAVfI7uMI=;
 b=0GNUvR2qMn/z073C4qc5HkEU0YSkW9/7gXgCQ1CYh/tkN1p3TUsQ/ZiGkp/ndaDsZfa1zBvO3oA6t7Qr2iuPdxOIXCTCzv6zbCfPHO6U4SXyWXt8EWZDtgfbVJC3JB6JE9hZDoISr00ZlL7bS0ePrH6Qj+kcq64sfFDfE+A7Vfw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4182.namprd04.prod.outlook.com (20.176.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 23:14:15 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:14:15 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 5/6] nvme: Return errno mapped for nvme error status
Thread-Topic: [PATCH V5 5/6] nvme: Return errno mapped for nvme error status
Thread-Index: AQHVEXf+eLlG+OrIikyM/zPmP5Pp7Q==
Date: Sun, 2 Jun 2019 23:14:14 +0000
Message-ID: <BYAPR04MB5749F7E143FE5FD022FEBAF9861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-6-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e899c6f-1f82-4149-5913-08d6e7b007ca
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4182; 
x-ms-traffictypediagnostic: BYAPR04MB4182:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4182310AEE4A856ABF5A2EAC861B0@BYAPR04MB4182.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(189003)(2501003)(14444005)(5024004)(71190400001)(71200400001)(14454004)(486006)(72206003)(478600001)(256004)(110136005)(316002)(476003)(30864003)(229853002)(9686003)(55016002)(53936002)(53946003)(6436002)(446003)(76116006)(3846002)(8936002)(5660300002)(6116002)(2906002)(66946007)(73956011)(66476007)(66556008)(66446008)(52536014)(33656002)(8676002)(81166006)(81156014)(305945005)(74316002)(7736002)(64756008)(26005)(6246003)(186003)(4326008)(99286004)(66066001)(25786009)(68736007)(102836004)(7696005)(86362001)(6506007)(53546011)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4182;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q0CPhyOaCxXxJUB/4QGdfAmMq4/gk+hHSW8CT0Ramw2YMcaw/sI0/jvig3wBMddNP4nSuo8UNo6t9Vbxs2f6/EMwD34xlYpjGgf9F4E8jHoYm9hruxrQfaIdOq7bXnBpQrWc/SzroVF6dc7eq7QfS9m8cGDjHbeSwoLysKjEKynfQonwwxiffTrisnt64zncVdUz8RpwuYpNeJ8VigYqFx6xFzDq0CGmDpJx1jVAGWrsfUTus3DoTI6EHIILUwpaWtBbxfzGUBhALt4+0u1Kb8nDhXKKcYZzqceBxDWZXV+BVksWFyGzHByqFgpth1fwJGgid2NH7ENyRAsI6u69Z61F0HY/5/e6wcQJN3pj9CxxaIjVGuUAENlp17Hp3fnIknc2mm3PPcbBluX+1+K6Od64YgfmRIUdL3ZzmzhXsUw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e899c6f-1f82-4149-5913-08d6e7b007ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:14:14.9316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_161418_207232_6C368BCC 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/23/19 7:58 AM, Minwoo Im wrote:
> If ioctl module has returned a nvme error status, it will be returned
> by being converted to a mapped errno value which has been provided by
> previous commits.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  nvme.c | 106 ++++++++++++++++++++++++++++-----------------------------
>  1 file changed, 53 insertions(+), 53 deletions(-)
>
> diff --git a/nvme.c b/nvme.c
> index a8d382a..f3d003b 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -48,6 +48,7 @@
>  #include "common.h"
>  #include "nvme-print.h"
>  #include "nvme-ioctl.h"
> +#include "nvme-status.h"
>  #include "nvme-lightnvm.h"
>  #include "plugin.h"
>  
> @@ -223,7 +224,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
>  	close(fd);
>  
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_ana_log(int argc, char **argv, struct command *cmd,
> @@ -298,7 +299,7 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -428,7 +429,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_endurance_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -485,7 +486,7 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_effects_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -550,7 +551,7 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_error_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -637,7 +638,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -694,7 +695,7 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -752,7 +753,7 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -854,7 +855,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int sanitize_log(int argc, char **argv, struct command *command, struct plugin *plugin)
> @@ -919,7 +920,7 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
>   close_fd:
>  	close(fd);
>   ret:
> -	return ret;
> +	return nvme_status_to_errno(ret, false);
>  }
>  
>  static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -975,7 +976,7 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -1021,7 +1022,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>  
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_nsid(int fd)
> @@ -1095,7 +1096,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, struct command *cmd)
> @@ -1162,7 +1163,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int attach_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -1292,7 +1293,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  char *nvme_char_from_block(char *block)
> @@ -1780,7 +1781,7 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
>  		free(subsysnqn);
>  
>   ret:
> -	return ret;
> +	return nvme_status_to_errno(ret, false);
>  }
>  
>  static int get_nvme_info(int fd, struct list_item *item, const char *node)
> @@ -1913,7 +1914,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
>  		free(devices[i]);
>  	free(devices);
>   ret:
> -	return ret;
> +	return nvme_status_to_errno(ret, false);
>  }
>  
>  int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
> @@ -1989,7 +1990,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2072,7 +2073,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2161,7 +2162,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2221,7 +2222,7 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2250,7 +2251,7 @@ static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2317,8 +2318,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
>  
>  	close(fd);
>   ret:
> -	return err;
> -
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2396,7 +2396,7 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int device_self_test(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2447,7 +2447,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
>  
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int self_test_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2505,7 +2505,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2638,7 +2638,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int fw_download(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2745,7 +2745,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static char *nvme_fw_status_reset_type(__u32 status)
> @@ -2840,7 +2840,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int subsystem_reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2869,7 +2869,7 @@ static int subsystem_reset(int argc, char **argv, struct command *cmd, struct pl
>  
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2893,7 +2893,7 @@ static int reset(int argc, char **argv, struct command *cmd, struct plugin *plug
>  
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2917,7 +2917,7 @@ static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *
>  
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3011,7 +3011,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
>   close_fd:
>  	close(fd);
>   ret:
> -	return ret;
> +	return nvme_status_to_errno(ret, false);
>  }
>  
>  static int show_registers(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3086,7 +3086,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int get_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3140,7 +3140,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int set_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3197,7 +3197,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3360,7 +3360,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int set_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3482,7 +3482,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3581,7 +3581,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3735,7 +3735,7 @@ free:
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3792,7 +3792,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3886,7 +3886,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -3989,7 +3989,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int flush(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4039,7 +4039,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4116,7 +4116,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int resv_register(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4196,7 +4196,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int resv_release(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4272,7 +4272,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int resv_report(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4369,7 +4369,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int submit_io(int opcode, char *command, const char *desc,
> @@ -4617,7 +4617,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int compare(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4726,7 +4726,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -4859,7 +4859,7 @@ free:
>  close_fd:
>  	close(fd);
>  ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, struct command *cmd)
> @@ -5062,7 +5062,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
>   close_fd:
>  	close(fd);
>   ret:
> -	return err;
> +	return nvme_status_to_errno(err, false);
>  }
>  
>  static int io_passthru(int argc, char **argv, struct command *cmd, struct plugin *plugin)



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
