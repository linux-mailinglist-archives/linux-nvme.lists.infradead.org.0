Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4395728F7
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 09:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JkThYFZqQO4f+9cdD89W8EVVWf2XjjofZOCLL9rtQ6s=; b=Bael6/bJBiv/O4CPKz9JL41FJ
	HgPwPgajihMpFC/1WpAOylKx3SEcBA3oDsZjbsWWsYcmO1xaG+ivE8Lnp7U/36j29jibj2ALJS3Lt
	Yn/YaH4+9XLrxGHAIw5J0xUBQlXm9Ss+BAJRu6mLBlC3/aeKG72R5b5KmlhfGgFlXHYEonOLhbCLW
	gqNT3QIMWwPP7LQzIj3PPAj7wbgd/jE7A1F5Wq3pC/aIDJR+vyxHRo0ZGijOK6iKZfPG7Z05dR5cj
	/0I6kK5lZSCVHOlrGx3JZ9SJadiH9EJc+xpLSLfS9qoTbNM9lAHRd5jHFBZoG/b4iGK02MnujX2tj
	BBmuzpiew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBc4-0008PM-FP; Wed, 24 Jul 2019 07:23:00 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBbv-0008Of-Js
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 07:22:53 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so46204772eds.9
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 00:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=kjebOFNfO5Xmzl7lY11UbSJP8WNLe88drNN43bRugm4=;
 b=nMKEX4T5MJz1keLeQEeW1dgeSrQ+AMMsKeS8asXVck8izlz2LwMrgEx1m0qDfQvJSZ
 oDWnR5cey61+BjbmU05q46m6YwlHmZ0Jkl8j0WmJFscYquko66DwF5E9M9YxfBjxmH2n
 Gy5uJZdiBcrfCii0rtQCCtDuFRvWzxXVGCygxvFx3RGX9WbEDq4tb0vspnc7rNEFd/S5
 2DoXialLy+hEx99lo27paIuw4F9fzcIQEq76yfrjIZP2ddxO2vVZLTcmdK79iQ/1JjrD
 WW9eUq/EqlYSAuTPhJOknNNesA469F/zKOPL30Nyx5t8uyH79rUjz4pmMhgm5DLBKMz8
 YS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=kjebOFNfO5Xmzl7lY11UbSJP8WNLe88drNN43bRugm4=;
 b=VDrZ9iumgX2G/fgY1FpPJsPOb/LSBSW0br4fUV2ZQKn7d7JjoGlCvme3QMan9vrzKi
 Ol5wPGZUy5qk3X725xTwCh7VM1n/LgpLj0exzEzEVyNTA5Lm+dwKwqMbbMiWk5Gor54D
 /EYCUlTnzUkeNIfU8wp5psCD55cFKXSoOWIzQ/VJDrRMhB2CI30SCqP/nhLIFj40oNNP
 VpXkD3zW62su/+H7xo8F6DDUwkUVj9pGz67nFgIS9m0kP9oq74xq9MrsnonvUYiYtSuh
 TZwIGgfllN6MvhmbyGY5+0R+JnsvosIKbS/hrWCsCq4IESgfHzaWSsstlNThovHkDdiv
 DX0Q==
X-Gm-Message-State: APjAAAX5qMXcB8ssY+///3SeB6dFMMO3wIWk30wCQcEq/v0NKnJS6ARB
 Q7zxakTS4J1gdJZAutK6Ku+u0ITI
X-Google-Smtp-Source: APXvYqwjezt9YS8Wum+JaT5T9HtN0KuAEeGl2mPPzCIeP5rS5Ny84K6bQu7r54hMLoHJJB8yZLxDhQ==
X-Received: by 2002:aa7:d0c5:: with SMTP id u5mr68615258edo.299.1563952970047; 
 Wed, 24 Jul 2019 00:22:50 -0700 (PDT)
Received: from [192.168.1.143] (ip-5-186-122-168.cgn.fibianet.dk.
 [5.186.122.168])
 by smtp.gmail.com with ESMTPSA id nw21sm3883939ejb.15.2019.07.24.00.22.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 00:22:48 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <20B9C888-532C-4762-9886-8C5E196CB5A4@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Date: Wed, 24 Jul 2019 09:22:47 +0200
In-Reply-To: <20190723183601.29370-5-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_002251_662761_4A91F2F9 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
 =?utf-8?Q?Matias_Bj=C3=B8rling?= <mb@lightnvm.io>,
 Klaus Birkelund Jensen <birkelund@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5812682625441919066=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============5812682625441919066==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AD0063F8-9023-4A5F-9A59-EA1E06BB8F97";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_AD0063F8-9023-4A5F-9A59-EA1E06BB8F97
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 23 Jul 2019, at 20.36, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> To retrieve the chunk information from the nvme namespae for the given
> OCSSD, we can just do like:
> 	nvme lnvm chunk-log /dev/nvme0n1 --output-format=3Dnormal
>=20
> This will calculate the data length from the geometry data structure
> which might be retrieved by a Geometry command(Identity for 1.2 =
spec.).
> Then it will request get log page API for 1.3 NVMe spec to get the
> entries which indicate chunk information.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> nvme-lightnvm.c          | 37 ++++++++++++++++++
> nvme-lightnvm.h          |  1 +
> plugins/lnvm/lnvm-nvme.c | 84 ++++++++++++++++++++++++++++++++++++++++
> plugins/lnvm/lnvm-nvme.h |  1 +
> 4 files changed, 123 insertions(+)
>=20
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index 2e665bf..8fa8f3f 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -465,6 +465,43 @@ int lnvm_do_id_ns(int fd, int nsid, unsigned int =
flags)
> 	return err;
> }
>=20
> +static void show_lnvm_chunk_log(struct nvme_nvm_chunk_desc =
*chunk_log,
> +				__u32 data_len)
> +{
> +	int nr_entry =3D data_len / sizeof(struct nvme_nvm_chunk_desc);
> +	int idx;
> +
> +	for (idx =3D 0; idx < nr_entry; idx++) {
> +		struct nvme_nvm_chunk_desc *desc =3D &chunk_log[idx];
> +
> +		printf(" [%5d] { ", idx);
> +		printf("cs: %#x", desc->cs);
> +		printf(", ct: %#x", desc->ct);
> +		printf(", wli: %d", desc->wli);
> +		printf(", slba: 0x%016"PRIx64, le64_to_cpu(desc->slba));
> +		printf(", cnlb: 0x%016"PRIx64, le64_to_cpu(desc->cnlb));
> +		printf(", wp: 0x%016"PRIx64" }\n", =
le64_to_cpu(desc->wp));
> +	}
> +}
> +
> +int lnvm_do_chunk_log(int fd, __u32 nsid, __u32 data_len, void *data,
> +			unsigned int flags)
> +{
> +	int err;
> +
> +	err =3D nvme_get_log13(fd, nsid, NVM_LID_CHUNK_INFO, 0, 0, 0,
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

What about avoiding the nested if?

If (err) {
	fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
			nvme_status_to_string(err), err, nsid);

	goto out;
}

If (flags & RAW)
	d_raw(data, data_len);
else
	show_lnvm_chunk_log(data, data_len);

out:
return err;

> +}
> +
> static void show_lnvm_bbtbl(struct nvme_nvm_bb_tbl *tbl)
> {
> 	printf("verid    : %#x\n", (uint16_t)le16_to_cpu(tbl->verid));
> diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
> index 7a8ef7d..19660b7 100644
> --- a/nvme-lightnvm.h
> +++ b/nvme-lightnvm.h
> @@ -322,6 +322,7 @@ int lnvm_do_create_tgt(char *, char *, char *, =
int, int, int, int);
> int lnvm_do_remove_tgt(char *);
> int lnvm_do_factory_init(char *, int, int, int);
> int lnvm_do_id_ns(int, int, unsigned int);
> +int lnvm_do_chunk_log(int, __u32, __u32, void *, unsigned int);
> int lnvm_do_get_bbtbl(int, int, int, int, unsigned int);
> int lnvm_do_set_bbtbl(int, int, int, int, int, int, __u8);
>=20
> diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
> index 754931a..6f2724a 100644
> --- a/plugins/lnvm/lnvm-nvme.c
> +++ b/plugins/lnvm/lnvm-nvme.c
> @@ -1,5 +1,7 @@
> #include <stdio.h>
> #include <errno.h>
> +#include <stdlib.h>
> +#include <unistd.h>
>=20
> #include "nvme.h"
> #include "nvme-print.h"
> @@ -127,6 +129,88 @@ static int lnvm_id_ns(int argc, char **argv, =
struct command *cmd, struct plugin
> 	return lnvm_do_id_ns(fd, cfg.namespace_id, flags);
> }
>=20
> +static int lnvm_chunk_log(int argc, char **argv, struct command *cmd, =
struct plugin *plugin)
> +{
> +	const char *desc =3D "Retrieve the chunk information log for the =
"\
> +		"specified given LightNVM device, returns in either "\
> +		"human-readable or binary format.\n"\
> +		"This will request Geometry first to get the "\
> +		"num_grp,num_pu,num_chk first to figure out the total =
size "\
> +		"of the log pages."\
> +		;
> +	const char *output_format =3D "Output format: normal|binary=E2=80=9D=
;

normalbinary -> normal binary?

> +	const char *human_readable =3D "Print normal in readable =
format";
> +	int err, fmt, fd;
> +	struct nvme_nvm_id20 geo;
> +	struct nvme_nvm_chunk_desc *chunk_log;
> +	__u32 nsid;
> +	__u32 data_len;
> +	unsigned int flags =3D 0;
> +
> +	struct config {
> +		char *output_format;
> +		int human_readable;
> +	};
> +
> +	struct config cfg =3D {
> +		.output_format =3D "normal",
> +	};
> +
> +	const struct argconfig_commandline_options =
command_line_options[] =3D {
> +		{"output-format", 'o', "FMT", CFG_STRING, =
&cfg.output_format, required_argument, output_format},
> +		{"human-readable",'H', "",    CFG_NONE,   =
&cfg.human_readable,no_argument,       human_readable},
> +		{NULL}
> +	};
> +
> +	fd =3D parse_and_open(argc, argv, desc, command_line_options, =
&cfg,
> +				sizeof(cfg));
> +	if (fd < 0) {
> +		err =3D fd;
> +		goto ret;
> +	}

return fd;

> +
> +	fmt =3D validate_output_format(cfg.output_format);
> +	if (fmt < 0) {
> +		err =3D fmt;
> +		goto close;
> +	}
> +
> +	if (fmt =3D=3D BINARY)
> +		flags |=3D RAW;
> +	else if (cfg.human_readable)
> +		flags |=3D HUMAN;
> +
> +	nsid =3D nvme_get_nsid(fd);
> +
> +	/*
> +	 * It needs to figure out how many bytes will be requested by =
this
> +	 * subcommand by the (num_grp * num_pu * num_chk) from the =
Geometry.
> +	 */
> +	err =3D lnvm_get_identity(fd, nsid, (struct nvme_nvm_id *) =
&geo);
> +	if (err)
> +		goto close;
> +
> +	data_len =3D (geo.num_grp * geo.num_pu * geo.num_chk) *
> +			sizeof(struct nvme_nvm_chunk_desc);
> +	chunk_log =3D malloc(data_len);
> +	if (!chunk_log) {
> +		fprintf(stderr, "cound not alloc for chunk log =
%dbytes\n",
> +				data_len);
> +		err =3D -ENOMEM;
> +		goto close;
> +	}
> +
> +	err =3D lnvm_do_chunk_log(fd, nsid, data_len, chunk_log, flags);
> +	if (err)
> +		fprintf(stderr, "get log page for chunk information =
failed\n");
> +
> +	free(chunk_log);
> +close:
> +	close(fd);
> +ret:
> +	return err;
> +}
> +
> static int lnvm_create_tgt(int argc, char **argv, struct command *cmd, =
struct plugin *plugin)
> {
> 	const char *desc =3D "Instantiate a target on top of a LightNVM =
enabled device.";
> diff --git a/plugins/lnvm/lnvm-nvme.h b/plugins/lnvm/lnvm-nvme.h
> index 3d5cbc5..f091f7b 100644
> --- a/plugins/lnvm/lnvm-nvme.h
> +++ b/plugins/lnvm/lnvm-nvme.h
> @@ -12,6 +12,7 @@ PLUGIN(NAME("lnvm", "LightNVM specific extensions"),
> 		ENTRY("list", "List available LightNVM devices", =
lnvm_list)
> 		ENTRY("info", "List general information and available =
target engines", lnvm_info)
> 		ENTRY("id-ns", "List geometry for LightNVM device", =
lnvm_id_ns)
> +		ENTRY("chunk-log", "Chunk information by Get Log Page", =
lnvm_chunk_log)
> 		ENTRY("init", "Initialize media manager on LightNVM =
device", lnvm_init)
> 		ENTRY("create", "Create target on top of a LightNVM =
device", lnvm_create_tgt)
> 		ENTRY("remove", "Remove target from device", =
lnvm_remove_tgt)
> --
> 2.17.1

We have typically retrieved this directly using passthru commands, but I
have nothing against making this a dedicated lnvm command.



--Apple-Mail=_AD0063F8-9023-4A5F-9A59-EA1E06BB8F97
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl04B0cACgkQPEYBfS0l
eOBrrQ/9GnWlgD3Y2fXqnw1OPePAM6HOV4i8igVgZLuAo3OWsTwjKgiUdHgpGc/+
Xsy+MMg/IGwyNvm3SyVJBf+cA1qz9Hg+0XIpOiPVfN1SRwrOyNkWJRuQj6hRMGnH
FxFxosdBXAxIF9IFIApRlfzKzsUtCGCxDr89MIs1HhJp+PMcVgq3dOH5eLnv5QJ9
d92EgEiSZmDkTgrRxim9eQwqtlbmpdXFvcb6XlJRtGJTY1Ggug+nrqOZQUlAqMyv
ZT2iPieq+uAtQsgOOUsJ7wbwkaOlTvr9+QKYvHz6y6OrBKmeuLRdkyBJaq5hHDeH
eiyJzEjEBkHaRP2oQ2FrReauisrqJuKr96PXOPFN66mNXKi0FXOcj9Z+tPc6wDMD
RA+6hVwavpO4cSLB88oMMxwDMROC4g2g52jrMwgBRWRZM24yt5rQTBQF0QkjgNei
aFlo4gXFYDN4WsBbrYSfjEEQbybWP+3M9tqLmsHFaEbAqpi4L60qMaW2gkr1ckxs
y4JHphewPe8KQZPQiPmE4BMb6fhdPivcORhWGSMAZbxKyQob/2ohz9xbiCOXVt4g
j4dka4mh2WlDBjmYb0+m6qWWP+gATVBP+/J5kSBRo8mbSuYvqbFPhQc0TXrzCGR2
5tcLDhrtqvlcSxZ9Sph7Kbf4v2XixKfamuyy9DjjaaDTU8YzcQc=
=jheR
-----END PGP SIGNATURE-----

--Apple-Mail=_AD0063F8-9023-4A5F-9A59-EA1E06BB8F97--


--===============5812682625441919066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============5812682625441919066==--

