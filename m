Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E6E1083E0
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 15:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImTwMN0I+/BYiUvFqOEDotVqmQj/t7TRmVbYHaTtIH8=; b=kCS9CxK+ldRc2a
	Z1mtYGzvCCBm9Gqk5B/rNuAfFdZoOpY5xLO88v0FgrEkMdUm0ThMasAAZlgYIsPub3EucS6dH83gX
	5MAcOVeGEjNMMXbLXsQVpTHGyhICTa0N/4kTpNLfojqwy/mK7jyXlT5B0xKHWjribv+dj3Wv0d7DD
	RVvinu5Ffox1biZRQ2nWqgQwVWjZb32vRx7AXHrhorO5N3nANkGl4Z9nC7TRsaWQlB4L99z625wjZ
	9DPYj4mvNEt+Q9ZgdatuQusnRuKwMN/giStBHFFXraWRuPxCjRXltxKrf/bR8puJyJEro5g+M2Oa1
	GLR1fxzQd/Hel9Nr3Pow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYtKB-0001k5-JX; Sun, 24 Nov 2019 14:57:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYtK7-0001jk-Pr
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 14:57:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id 193so5983042pfc.13
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 06:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SfWsOmQE/r0rnoMiC9E/xzw8dmYppncobr92itFVVSs=;
 b=IsG6iwopTfpkSahUG6WT0yB+bF7hDW/WcOu4iU3POG1cggRa/nihBOenHTteUKComn
 QVl0DDjCxmf9EE7EenT2oriblVHVJ9/to9q0OQEwuehzdoRMQcUSxvjQawTzu/j/BWcV
 MPrVab+hfkO/mCUxfHkxLvEhsOC+zpWxDEFHOO9VxZ8w97dbccUR4GgTL9NEz+eg6BpA
 rYFXlupkxzoVEdLBQZDXL8kaEzwZu0rfxnwMnxtTMsQQrlaJTrrGaDw5jxxzZgZfj8iy
 5tJ/5KgbWrEBCceGl9LLkyc5KaRyMS/shAiHnlA8Z1oCKKu30+Xwsk7Fmix9T8eI0cY9
 y3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SfWsOmQE/r0rnoMiC9E/xzw8dmYppncobr92itFVVSs=;
 b=F8cDbimqmMyTbTVCwL3ns7aicBFGW/w42Sl9hoLs0Zcz8WGEVbk3mYfK8BhHOaEfVV
 1Ped5cijJbgABqL0POeyoSkvn1JVYqFOqPdFEKvlX9qQfMlvQMusb23vTe0lMVNdMj0q
 zGMYXXuEwp9dE9eEf6P9o+Hg1KnmNP/h8XQgD3rLQ2/z8SFfeW6PPKRe4v0wD5NsZKzo
 5nDZhipamWq4tcfEyJzY52yWWla0fqV5qsE58MceIYa21L5ITPbXm+1I2vKPfy9kvUwQ
 n8M2HnrgqO28Tl5rW6dBBJ2H1i0a5Hx7WdRuhHv7QHTx7N8PqKyxMBO7GKO33x2JC5Qb
 AWIA==
X-Gm-Message-State: APjAAAVEfqdxbDlN9sndK0YGkJxL3GksAXVTfnMTWozSLVDGgwT39220
 mHpMxKf9xkaMDU9Q05g5pKKx33N6CGQyZiFlmWs=
X-Google-Smtp-Source: APXvYqwZoLFN1zxu52vVv3dD5/32mEnANCd+XVhQAiRkPPoSM2JkZ9mS6MAzmzvEHaPoZLlNYU+nqc9CBou0i1oYEfw=
X-Received: by 2002:a62:7590:: with SMTP id q138mr6261090pfc.241.1574607434795; 
 Sun, 24 Nov 2019 06:57:14 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-2-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1574604530-9024-2-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 24 Nov 2019 16:57:03 +0200
Message-ID: <CAHp75VfGt59F5YbEjctvOm00g+Pws+1jYgVbNLnUE3kq3SZi-A@mail.gmail.com>
Subject: Re: [PATCH 1/8] add header file for kelvin to/from Celsius conversion
 helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_065715_861990_BAC34B74 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Nov 24, 2019 at 4:09 PM Akinobu Mita <akinobu.mita@gmail.com> wrote:
>
> There are several helper macros to convert kelvin to/from Celsius in
> <linux/thermal.h> for thermal drivers.  These are useful for any other
> drivers or subsystems, but it's odd to include <linux/thermal.h> just for
> the helpers.
>
> This adds a new <linux/temperature.h> that provides the equivalent inline
> functions for any drivers or subsystems.  It is intended to replace the
> helpers in <linux/thermal.h>.
>
> Cc: Sujith Thomas <sujith.thomas@intel.com>
> Cc: Darren Hart <dvhart@infradead.org>
> Cc: Andy Shevchenko <andy@infradead.org>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Eduardo Valentin <edubezval@gmail.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amit.kucheria@verdurent.com>
> Cc: Jean Delvare <jdelvare@suse.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  include/linux/temperature.h | 39 +++++++++++++++++++++++++++++++++++++++

>  include/linux/thermal.h     |  1 +


> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -14,6 +14,7 @@
>  #include <linux/idr.h>
>  #include <linux/device.h>
>  #include <linux/sysfs.h>
> +#include <linux/temperature.h>
>  #include <linux/workqueue.h>
>  #include <uapi/linux/thermal.h>

I don't see any users of it. Why did you include?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
