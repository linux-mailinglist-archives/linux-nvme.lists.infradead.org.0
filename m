Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C94ED65
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FSYWySmW/AtV78RbCNYohgnoGp97Z5AWX5ds5cJFzc=; b=IsB3olUGQJufbA
	XPcMp32+J8ep/u1kHN5qIQZFSPBUXU+J7OCfs1uaQuz2KRCJXl90H17yDGJL/QSokE/bXNtoOn8W9
	aC7f4EphSHSVYNl195W5kTvQk0Ed5bUE5oKbXJQuXLEzCHaWOSVZ+6sOvFPkz5N22iEUl4/bEQhpd
	boUf0YB0H6deaO7nSj27s7g3JJ1huklUR4647HI+Pae+gdnYtmuf/ynXQgL35at/MPMCt1SkxQq9x
	aX3fShD1bK4WDs2nVYc2+Y3ciFPM5WI4YZwZyXTzCtTbza231NZ0C/EZrsfRCK+X5WE9yco78OfQ6
	OgdAo7567ciRXl2kLVrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFzT-0002C8-Sc; Mon, 29 Apr 2019 23:47:19 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFzM-0002Bg-VO
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:47:16 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190429234708epoutp04ad879a35c710d360f9d988bbc4868168~aFr6QoUod3017430174epoutp04R
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 23:47:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190429234708epoutp04ad879a35c710d360f9d988bbc4868168~aFr6QoUod3017430174epoutp04R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556581628;
 bh=rbwtBYVCe40N2ETZ4Y5Zeldt4E/3t0jQN1RHty3x24Q=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=JmuhULockcsdThFT5uZ1DT1y29xhKFgXsh6NjxoEdupoc1LCUlwQyaf3KSZO6vCi2
 DXc8ZPXNn5uS0DuwwGUCpsb1YUeJv++FPbzSsQydF2g9lZ6GS5Mn7Kb4v3WgZateRC
 KVA1B4vbZofApTnRqVXmjuYodZDB1/wMDjLbuaFM=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.191]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190429234706epcas2p233e023876957dac9488e502ccfef478d~aFr3ywbpG1140211402epcas2p2v;
 Mon, 29 Apr 2019 23:47:06 +0000 (GMT)
X-AuditID: b6c32a48-689ff7000000106f-47-5cc78cf94a8d
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 D1.47.04207.9FC87CC5; Tue, 30 Apr 2019 08:47:05 +0900 (KST)
Mime-Version: 1.0
Subject: RE: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190429225338.6866-1-sagi@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190429234705epcms2p87119b48a152a4aec44a3083443afdd65@epcms2p8>
Date: Tue, 30 Apr 2019 08:47:05 +0900
X-CMS-MailID: 20190429234705epcms2p87119b48a152a4aec44a3083443afdd65
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAJsWRmVeSWpSXmKPExsWy7bCmhe7PnuMxBuvuyFjsWTSJyWLl6qNM
 FrsXfmSyeNw1g9Xi3tEvTBbzlz1lt3h2+gCzxbrX71kcODxm3T/L5nH+3kYWj8V7XjJ5bF5S
 77H7ZgObR9+WVYwem09XB7BH5dhkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynk
 Jeam2iq5+AToumXmAB2lpFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwNCzQK07M
 LS7NS9dLzs+1MjQwMDIFqkzIyVhz+CprwVG9ip4fm9kaGN+rdDFyckgImEi8eTaZuYuRi0NI
 YAejxOx9Jxm7GDk4eAUEJf7uEAapERYIklh5+Ro7SFhIQF7ixysDiLCmxLvdZ1hBbDYBdYmG
 qa9YQGwRgR5GiRVzeEBGMgvsYZT4tWkxK8QuXokZ7U9ZIGxpie3LtzKC2JwCphI3Oy6zQcRF
 JW6ufssOY78/Np8RwhaRaL13lhnCFpR48HM32JkSAhIS997ZQZj1EltWWICslRBoYZS48WYt
 VKu+ROPzj2BreQV8JR59ngR2DouAqkTDusdQq1wkDpx9CRZnBnpx+9s5zCAzmYF+XL9LH2K8
 ssSRWywQFXwSHYf/ssM8tWPeEyYIW1ni46FDUEdKSiy/9BrqKQ+JrQ8ug9ULCdRIdHSuYZnA
 qDALEcyzkOydhbB3ASPzKkax1ILi3PTUYqMCE+SY3cQITp1aHjsYD5zzOcQowMGoxMPr8e5Y
 jBBrYllxZe4hRgkOZiURXo/jR2OEeFMSK6tSi/Lji0pzUosPMZoCvT+RWUo0OR+Y1vNK4g1N
 jczMDCxNLUzNjCyUxHkfSs+NFhJITyxJzU5NLUgtgulj4uCUamD0V/l3e9/99BM3GN2TvBzc
 2T0i/7StcBTtt3B7lcQ/VTrKn7spSIKp5++7ALnFRzZ3P4je+udEmGGNilJtWpXDtXsFJq9n
 HO/REY8QVU63ckouuPVckmvq223TD8v+nxLftvrmMWXRrBcsmcJvPsxSi2/XYbil9lDqX0Py
 mrBp/P8WGd5cmqzEUpyRaKjFXFScCADFJOVrswMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190429225354epcas4p3d772e0abb1a7ec23c9babd7065844058
References: <20190429225338.6866-1-sagi@grimberg.me>
 <CGME20190429225354epcas4p3d772e0abb1a7ec23c9babd7065844058@epcms2p8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_164714_149208_C72FA325 
X-CRM114-Status: GOOD (  32.97  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi, Sagi.

> -----Original Message-----
> From: Linux-nvme [mailto:linux-nvme-bounces@lists.infradead.org] On
> Behalf Of Sagi Grimberg
> Sent: Tuesday, April 30, 2019 7:54 AM
> To: linux-nvme@lists.infradead.org
> Cc: Keith Busch; Hannes Reinecke; Johannes Thumshirn; Christoph Hellwig;
> James Smart
> Subject: [PATCH nvme-cli rfc] fabrics: support default connect/discover args
> 
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
>  fabrics.c           | 63
> +++++++++++++++++++++++++++++++++++++++++++++
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
>  		$(INSTALL) -m 644 -T ./etc/discovery.conf.in
> $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>  	fi
> +	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/defargs.conf ]; then \
> +		$(INSTALL) -m 644 -T ./etc/defargs.conf.in
> $(DESTDIR)$(SYSCONFDIR)/nvme/defargs.conf; \
> +	fi
> 
>  install-spec: install-bin install-man install-bash-completion install-zsh-
> completion install-etc
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
> +# --keep-alive-tmo=<x> --reconnect-delay=<y> --ctrl-loss-tmo=<z> --nr-io-
> queues=<u>
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

Nit here: we don't need initialize 'argc' here because it will be zero before
getting used below.

This looks good to me, by the way.
Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

Thanks,

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
>  		const struct argconfig_commandline_options *opts, bool
> connect)
>  {
> @@ -981,6 +1036,10 @@ int discover(const char *desc, int argc, char **argv,
> bool connect)
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
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
