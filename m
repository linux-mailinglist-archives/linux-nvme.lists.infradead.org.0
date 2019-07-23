Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EFF71152
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 07:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z8mB5H6BtFB6CDqb9+OfKSE/BDOTaVSZaQ9dTG3x7bg=; b=co4jranuZ5ml2GIJ+sYKmc253
	9NDsvCCkjmpiqs2nMVVcwGnJ5cXvDJEPNqHxlh6Pz/1xsHGk3lzH0yLgbTLDed1FEYQwZaEnXh0jg
	ft8laeIYR1r8aUMKHVfQ0IzOD7kmnZB3gcPubB3gPcL7+ApuFXc6TLCWoaJ180bFroF5QQn4OzOfb
	NKgdqoKIDF+iNo0scWfzGcJsuhLTzjd6Fo7/6vTDHdfjwLy76O0rciv9u/5/aq8DL3ygXs83J0Upl
	EIrZIn1Csf6a8jv49qaWZPDrgdsj5afkaEEVcqlPIVXmjJpJuhmko/lsjKjN71FV2MAVreJ0jX3Ek
	v0m2+Lskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnbE-0007id-5I; Tue, 23 Jul 2019 05:44:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnb1-0007i2-Vw
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 05:44:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so11410863lfm.11
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 22:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=MNWR8/lyKcJspO/yaSHT5G043WncONzG3MbEM0tdldg=;
 b=mtSPUokoYAqcU1qGfJKSFhi6KVcN6845Fty1PfDBdZIcsZ3Ur7LmdTVQtKUeaeNvUY
 VzAos+HEr2x5G7LxOu5NPOwJ0TJH3sggCAq6q2XjCKIR/o2NSbZE8ek2Ne53r/P4uiDg
 EHL5DMgkNlTHC4x2ixQ5h7UVfNmbXV3bLb2Qgm3Z5Qvz/2d/lupdKpR4I2njhCr7nJDd
 Q8n8FxkCbm69Hrnmzcee3G5bx4ag04YgOok5zLPhkVLLptTInr5Al0IbxAVeKfwOruQI
 BXGpvFh9EH+3XPJ/DJg0Cikz9m++OR2DEgnr8jEduNvV2YJnswn2o64RkF1z9XjsGO0X
 BeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=MNWR8/lyKcJspO/yaSHT5G043WncONzG3MbEM0tdldg=;
 b=sY/uF+4vhLObl5Vq64yndLmsrrKzfBvl6SP9AUKHRLNeItxQx5XN4sRuHZ57NUuEue
 yaOcWb6E3onAhRGdQOLpeykxMl/qffTNKJO6UDl/XwwvgF1uoLSHR47Eh5I6Q/j1g+qm
 PsIrrNRa9znL0Id5uTByp4k16KfvNtQTE2gH7QwxLVMtrg4hH9osjsGO8zXkQYeHK+Rt
 tAzgawDYzbHuAi9hi3Uxsec9q9jhgKb4GWLN9pEfDAokHRDnVrQfjAD9LEoZ8fc+DeEV
 /EGnZDFTlofgYt7uJQ/xy3/PKxQE3xdurug9v23wp1dlYSpobTQe0ARiXEpzv31WLUuy
 Llbg==
X-Gm-Message-State: APjAAAWJCaYEErsDfN+qjkq1RpsBvI3lbGLjRr6GJeVHJC5qZC+jQbF6
 AKjXkWHxYVYpsM0XCbiHhhg=
X-Google-Smtp-Source: APXvYqzzc2oH4JEWfjP4spk6VKsQQKTUqdqFJdigkjDyk7Vr8EBr2+rSkJkihO0eUQOVaHmYob4ULA==
X-Received: by 2002:a19:f24e:: with SMTP id d14mr35400676lfk.184.1563860658387; 
 Mon, 22 Jul 2019 22:44:18 -0700 (PDT)
Received: from [172.20.10.13] (212.27.18.194.bredband.3.dk. [212.27.18.194])
 by smtp.gmail.com with ESMTPSA id h22sm7884553ljj.105.2019.07.22.22.44.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 22:44:17 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <6B21E49E-879E-4993-AEED-44A27FBD0011@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 2/4] lnvm: do not print 0 when the arg is not given
Date: Tue, 23 Jul 2019 07:44:14 +0200
In-Reply-To: <20190721153219.5730-3-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
 <20190721153219.5730-3-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_224420_281008_E8AA2605 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Content-Type: multipart/mixed; boundary="===============2554939352482042674=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============2554939352482042674==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8627A48B-D66E-40D5-898F-0200EF64417D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_8627A48B-D66E-40D5-898F-0200EF64417D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 21 Jul 2019, at 17.32, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> If an argument is not given by the user, it just needs to show the
> situation, not a prominent 0 which indicates the size of the argument
> variable.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> plugins/lnvm/lnvm-nvme.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
> index 37b6733..aacd469 100644
> --- a/plugins/lnvm/lnvm-nvme.c
> +++ b/plugins/lnvm/lnvm-nvme.c
> @@ -48,7 +48,7 @@ static int lnvm_init(int argc, char **argv, struct =
command *cmd, struct plugin *
> 		return ret;
>=20
> 	if (!strlen(cfg.devname)) {
> -		fprintf(stderr, "device name missing %d\n", =
(int)strlen(cfg.devname));
> +		fprintf(stderr, "device name missing\n");
> 		return -EINVAL;
> 	}
>=20
> @@ -179,7 +179,7 @@ static int lnvm_create_tgt(int argc, char **argv, =
struct command *cmd, struct pl
> 		return ret;
>=20
> 	if (!strlen(cfg.devname)) {
> -		fprintf(stderr, "device name missing %d\n", =
(int)strlen(cfg.devname));
> +		fprintf(stderr, "device name missing\n");
> 		return -EINVAL;
> 	}
> 	if (!strlen(cfg.tgtname)) {
> @@ -265,7 +265,7 @@ static int lnvm_factory_init(int argc, char =
**argv, struct command *cmd, struct
> 		return ret;
>=20
> 	if (!strlen(cfg.devname)) {
> -		fprintf(stderr, "device name missing %d\n", =
(int)strlen(cfg.devname));
> +		fprintf(stderr, "device name missing\n");
> 		return -EINVAL;
> 	}
>=20
> --
> 2.17.1

LGTM


Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>


--Apple-Mail=_8627A48B-D66E-40D5-898F-0200EF64417D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl02nq4ACgkQPEYBfS0l
eOAjqg//ZWprnOISI/j7xheyOpMS1R+9y8IIwDZ/h4+8oRcmO2WaNdpOsPvRuMQ0
XWirClFQVtndAk2eTKV6DLESlXopbxlyRnW5slh5vdY4YENshqV19s8iIaKYvSqj
/uOEyDFHa1VdTPy6d70QAA7ds61DKAZ1+AibADKI1lodPgZr/Ubm05fXWwbcZ+HL
YXBuTyi940PfvJtnDzpfwDX1c2bFL6jxbG5yxvhWng+EYUILkA38xm0Q3ZDheAGz
Fg8m+Ym5O/SbC7CtLi5qkMiVvklF9lmrk19/jiqFDJfsJD4lbVnI+jA/kZt00DFF
WyE5A8YadbywjM+R11/vG6R26en8X+YCn0zIPi1P5kEsD0TpMJqRb2dLY7lhf74p
qFikS6n4nkSFD/ototF/cLZoMWya/H50tG0ImtIKS3ei1nFo15J1ZFSD1jr84aM0
ZfUIO6lLE6T4bOWSUWmXlGPsxrHP4o5VpLkbKRva20DoD5JzOrTg/wahianh+bx0
59wnSX4nhhR9Gxe4FzuPajRGLbqdrH7YD4eQX6guzUq5SsyR+Ek5v1K/kb94o+iG
KoLt8q69vM7AZwzppzawhV/mRWgxquG866Abn3Gf8So+9WDM8c24MGyr5m+h+ae9
MhHUVXlwsfPzrrUFX/+3dLQve9wUfPjyuQtanv7tPSDUWC3NV/I=
=NZOp
-----END PGP SIGNATURE-----

--Apple-Mail=_8627A48B-D66E-40D5-898F-0200EF64417D--


--===============2554939352482042674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============2554939352482042674==--

