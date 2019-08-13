Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1B28B527
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 12:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RPAxRooQRbl6iT9oTcuJUGUe641hArtCI59+QNgxKFE=; b=hA7Y8WJlvm78I7GnOHrjPDRmW
	7yDnNj7Q84moYsOKvBvhmsO81ajIlxG9bh2ryV1BDQK1GnlDJQjIVOsgH0x66iHHXQ68F/Y6QsUP/
	+2ITnrN5Z8W0idfesheClxVaVCVacAhQkLUaX4XPxS/MVBm5AG9mhOxUR2T3FjjzEenBwl+2cVDtp
	/SS8UOv1/QJLWspLtpR7mdVP0jINmL4gSQxygBK0kszOFk94cAtjZI4VLKneQYjY8OiOUW3CngT1W
	ngvbI/M4ipKa6ko5tOY3lAYnZPgcqJxVqZMtRTCD2k7cBiQsvxO/tWUampn7lyRabFDs4MyFVqnOw
	ieECQMI4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTn4-0002Li-Iw; Tue, 13 Aug 2019 10:12:30 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTmk-0002HJ-3Z
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 10:12:11 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 188CB8071A; Tue, 13 Aug 2019 12:11:56 +0200 (CEST)
Date: Tue, 13 Aug 2019 12:12:08 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 2/6] scsi: mvsas: rename LED_* enums to SGPIO_LED_*
Message-ID: <20190813101208.GB26337@amd>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
 <1565459703-30513-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1565459703-30513-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_031210_406123_685BB17F 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============9146168466814137641=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============9146168466814137641==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="l76fUT7nc3MelDdI"
Content-Disposition: inline


--l76fUT7nc3MelDdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-08-11 02:54:59, Akinobu Mita wrote:
> The mvsas driver declares LED_* enums for enum sgpio_led_status. The
> LED_OFF and LED_ON enums cause redeclaration of enumerator with the
> LED subsystem's LED_OFF and LED_ON enums.
>=20
> This adds 'SGPIO_' prefix to these enums in mvsas driver.
>=20
> Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>

Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--l76fUT7nc3MelDdI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1SjPgACgkQMOfwapXb+vJtfgCggrF36qSmvQY9Psijznov+tNz
g4AAoLNaTE8k8ljYCuI5fktfarBJ10VZ
=mIgq
-----END PGP SIGNATURE-----

--l76fUT7nc3MelDdI--


--===============9146168466814137641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============9146168466814137641==--

