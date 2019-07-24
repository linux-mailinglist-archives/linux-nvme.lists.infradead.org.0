Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C50728F9
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 09:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5qpQqn3NKhiKesOBeCypyvNw3ANDwQFIYS0rkNfNJU=; b=iCUJpGLPEea7+LpwGXla4bqVX
	a9/Ax6LOnEyH/4V5yrvzFKz5d6gOxnM2nXtgSHalODOkxdfxfeb0QcZ1EmqP6Pq0XyUNWtF72/hjK
	/PHqAkKT3O0HIXY1VWglPnZlbGgHBSOQHsooj+i1sDps8v43XGYmoI66o9KnNtcFHn59xXFT2I1NR
	PhOb13NSs6ZhaMTatSW4QQQ3j9xKy7CZHIZ2eWIvpkWHtk8tB4l6oZZTVzjfCgtdTZqaUfxYXBx7m
	EaA7kDnCGigd/3po6b+wVA33BKxDncsg00/+4P4XzNskX6+mfS0vZ91gBUa2f83hjDKGj7XdV5jiU
	x0Vwevy5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBdF-0000Bm-DM; Wed, 24 Jul 2019 07:24:13 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBd6-0000BK-AC
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 07:24:05 +0000
Received: by mail-ed1-x544.google.com with SMTP id k21so46216643edq.3
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 00:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=hnw3KAb181QV6R/uVkl4PujvhkNciSFwtAaYo6Z0cDE=;
 b=IdhmF1u1hPyZbvZMXWlF3bPPc+JM1WV/Mx05C2zY9ew4/tDTOrPMDRo1Y840q9+tsu
 ckMiY38uQREm8vGLR5EjZ0Ux5OYG6uEN/OQAPbHAtHND1udduppJQ4VHrEM5Ac8UpfH/
 +NZA2AoUZqI7lb1HOuwhKKhgRlWtsJ6mAJ33E9/34OrEbKpEko7ADzQ7X10VhuOQuIHF
 PxcimB9f2Sy1K2Ws45qPZtexJsfHbn5SYwerS5iI8sRjDhFzKr2JP+sCIuXr4IDK9GGz
 pKxoXpVhU2GoJ5LdizSr13kXxwqRfErsEJ6gOL6zPksX7TYgYf90jvpgzCQoIVBtj+WW
 bqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=hnw3KAb181QV6R/uVkl4PujvhkNciSFwtAaYo6Z0cDE=;
 b=ClcegtAPPqOQUNs3niOQxHg7QznXA5RhoD+XgFlxwxvzFq4gc5rOqoa9mECBdp6WZt
 nddPaOEjr3ggwbkMmhnpBqqw47/8IsFmS1ShUpx6dWJA19sYj03D8tlQb+RXQrT1o42W
 0TE5wpEzxfkRmUQdjhTksmrEZrCJ3IwQwNnjyKa2cJEKGSNosbfy+FG6z4uZuoeihC5w
 c3C50Q/D93t7xx11h3bj7Oe1uOfO7F9ZDb2Gpjkj+XYLFVmsgiUt1eBYjwum1DFH2dUj
 HnZyDnzWjLegS2T5H/l3shywiA1qOIT59SA5qBtNhlmajquf4vodV1kIP5XSOHIq/xCH
 DTbw==
X-Gm-Message-State: APjAAAV3vGwnNUhThkjNLlIXcJOQKaIW2oeO1v4b8bBumUXcCg0jVbGt
 8Hpp/k+DinCGKoMIv59L9mU=
X-Google-Smtp-Source: APXvYqzjXJy7bQjCvaBhO9x2E60LO6aLBHvRl3nr15iIYvWvNHEFdo1VItLyzsktalBDcW1HQCeIQg==
X-Received: by 2002:a17:906:1e04:: with SMTP id
 g4mr62067780ejj.48.1563953042803; 
 Wed, 24 Jul 2019 00:24:02 -0700 (PDT)
Received: from [192.168.1.143] (ip-5-186-122-168.cgn.fibianet.dk.
 [5.186.122.168])
 by smtp.gmail.com with ESMTPSA id h2sm11974509edq.33.2019.07.24.00.24.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 00:24:01 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <4AEE1988-5741-44C3-989A-2798DC5EE819@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 2/5] lnvm: export lnvm_get_identity
Date: Wed, 24 Jul 2019 09:24:00 +0200
In-Reply-To: <20190723183601.29370-3-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-3-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_002404_360936_00DBB5A1 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Content-Type: multipart/mixed; boundary="===============4826742115727823254=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============4826742115727823254==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_497BE285-5285-4216-8714-1DAB55D5C2FA";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_497BE285-5285-4216-8714-1DAB55D5C2FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 23 Jul 2019, at 20.35, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> When a subcommand wants to fetch Geometry, this function would be the
> one to be taken.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> nvme-lightnvm.c | 2 +-
> nvme-lightnvm.h | 2 ++
> 2 files changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index e8cdccd..2e665bf 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -436,7 +436,7 @@ static void show_lnvm_id_ns(struct nvme_nvm_id =
*id, unsigned int flags)
> 	}
> }
>=20
> -static int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id =
*nvm_id)
> +int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id)
> {
> 	struct nvme_admin_cmd cmd =3D {
> 		.opcode		=3D nvme_nvm_admin_identity,
> diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
> index 9dea912..9dc1868 100644
> --- a/nvme-lightnvm.h
> +++ b/nvme-lightnvm.h
> @@ -299,6 +299,8 @@ static inline struct ppa_addr generic_to_dev_addr(
> 	return l;
> }
>=20
> +int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id);
> +
> int lnvm_do_init(char *, char *);
> int lnvm_do_list_devices(void);
> int lnvm_do_info(void);
> --
> 2.17.1

This and the other helpers for patch 4/5 looks good.


Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>


--Apple-Mail=_497BE285-5285-4216-8714-1DAB55D5C2FA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl04B5AACgkQPEYBfS0l
eOANaBAArAbUprvd1zdSnc1uZbOzS4YhR9ktzbj4Al8+LI7BKLAAXbzMUIlwGMm+
eUfY+WDolj0f7ZZzAWjr45+mbOI7Vo2U94+VeSJ7wJlwOgAy6t6PgXej5BiHVpmv
M3m0QuzVUz5I6JmwOcLQnGvq7QyZAZAnRjfwr0+V+RGJIttMu2QR57jJv/nLF2TH
QscjvyEc1TaRm9LpFYgQVzyGh03qp3SVW+miof5BcwvSyqQVdbWpi3ofzc/tz0C7
tHkS1Tb5JPFe4L/uP0xoUytXxB3TOH4QfViDqKt8N8AZwHaj2q0UkbkddIKmKxO7
KjN3duVIoOj4eAX9tc/fdRmMN0dHpBSvcXYOcZkfcvOPQ//yfE9DLRptA0TqimyB
BZpQUB7if4p/BZQVCS9UauDX27DBwIDzp7VK66Q3nlFJGTa1fonpLVrCSsZN38E5
tiTlEbJVVuj6FZ/QdWGaDrwNKOJT4zymFnkZycXftkO1ueGM6cJNh06IIJX+dDaA
fcIjW4a3gNtt70TsJbpAKXh3Tqcw0KhlIA8C4vgiKP0uDOTeTnJfNABb79fIXP/f
xXqV08BmYYgW9BqMSXD4m8YsgjOjVNzxOC4ZMVTcd7b75R90KKrfSxykMrUL98o4
BRDr6HDoaxO4GtmZj4hrPojOR/Y+RCxpbFS1x+zen0Kz5bSqvtI=
=40oo
-----END PGP SIGNATURE-----

--Apple-Mail=_497BE285-5285-4216-8714-1DAB55D5C2FA--


--===============4826742115727823254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============4826742115727823254==--

