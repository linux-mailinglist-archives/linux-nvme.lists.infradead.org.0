Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B0A10F0A
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 00:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8sZGOuQGNYAoTC3V5qf9t4U11osX5gpgR3hvNjVkcw=; b=t3D/9abpj0LLTI
	gh9h+GSnhc95+hwBGq3U6kvoIGARWVsDYKOSwreEBcGY99Mipt0uzr0yMe0tXXl5j91ur3KoT82g9
	EEerP1bO5CUO+DsigSRHyGPh0RWX5gaCAKwl0NuVKCwGLOLS8KB9+yukwcY2N8BCwN2euhBCRwyix
	AGjA4xbpWw6LIOlq3BKsAb2TwIuf7KpKdSJL47b3wTociN0t42nDQ0H/5V/gdyf6hwXSDxM7UEGBj
	7j2N9vlOcO2cIihbr71Xc1ah9RMUoyh8qccW3qzfhEwDgVKdQL5cH7n83nE1R6bkp0dJAZgmn9Kft
	5cVJS8evY+DNnOyj2Vig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxqU-0002cH-4X; Wed, 01 May 2019 22:36:58 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxqO-0002bl-Kp
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 22:36:54 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x41MYIWB022006; Wed, 1 May 2019 15:36:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=qkL42PFJaz+fe1X1SJzj9QTyGYI1SrWYZ/cGyZ67OlA=;
 b=JY3Y00m3z4jAN1+vZv93hqfKNlpZ7Z3IT8aUA4l3jhFSZRGxHUBvj6L1AkG3v2N7U5uj
 kO1asEFM1pk/7SNb4JUk5RNu4kcXsgHXrHLwFxoqpomdTg+vnS4c068PcXKPzspnolTv
 GKqWB3dX5ftk5Ad9oAicIN0hZ5Cjriw/zG1QZXn9Cb7yrHmDHqttajmQTUHcKzG5PaVx
 k6K8BvSuuzYdG9E8rsC9GAVCmY8grkqfBIEnieJOr3xvhSgOa+bGlCGvXZ385wxQyB3b
 e9O4clE1FvE9eeVlzVYqm13DomAqFH8q/1DsOS2Vt8gKPwkqq5yG/I8GSuhc7EqLTa78 gA== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2s7k3b88hb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 01 May 2019 15:36:38 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 1 May
 2019 15:36:37 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 1 May 2019 15:36:36 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id D474A3F703F;
 Wed,  1 May 2019 15:36:36 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x41MaZL3023534;
 Wed, 1 May 2019 15:36:35 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 1 May 2019 15:36:35 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
In-Reply-To: <20190429225338.6866-1-sagi@grimberg.me>
Message-ID: <alpine.LRH.2.21.9999.1905011522400.31627@mvluser05.qlc.com>
References: <20190429225338.6866-1-sagi@grimberg.me>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-01_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_153652_959853_7EAF46B1 
X-CRM114-Status: GOOD (  27.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019, 3:53pm, Sagi Grimberg wrote:

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
>  Makefile            |  3 +++
>  etc/defargs.conf.in |  5 ++++
>  fabrics.c           | 63 +++++++++++++++++++++++++++++++++++++++++++++
>  nvme.spec.in        |  1 +
>  4 files changed, 72 insertions(+)
>  create mode 100644 etc/defargs.conf.in
> 
> diff --git a/Makefile b/Makefile
> index 4bfbebbd156a..6f11941b5d3e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -105,6 +105,9 @@ install-etc:
>  	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/discovery.conf ]; then \
>  		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>  	fi
> +	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/defargs.conf ]; then \
> +		$(INSTALL) -m 644 -T ./etc/defargs.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/defargs.conf; \
> +	fi
>  
>  install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
>  install: install-spec install-hostparams
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
>  #define PATH_NVMF_DISC		"/etc/nvme/discovery.conf"
>  #define PATH_NVMF_HOSTNQN	"/etc/nvme/hostnqn"
>  #define PATH_NVMF_HOSTID	"/etc/nvme/hostid"
> +#define PATH_NVMF_DEFARGS	"/etc/nvme/defargs.conf"
>  #define SYS_NVME		"/sys/class/nvme"
>  #define MAX_DISC_ARGS		10
> +#define MAX_DEF_ARGS		10
>  #define MAX_DISC_RETRIES	10
>  
>  enum {
> @@ -894,6 +896,59 @@ static int do_discover(char *argstr, bool connect)
>  	return ret;
>  }
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
>  static int discover_from_conf_file(const char *desc, char *argstr,
>  		const struct argconfig_commandline_options *opts, bool connect)
>  {
> @@ -981,6 +1036,10 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>  		{NULL},
>  	};
>  
> +	ret = nvmf_parse_defargs(desc, command_line_options);
> +	if (ret)
> +		return ret;
> +
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> @@ -1026,6 +1085,10 @@ int connect(const char *desc, int argc, char **argv)
>  		{NULL},
>  	};
>  
> +	ret = nvmf_parse_defargs(desc, command_line_options);
> +	if (ret)
> +		return ret;
> +
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> diff --git a/nvme.spec.in b/nvme.spec.in
> index 6934f8fd605b..e2240b61d79e 100644
> --- a/nvme.spec.in
> +++ b/nvme.spec.in
> @@ -35,6 +35,7 @@ make install-spec DESTDIR=%{buildroot} PREFIX=/usr
>  %{_sysconfdir}/nvme/hostnqn
>  %{_sysconfdir}/nvme/hostid
>  %{_sysconfdir}/nvme/discovery.conf
> +%{_sysconfdir}/nvme/defargs.conf
>  
>  %clean
>  rm -rf $RPM_BUILD_ROOT
> 

Does it make sense to have:

- A message printed when arguments are picked up from *.conf, perhaps not 
  always but when, say, a --verbose/-v is supplied to make it clear to
  the user.

- An option like, "--no-conf=<discovery/defargs/all>" so that none of the
  options/values are read from those files. Perhaps useful in scripting
  environments where finer controls are desired; thus avoiding a 
  default argument addition later by an admin to *.conf affecting
  script driven invocations.

Regards,
-Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
