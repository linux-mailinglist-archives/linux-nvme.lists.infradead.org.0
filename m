Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0261672ED2
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 14:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U4ypIZk4VxqXjZjNntKU78UbZDpNo9n7YTv6GNG34LI=; b=qf+6jM7oAMKappRIqzf3Edz6O
	ZJOfzsRJX9fI+ttIhQ9+Fj0jpNjreOE5PAxGiFgZo48m0Jz8aQp7LkQGfz37jC6tqEFYB1fEZtYnq
	pPJUBkxwwZYHwQXNOuJ97gMbMa6Kl73QYom7Yj4VmarrBIL8K6DahWaYXdDMAvLUZn+8tcl/hZf83
	fLp3ZO/crG30O9ReNmJ+M9Rux3vOYMGXKnBrYSIb9ksn71la2esD5UvL92+yO4wZgPEtswYLEnH5N
	kUFG0NWUmF1pgSuZh31JsG7xrpiaBrtkFrOcyYDYd/Nqp75nXXZsTVnyKg5NSYMbkMEFeYSPlthGS
	yHbMtM82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGMZ-00063M-Gl; Wed, 24 Jul 2019 12:27:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGMS-00062v-Vb
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 12:27:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id s19so31831977lfb.9
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 05:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=N6NwInf0OU97XMsSifgiHUPI7twbEVd8+ipgKWwNHZI=;
 b=s4DUMV7C8vwJLzEQSALN4BRozhoj5d0stv6vshcYmgaaR0Gd6uQh3X2zADI9LTJj8D
 fGqXRYJMiNENilqMlVO6n4Z96Tcsyiyr2GbosWPkJiYof5TouzxXMNmFbpiIqKBZjITx
 z0yg5oXVMs9x293rKreNF+deAMutadIAaBOfzVPuGjHxdwP3oc/TTERUM1sBySeq5dGe
 hkwQ/my+7Z0vT9hryztUzgJHFeF4DrN2lY03Tt5fLhnZOMPNxvK66s/YbeNDVm1nzTCg
 BNLrcmbt6wAKCRd+BtIeqVPI4+nLodCwg7sniagmDYlZyirPIpexu1tMjwLu5TZ5FHya
 T24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=N6NwInf0OU97XMsSifgiHUPI7twbEVd8+ipgKWwNHZI=;
 b=JNQgdmXUUcC9CRskRQpEoTc4qpbKUHGG+MdEC2iKTS5u/iGLJs/oCAxP94kaIJPVg/
 4LATCHPWleWLmOHj4Crux1k/Q6WnhuoieA6SISaiYDRipMXWnMz+28SYBSIIkCfoVC6r
 9y/+A3dmkjQ+mcACIEjfRI8iZcqyyeY0jgk3ncKGj+YAZmdU+4xJfDV1oqh7yzoqbSE9
 rnK22CYTWSdeTvO5Mz7/5cuhR/V0PBhkYfgV+OLeFpTmYqwutBPDAR+aQbBxxye/VGIx
 sCVmI7Nwk7H0CCFPHA9MBYrStMZtP+poF+6G0dG7YDC1RwjCMHOWCFRIlXFJoFlWoKhI
 YZxg==
X-Gm-Message-State: APjAAAWJneior+22pObBEPD4J/XA5pqFe+TzVjbnU3UCztV4m95pwLpI
 u81NzbKe7V/tSaJDF7g+JSEkzhb2
X-Google-Smtp-Source: APXvYqybCJAQGgUt3RcYvEcnXp/xjj6pdRjmmujURdf5wRtLNtKhbUkm/sipDyuEqW5WeRji/60X2w==
X-Received: by 2002:ac2:4a78:: with SMTP id q24mr35593064lfp.59.1563971230687; 
 Wed, 24 Jul 2019 05:27:10 -0700 (PDT)
Received: from [192.168.0.12] (2-111-91-225-cable.dk.customer.tdc.net.
 [2.111.91.225])
 by smtp.gmail.com with ESMTPSA id j3sm7046951lfp.34.2019.07.24.05.27.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 05:27:10 -0700 (PDT)
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
Date: Wed, 24 Jul 2019 14:27:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723183601.29370-5-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_052713_083125_F04586FF 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <birkelund@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 23/07/2019 20.36, Minwoo Im wrote:
> To retrieve the chunk information from the nvme namespae for the given
> OCSSD, we can just do like:
> 	nvme lnvm chunk-log /dev/nvme0n1 --output-format=normal
>
> This will calculate the data length from the geometry data structure
> which might be retrieved by a Geometry command(Identity for 1.2 spec.).
> Then it will request get log page API for 1.3 NVMe spec to get the
> entries which indicate chunk information.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   nvme-lightnvm.c          | 37 ++++++++++++++++++
>   nvme-lightnvm.h          |  1 +
>   plugins/lnvm/lnvm-nvme.c | 84 ++++++++++++++++++++++++++++++++++++++++
>   plugins/lnvm/lnvm-nvme.h |  1 +
>   4 files changed, 123 insertions(+)
>
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index 2e665bf..8fa8f3f 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -465,6 +465,43 @@ int lnvm_do_id_ns(int fd, int nsid, unsigned int flags)
>   	return err;
>   }
>   
> +static void show_lnvm_chunk_log(struct nvme_nvm_chunk_desc *chunk_log,
> +				__u32 data_len)
> +{
> +	int nr_entry = data_len / sizeof(struct nvme_nvm_chunk_desc);
> +	int idx;
> +
> +	for (idx = 0; idx < nr_entry; idx++) {
> +		struct nvme_nvm_chunk_desc *desc = &chunk_log[idx];
> +
> +		printf(" [%5d] { ", idx);
> +		printf("cs: %#x", desc->cs);
> +		printf(", ct: %#x", desc->ct);
> +		printf(", wli: %d", desc->wli);
> +		printf(", slba: 0x%016"PRIx64, le64_to_cpu(desc->slba));
> +		printf(", cnlb: 0x%016"PRIx64, le64_to_cpu(desc->cnlb));
> +		printf(", wp: 0x%016"PRIx64" }\n", le64_to_cpu(desc->wp));
> +	}
> +}
> +
> +int lnvm_do_chunk_log(int fd, __u32 nsid, __u32 data_len, void *data,
> +			unsigned int flags)
> +{
> +	int err;
> +
> +	err = nvme_get_log13(fd, nsid, NVM_LID_CHUNK_INFO, 0, 0, 0,
> +			false, data_len, data);
> +	if (!err) {
> +		if (flags & RAW)
> +			d_raw(data, data_len);
> +		else
> +			show_lnvm_chunk_log(data, data_len);
> +	} else if (err > 0)
> +		fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
> +			nvme_status_to_string(err), err, nsid);
> +	return err;
> +}
> +
>   static void show_lnvm_bbtbl(struct nvme_nvm_bb_tbl *tbl)
>   {
>   	printf("verid    : %#x\n", (uint16_t)le16_to_cpu(tbl->verid));
> diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
> index 7a8ef7d..19660b7 100644
> --- a/nvme-lightnvm.h
> +++ b/nvme-lightnvm.h
> @@ -322,6 +322,7 @@ int lnvm_do_create_tgt(char *, char *, char *, int, int, int, int);
>   int lnvm_do_remove_tgt(char *);
>   int lnvm_do_factory_init(char *, int, int, int);
>   int lnvm_do_id_ns(int, int, unsigned int);
> +int lnvm_do_chunk_log(int, __u32, __u32, void *, unsigned int);
>   int lnvm_do_get_bbtbl(int, int, int, int, unsigned int);
>   int lnvm_do_set_bbtbl(int, int, int, int, int, int, __u8);
>   
> diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
> index 754931a..6f2724a 100644
> --- a/plugins/lnvm/lnvm-nvme.c
> +++ b/plugins/lnvm/lnvm-nvme.c
> @@ -1,5 +1,7 @@
>   #include <stdio.h>
>   #include <errno.h>
> +#include <stdlib.h>
> +#include <unistd.h>
>   
>   #include "nvme.h"
>   #include "nvme-print.h"
> @@ -127,6 +129,88 @@ static int lnvm_id_ns(int argc, char **argv, struct command *cmd, struct plugin
>   	return lnvm_do_id_ns(fd, cfg.namespace_id, flags);
>   }
>   
> +static int lnvm_chunk_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
> +{
> +	const char *desc = "Retrieve the chunk information log for the "\
> +		"specified given LightNVM device, returns in either "\
> +		"human-readable or binary format.\n"\
> +		"This will request Geometry first to get the "\
> +		"num_grp,num_pu,num_chk first to figure out the total size "\
> +		"of the log pages."\
> +		;
> +	const char *output_format = "Output format: normal|binary";
> +	const char *human_readable = "Print normal in readable format";
> +	int err, fmt, fd;
> +	struct nvme_nvm_id20 geo;
> +	struct nvme_nvm_chunk_desc *chunk_log;
> +	__u32 nsid;
> +	__u32 data_len;
> +	unsigned int flags = 0;
> +
> +	struct config {
> +		char *output_format;
> +		int human_readable;
> +	};
> +
> +	struct config cfg = {
> +		.output_format = "normal",
> +	};
> +
> +	const struct argconfig_commandline_options command_line_options[] = {
> +		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format},
> +		{"human-readable",'H', "",    CFG_NONE,   &cfg.human_readable,no_argument,       human_readable},
> +		{NULL}
> +	};
> +
> +	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg,
> +				sizeof(cfg));
> +	if (fd < 0) {
> +		err = fd;
> +		goto ret;
> +	}
> +
> +	fmt = validate_output_format(cfg.output_format);
> +	if (fmt < 0) {
> +		err = fmt;
> +		goto close;
> +	}
> +
> +	if (fmt == BINARY)
> +		flags |= RAW;
> +	else if (cfg.human_readable)
> +		flags |= HUMAN;
> +
> +	nsid = nvme_get_nsid(fd);
> +
> +	/*
> +	 * It needs to figure out how many bytes will be requested by this
> +	 * subcommand by the (num_grp * num_pu * num_chk) from the Geometry.
> +	 */
> +	err = lnvm_get_identity(fd, nsid, (struct nvme_nvm_id *) &geo);
> +	if (err)
> +		goto close;
> +
> +	data_len = (geo.num_grp * geo.num_pu * geo.num_chk) *
> +			sizeof(struct nvme_nvm_chunk_desc);
> +	chunk_log = malloc(data_len);
> +	if (!chunk_log) {
> +		fprintf(stderr, "cound not alloc for chunk log %dbytes\n",
> +				data_len);
> +		err = -ENOMEM;
> +		goto close;
> +	}
> +
> +	err = lnvm_do_chunk_log(fd, nsid, data_len, chunk_log, flags);
> +	if (err)
> +		fprintf(stderr, "get log page for chunk information failed\n");
> +
> +	free(chunk_log);
> +close:
> +	close(fd);
> +ret:
> +	return err;
> +}
> +
>   static int lnvm_create_tgt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>   {
>   	const char *desc = "Instantiate a target on top of a LightNVM enabled device.";
> diff --git a/plugins/lnvm/lnvm-nvme.h b/plugins/lnvm/lnvm-nvme.h
> index 3d5cbc5..f091f7b 100644
> --- a/plugins/lnvm/lnvm-nvme.h
> +++ b/plugins/lnvm/lnvm-nvme.h
> @@ -12,6 +12,7 @@ PLUGIN(NAME("lnvm", "LightNVM specific extensions"),
>   		ENTRY("list", "List available LightNVM devices", lnvm_list)
>   		ENTRY("info", "List general information and available target engines", lnvm_info)
>   		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns)
> +		ENTRY("chunk-log", "Chunk information by Get Log Page", lnvm_chunk_log)

Chunk Information Log Page ?

>   		ENTRY("init", "Initialize media manager on LightNVM device", lnvm_init)
>   		ENTRY("create", "Create target on top of a LightNVM device", lnvm_create_tgt)
>   		ENTRY("remove", "Remove target from device", lnvm_remove_tgt)

Hi Minwoo,

Could you squash patch 2, 3 and 4 together (4 being the main patch) - 
They belong together to implement one feature.

As a side-note, we have the same command for ZNS (that will be pushed 
when the ZNS TP is ratified) - In that, we've also added support for 
supplying start lba and number of chunks (zones) to return. Could you 
add that as well to this? Then there is coherency between the two?

-Matias



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
