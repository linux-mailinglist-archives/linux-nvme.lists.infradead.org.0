Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAA07502D
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DLQlWWVfkxY0zfdQ4uXaGtpBRLpkLLbiPZiFtTbyB54=; b=Cvooq86/CJsm6H5/EZtebQtxs
	Ff7vhm6j+DzfGQPpRaSTKj0tNCw0iPYLAvg+6mV36wd+yZQrgunDq1yIrgJUhC/Xwem5aGjBlN0WC
	+ugQeDh5bWnDhnrjFuWHHeF7Nfz+ddPHJdgCJzcatEF1HSRd1TSVU378W4RVH40rnt01i8nDLW5Fd
	zzj2ncyF94N3eZhW8lG+Qx3VoYFqfaveIwCieox4oYpIymjvzHVVQeqAPxafQV7sxt22Hw0kiG9Ex
	GKwIKbmk3cz2VG7tWsfmdKiV4bkZbMjj1UaG7+oXPxqkrfLKvA51dY0yeOhguR2s38DuWQPcOxtok
	QWpNx5+1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeBN-0008PG-EK; Thu, 25 Jul 2019 13:53:21 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeBD-0008Op-SF
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:53:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so48174185ljg.13
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=l8JJat7LbJp5ZxHYIuek/mQ5vD4s1CeCwSLmoxEkMbI=;
 b=AGsja8/Ercmu4sE2cFYZd5fwJiysvtcaXbVxnNjESllR8UpjvMse1tb5nfd/t13EZv
 +HEgPE5LHP4p2uwcad7sO2myw/Dg8PmF9dfPlUTM7GdN0fqX0SRwTYuHfGvWbFwcRqKU
 ZO1rjC+6J+QFDKOLEQxxbOy/4inkydQO6hvUv1kV6OQ4ifS+8pMmndR10P/QRHKAzujh
 oQddOQnyeRsUb4w7xdbPLpaKSNNuziGewVb52kAZHyuJvtkmfqBR4DqxqCbuapEjDvR9
 HxSp/GYusxnAVac/Ld7mp6VPELWqglQisMX2wYhJAA0DqnMIlh50WDniFjYw/CUp4NMn
 +ufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=l8JJat7LbJp5ZxHYIuek/mQ5vD4s1CeCwSLmoxEkMbI=;
 b=qAWkgV8pAthlVJc8CMDv3ThhX+DF5MASaBPojwzQXjFgwjdh8Z1aBLV2AsmwfXXhXO
 8fewvqPKB8GGWK2bOTqLvxfrMqthyqToWUYlSir8hgprjjJ/vLxESrGpmtCSAdKJZ4IV
 0GAcynxR6Tz3ZPaN+crMnWaWPccjjZSldk7E6gQ1uzMm9mhnWwKz4B5VGs0A3CYDo2KN
 bPfiD9lZIP+CkS27JFMhAPseABcVVDdnAT7ijhkyM9Mu3KcIOH+z0ofNIDaVDDmiBCzz
 m77qqD0E8fyXTJBzznDNGm38vrq9Ib0MgdkPtxnJJSPHb1usnci4cI/MaOY9GsDbwBII
 q/yg==
X-Gm-Message-State: APjAAAXC7QN1VvhJcMRjhK6p/lRVnq7vxlBkRjdQW6a6f7XWFsnoGZjZ
 CWcGLAEFx35z46eJ44rjbtXvqQts
X-Google-Smtp-Source: APXvYqy4zDl1R7sGQ7FOzu4fn7gox9v3WKLxtcCWeW3CO1bSo7On2f6tiribuh0IVoWhdEP6psiPPg==
X-Received: by 2002:a2e:87d0:: with SMTP id v16mr6796609ljj.24.1564062789486; 
 Thu, 25 Jul 2019 06:53:09 -0700 (PDT)
Received: from [172.20.10.13] (212.27.21.176.bredband.3.dk. [212.27.21.176])
 by smtp.gmail.com with ESMTPSA id m5sm7434168lfa.47.2019.07.25.06.53.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 06:53:08 -0700 (PDT)
From: =?utf-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>
Message-Id: <C15E06A5-2093-4023-8B32-43005D27D898@javigon.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Date: Thu, 25 Jul 2019 15:53:06 +0200
In-Reply-To: <20190725133736.GB3018@minwoo-desktop>
To: Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <20B9C888-532C-4762-9886-8C5E196CB5A4@javigon.com>
 <20190725133736.GB3018@minwoo-desktop>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_065312_050364_71E91BA4 
X-CRM114-Status: GOOD (  15.88  )
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
Content-Type: multipart/mixed; boundary="===============5052038161787875705=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============5052038161787875705==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2B59B429-DDDA-4B50-9AC0-0FD1E710A1CE";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_2B59B429-DDDA-4B50-9AC0-0FD1E710A1CE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On 25 Jul 2019, at 15.37, Minwoo Im <minwoo.im.dev@gmail.com> wrote:
>=20
> Hi Javier,
>=20
> Thanks for the review.
>=20
>>> +int lnvm_do_chunk_log(int fd, __u32 nsid, __u32 data_len, void =
*data,
>>> +			unsigned int flags)
>>> +{
>>> +	int err;
>>> +
>>> +	err =3D nvme_get_log13(fd, nsid, NVM_LID_CHUNK_INFO, 0, 0, 0,
>>> +			false, data_len, data);
>>> +	if (!err) {
>>> +		if (flags & RAW)
>>> +			d_raw(data, data_len);
>>> +		else
>>> +			show_lnvm_chunk_log(data, data_len);
>>> +	} else if (err > 0)
>>> +		fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
>>> +			nvme_status_to_string(err), err, nsid);
>>> +	return err;
>>=20
>> What about avoiding the nested if?
>>=20
>> If (err) {
>> 	fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
>> 			nvme_status_to_string(err), err, nsid);
>>=20
>> 	goto out;
>> }
>>=20
>> If (flags & RAW)
>> 	d_raw(data, data_len);
>> else
>> 	show_lnvm_chunk_log(data, data_len);
>>=20
>> out:
>> return err;
>=20
> That makes sense, we should avoid the case when "err" is negative =
value
> which means the internal error from the nvme_get_log13() in printing =
the
> nvme status.  So how about this?
>=20
> ```c
> 	if (err > 0) {
> 		fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
> 			nvme_status_to_string(err), err, nsid);
>=20
> 		goto out;
> 	} else if (err < 0) {
> 		err =3D -errno;
> 		perror("nvme_get_log13");
>=20
> 		goto out;
> 	}
>=20
> 	if (flags & RAW)
> 		d_raw(data, data_len);
> 	else
> 		show_lnvm_chunk_log(data, data_len);
>=20
> out:
> 	return err;
> ```

Looks good.

>=20
>>> +}
>>> +
>>> static void show_lnvm_bbtbl(struct nvme_nvm_bb_tbl *tbl)
>>> {
>>> 	printf("verid    : %#x\n", (uint16_t)le16_to_cpu(tbl->verid));
>>> diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
>>> index 7a8ef7d..19660b7 100644
>>> --- a/nvme-lightnvm.h
>>> +++ b/nvme-lightnvm.h
>>> @@ -322,6 +322,7 @@ int lnvm_do_create_tgt(char *, char *, char *, =
int, int, int, int);
>>> int lnvm_do_remove_tgt(char *);
>>> int lnvm_do_factory_init(char *, int, int, int);
>>> int lnvm_do_id_ns(int, int, unsigned int);
>>> +int lnvm_do_chunk_log(int, __u32, __u32, void *, unsigned int);
>>> int lnvm_do_get_bbtbl(int, int, int, int, unsigned int);
>>> int lnvm_do_set_bbtbl(int, int, int, int, int, int, __u8);
>>>=20
>>> diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
>>> index 754931a..6f2724a 100644
>>> --- a/plugins/lnvm/lnvm-nvme.c
>>> +++ b/plugins/lnvm/lnvm-nvme.c
>>> @@ -1,5 +1,7 @@
>>> #include <stdio.h>
>>> #include <errno.h>
>>> +#include <stdlib.h>
>>> +#include <unistd.h>
>>>=20
>>> #include "nvme.h"
>>> #include "nvme-print.h"
>>> @@ -127,6 +129,88 @@ static int lnvm_id_ns(int argc, char **argv, =
struct command *cmd, struct plugin
>>> 	return lnvm_do_id_ns(fd, cfg.namespace_id, flags);
>>> }
>>>=20
>>> +static int lnvm_chunk_log(int argc, char **argv, struct command =
*cmd, struct plugin *plugin)
>>> +{
>>> +	const char *desc =3D "Retrieve the chunk information log for the =
"\
>>> +		"specified given LightNVM device, returns in either "\
>>> +		"human-readable or binary format.\n"\
>>> +		"This will request Geometry first to get the "\
>>> +		"num_grp,num_pu,num_chk first to figure out the total =
size "\
>>> +		"of the log pages."\
>>> +		;
>>> +	const char *output_format =3D "Output format: normal|binary=E2=80=9D=
;
>>=20
>> normalbinary -> normal binary?
>=20
> Oh It has "|" between them.  But I'm fine with that too.  It was just
> derieved from the nvme.c core module which builtin commands are taking
> now.

Oh, I didn=E2=80=99t see that. My mistake.

Javier

--Apple-Mail=_2B59B429-DDDA-4B50-9AC0-0FD1E710A1CE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEU1dMZpvMIkj0jATvPEYBfS0leOAFAl05tEIACgkQPEYBfS0l
eODMHhAAkhEVv1Ryu61JIr+PCtbCm/6tG2uTjwD8XyBeKCYDTaDqaaPYt+Imvt28
pIYv9FlfOgXxnPk+SM2RzjK1nUFfBsXeDTGouprsenKMj8KS2NHASwMP/T3aZjwN
lENtLuTf79mlUMxeEc9WWqOsk6jsR+t+X04dJWeFm///Z4my2xwp24aw+ZtTfMHU
QUplU+b7aEE/SSiFTdw8oStxAD7VG15M1y5JLbaxh+GEiDS0eHOjvPZPzyF2+Hl1
r31gyXAA+3MWuXl/awTaYG93z4EQK0RHLhY5MZ1dgYTaD/4C493xirbmY8+Sj/01
G7pcwmSkO/l6qvspdFlSk/Rlhs+kdQOo5RSgg9WpCmPxQKXlrwGYjPeQ/437bHEK
yPq2jKQocW/z3kpyRcW4q43bFXPgcgDE5qgasc1+shz83mZbu20aNUdo+vgTdJ3e
wKHFx0l5T3gI/p6xrB+e7SSeHaeAO7ua7g5QmC5y4TGwVIRTGJQ5upouBeXGwanL
ohUY0rOxahJXZ99ZOu9mKxpFgew99LYvllABKn4F/5tBHQWqrltVIao1a3ZTnQYw
QurmFGWiZMR3EfKytOR9cX4Bd23iaxp8MqBHe8OjK/2fG4F0pkfKp+KLx8TpMR1f
BUnV56PYxRZEsmnXPn4Z9cmpmKjlkU+or6VnK+K4km+6HrcnVnM=
=0jJx
-----END PGP SIGNATURE-----

--Apple-Mail=_2B59B429-DDDA-4B50-9AC0-0FD1E710A1CE--


--===============5052038161787875705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============5052038161787875705==--

