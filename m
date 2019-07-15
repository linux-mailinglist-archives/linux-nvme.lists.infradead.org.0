Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D468440
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 09:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0gOjybQXhfOtY2lJGxFgWxCENVD/43UQv0MU1VLBVs=; b=jMJb/LU3wEpqPJ
	RIMCbR+TldyZuAAdXb240UYtNe6xlhlk4kjB7fwjxZyi7Sqtz+eA/7ghjlAjny6cGG+m0zX6TZXMJ
	7GD5E/8CO5Q3tG+hFLor/njER17w+gCRzqE/5lYiU79YljhT4l+aHqNjzdGiLE1UnCieGLrhN5OB6
	hPmCKoBeIoRSgy/eq6tUKHbqHMa5wTPAR8Ziam9fX96GBBV2CtXqA5ZT+0UlkCQUV2wjjZakh4rVU
	GBAUIBbunUwaGynLO7ySj05P3WpBDh93Ynjaltf0QZQR4jjUantVqgAIJU4gUb6UD2w8WWvwEAQht
	eCziCetUaOHT5FjNzwBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvJ9-0000A8-8G; Mon, 15 Jul 2019 07:21:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvJ0-00009Q-MR
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 07:21:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 225C9AFA9;
 Mon, 15 Jul 2019 07:21:49 +0000 (UTC)
Date: Mon, 15 Jul 2019 09:21:48 +0200
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests 11/12] common: Use sysfs instead of modinfo for
 _have_module_param()
Message-ID: <20190715072148.GC4495@x250>
References: <20190712235742.22646-1-logang@deltatee.com>
 <20190712235742.22646-12-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712235742.22646-12-logang@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_002150_879917_EABB2E93 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Omar Sandoval <osandov@fb.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 05:57:41PM -0600, Logan Gunthorpe wrote:
> Using modinfo fails if the given module is built-in. Instead,
> just check for the parameter's existence in sysfs.
> =

> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  common/rc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/common/rc b/common/rc
> index 49050c71dabf..d48f73c5bf3d 100644
> --- a/common/rc
> +++ b/common/rc
> @@ -48,7 +48,7 @@ _have_modules() {
>  }
>  =

>  _have_module_param() {
> -	if ! modinfo -F parm -0 "$1" | grep -q -z "^$2:"; then
> +	if ! [ -e "/sys/module/$1/parameters/$2" ]; then
>  		SKIP_REASON=3D"$1 module does not have parameter $2"
>  		return 1
>  	fi

But this now fails if the module isn't loaded yet. IMHO we'll need to check=
 if
"/sys/module/$1" exists and if it does check for
"/sys/module/$1/parameters/$2", if not try modinfo.

Does that make sense?

Byte,
	Johannes
-- =

Johannes Thumshirn                            SUSE Labs Filesystems
jthumshirn@suse.de                                +49 911 74053 689
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=FCrnberg
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=FCrnberg)
Key fingerprint =3D EC38 9CAB C2C4 F25D 8600 D0D0 0393 969D 2D76 0850

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
