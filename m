Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A19271E
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 16:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MYQgyXeupxJHv0/cT7T0UAAYwqol5bBSDnDcBVV4PAs=; b=SUOgSDAQTTaR76S2s5UVP+tnS
	pkBHCNx4SrFNIsTAdjJsFDjtwOUyrKSAE45chUAzkQi2KZnDBEgBESLo2EX7YFi3hqtC0RYGBkDtS
	pltPxQitndxk4MYdl/zv8nUau/dxhQIAUukYc8BFB4kj2wTzj1awwHfDVpHgTqWGLtLcZS4UxrjaE
	1tNufAFN7AIC1c0JqvACxCo1QZRnOVUY8u1924jKLaHHXcvFiFzoBab/2rH5WdTjxQ4UmSNns9BRF
	77LvpVO4dcZEDSUgPhBiehg7Ma1i4D5mvMxLwcGVZLrlDG1VlUwfj7KrmlD1xMTKwo26IyTIjNqhx
	+kWgJTslQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzio7-0004n6-AC; Mon, 19 Aug 2019 14:38:51 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzio1-0004mF-Sa
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 14:38:48 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id D573480BA7; Mon, 19 Aug 2019 16:38:29 +0200 (CEST)
Date: Mon, 19 Aug 2019 16:38:42 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH v4 4/5] block: introduce LED block device activity trigger
Message-ID: <20190819143842.GA25401@amd>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
 <1565888399-21550-5-git-send-email-akinobu.mita@gmail.com>
 <20190817145509.GA18381@amd>
 <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <925633c4-a459-5e84-9c9a-502a504fdc82@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_073846_166978_2E2C81CE 
X-CRM114-Status: GOOD (  17.48  )
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
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3439753189794008334=="
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


--===============3439753189794008334==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat 2019-08-17 22:07:43, Jacek Anaszewski wrote:
> On 8/17/19 4:55 PM, Pavel Machek wrote:
> > On Fri 2019-08-16 01:59:58, Akinobu Mita wrote:
> >> This allows LEDs to be controlled by block device activity.
> >>
> >> We already have ledtrig-disk (LED disk activity trigger), but the lower
> >> level disk drivers need to utilize ledtrig_disk_activity() to make the
> >> LED blink.
> >>
> >> The LED block device trigger doesn't require the lower level drivers to
> >> have any instrumentation. The activity is collected by polling the disk
> >> stats.
> >>
> >> Example:
> >>
> >> echo block-nvme0n1 > /sys/class/leds/diy/trigger
> >=20
> > Lets use one trigger "block" and have the device as a parameter,
> > please.
> >=20
> > We already have 1000 cpu triggers on 1000 cpu machines, and yes, its a
> > disaster we'll need to fix. Lets not repeat the same mistake here.
> >=20
> > I guess it may be slightly more work. Sorry about that.
>=20
> We should be able to list available block devices to set,
> so the problem would be not avoided anyway.

Should we? We need to list triggers, but we may not list all the devices...

> And Greg already proposed
> a solution for trigger file PAGE_SIZE overflow, so this should not pose
> a big problem in the future once that is implemented.

Which still leaves us with pretty big/ugly triggers file... and we do
not have the fix in the tree yet.

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1atHIACgkQMOfwapXb+vJUHgCgkeT3UaFwfpz7+MSgycx3Oc4s
Oc8An3rmb4OVTm//ScEzJqndWpDtv96c
=dfr0
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--


--===============3439753189794008334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============3439753189794008334==--

