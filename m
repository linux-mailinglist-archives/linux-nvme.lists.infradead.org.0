Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF4971153
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 07:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mqR0STDnmPZOxcVtBzX++VkmGRtWQ0TVlzhWM418C8k=; b=rDker9LLG1AX5vZQRAZBSoaPH
	IQpaljxfytp6Vn4xHu1LNs/FAl5wGJ5k6Z/JvYB1FMH1vB1YjHcgbELlVK0BIAdt/QE+i9zcIYS5B
	lG0erK8PvGUmrk9AsIyDJ/XmwhRdK/S70qtd7LmjlN1au9fvfA7ggDwH6yMCRMAFtYBsU8XPfCa8C
	IMFIeHsrDD8s35Zb9/BdELGvD/XRwsKk35RQU4nJ6YOBmbs+9x8KrrYUbdL2Y3E/AfKUE2biWKPw0
	l2Shi8vxD9+c8mgo55xhnsfiWjYlQKTuteIYAGwWTVhYISbidlthrayhzwOBL2gdnDjWQvTyE+u0t
	rnJZmx1IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnbR-0007qG-QE; Tue, 23 Jul 2019 05:44:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnbA-0007lS-4H
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 05:44:29 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so39849115ljh.2
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 22:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=MayXrcd1+b0MxUGyzgVPzj5QOkNCyoeWqdXgnCmLHBI=;
 b=KCHwCiYtihNfJj2QxezsJdDKvdj+he4uSORTv3v5AX2y6a04hRaxvkfiAQUW1FLKMp
 I2SUoZXE8yPHpCQQB9nXd7vi49dwVVhHlt3s0HmxPgnQ8MK7i+GWOZgykjUTlSo0dKOb
 brrdrHDWb+/0b2+liSaJpJpZc8RmiOFGxp3h16YxdfBtdBGRTYh1kju3N9+rhrcJ8Ly/
 WFzZ2XVTijZST8nho/hLPdPX+dtbpeCV01e85oNVCKiNgY5wOlppXLhdQUL/5s3WNJhS
 XC9NyGDnY4DY28qYfQWkYNKjNXgIqNAOF8r/Wl0ZOJFGT6WyZ45NNr0V4IQiXeT2/QTb
 TFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=MayXrcd1+b0MxUGyzgVPzj5QOkNCyoeWqdXgnCmLHBI=;
 b=mqCD39lWtIHKz84zSEwIeZ32QolO8Hn0Zrcd45iizzHltI+kEiEqnUKRSA/iyZg3cH
 14YTbC9B0WmwgPh7dvapk4J/MpSSMOSN2pGigbPhdPU6pdCybHTtJP0KBJwEw00nTR2y
 btTm1buVYEaGrjscTO1cLQXM2/+eKP+gzVH7kBIf9O7ipTsiOM6cWRetLw89p+8T1mGY
 rP8HBblrhtlXvunPSik8GWQjJkrtgaK3nlr8f7x6EiAeBX3eAzsFlvHb6uH+9FUGVSIk
 WJbnBsWb6reTK1dX56XdBNegdrZFYVS8+CBdCflcpcYDJwlcH7C57VGA5lrqSPX/maOX
 iuNw==
X-Gm-Message-State: APjAAAXyaBBFijcVbiEeQeOvlo27cvxhAfVmoIAweF+8N1avz+Qy4bef
 yvBefJbdXDczabqMXLmpX2g=
X-Google-Smtp-Source: APXvYqysmYOFqiZjeXuVAcuW5jSS/U6i4yJApUNkziFA6jlM6fFUyMXuaOhhOICwtAl2toPeNY1MBw==
X-Received: by 2002:a2e:94cb:: with SMTP id r11mr36472816ljh.212.1563860666275; 
 Mon, 22 Jul 2019 22:44:26 -0700 (PDT)
Received: from [172.20.10.13] (212.27.18.194.bredband.3.dk. [212.27.18.194])
 by smtp.gmail.com with ESMTPSA id h22sm7884553ljj.105.2019.07.22.22.44.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 22:44:25 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <D149564E-916F-477B-AE28-8421EE52EC2C@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 3/4] lnvm: cast identity structure to (void *) directly
Date: Tue, 23 Jul 2019 07:44:24 +0200
In-Reply-To: <20190721153219.5730-4-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
 <20190721153219.5730-4-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_224428_221508_63CEFF93 
X-CRM114-Status: GOOD (  15.11  )
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
Content-Type: multipart/mixed; boundary="===============1160749920889003138=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============1160749920889003138==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_447B8260-99E8-4D1A-A615-0AA2AAB7D2DF";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_447B8260-99E8-4D1A-A615-0AA2AAB7D2DF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 21 Jul 2019, at 17.32, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> If we use "tmp" or something like this, we can expect that it just
> stores the previous pointer and do something else with the previous
> pointer.  But, in this function, it just to cast it out.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> nvme-lightnvm.c | 5 ++---
> 1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
> index 0b99786..62bdc40 100644
> --- a/nvme-lightnvm.c
> +++ b/nvme-lightnvm.c
> @@ -422,13 +422,12 @@ static void show_lnvm_id20_ns(struct =
nvme_nvm_id20 *id, unsigned int flags)
>=20
> static void show_lnvm_id_ns(struct nvme_nvm_id *id, unsigned int =
flags)
> {
> -	void *tmp =3D id;
> 	switch (id->ver_id) {
> 		case 1:
> -			show_lnvm_id12_ns(tmp, flags);
> +			show_lnvm_id12_ns((void *) id, flags);
> 		break;
> 		case 2:
> -			show_lnvm_id20_ns(tmp, flags);
> +			show_lnvm_id20_ns((void *) id, flags);
> 		break;
> 		default:
> 			fprintf(stderr, "Version %d not supported.\n",
> --
> 2.17.1

LGTM


Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>

--Apple-Mail=_447B8260-99E8-4D1A-A615-0AA2AAB7D2DF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl02nrgACgkQPEYBfS0l
eODPxw//V9AM0ti4alDULLz1IlYtSMPbLvCcnjiRUJYh4/lvtgQfeXZTQe1/0UwM
AOAMKIehC2W4v7+BxFV4C2sfPOxmAM+S0Nv+mBz9E7KHWt3JRtDZlY7shYLh5ewr
mzslEYQqHPwXiUCQVzuGLzsPMv3E/0nk02LEoR//n6sCTe9gzKXAN4pBAPDILwgi
zgZI69FuoNlejTnjI/pL4hMGYWHDWQuzD0VAyNU+6tVEoZhfq9tlBrYAzf3NTeQH
oT2EqoCaBoCsK+uffv0E+KaSt2Ij3c4t61wmFwgHVqA7HaHAJjrl3o1ky/dDxzOm
VdTHBjXnRoTCfJEthoyl/iHEVh/xQ0fMUGLM9zegzheqdFcaeuMUeA/6tn/0bpqW
+AlP436AzwnaefQtJ+WCTez9ff2zUUpGKTZRxDEBPxknXIe6i2xNfZ1MuoGSqvwh
Oo7ZNeeoNGYMxeIMbp3k/0EF6chEjJuB7edm3z532AWiQ5zk2uNnXyinZL1PUi5C
mCVH5P9ALdESwWr8HeaICsghJ8cj37hDgDmXOxlIiXYDeUmt4lBVH1l/lCALZjo4
FyFdTezt7UvPcbjpgkOyuo9srWhNOVVtXwPf//wKQmtgSJI91xdiofe3iOY5mH7k
H+Tp03ayTWzZ/9YbItAgwdjl6K56kU5ubCzFZAqKQBz7lkc1oiM=
=2mJE
-----END PGP SIGNATURE-----

--Apple-Mail=_447B8260-99E8-4D1A-A615-0AA2AAB7D2DF--


--===============1160749920889003138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============1160749920889003138==--

