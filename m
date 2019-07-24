Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11E4728E3
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 09:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RGyXNrhUX1LR7qmrNNKCOQKS5FB9G29uYGHd68Stbxg=; b=gn3TKiBMjxvt+iZYR3/WqgizN
	DpW3fByBEjyfnBdIaDQY2GcL2+03Pd/K3JWRJnERIYTMCivqYE/4FAcBYOIVoObPgmw/uaHd2fhLL
	4PZFcA3HMMQ+lT3qBNebqsj6D/j3ytWb9svPOsRy+sX1133JdSxRhk9G3aOGhjskEa1jkkJkKY9TI
	L7oBqWLrd/2hIr0RcpIkjMx01ynrwaPWFfXvUP+i2eVosyVDL2Y65vjAuEQ5acP+83daSvpA0Tbgz
	0e9zSZE0FzjJDQrDo+IMqPti4kAIp8i3nKdCY+AzANUKOqvgePyjp/5oihvz4mELBNbrfqewvgfMK
	/GmX2EecA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBUN-0004XR-EG; Wed, 24 Jul 2019 07:15:03 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBU0-0004X4-0Q
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 07:14:41 +0000
Received: by mail-ed1-x541.google.com with SMTP id w20so46137646edd.2
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 00:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=FkmiazkH0FnagaZcdUx67oi6MIwcxIa2OIhXoRsyUTQ=;
 b=GjkPqjf+36whGG2qvS2WgNklTUzA4pv/3Ce0K6QNlUdD16kDoCu1urBQVxSR0RKtgX
 M4PPEhOj4zu2BA8aac0OAJm0CXoMpj5iuIEI8Yw/wUWlHVltUvhmkiTKus5htaN8gau5
 hshoC8op2XyOxiUm8k6YClcDxaSunhhFAoJWkt8lylcxAgaQ3MLqWnkETZo99BDRXsPS
 IEfAANDfbi9NNwAytENtwBkQcok9nENzy1N7YvPq3kJEg1q36AJN4D8z0ZOHURN6RleA
 F3+D7cSdR5LUGz61kPlt0NYXTFKRYMnklhMrITEYLQJIHtd5b0gTtONoj3SiGEiocj75
 4Ktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=FkmiazkH0FnagaZcdUx67oi6MIwcxIa2OIhXoRsyUTQ=;
 b=XYZxJyPwvhu+9q8qfn+wo8TWggAUOrwcEVdTh5elKyI2gR5U94PV7GiM1wmPGH/esi
 TVB3/NDSHyDga7DKtycgl23caxgaD512BvlqOrg/si/MoUzW7/TOceobYmLGPqWC0oqe
 /sYdqpI1FfdMRXCzbDCPvV8Su6kEav8Giyu0RXIl4mJ5+WXHX82IPK0CBysM0Q3RZyco
 w7zRGF/JPuPXeCQ+Wa4+V7eix14z+ZYPxVyv0Sfuz7wTVBrE2ewhq6DL5jE4Wy+WGsv3
 466Zjs9s4ffFEBy+RB3fbg/prktw3s783GMs8RWVU2m33SReOVu+pCxmL2RtPw0NVPow
 1SrQ==
X-Gm-Message-State: APjAAAXaanHKFMUdM2L77Q6xB3WqBcB5OY80v3FTkILHIP5ftv+7p6oJ
 uPGabnaMHck10BRrdYHt01o=
X-Google-Smtp-Source: APXvYqzYcZ+VG422Qc8bH4t4B6TEx8bd43GcEbahs9dR4IASkAyVdfKcR83gmLQSvU5bRmTUixpjuw==
X-Received: by 2002:a17:906:8409:: with SMTP id
 n9mr60485580ejx.128.1563952477894; 
 Wed, 24 Jul 2019 00:14:37 -0700 (PDT)
Received: from [192.168.1.143] (ip-5-186-122-168.cgn.fibianet.dk.
 [5.186.122.168])
 by smtp.gmail.com with ESMTPSA id x55sm12654957edm.11.2019.07.24.00.14.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 00:14:37 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <0C3D57E7-D810-41E7-ACA3-298A47077A6A@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 1/5] lnvm: make data_len to sizeof() instead of magic
 number
Date: Wed, 24 Jul 2019 09:14:36 +0200
In-Reply-To: <20190723183601.29370-2-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-2-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_001440_112148_561CBC90 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Content-Type: multipart/mixed; boundary="===============0869861724151691667=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============0869861724151691667==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DA203658-4881-4704-ACF6-BA2B4BF57154";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_DA203658-4881-4704-ACF6-BA2B4BF57154
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 23 Jul 2019, at 20.35, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> We can have it as a sizeof() instead of the hard-coded value for the
> data structure.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> nvme-lightnvm.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index 0b99786..e8cdccd 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -442,7 +442,7 @@ static int lnvm_get_identity(int fd, int nsid, =
struct nvme_nvm_id *nvm_id)
> 		.opcode		=3D nvme_nvm_admin_identity,
> 		.nsid		=3D nsid,
> 		.addr		=3D (__u64)(uintptr_t)nvm_id,
> -		.data_len	=3D 0x1000,
> +		.data_len	=3D sizeof(struct nvme_nvm_id),
> 	};
>=20
> 	return nvme_submit_passthru(fd, NVME_IOCTL_ADMIN_CMD, &cmd);
> --
> 2.17.1

Looks good.

Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>


--Apple-Mail=_DA203658-4881-4704-ACF6-BA2B4BF57154
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl04BVwACgkQPEYBfS0l
eOCDFQ/+JovRPw7B7qFMglHTquuJD8RDGrWEjbzmWDgW2uTIZyxq7PACaP6AtMxj
ng7ybO+D7eUktoUjfGZ/6CeuYHl0BsLhFAghDL0s4EPvG1hUSmkHBSGfb0CKH7or
MbrwtEQYzK4wmphbTubSxiqh6xUD1kgBwxtDL+hkf3BIj8telELgl6SxDWaKg5nv
DeLd+b/4+FqWSjojdV0E8BQ9eOxdtrlG+xPkW96jQ3QNQxyyXwVb6PZIkoOZPUHb
p5ggAX44nR4zMxvyd9Bc0X6vA5KCKWN7v2diEhacSfB89cSsDC09qZXSnM3cAIpE
G3PPKcVaq1jpweeFG47eKwY60YBc1qAjOixQTc65J00x+gz+FtWwbulXvhFA5stC
mfMQmFuSf629SfWJFU/9i3WhyGyY4ckuYrSSRdrqwvb3ny7nSYw5GLOw968Jas00
HSqPFeRXA0nLoNQ8378Elp7+eoHddVMxs24/k1cgejA5B3DEns4H+/gtBCPV/ary
pMeVchSNR1Hm+G12JYPd3YoQrCw7h4Sb8sydqwclJPR2iOSsdlYRVmBYXh4Q43Gt
mqIHnYay91Su+/xqh8KLYQ1HVQZ+Qk+5l3VG0h9M+gX1PP3qCtWj6RKOk+LZga5r
3h0/9pvtV6ZJ9D7rIL9QwOGkEJW6GP4UdSXiH54812JiE/qjz88=
=fx2n
-----END PGP SIGNATURE-----

--Apple-Mail=_DA203658-4881-4704-ACF6-BA2B4BF57154--


--===============0869861724151691667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============0869861724151691667==--

