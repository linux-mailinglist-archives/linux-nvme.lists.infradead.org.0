Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B618B5A5
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 12:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GS2SfXUqSc+7VGHht17+vrkQQ1tD8/bR4jRXEZQYK6E=; b=fT/KV836H73TMP72ewZclYIXZ
	Wf94OI/Owp/rEz7H/6YHY7hlvxb06tgLVs2yT3CZYek5OfEKsdE5bDSdLXL9vvZcCss5k7AdB+63l
	/0J1oa5JWXvAcSaQfQ+gZOtimt6kOy89LsG2ct8ZW2ZEEO5RxnlMOZ+RGDjU5twTDcTwi7pBPlxfJ
	gze4L9l6g1BofkQHrTqlrSsEuvEgWHvVEqAeB5+mUUPKU91peHjxvoYXXqWBiK5hpWIGncLZhRJmb
	6viFbF7qdI9Pd6N1+ZqbYuuKjabNkIecDA9GmiERvvcwUNXdhcW2vyX6RXGW3zeir2nS4ubxeI9l4
	h12d+iPmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxU7G-0000pQ-V8; Tue, 13 Aug 2019 10:33:23 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxU79-0000oy-7z
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 10:33:16 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 5500180723; Tue, 13 Aug 2019 12:33:01 +0200 (CEST)
Date: Tue, 13 Aug 2019 12:33:13 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 4/6] block: introduce LED block device activity trigger
Message-ID: <20190813103313.GC26337@amd>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
 <1565459703-30513-5-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1565459703-30513-5-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_033315_436600_86197422 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============3888352634434035527=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============3888352634434035527==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="da4uJneut+ArUgXk"
Content-Disposition: inline


--da4uJneut+ArUgXk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-08-11 02:55:01, Akinobu Mita wrote:
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

Some machines have lots of block devices... Should we perhaps have
"echo block > trigger; echo nvme0n1 > device"?

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--da4uJneut+ArUgXk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1SkekACgkQMOfwapXb+vIYIQCcCQatKldtygxinfIx5q0mAEse
f7kAn1dmVugrnJLtH409sL+2qgiJx6M0
=x9Iu
-----END PGP SIGNATURE-----

--da4uJneut+ArUgXk--


--===============3888352634434035527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============3888352634434035527==--

