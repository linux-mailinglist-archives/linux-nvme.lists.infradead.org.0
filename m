Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DBC910F4
	for <lists+linux-nvme@lfdr.de>; Sat, 17 Aug 2019 16:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lXTcKwrwn9AWLT7A3CCJMUxqp4Odz4EWwbQKZIIIr/I=; b=I4nldRUpHtHUMmNk+qy2Y4RzX
	qIpAQ0BYAPcjW66K0y5UnzoADk5DjN4j/LadjV2Y1MIIInX/RJkQ7E14RWMbKNt3P7X0LgFlhk4O4
	VNvU250dWYdFSMWKeJCpr0sWISjY3px0AJnw7YnNioWpLwk07W4iAWbgxa6vSnKe81XQJes8jxFQX
	jkzVzdJZQIvHfyhWTPj1c0h0sIPPTbis4aCVsPuhYq0/vUxlK6Va/CWxHBJ228/3Doj/1bcMH1YLI
	ze2sqWeucDHp1waXe4ziHkgjDIVOekbF2x1+oQUIVckZ0lzUC19XmZeZ5NhIa6VsEkNaYIV3Z7X7V
	uaXQ5hyLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz07F-0005el-Jh; Sat, 17 Aug 2019 14:55:37 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz070-0005ct-Un
 for linux-nvme@lists.infradead.org; Sat, 17 Aug 2019 14:55:25 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 654A1811A5; Sat, 17 Aug 2019 16:54:56 +0200 (CEST)
Date: Sat, 17 Aug 2019 16:55:09 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
Message-ID: <20190817145509.GA18381@amd>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_075523_145469_768A60FC 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: multipart/mixed; boundary="===============5109056476389342435=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============5109056476389342435==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2019-08-16 01:59:58, Akinobu Mita wrote:
> This allows LEDs to be controlled by block device activity.
>=20
> We already have ledtrig-disk (LED disk activity trigger), but the lower
> level disk drivers need to utilize ledtrig_disk_activity() to make the
> LED blink.
>=20
> The LED block device trigger doesn't require the lower level drivers to
> have any instrumentation. The activity is collected by polling the disk
> stats.
>=20
> Example:
>=20
> echo block-nvme0n1 > /sys/class/leds/diy/trigger

Lets use one trigger "block" and have the device as a parameter,
please.

We already have 1000 cpu triggers on 1000 cpu machines, and yes, its a
disaster we'll need to fix. Lets not repeat the same mistake here.

I guess it may be slightly more work. Sorry about that.

								Pavel

> +++ b/include/linux/leds.h
> +#else
> +
> +struct ledtrig_blk {
> +};
> +

Is the empty struct neccessary?

> +static inline void ledtrig_blk_enable(struct gendisk *disk)
> +{
> +}
> +
> +static inline void ledtrig_blk_disable(struct gendisk *disk)
> +{
> +}
> +
> +static inline int ledtrig_blk_register(struct gendisk *disk)
> +{
> +	return 0;
> +}
> +
> +static inline void ledtrig_blk_unregister(struct gendisk *disk)
> +{
> +}

Normally we put such empty functions on single lines...

Best regards,
									     Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1YFU0ACgkQMOfwapXb+vIGPQCglZkw8NZthvlINOkCpWU1QMNO
MMgAn3a+ksIdc1KjC9wzh3owNpIMKsXc
=mrgh
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============5109056476389342435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============5109056476389342435==--

