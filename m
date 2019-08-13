Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43998B526
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 12:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pc22iz4gEUGxeYX2FjNJ/+QPa/ExASfCPbiUTA/qys8=; b=Xv4o/RuAGtPkbRSeqLoJSJEG4
	xkvHGuaWVkf7hY4mjIXz/UbWtRT2Yl6Phmfu5KAFBfcFqs1w9zD8TnQVtIplob2eshbrmjFUxGrGT
	3x3rwH2oQMb8oxmqN3ttw+PiXfh5gNdUlox/u09eINdSmfrp9RNnUO/k0VosdYyqu44hyFy3G9D4/
	E1r23wfY82aK0aoynd617B3IAkvTGS3XKKSnH2LqyDSuhPCA7q9brMoT6jTFrG1DLI2xeUQxkP4P/
	wXl/uZFDHK4Z6nRh1hSif1Lq2bDAw1oJX1Djck+uSB9ANzjL5zccivYkM0wTpzpbg1MQDSovu/dUt
	H5rhqIbjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTmp-0002FO-Re; Tue, 13 Aug 2019 10:12:16 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTmX-0002EL-Sr
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 10:11:59 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 4917480719; Tue, 13 Aug 2019 12:11:38 +0200 (CEST)
Date: Tue, 13 Aug 2019 12:11:50 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 1/6] block: umem: rename LED_* macros to MEMCTRL_LED_*
Message-ID: <20190813101150.GA26337@amd>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
 <1565459703-30513-2-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1565459703-30513-2-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_031158_084614_1D032E31 
X-CRM114-Status: GOOD (  10.07  )
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
Content-Type: multipart/mixed; boundary="===============0923560206586380120=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============0923560206586380120==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-08-11 02:54:58, Akinobu Mita wrote:
> The umem driver defines LED_* macros for MEMCTRLCMD_LEDCTRL register
> values.  The LED_OFF and LED_ON macros conflict with the LED subsystem's
> LED_OFF and LED_ON enums.
>=20
> This renames these LED_* macros to MEMCTRL_LED_* in umem driver.
>=20
> Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>

Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--Q68bSM7Ycu6FN28Q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1SjOYACgkQMOfwapXb+vI9qACeIJl9nHuP1L2LH6REEIo6sUeq
13QAoLnEWSiplV5fRmJs5ogCsMqgo9z7
=NbtT
-----END PGP SIGNATURE-----

--Q68bSM7Ycu6FN28Q--


--===============0923560206586380120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============0923560206586380120==--

