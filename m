Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EA971149
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 07:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=87VMWpkh++8Y1LVgzQMM7un5GSX8Tt9NOHj3eqLMc8w=; b=CWgdb0e+2WGfImcJnJEz9WEoZ
	DE7thz8ThrsTn+z5vWO8yewu1GGrRxt2sh4C550Z2lUaOvAGBQX83LXENu56UYHtH74xqZkzLATLS
	WfpiZ6gRbvpAq8xVJuQSUh7/Lfvoughx5XX2d/uE50grZFGjBBAZkSxuo7eMIvr3amM7cb3P6p+Mz
	gsYxmHtdRO2QE7GSa2Y5hiAZ0lgMXBYv5Mu3jrY0tB44TMOQPnRSVC4P/uO+AZngCiUgfLOUr07aR
	CRDcWFTqwWiI8yhcK0Jvghqp7eUOtTUAkGslzfaxYFmvqCaDmNreUu86dmZo5AerfaU4/2+pK5BUl
	SvqXE63Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnX0-0005Nd-1H; Tue, 23 Jul 2019 05:40:10 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnWh-0005N7-64
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 05:39:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id 62so23524224lfa.8
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 22:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=XEN9OGfj4ubuh6oLDm2W6TKQCg4646JHSp571P1TA64=;
 b=NbB4NVqTurSwx+JXQaFr6oV1TMeQ3gWuiNNRfSnrdAX/QtIPz9B3HGZ303644rQZOu
 yQoqT2kObx/z6BPhdbMxp2M8Duwn9q3kkyL2UKhJxAFuZokx7oDlLjY8N4nHj1dALbfi
 J3T+Mr5fuDaYfWSx3loiDzLWX/R2Gi1flgndnrvUiXx+YL09kw2pcZm0geT/qlqdyFvx
 SHjLUm8rIVUFUOqHhl22Wg0hedquTmglysgyIp1l+t69C0AJjZP4jblws6bISD/XgWoz
 kqo7/wpAcAoEE85pvEM719sskQY3VtXIOgd4jJ8BVJbfZabs9YYfFD9DcyfKJZILVCl0
 EbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=XEN9OGfj4ubuh6oLDm2W6TKQCg4646JHSp571P1TA64=;
 b=p9YUAWIIms/5QVm/ljY4bK9j6tWb6yFx0UVOtNKqXj7dEGFClh0Ay6cEOEhQaUtxs9
 UtPC4d2KCJmJb/9KOTHB8o3wv8gIRdgjJCdrpQNdTYvcpBrQE5BT/7I/8vvXXHoalN1u
 0P9CCE9rH9wFrsFsBLvN9Pz1Vi+jLGEo8nNbsK7B2aDfNIKXBZ1ZZTnx8kIJaR+QD11o
 KdYmapTRU8xkoti97MmgBvOyZoLJTuuWENTEZOV5rI9FX9hm8DcntkchE5L95uN36D/q
 h6NnqRE0UthsbqmgDIZlHoCgpK4cDYMgetFQj4WVU9YQwwpbDa8ifC/WBPodSQo65GTJ
 3Fgg==
X-Gm-Message-State: APjAAAUeKjn04u5N/P9/byAIppxfY+VH13RWTcLJun447kCnt3ficpES
 owelshhsFYNJ0fDtkFc1vGQ=
X-Google-Smtp-Source: APXvYqyRZSVv8wYfDupvstOZGS4vhfETCgUSpG7tff95RxesucYZ4cVj6e5CoOf3Ye8ITxH+tu3nJw==
X-Received: by 2002:a19:4aca:: with SMTP id
 x193mr29865072lfa.146.1563860387698; 
 Mon, 22 Jul 2019 22:39:47 -0700 (PDT)
Received: from [172.20.10.13] (212.27.18.194.bredband.3.dk. [212.27.18.194])
 by smtp.gmail.com with ESMTPSA id y18sm7685718ljh.1.2019.07.22.22.39.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 22:39:46 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <500DD0DC-F64F-4A9C-9D0B-DD1F17C7290F@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 1/4] lnvm: remove redundant whitespace in lnvm_init()
Date: Tue, 23 Jul 2019 07:39:43 +0200
In-Reply-To: <20190721153219.5730-2-minwoo.im.dev@gmail.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
 <20190721153219.5730-2-minwoo.im.dev@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_223951_254953_D7312A6E 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Content-Type: multipart/mixed; boundary="===============1027118159178451357=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============1027118159178451357==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5C001D13-4E46-498F-A6FD-D60E714D4C43";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_5C001D13-4E46-498F-A6FD-D60E714D4C43
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 21 Jul 2019, at 17.32, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> The description for lnvm-init subcommand has a redundant whitespace.
>=20
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Matias Bjorling <mb@lightnvm.io>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
> plugins/lnvm/lnvm-nvme.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
> index 754931a..37b6733 100644
> --- a/plugins/lnvm/lnvm-nvme.c
> +++ b/plugins/lnvm/lnvm-nvme.c
> @@ -17,7 +17,7 @@
> static int lnvm_init(int argc, char **argv, struct command *cmd, =
struct plugin *plugin)
> {
> 	const char *desc =3D "Initialize LightNVM device. A =
LightNVM/Open-Channel SSD"\
> -			   " must have a media manager associated before =
it can "\
> +			   " must have a media manager associated before =
it can"\
> 			   " be exposed to the user. The default is to =
initialize"
> 			   " the general media manager on top of the =
device.\n\n"
> 			   "Example:"
> --
> 2.17.1

Looks good to me.

Reviewed-by: Javier Gonz=C3=A1lez <javier@javigon.com>


--Apple-Mail=_5C001D13-4E46-498F-A6FD-D60E714D4C43
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl02nZ8ACgkQPEYBfS0l
eOCefg//Y+UDkOvkq8MC34de1SgHO7e8jyyZHfHW4Tt9l2BzZQTJHnBI1TXgTXqO
YUxqtJo/08hT15jM0GpMTHoYqPb/jLV9qim+BUbJppdSxXJF1d/hSoy16gSkoG28
0fRMwoyTJC4oUSJ7aQAnzVLhspzMd2YQfuxBPeWj1sn5DgsL5AXVezFBKrefK+Aw
cVOq2p2YAkAiRw5RMJOqEZnlh7fsNO07ogWYBoQE0Kx1m6+TYNpAP2Q4BGjecIHY
CpGOCPHVqzRXGeqFh5viiFEJnOjqHCPAXkvELeF32et+6KcXn0mxYNztlFy39wL6
/48MOBH06liEhAftF+FYiGvMFVdA4HFmqVk54NjzcM9unhkrEdSYCtLIiAZ1GBWT
/9PIIPS7fBo2vSRNsDrQqgxVH0Wp5grNajd8MuFAU4w989Z9895LfX8aTW008sZA
4X1cK3ypbL3/k835cZhHOSJFa9xt/QkaNHfz6hv/YlH8KUPSQn1duflgHkvdzNJR
EEu3DYlhf/dz52+cKwGF7niM+D5fwpSg/PjUoqKZXcwBGOlvQu3TJ9pWNYjU3OaA
OOC1AF8WGy9tN/QzE+JRdVoeSvUa9vNo4va8lRSbJZUxPBMkv+jnEfG6eytlibm1
9HKd86jWId+vCZPWAXBOwTfoPjp7Bi9B4fHS3I0t3b8FIN6JmeQ=
=tPwu
-----END PGP SIGNATURE-----

--Apple-Mail=_5C001D13-4E46-498F-A6FD-D60E714D4C43--


--===============1027118159178451357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============1027118159178451357==--

