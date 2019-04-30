Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FEEED86
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 02:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LotWPJpRFqubSfuDaJ6MdR4tCEu2KIkMLWHMp53Xduk=; b=pEaaSJIxNiVQAQ16stmbHmiIg
	qCEX5C+LqYJ3inoW4af3qPKlwH99zJC6eKuth6ZGUKyq/5vJfIUfm5d4qu89WbvJQYjJAlvwBhq8/
	erZQI1bUG/BtI2nfDI9J5JOVqGYJM9QL8Yg0nt6wi0YONfTiQPtDZ31x+0MfauHpcXNRI25NLx1sW
	qVNLUAd0USOmnjt/uJ+FQwJWpT0GmUbS94giJmXxLnU5JI7hQmGdQiO1PTi/o7KMzuARsZRvxve31
	dwQT3aFJLKlOfoElq0V1p9TzKufr8izdGvHkjo9HmMEqXDRdTkqlPrYso/YkW1/MXv074q0ASgEqP
	r37ygCgig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGNq-0002Pm-Ih; Tue, 30 Apr 2019 00:12:30 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGNl-0002OW-0k
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 00:12:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 17:12:24 -0700
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="138560077"
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES128-SHA;
 29 Apr 2019 17:12:23 -0700
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <5c4f7927-7475-34dc-2876-5db2cfb0a259@intel.com>
Date: Mon, 29 Apr 2019 18:12:22 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429225338.6866-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_171225_079116_7E93E193 
X-CRM114-Status: GOOD (  26.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/29/2019 4:53 PM, Sagi Grimberg wrote:
> Introduce /etc/nvme/defargs.conf where we allow the user to
> specify connect/discover parameters once and not for every
> controller. The cli will always ingest the content of this
> file before parsing cmdline args such that the user can
> override them.
> 
> The format is simply writing the arguments into the file as
> if they were appended to the execution command.
> 
> Also, properly install this file with some minimal documentation.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> This was raised before in the past that we don't have some place
> to store default connect args.
> 
> For example, when handling automatic discovery change log events
> this can be a way for the user to set global default arguments.
> 
> Feedback is welcome.
> 
>   Makefile            |  3 +++
>   etc/defargs.conf.in |  5 ++++
>   fabrics.c           | 63 +++++++++++++++++++++++++++++++++++++++++++++
>   nvme.spec.in        |  1 +
>   4 files changed, 72 insertions(+)
>   create mode 100644 etc/defargs.conf.in
> 
> diff --git a/Makefile b/Makefile
> index 4bfbebbd156a..6f11941b5d3e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -105,6 +105,9 @@ install-etc:
>   	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/discovery.conf ]; then \
>   		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>   	fi
> +	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/defargs.conf ]; then \
> +		$(INSTALL) -m 644 -T ./etc/defargs.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/defargs.conf; \
> +	fi
>   
>   install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
>   install: install-spec install-hostparams
> diff --git a/etc/defargs.conf.in b/etc/defargs.conf.in
> new file mode 100644
> index 000000000000..e91106bf5bbf
> --- /dev/null
> +++ b/etc/defargs.conf.in
> @@ -0,0 +1,5 @@
> +# Used for extracting default controller connect parameters
> +#
> +# Example:
> +# --keep-alive-tmo=<x> --reconnect-delay=<y> --ctrl-loss-tmo=<z> --nr-io-queues=<u>
> +# --queue-size=<v>
> diff --git a/fabrics.c b/fabrics.c
> index 511de06aec97..e609e679c832 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -72,8 +72,10 @@ static struct config {
>   #define PATH_NVMF_DISC		"/etc/nvme/discovery.conf"
>   #define PATH_NVMF_HOSTNQN	"/etc/nvme/hostnqn"
>   #define PATH_NVMF_HOSTID	"/etc/nvme/hostid"
> +#define PATH_NVMF_DEFARGS	"/etc/nvme/defargs.conf"
>   #define SYS_NVME		"/sys/class/nvme"
>   #define MAX_DISC_ARGS		10
> +#define MAX_DEF_ARGS		10
>   #define MAX_DISC_RETRIES	10
>   
>   enum {
> @@ -894,6 +896,59 @@ static int do_discover(char *argstr, bool connect)
>   	return ret;
>   }
>   
> +static int nvmf_parse_defargs(const char *desc,
> +		const struct argconfig_commandline_options *opts)
> +{
> +	FILE *f;
> +	char line[256], *ptr, *args, **argv;
> +	int argc = 0, ret = 0;
> +
> +	f = fopen(PATH_NVMF_DEFARGS, "r");
> +	if (f == NULL)
> +		return 0;
> +
> +	while (fgets(line, sizeof(line), f) != NULL) {
> +		if (line[0] == '#' || line[0] == '\n')
> +			continue;
> +
> +		args = strdup(line);
> +		if (!args) {
> +			fprintf(stderr, "failed to strdup args\n");
> +			ret = -ENOMEM;
> +			goto out;
> +		}
> +
> +		argv = calloc(MAX_DEF_ARGS, BUF_SIZE);
> +		if (!argv) {
> +			fprintf(stderr, "failed to allocate argv vector\n");
> +			free(args);
> +			ret = -ENOMEM;
> +			goto out;
> +		}
> +
> +		argc = 0;
> +		argv[argc++] = "dummy";
> +		while ((ptr = strsep(&args, " =\n")) != NULL)

There might be an issue here because args will be updated each time to
point to the next position in the string after the current token. When
you go to 'free' args, the pointer may no longer be valid.

> +			argv[argc++] = ptr;
> +
> +		ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
> +		free(args);
> +		free(argv);
> +		if (ret)
> +			goto out;
> +
> +		if (cfg.transport || cfg.traddr || cfg.trsvcid || cfg.nqn) {
> +			fprintf(stderr, "args transport, traddr, trsvcid, nqn "
> +				"cannot have a default\n");
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +	}
> +out:
> +	fclose(f);
> +	return ret;
> +}
> +
>   static int discover_from_conf_file(const char *desc, char *argstr,
>   		const struct argconfig_commandline_options *opts, bool connect)
>   {
> @@ -981,6 +1036,10 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>   		{NULL},
>   	};
>   
> +	ret = nvmf_parse_defargs(desc, command_line_options);
> +	if (ret)
> +		return ret;
> +
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> @@ -1026,6 +1085,10 @@ int connect(const char *desc, int argc, char **argv)
>   		{NULL},
>   	};
>   
> +	ret = nvmf_parse_defargs(desc, command_line_options);
> +	if (ret)
> +		return ret;
> +
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> diff --git a/nvme.spec.in b/nvme.spec.in
> index 6934f8fd605b..e2240b61d79e 100644
> --- a/nvme.spec.in
> +++ b/nvme.spec.in
> @@ -35,6 +35,7 @@ make install-spec DESTDIR=%{buildroot} PREFIX=/usr
>   %{_sysconfdir}/nvme/hostnqn
>   %{_sysconfdir}/nvme/hostid
>   %{_sysconfdir}/nvme/discovery.conf
> +%{_sysconfdir}/nvme/defargs.conf
>   
>   %clean
>   rm -rf $RPM_BUILD_ROOT
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
