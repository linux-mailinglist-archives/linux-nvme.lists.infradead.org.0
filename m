Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DA332597
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=TemhlOB6lJdL5xN5vOHrmtH7DfXn5DlBtEZGNEKY9Rw=; b=W9RE6MPjb/gqjZ
	lw/eC1XLabLMY+Vh3WhJ6Ibb4FmzMY3IhMJ0COTGtlbLbSo0YNtu0VJQ25exE30xHbOevruOmwd/Y
	3M/7MHEj3ERiS2KDW2bM+bfhBygzgkI52ad4jq4et85o/8DdLmIqYk8Kj8phSf6RW3QGw3Mqm3+hv
	dM2ceAu2TGKL3Gmv++meDOgrZCJ2kvjkQyq+zVBClXi118c4QmUjCRThJXtO1ix9r6pCt7vjAvBou
	YrxtXD35gDkUuvLbU5Fcqu8oAVhgs+xQsVcRBeieLWzNrhARV22zucvZP8NYgq2WXMdMUxETU2O22
	2Uqruf57ddsTvldYSd8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZdU-0003az-MK; Sun, 02 Jun 2019 23:11:32 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZdM-0003aT-QF
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:11:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559517085; x=1591053085;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=jyj9DdD2XYwwLnblLB/hVHL80iDIcTbNAgcdop8QwSI=;
 b=Ev0tkF/yqbAOIL/yA7JS9/PqQcWTlKFU3GbCwhicDmIB5J4ASQmM+rj/
 j/s8wl572xBpGwzw61rDCHwvVy+oFba/DDSZDfl8GLQ5HBCYJ4UKagQvz
 /U4Gejq6RdYX5fpCPyyqfC42lJDGqyaBIiOEFa3Kmw9pwLVrqUWLSiPub
 epq66RRhyHTfFEa7K3BC9b51h5SpYn2qyGIppGmQecW8TQcGU0zXu5ISI
 3pdR7YDVJUCn9pwfbzG2eL28Xk18VV5KZe05HVpMc9xgIlxfoe5xk1Xcf
 zhDwBm0VFaoRMF4/gyogH1f4Bx1GPG5gDmk4QhSDjfuJkT/jb/OgV8E7b w==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="109614095"
Received: from mail-dm3nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.53])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:11:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cTAGsRWEck3dxMNCgmpRS9XE94ZnrtY250L/R3T4TJo=;
 b=c0bQ9YOhdCa1Xpft3Qniu4sYX/6trlShVky2ZIhTnRLtBURzdHLJQ9EflInjuzj/+g1aNtirmSfvxtIArR9nEsc42DchD52eRGrYi81ImD1O/GXpMDVRaQvToYR4X7ADypVXHXNlyLhrflvf9D/wQyfh8EkVT2KRX6dZb+mbKVg=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4182.namprd04.prod.outlook.com (20.176.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 23:11:22 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:11:22 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 3/6] nvme: Return negative error value for internal
 errors
Thread-Topic: [PATCH V5 3/6] nvme: Return negative error value for internal
 errors
Thread-Index: AQHVEXf80CcX5Bf4XUq4i6SCMrDYXA==
Date: Sun, 2 Jun 2019 23:11:21 +0000
Message-ID: <BYAPR04MB5749BF4270DACBC85AD63EE1861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-4-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94e2c70a-a828-41f5-6bd7-08d6e7afa0b2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4182; 
x-ms-traffictypediagnostic: BYAPR04MB4182:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4182A8E6EFF6B0BD8629680E861B0@BYAPR04MB4182.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:109;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(8676002)(81166006)(81156014)(64756008)(305945005)(7736002)(74316002)(8936002)(3846002)(76116006)(73956011)(66946007)(2906002)(33656002)(52536014)(66446008)(66556008)(66476007)(6116002)(5660300002)(86362001)(7696005)(102836004)(25786009)(68736007)(53546011)(6506007)(76176011)(4326008)(186003)(6246003)(26005)(66066001)(99286004)(72206003)(486006)(256004)(478600001)(71190400001)(14454004)(71200400001)(2501003)(5024004)(14444005)(446003)(6436002)(110136005)(53936002)(9686003)(55016002)(53946003)(30864003)(476003)(316002)(229853002)(579004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4182;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uwdYsO3bFLMeNdpd6yPoaJPQQ4AI3HB69OyvNmduB5O6zH9JWD0HJyQLACBu4VEpGccxtY/5HCWqTyKs9J7itFEN5eUC3oP4fpgGwazWgUeFbElalI0DwsMY/ZsGgVx8z7uLbIyYSO3yUp2+qj4KrEXtBTs8hAUA6VetSf2EEsABfFkqjQgK4VC+yLIFdL9TdYSoJmzuGNQuJoPB9MVLeiCB2f7TfeYgD9b1CLtQN2DRBnkHsCHPhuuA4VNOJkYwMirESxUDh/mMWAiRZQwep9JdIw02F1m8ZTngaPkZdt+qrQCaK0IBq9mfb8LpKYvQlyxnxE1XTaBFvHKe7L0At1JgLdKDubRwv8hlK7J15DmhVu0YkXXqj/LiVqvHOFxI74T0+bXQvZsJrXCPai07TuZAU+pIN9UzRGBMOjA8mSY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e2c70a-a828-41f5-6bd7-08d6e7afa0b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:11:21.9385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_161124_925272_7AADB8D9 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
> To support the mapping of error values which will be introduced in the
> next patches, All the internal errors caused in the middle of the
> subcommands preparation or teardown should be returned as a negative
> value to make it distinguished from nvme error status which is positive.
>
> This patch makes all the internal error values which used to be returned
> as a positive value to be returned as a negative value.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  nvme.c | 170 ++++++++++++++++++++++++++++-----------------------------
>  1 file changed, 85 insertions(+), 85 deletions(-)
>
> diff --git a/nvme.c b/nvme.c
> index 88b2cfc..a8d382a 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -343,7 +343,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>  
>  	if (!cfg.file_name) {
>  		fprintf(stderr, "Please provide an output file!\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -353,7 +353,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>  	if (!hdr || !page_log) {
>  		fprintf(stderr, "Failed to allocate %zu bytes for log: %s\n",
>  				bs, strerror(errno));
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto free_mem;
>  	}
>  	memset(hdr, 0, bs);
> @@ -393,7 +393,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>  		break;
>  	default:
>  		fprintf(stderr, "Invalid data area requested");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_output;
>  	}
>  
> @@ -597,7 +597,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>  
>  	if (!cfg.log_entries) {
>  		fprintf(stderr, "non-zero log-entries is required param\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -606,7 +606,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>  		perror("identify controller");
>  	else if (err) {
>  		fprintf(stderr, "could not identify controller\n");
> -		err = ENODEV;
> +		err = -ENODEV;
>  	} else {
>  		struct nvme_error_log_page *err_log;
>  
> @@ -614,7 +614,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>  		err_log = calloc(cfg.log_entries, sizeof(struct nvme_error_log_page));
>  		if (!err_log) {
>  			fprintf(stderr, "could not alloc buffer for error log\n");
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  
> @@ -815,13 +815,13 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
>  
>  	if (cfg.log_id > 0xff) {
>  		fprintf(stderr, "Invalid log identifier: %d. Valid range: 0-255\n", cfg.log_id);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  	if (!cfg.log_len) {
>  		fprintf(stderr, "non-zero log-len is required param\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  	} else {
>  		unsigned char *log;
>  
> @@ -829,7 +829,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
>  		if (!log) {
>  			fprintf(stderr, "could not alloc buffer for log: %s\n",
>  					strerror(errno));
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  
> @@ -1073,13 +1073,13 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
>  	if (S_ISBLK(nvme_stat.st_mode)) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	} else if (!cfg.namespace_id) {
>  		fprintf(stderr, "%s: namespace-id parameter required\n",
>  						cmd->name);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -1130,7 +1130,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
>  	if (!cfg.namespace_id) {
>  		fprintf(stderr, "%s: namespace-id parameter required\n",
>  						cmd->name);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -1140,7 +1140,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
>      if (num == -1) {
>  		fprintf(stderr, "%s: controller id list is required\n",
>  						cmd->name);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>      }
>  
> @@ -2040,14 +2040,14 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
>  
>  	if (posix_memalign(&nsdescs, getpagesize(), 0x1000)) {
>  		fprintf(stderr, "can not allocate controller list payload\n");
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_fd;
>  	}
>  
> @@ -2134,7 +2134,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
>  	if (!cfg.namespace_id && S_ISBLK(nvme_stat.st_mode)) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -2567,12 +2567,12 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
>  
>  	if (cfg.sel > 7) {
>  		fprintf(stderr, "invalid 'select' param:%d\n", cfg.sel);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (!cfg.feature_id) {
>  		fprintf(stderr, "feature-id required param\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -2606,7 +2606,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
>  	if (cfg.data_len) {
>  		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
>  			fprintf(stderr, "can not allocate feature payload\n");
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  		memset(buf, 0, cfg.data_len);
> @@ -2689,7 +2689,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
>  	if (fw_fd < 0) {
>  		fprintf(stderr, "Failed to open firmware file %s: %s\n",
>  				cfg.fw, strerror(errno));
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -2702,12 +2702,12 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
>  	fw_size = sb.st_size;
>  	if (fw_size & 0x3) {
>  		fprintf(stderr, "Invalid size:%d for f/w image\n", fw_size);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fw_fd;
>  	}
>  	if (posix_memalign(&fw_buf, getpagesize(), fw_size)) {
>  		fprintf(stderr, "No memory for f/w size:%d\n", fw_size);
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_fw_fd;
>  	}
>  
> @@ -2797,17 +2797,17 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
>  
>  	if (cfg.slot > 7) {
>  		fprintf(stderr, "invalid slot:%d\n", cfg.slot);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.action > 7 || cfg.action == 4 || cfg.action == 5) {
>  		fprintf(stderr, "invalid action:%d\n", cfg.action);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.bpid > 1) {
>  		fprintf(stderr, "invalid boot partition id:%d\n", cfg.bpid);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -2975,14 +2975,14 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
>  		break;
>  	default:
>  		fprintf(stderr, "Invalid Sanitize Action\n");
> -		ret = EINVAL;
> +		ret = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  	if (cfg.sanact == NVME_SANITIZE_ACT_EXIT) {
>  	       if (cfg.ause || cfg.no_dealloc) {
>  			fprintf(stderr, "SANACT is Exit Failure Mode\n");
> -			ret = EINVAL;
> +			ret = -EINVAL;
>  			goto close_fd;
>  	       }
>  	}
> @@ -2990,13 +2990,13 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
>  	if (cfg.sanact == NVME_SANITIZE_ACT_OVERWRITE) {
>  		if (cfg.owpass > 16) {
>  			fprintf(stderr, "OWPASS out of range [0-16]\n");
> -			ret = EINVAL;
> +			ret = -EINVAL;
>  			goto close_fd;
>  		}
>  	} else {
>  		if (cfg.owpass || cfg.oipbp || cfg.ovrpat) {
>  			fprintf(stderr, "SANACT is not Overwrite\n");
> -			ret = EINVAL;
> +			ret = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -3057,7 +3057,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
>  
>  	if (cfg.human_readable && fmt != NORMAL) {
>  		fprintf(stderr, "Only --output-format=normal supports -H\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3069,7 +3069,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
>  			err = 0;
>  	}
>  	if (!bar) {
> -		err = ENODEV;
> +		err = -ENODEV;
>  		goto close_fd;
>  	}
>  
> @@ -3124,7 +3124,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
>  
>  	if (cfg.offset == -1) {
>  		fprintf(stderr, "offset required param");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3175,12 +3175,12 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
>  
>  	if (cfg.offset == -1) {
>  		fprintf(stderr, "offset required param");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.value == -1) {
>  		fprintf(stderr, "value required param");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3279,7 +3279,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>  	if (S_ISBLK(nvme_stat.st_mode)) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -3320,27 +3320,27 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>  	/* ses & pi checks set to 7 for forward-compatibility */
>  	if (cfg.ses > 7) {
>  		fprintf(stderr, "invalid secure erase settings:%d\n", cfg.ses);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.lbaf > 15) {
>  		fprintf(stderr, "invalid lbaf:%d\n", cfg.lbaf);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.pi > 7) {
>  		fprintf(stderr, "invalid pi:%d\n", cfg.pi);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.pil > 1) {
>  		fprintf(stderr, "invalid pil:%d\n", cfg.pil);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.ms > 1) {
>  		fprintf(stderr, "invalid ms:%d\n", cfg.ms);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3424,7 +3424,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>  
>  	if (!cfg.feature_id) {
>  		fprintf(stderr, "feature-id required param\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  	if (cfg.feature_id == NVME_FEAT_LBA_RANGE)
> @@ -3432,7 +3432,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>  	if (cfg.data_len) {
>  		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
>  			fprintf(stderr, "can not allocate feature payload\n");
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  		memset(buf, 0, cfg.data_len);
> @@ -3444,7 +3444,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>  			if (ffd <= 0) {
>  				fprintf(stderr, "Failed to open file %s: %s\n",
>  						cfg.file, strerror(errno));
> -				err = EINVAL;
> +				err = -EINVAL;
>  				goto free;
>  			}
>  		}
> @@ -3540,7 +3540,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
>  	if (sec_fd < 0) {
>  		fprintf(stderr, "Failed to open %s: %s\n",
>  				cfg.file, strerror(errno));
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3553,7 +3553,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
>  	sec_size = sb.st_size;
>  	if (posix_memalign(&sec_buf, getpagesize(), sec_size)) {
>  		fprintf(stderr, "No memory for security size:%d\n", sec_size);
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_sec_fd;
>  	}
>  
> @@ -3652,14 +3652,14 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
>  		case NVME_DIR_SND_ID_OP_ENABLE:
>  			if (!cfg.ttype) {
>  				fprintf(stderr, "target-dir required param\n");
> -				err = EINVAL;
> +				err = -EINVAL;
>  				goto close_fd;
>  			}
>  			dw12 = cfg.ttype << 8 | cfg.endir;
>  			break;
>  		default:
>  			fprintf(stderr, "invalid directive operations for Identify Directives\n");
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		break;
> @@ -3670,20 +3670,20 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
>  			break;
>  		default:
>  			fprintf(stderr, "invalid directive operations for Streams Directives\n");
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		break;
>  	default:
>  		fprintf(stderr, "invalid directive type\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  
>  	if (cfg.data_len) {
>  		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  		memset(buf, 0, cfg.data_len);
> @@ -3695,7 +3695,7 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
>  			if (ffd <= 0) {
>  				fprintf(stderr, "Failed to open file %s: %s\n",
>  						cfg.file, strerror(errno));
> -				err = EINVAL;
> +				err = -EINVAL;
>  				goto free;
>  			}
>  		}
> @@ -3775,7 +3775,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -3855,7 +3855,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>  	}
>  
>  	if (cfg.prinfo > 0xf) {
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -3869,7 +3869,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -3957,14 +3957,14 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
>  	nr = max(nc, max(nb, ns));
>  	if (!nr || nr > 256) {
>  		fprintf(stderr, "No range definition provided\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -3974,7 +3974,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
>  	dsm = nvme_setup_dsm_range((__u32 *)ctx_attrs, (__u32 *)nlbs, (__u64 *)slbas, nr);
>  	if (!dsm) {
>  		fprintf(stderr, "failed to allocate data set payload\n");
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_fd;
>  	}
>  
> @@ -4024,7 +4024,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
>  	if (S_ISBLK(nvme_stat.st_mode)) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -4094,13 +4094,13 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
>  	if (cfg.racqa > 7) {
>  		fprintf(stderr, "invalid racqa:%d\n", cfg.racqa);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -4168,19 +4168,19 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
>  	if (cfg.cptpl > 3) {
>  		fprintf(stderr, "invalid cptpl:%d\n", cfg.cptpl);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  	if (cfg.rrega > 7) {
>  		fprintf(stderr, "invalid rrega:%d\n", cfg.rrega);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -4250,13 +4250,13 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
>  	if (cfg.rrela > 7) {
>  		fprintf(stderr, "invalid rrela:%d\n", cfg.rrela);
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -4331,7 +4331,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
>  	if (!cfg.namespace_id) {
>  		cfg.namespace_id = get_nsid(fd);
>  		if (cfg.namespace_id == 0) {
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -4344,7 +4344,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
>  
>  	if (posix_memalign((void **)&status, getpagesize(), size)) {
>  		fprintf(stderr, "No memory for resv report:%d\n", size);
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_fd;
>  	}
>  	memset(status, 0, size);
> @@ -4469,7 +4469,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>  
>  	dfd = mfd = opcode & 1 ? STDIN_FILENO : STDOUT_FILENO;
>  	if (cfg.prinfo > 0xf) {
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
> @@ -4483,7 +4483,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>  		if (cfg.dtype > 0xf) {
>  			fprintf(stderr, "Invalid directive type, %x\n",
>  				cfg.dtype);
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		control |= cfg.dtype << 4;
> @@ -4494,7 +4494,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>  		dfd = open(cfg.data, flags, mode);
>  		if (dfd < 0) {
>  			perror(cfg.data);
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		mfd = dfd;
> @@ -4503,14 +4503,14 @@ static int submit_io(int opcode, char *command, const char *desc,
>  		mfd = open(cfg.metadata, flags, mode);
>  		if (mfd < 0) {
>  			perror(cfg.metadata);
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_dfd;
>  		}
>  	}
>  
>  	if (!cfg.data_size)	{
>  		fprintf(stderr, "data size not provided\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_mfd;
>  	}
>  
> @@ -4527,7 +4527,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>  
>  	if (posix_memalign(&buffer, getpagesize(), buffer_size)) {
>  		fprintf(stderr, "can not allocate io payload\n");
> -		err = ENOMEM;
> +		err = -ENOMEM;
>  		goto close_mfd;
>  	}
>  	memset(buffer, 0, buffer_size);
> @@ -4537,7 +4537,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>  		if (!mbuffer) {
>  			fprintf(stderr, "can not allocate io metadata "
>  					"payload: %s\n", strerror(errno));
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto free_buffer;
>  		}
>  	}
> @@ -4594,12 +4594,12 @@ static int submit_io(int opcode, char *command, const char *desc,
>  		if (!(opcode & 1) && write(dfd, (void *)buffer, cfg.data_size) < 0) {
>  			fprintf(stderr, "write: %s: failed to write buffer to output file\n",
>  					strerror(errno));
> -			err = EINVAL;
> +			err = -EINVAL;
>  		} else if (!(opcode & 1) && cfg.metadata_size &&
>  				write(mfd, (void *)mbuffer, cfg.metadata_size) < 0) {
>  			fprintf(stderr, "write: %s: failed to write meta-data buffer to output file\n",
>  					strerror(errno));
> -			err = EINVAL;
> +			err = -EINVAL;
>  		} else
>  			fprintf(stderr, "%s: Success\n", command);
>  	}
> @@ -4700,7 +4700,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
>  		if (posix_memalign(&sec_buf, getpagesize(), cfg.size)) {
>  			fprintf(stderr, "No memory for security size:%d\n",
>  								cfg.size);
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  	}
> @@ -4793,7 +4793,7 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
>  			break;
>  		default:
>  			fprintf(stderr, "invalid directive operations for Identify Directives\n");
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		break;
> @@ -4812,19 +4812,19 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
>  			break;
>  		default:
>  			fprintf(stderr, "invalid directive operations for Streams Directives\n");
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  		break;
>  	default:
>  		fprintf(stderr, "invalid directive type\n");
> -		err = EINVAL;
> +		err = -EINVAL;
>  		goto close_fd;
>  	}
>  
>  	if (cfg.data_len) {
>  		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_fd;
>  		}
>  		memset(buf, 0, cfg.data_len);
> @@ -4973,7 +4973,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
>  			   S_IRUSR | S_IRGRP | S_IROTH);
>  		if (wfd < 0) {
>  			perror(cfg.input_file);
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto close_fd;
>  		}
>  	}
> @@ -4983,21 +4983,21 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
>  		if (!metadata) {
>  			fprintf(stderr, "can not allocate metadata "
>  					"payload: %s\n", strerror(errno));
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto close_wfd;
>  		}
>  	}
>  	if (cfg.data_len) {
>  		if (posix_memalign(&data, getpagesize(), cfg.data_len)) {
>  			fprintf(stderr, "can not allocate data payload\n");
> -			err = ENOMEM;
> +			err = -ENOMEM;
>  			goto free_metadata;
>  		}
>  
>  		memset(data, cfg.prefill, cfg.data_len);
>  		if (!cfg.read && !cfg.write) {
>  			fprintf(stderr, "data direction not given\n");
> -			err = EINVAL;
> +			err = -EINVAL;
>  			goto free_data;
>  		} else if (cfg.write) {
>  			if (read(wfd, data, cfg.data_len) < 0) {



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
