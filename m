Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423B571154
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 07:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ln2wTZ6mXJtELd6cl+sSX67Oa0aSeUMjx0U3Bc7kroE=; b=IQaIny4BJXYwU6X0jczcGceqg
	QMu155BNL0DyJ+OTExP/r94hi/mZcXiX0mTunAAVcxQvJOfexVvZSgooiPX+tvTaocISyc5CuFYv+
	BdReoUsFocE2iyh36delHbTEO3pm4+/HZp1cY3o/Ls3er0gAlla4Il58ey68BHh9zL0nHFz+FT/bm
	lOWxfs/Cp+8lRoTZUvhcBF0nc1SGKtXGblI0sey+A9vcRiKP9ucpBZ8bc+/SNtqpkFQXs1CNnySxN
	irmQDJK1ac8KpWHpEfhhuSaMB/NONPlDZe+uZd8EDceQUr4uNh/5RIMDvLiXfvyETmqqFklImKjWq
	DibMffOaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpncK-0000pt-1w; Tue, 23 Jul 2019 05:45:40 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnc8-0000pG-Rn
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 05:45:30 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so39731463lje.12
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 22:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=ziduMqqspLRgexqqZGSSWeTL6rC89THdT02hJom+KKc=;
 b=1YEPpvXzRZZ8gtkFKWAiI7ANEGxcaaZ3e7pmEZUE1GRToxNHi1MVVIDtt6wnskw3JL
 j68c5nPIJcUmzc0Nqj1R2wTpfyaJG1lWtgjDd7t0gxo6HkkVn9VgOdevOvbGm3p2CqX3
 PgH8GG/Kb81ITjQQTY9KKFSKoqVlkuz99UoTirzeCaUsGnAp18O6cCGtgK9pL8/NzkPh
 Pvw33qgjKgVKNv7u/ww239UIvff4qXJ24v5gkWr8w+ZNfuhNscxBgy/fc7tPdd/fCYa6
 vLSuCMXDLDSviCod9OFeIg4/4tNKUY1Nk+e34bf1PxUwLx+P0/DJDAAKZCQMf6pSyAgb
 F9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=ziduMqqspLRgexqqZGSSWeTL6rC89THdT02hJom+KKc=;
 b=TpqFvOy/mkLaea1UZdSu3AFavVWt65eDPD9h/pij777z3r6vtOan9Z82WahP8Iiaov
 dZyCaVL247igB3gdVo/kx3jfGxzyWtXPSVTqiCyiYHlaSv3orHDU/fyt6ub5BNA5tlzP
 kkCGvBwNf65qc9/W3J/lS1xCFe+xg+abb6pdw0lY3mgRqDKcasKKFpb6q4d759l9za7l
 X62PUzxt6fmh5rl5qImISbouDj1bbRTXHNsb4ryQyhOt85DKG67cqvGS0tKRJdkwjobi
 vg9PlAofpkJgw/C1o28e1LrnnCbggt3wtQOqRmdPG6FT2U5kLG6pRexbXWCAE/vgKBDN
 JO0w==
X-Gm-Message-State: APjAAAXj/0dnzYScZr/D8MNHh9JVTQZ6u86yryVE391Cy6hWBt2Fz624
 hoU7hcJ3PpBgEzVvxXeOmbM=
X-Google-Smtp-Source: APXvYqwfElCuEQvfgBbl1zcKyl/MF4779kwN92u3kEMgENbDQkDw38diw2pGX+tbdv/gJb5QgghPTA==
X-Received: by 2002:a2e:b60f:: with SMTP id r15mr38126002ljn.172.1563860727504; 
 Mon, 22 Jul 2019 22:45:27 -0700 (PDT)
Received: from [172.20.10.13] (212.27.18.194.bredband.3.dk. [212.27.18.194])
 by smtp.gmail.com with ESMTPSA id h22sm7884553ljj.105.2019.07.22.22.45.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 22:45:26 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <249F24E5-D511-4B5C-A963-4A930A1AC98D@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 4/4] lnvm: sync-up uapi lightnvm.h header from kernel
Date: Tue, 23 Jul 2019 07:45:08 +0200
In-Reply-To: <20190721153219.5730-5-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
 <20190721153219.5730-5-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_224528_915950_12214CE9 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============6680322713669865987=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============6680322713669865987==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3A9B8666-5C9E-4C23-A8CB-9A4039E6EDB6";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_3A9B8666-5C9E-4C23-A8CB-9A4039E6EDB6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 21 Jul 2019, at 17.32, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> This patch just syncs-up UAPI header from the kernel.  No functional
> changes included.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> linux/lightnvm.h | 52 +++++++++++++++++++++++++++++++++++++++++++++++-
> nvme-lightnvm.c  |  2 +-
> 2 files changed, 52 insertions(+), 2 deletions(-)
>=20
> diff --git a/linux/lightnvm.h b/linux/lightnvm.h
> index f678ffb..c937160 100644
> --- a/linux/lightnvm.h
> +++ b/linux/lightnvm.h
> @@ -77,7 +77,7 @@ struct nvm_ioctl_create_simple {
> struct nvm_ioctl_create_extended {
> 	__u16 lun_begin;
> 	__u16 lun_end;
> -	__u16 over_prov;
> +	__u16 op;
> 	__u16 rsv;
> };
>=20
> @@ -135,6 +135,44 @@ struct nvm_ioctl_dev_factory {
> 	__u32 flags;
> };
>=20
> +struct nvm_user_vio {
> +	__u8 opcode;
> +	__u8 flags;
> +	__u16 control;
> +	__u16 nppas;
> +	__u16 rsvd;
> +	__u64 metadata;
> +	__u64 addr;
> +	__u64 ppa_list;
> +	__u32 metadata_len;
> +	__u32 data_len;
> +	__u64 status;
> +	__u32 result;
> +	__u32 rsvd3[3];
> +};
> +
> +struct nvm_passthru_vio {
> +	__u8 opcode;
> +	__u8 flags;
> +	__u8 rsvd[2];
> +	__u32 nsid;
> +	__u32 cdw2;
> +	__u32 cdw3;
> +	__u64 metadata;
> +	__u64 addr;
> +	__u32 metadata_len;
> +	__u32 data_len;
> +	__u64 ppa_list;
> +	__u16 nppas;
> +	__u16 control;
> +	__u32 cdw13;
> +	__u32 cdw14;
> +	__u32 cdw15;
> +	__u64 status;
> +	__u32 result;
> +	__u32 timeout_ms;
> +};
> +
> /* The ioctl type, 'L', 0x20 - 0x2F documented in ioctl-number.txt */
> enum {
> 	/* top level cmds */
> @@ -150,6 +188,11 @@ enum {
>=20
> 	/* Factory reset device */
> 	NVM_DEV_FACTORY_CMD,
> +
> +	/* Vector user I/O */
> +	NVM_DEV_VIO_ADMIN_CMD =3D 0x41,
> +	NVM_DEV_VIO_CMD =3D 0x42,
> +	NVM_DEV_VIO_USER_CMD =3D 0x43,
> };
>=20
> #define NVM_IOCTL 'L' /* 0x4c */
> @@ -167,6 +210,13 @@ enum {
> #define NVM_DEV_FACTORY		_IOW(NVM_IOCTL, =
NVM_DEV_FACTORY_CMD, \
> 						struct =
nvm_ioctl_dev_factory)
>=20
> +#define NVME_NVM_IOCTL_IO_VIO		_IOWR(NVM_IOCTL, =
NVM_DEV_VIO_USER_CMD, \
> +						struct nvm_passthru_vio)
> +#define NVME_NVM_IOCTL_ADMIN_VIO	_IOWR(NVM_IOCTL, =
NVM_DEV_VIO_ADMIN_CMD,\
> +						struct nvm_passthru_vio)
> +#define NVME_NVM_IOCTL_SUBMIT_VIO	_IOWR(NVM_IOCTL, =
NVM_DEV_VIO_CMD,\
> +						struct nvm_user_vio)
> +
> #define NVM_VERSION_MAJOR	1
> #define NVM_VERSION_MINOR	0
> #define NVM_VERSION_PATCHLEVEL	0
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index 62bdc40..b4b20ec 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -167,7 +167,7 @@ int lnvm_do_create_tgt(char *devname, char =
*tgtname, char *tgttype,
> 		c.conf.type =3D NVM_CONFIG_TYPE_EXTENDED;
> 		c.conf.e.lun_begin =3D lun_begin;
> 		c.conf.e.lun_end =3D lun_end;
> -		c.conf.e.over_prov =3D over_prov;
> +		c.conf.e.op =3D over_prov;
> 	} else {
> 		c.conf.type =3D NVM_CONFIG_TYPE_SIMPLE;
> 		c.conf.s.lun_begin =3D lun_begin;
> --
> 2.17.1

LGTM


Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>

--Apple-Mail=_3A9B8666-5C9E-4C23-A8CB-9A4039E6EDB6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl02nuQACgkQPEYBfS0l
eOBfvw//cCBlpGA/X8nAvGcr2VyBxraQjSKXPxF7XybtuSx0GmCPy1sopmedVN+0
k56DbwSknn500XVzCyu16nFqzS/MrZvp1h+6jWerX2I6Qx2YNIYgIAk85Ea4+KTv
xNzoByIiZP7j8E+a+Ga5vJ6BU2keAuubo4fPJxSkCgM6rvwbXoMD6uBJMwGwDETS
qpsDweSYzSRumMJMs7ns6RSsNJpcoUVVoKAo8SPBcBh5qgBYxB77yuWHP12TTvqy
7YoSkixLEL8f97/UwnjUsIEMe8J9EA8QSS5b9C9V1b7+QyFkNyT9FRxePBuLA8Tv
W3TXaWOuycD8NtXLsib7J3iwK+KM1sXARdkXv26GVWgyv17lqXgkzu31zlUmmX7+
k5u6NYBjkpDS0Qfwd8fXg8kaD7H53RLZfJpW0s6rqV7u6+XTlp51KSmoGO2Ua/rF
7NUbrYYLEZ4QmMomO1vZ5DYroXSIViGGvx7SnLuOoleCcWWAmhAuMEcqaEiZq+zo
9zejbjsnDL55sukSaVDRgwCcwyjj31NKkps22dW33ws7TAYOPbyBCJDIZBpBKzAk
UKU/a4/0F5aQJih14pxeUPJSJja0u6amYJ3QKy5TMi7ThA1bsM7s2Tg2zt6F1u99
Lo+Np8OfLC0swvVB7LB/Te13wcFhJKLqhmWt/zZeTtwsXp+K7JQ=
=l34N
-----END PGP SIGNATURE-----

--Apple-Mail=_3A9B8666-5C9E-4C23-A8CB-9A4039E6EDB6--


--===============6680322713669865987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============6680322713669865987==--

