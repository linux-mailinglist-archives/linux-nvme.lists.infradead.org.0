Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3E628ED7
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 03:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wVB7/SaK5dco1XZYzG8UVIo/aq9bhagHzTaxLJ5IJJQ=; b=e6He5DnyFSd7oR
	Hx10NNWRoG9491zmGT3uVg2Cg4vFSwdZ8jLjJQq/FXhIt62VkvDnTrFP42Ee+3/eHEG19+974Paks
	sWX95T96JuqR7apI3120YpSVUM9BmqMTfCjIN/RxGJRnaIhsUXb4jYzw0v5iCyquvKXHSY2gVSeeJ
	PmynF2F8BKmbULCeYxJ171mLSiplOADQg2LTfiixv4NazQA82Lzezp+fyUktO/Nf2EbmxHBYAm+nM
	0GazblgTj4I4NP0tsdlpvqypfbDg/rn9Cc7IuNC4ThH7qEOTQD3fIFYNXa8zNTaCCLFji3AO9omVa
	eEjTc5Fj3ot952/VfH4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTz87-0003sv-Dr; Fri, 24 May 2019 01:36:19 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTz80-0003sT-0s
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 01:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558661772; x=1590197772;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=zkRZ753ggX7efXtgxSRKfvRr/+PS5Or0I7hPM0wBqn8=;
 b=TTzjxwFCVHviKW6vVMIvGC+JDuzuMtOJpfswz0y8rcb90HUW2kJ16dlR
 4zBzEA0YjjywFRuS76Jpn2s1D4kC+t4dg0VA9BVA3yK0vdp6qOiGBuOKs
 drDnZ1pihA+l8fjO4/Gf2KP960j0OG2LtpeVNdqklLR4oxgx8OiBoYixd
 GspeNZw1sDoPsmS9vxxsochOcyPh/v2CF/GiOSYQT/c1SQiQ6rEbItVyv
 +6Y9FwQ0QyC3x6AUsur+nffULSsI9Mc5LlwI0o+T31dXxn9kXUtIq7HBc
 f6eKoGxBliSzbMDizFtvs+/u1sxxb6JCOpTwr6Vsi4M/4QBPyrKwHYWhJ Q==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="110675468"
Received: from mail-by2nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.52])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 09:36:06 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/rLJhg2T/iZVunGiygsNj3tuBR0BbpWHfQdyMhavvak=;
 b=JHDEPYdqi6yLm6tdIV+wPCELJbrnQfzNNBXLb7RpdEKpd0HCQYCZNr7ovO6moc7PL60uFMmYY9/Kw0/qIguP5WvUihTtzbTYveS+ralZnRbLC7Re6wxt/W1c7LhxAXU67UNhFNXqbTav/LOty1LgMacCDOBmDadDAco2zIyM9lk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4967.namprd04.prod.outlook.com (52.135.232.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 24 May 2019 01:36:05 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1922.013; Fri, 24 May 2019
 01:36:05 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
Thread-Topic: [PATCH V5 1/6] nvme: Do not return in the middle of the
 subcommand
Thread-Index: AQHVEXf2kV2OAMfCDEyBzK/6TeNfcw==
Date: Fri, 24 May 2019 01:36:04 +0000
Message-ID: <BYAPR04MB5749C9BDCCDA22B5390ED26086020@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 642ee944-4c28-4bce-4326-08d6dfe83001
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4967; 
x-ms-traffictypediagnostic: BYAPR04MB4967:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB49674931E2B5B4183026785686020@BYAPR04MB4967.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:277;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(376002)(39860400002)(396003)(189003)(199004)(3846002)(6116002)(52536014)(476003)(99286004)(446003)(14454004)(33656002)(66066001)(316002)(2906002)(53936002)(229853002)(74316002)(6436002)(55016002)(9686003)(53946003)(2501003)(8676002)(81166006)(68736007)(81156014)(6506007)(102836004)(4326008)(110136005)(86362001)(186003)(76176011)(7696005)(256004)(5024004)(14444005)(25786009)(8936002)(26005)(66476007)(71200400001)(71190400001)(66946007)(66556008)(73956011)(66446008)(64756008)(76116006)(6246003)(478600001)(486006)(72206003)(5660300002)(53546011)(305945005)(7736002)(30864003)(569006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4967;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lQp4zIfj0LaVBCSn5h0jbXKDAVA1pym/wCqfSnywQuwDwHOhYFrYYHVXD3GrG5EBdsSCadAG40L980CvX4+Nd4W37DLngjxs4sWjQqRGDQaFtBxMEIzqy72mCaHzpJlwAQ6MaoGL0YQ/g/6lSVh7zhnBJxEJZ3tGVeKyroSfjleXzIyo/40nVCMzlU2tRMMfUerxoCiokVjeThKkzs85pOX7jwcX5kA3WSlZQkVY5Z2DuoWoqlCWnp2jxu66nQVI3TG7f95dZPXjmkqZvp00Pizj5CIRCiHaLduT5i4CHGAk4ZeBjRMo6Abye8PmvNWUUR1ZfOSMr4Wh2ag1zSgJboiLLq/k1Esia1/TLLooLbMJBHS6id19hsbuxTGPQ87YNXVMMD03xUd6v/jIjnMaIfTbbPUhy+9BAdxBEWhbzGI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 642ee944-4c28-4bce-4326-08d6dfe83001
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 01:36:04.8480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4967
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_183612_160952_DB27974E 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 5/23/19 7:58 AM, Minwoo Im wrote:
> To make nvme-cli subcommand return a mapped errno value to main(), it
> should return the error status in a single place because it would be
> great if the return statements and free operations are in an one shot
> place.
> 
> This patch makes all the subcommands in nvme module return the error
> which means internal error which should be in negative and nvme error
> status which is in positive at the end of the subcommand.
> 
> Most of the changed parts are file descriptors which is returned from
> parse_and_open() function.  The "fd" could be in a negative value so
> that it needs to be mapped to a uniformed errno value which will be
> applied by the next patches.
> 
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   nvme.c | 425 +++++++++++++++++++++++++++++++++++++--------------------
>   1 file changed, 277 insertions(+), 148 deletions(-)
> 
> diff --git a/nvme.c b/nvme.c
> index 9819fcb..88b2cfc 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -193,8 +193,10 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -220,6 +222,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
>    close_fd:
>   	close(fd);
>   
> + ret:
There is space here before return.
>   	return err;
>   }
>   
> @@ -249,8 +252,10 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -292,6 +297,7 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
>   	free(ana_log);
>   close_fd:
>   	close(fd);
> +ret:
And there is no space here, please use consistent coding style. WIll 
send other comments soon.
>   	return err;
>   }
>   
> @@ -330,8 +336,10 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.file_name) {
>   		fprintf(stderr, "Please provide an output file!\n");
> @@ -419,6 +427,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
>   	free(page_log);
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -449,8 +458,10 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -473,6 +484,7 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -505,8 +517,10 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -535,6 +549,7 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -567,8 +582,10 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -619,6 +636,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -646,8 +664,10 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -673,6 +693,7 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -701,8 +722,10 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -728,7 +751,7 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -780,8 +803,10 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.aen) {
>   		cfg.log_len = 4096;
> @@ -828,6 +853,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -860,8 +886,10 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		ret = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -890,7 +918,7 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return ret;
>   }
>   
> @@ -919,8 +947,10 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (posix_memalign((void *)&cntlist, getpagesize(), 0x1000)) {
>   		fprintf(stderr, "can not allocate controller list payload\n");
> @@ -944,7 +974,7 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
>   
>   close_fd:
>   	close(fd);
> -
> +ret:
>   	return err;
>   }
>   
> @@ -973,8 +1003,10 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
>   	if (!err) {
> @@ -988,7 +1020,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>   		perror("id namespace list");
>   
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -1033,8 +1065,10 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (S_ISBLK(nvme_stat.st_mode)) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -1060,7 +1094,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -1088,8 +1122,10 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.namespace_id) {
>   		fprintf(stderr, "%s: namespace-id parameter required\n",
> @@ -1125,7 +1161,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -1195,8 +1231,10 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.flbas != 0xff && cfg.bs != 0x00) {
>   		fprintf(stderr,
> @@ -1253,7 +1291,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
>   
>   close_fd:
>   	close(fd);
> -
> +ret:
>   	return err;
>   }
>   
> @@ -1691,7 +1729,7 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
>   
>   	ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
>   	if (ret < 0)
> -		return ret;
> +		goto ret;
>   
>   	devicename = NULL;
>   	if (optind < argc) {
> @@ -1703,29 +1741,30 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
>   			   &cfg.namespace_id) != 2) {
>   			fprintf(stderr, "%s is not a NVMe namespace device\n",
>   				argv[optind]);
> -			return -EINVAL;
> +			ret = -EINVAL;
> +			goto ret;
>   		}
>   		sprintf(path, "/sys/block/%s/device", devicename);
>   		subsysnqn = get_nvme_subsnqn(path);
>   		if (!subsysnqn) {
>   			fprintf(stderr, "Cannot read subsys NQN from %s\n",
>   				devicename);
> -			return -EINVAL;
> +			ret = -EINVAL;
> +			goto ret;
>   		}
>   		optind++;
>   	}
>   
>   	if (ret < 0) {
>   		argconfig_print_help(desc, opts);
> -		if (subsysnqn)
> -			free(subsysnqn);
> -		return ret;
> +		goto free;
>   	}
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt != JSON && fmt != NORMAL) {
>   		if (subsysnqn)
>   			free(subsysnqn);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto free;
>   	}
>   
>   	slist = get_subsys_list(&subcnt, subsysnqn, cfg.namespace_id);
> @@ -1736,8 +1775,11 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
>   		show_nvme_subsystem_list(slist, subcnt);
>   
>   	free_subsys_list(slist, subcnt);
> + free:
>   	if (subsysnqn)
>   		free(subsysnqn);
> +
> + ret:
>   	return ret;
>   }
>   
> @@ -1809,17 +1851,20 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
>   
>   	ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
>   	if (ret < 0)
> -		return ret;
> +		goto ret;
>   
>   	fmt = validate_output_format(cfg.output_format);
>   
> -	if (fmt != JSON && fmt != NORMAL)
> -		return -EINVAL;
> +	if (fmt != JSON && fmt != NORMAL) {
> +		ret = -EINVAL;
> +		goto ret;
> +	}
>   
>   	n = scandir(dev, &devices, scan_dev_filter, alphasort);
>   	if (n < 0) {
>   		fprintf(stderr, "no NVMe device(s) detected.\n");
> -		return n;
> +		ret = n;
> +		goto ret;
>   	}
>   
>   	list_items = calloc(n, sizeof(*list_items));
> @@ -1867,7 +1912,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
>   	for (i = 0; i < n; i++)
>   		free(devices[i]);
>   	free(devices);
> -
> + ret:
>   	return ret;
>   }
>   
> @@ -1905,8 +1950,10 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -1941,7 +1988,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -1978,8 +2025,10 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -2022,7 +2071,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2066,8 +2115,10 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -2109,7 +2160,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2140,8 +2191,10 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -2167,13 +2220,13 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
>   static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>   {
> -	int nsid, fd;
> +	int err = 0, nsid, fd;
>   	const char *desc = "Get namespce ID of a the block device.";
>   
>   	const struct argconfig_commandline_options command_line_options[] = {
> @@ -2181,18 +2234,23 @@ static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
> +
>   	nsid = nvme_get_nsid(fd);
>   	if (nsid <= 0) {
>   		perror(devicename);
> -		close(fd);
> -		return errno;
> +		err = errno;
> +		goto close_fd;
>   	}
>   	printf("%s: namespace-id:%d\n", devicename, nsid);
>   
> + close_fd:
>   	close(fd);
> -	return 0;
> + ret:
> +	return err;
>   }
>   
>   static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> @@ -2240,8 +2298,10 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	cfg.cdw10 = cfg.cntlid << 16;
>   	cfg.cdw10 = cfg.cdw10 | (cfg.rt << 8);
> @@ -2256,6 +2316,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
>   		perror("virt-mgmt");
>   
>   	close(fd);
> + ret:
>   	return err;
>   
>   }
> @@ -2293,8 +2354,10 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -2332,7 +2395,7 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
>   
>   close_fd:
>   	close(fd);
> -
> +ret:
>   	return err;
>   }
>   
> @@ -2366,8 +2429,10 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	err = nvme_self_test_start(fd, cfg.namespace_id, cfg.cdw10);
>   	if (!err) {
> @@ -2381,6 +2446,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
>   		perror("Device self-test");
>   
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -2406,8 +2472,10 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -2436,7 +2504,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2492,8 +2560,10 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.sel > 7) {
>   		fprintf(stderr, "invalid 'select' param:%d\n", cfg.sel);
> @@ -2567,7 +2637,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2609,8 +2679,10 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fw_fd = open(cfg.fw, O_RDONLY);
>   	cfg.offset <<= 2;
> @@ -2672,7 +2744,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
>   	close(fw_fd);
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2718,8 +2790,10 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.slot > 7) {
>   		fprintf(stderr, "invalid slot:%d\n", cfg.slot);
> @@ -2765,7 +2839,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -2779,21 +2853,22 @@ static int subsystem_reset(int argc, char **argv, struct command *cmd, struct pl
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	err = nvme_subsystem_reset(fd);
>   	if (err < 0) {
> -		close(fd);
>   		if (errno == ENOTTY)
>   			fprintf(stderr,
>   				"Subsystem-reset: NVM Subsystem Reset not supported.\n");
>   		else
>   			perror("Subsystem-reset");
> -		return errno;
>   	}
>   
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -2807,17 +2882,17 @@ static int reset(int argc, char **argv, struct command *cmd, struct plugin *plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	err = nvme_reset_controller(fd);
> -	if (err < 0) {
> -		close(fd);
> +	if (err < 0)
>   		perror("Reset");
> -		return errno;
> -	}
>   
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -2831,17 +2906,17 @@ static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	err = nvme_ns_rescan(fd);
> -	if (err < 0) {
> -		close(fd);
> +	if (err < 0)
>   		perror("Namespace Rescan");
> -		return errno;
> -	}
>   
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -2887,8 +2962,10 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		ret = fd;
> +		goto ret;
> +	}
>   
>   	switch (cfg.sanact) {
>   	case NVME_SANITIZE_ACT_CRYPTO_ERASE:
> @@ -2933,7 +3010,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return ret;
>   }
>   
> @@ -2965,8 +3042,10 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -3006,7 +3085,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -3038,8 +3117,10 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.offset == -1) {
>   		fprintf(stderr, "offset required param");
> @@ -3058,7 +3139,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -3087,8 +3168,10 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.offset == -1) {
>   		fprintf(stderr, "offset required param");
> @@ -3113,7 +3196,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -3173,8 +3256,10 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.lbaf != 0xff && cfg.bs !=0) {
>   		fprintf(stderr,
> @@ -3274,7 +3359,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
>   
>    close_fd:
>   	close(fd);
> -
> + ret:
>   	return err;
>   }
>   
> @@ -3332,8 +3417,10 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.feature_id) {
>   		fprintf(stderr, "feature-id required param\n");
> @@ -3394,6 +3481,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
>   		free(buf);
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -3443,8 +3531,10 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	sec_fd = open(cfg.file, O_RDONLY);
>   	if (sec_fd < 0) {
> @@ -3490,6 +3580,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
>   	close(sec_fd);
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -3550,8 +3641,10 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	switch (cfg.dtype) {
>   	case NVME_DIR_IDENTIFY:
> @@ -3641,6 +3734,7 @@ free:
>   		free(buf);
>   close_fd:
>   	close(fd);
> +ret:
>   	return err;
>   }
>   
> @@ -3673,8 +3767,10 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.namespace_id) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -3695,7 +3791,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
>   
>   close_fd:
>   	close(fd);
> -
> +ret:
>   	return err;
>   }
>   
> @@ -3753,8 +3849,10 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.prinfo > 0xf) {
>   		err = EINVAL;
> @@ -3787,6 +3885,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -3847,8 +3946,10 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	nc = argconfig_parse_comma_sep_array(cfg.ctx_attrs, ctx_attrs, ARRAY_SIZE(ctx_attrs));
>   	nb = argconfig_parse_comma_sep_array(cfg.blocks, nlbs, ARRAY_SIZE(nlbs));
> @@ -3887,6 +3988,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -3914,8 +4016,10 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (S_ISBLK(nvme_stat.st_mode)) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -3934,6 +4038,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
>   		printf("NVMe Flush: success\n");
>   close_fd:
>   	close(fd);
> +ret:
>   	return err;
>   }
>   
> @@ -3981,8 +4086,10 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.namespace_id) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -4008,6 +4115,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4052,8 +4160,10 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.namespace_id) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -4085,6 +4195,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4131,8 +4242,10 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (!cfg.namespace_id) {
>   		cfg.namespace_id = get_nsid(fd);
> @@ -4158,6 +4271,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4201,8 +4315,10 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	fmt = validate_output_format(cfg.output_format);
>   	if (fmt < 0) {
> @@ -4252,6 +4368,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4345,8 +4462,10 @@ static int submit_io(int opcode, char *command, const char *desc,
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	dfd = mfd = opcode & 1 ? STDIN_FILENO : STDOUT_FILENO;
>   	if (cfg.prinfo > 0xf) {
> @@ -4497,6 +4616,7 @@ static int submit_io(int opcode, char *command, const char *desc,
>   	close(dfd);
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4571,8 +4691,10 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (cfg.size) {
>   		if (posix_memalign(&sec_buf, getpagesize(), cfg.size)) {
> @@ -4603,6 +4725,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
>   
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> @@ -4656,8 +4779,10 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	switch (cfg.dtype) {
>   	case NVME_DIR_IDENTIFY:
> @@ -4733,6 +4858,7 @@ free:
>   		free(buf);
>   close_fd:
>   	close(fd);
> +ret:
>   	return err;
>   }
>   
> @@ -4837,8 +4963,10 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
>   	};
>   
>   	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
> -	if (fd < 0)
> -		return fd;
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
>   
>   	if (strlen(cfg.input_file)){
>   		wfd = open(cfg.input_file, O_RDONLY,
> @@ -4933,6 +5061,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
>   		close(wfd);
>    close_fd:
>   	close(fd);
> + ret:
>   	return err;
>   }
>   
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
