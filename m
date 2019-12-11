Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23E411B133
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 16:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzjZsmkSVGG9ru9ibW6N8G62prTuZJy5dBYJ0a7hWKU=; b=SEOaGly7fjNsum
	gSP8IKN9h7IC8uC7ZKrJ9G0U3ac7iObmAcWVRTw1th/9uGG999YZNZtCtkPgnI53nDmLhyJNp2Ecp
	amGPp+XBkOXqWaF5MIa9dG3R803xXHUJtc4LjvjbMgv2ZbNyLBxUuPtaOrxV4SLkiISqQcH2iDRWV
	45pNRZlCu8uMGSx+PtCwSmGT8XXHgrnc1rRHVdild3gAJKoJyluoF0WRHFCTEco+RiEV++KAv1Lnb
	CoRzeILu5Pl7XmHNvUyCU7S6qUrG7RMcbHp5z2Ff1cZnlWIhMIffqc09AHNuVidEq5COtv9iBCimP
	4aDEdD43YbUob+Ze3g9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3vd-0005ii-N0; Wed, 11 Dec 2019 15:29:29 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3vX-0005i2-NE
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 15:29:24 +0000
Received: by mail-pj1-x1042.google.com with SMTP id w23so9077680pjd.2
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 07:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pfDhDYFuoXDrqHRE8i/08ZQEyfFGj50C9cMmD8Jy2MA=;
 b=j5C0uyFcwXKjxMT2bhJ14CbB+fZCEQxShkK6p3Cf93qQ6BpSTKh005B5VD2g3OiyqF
 /wNRFMf+eDpSe4TXNqE6yRjbz6RybfTWfb6JvF2sgW3j1ebFqzHfH+knhZW5LWMcLU9Q
 PPkMZlifZ3WANqTGfezf8poByuNPftyfj2T8ipV3B9YeSB8ICKW5MsA6kddHfyed3zGU
 vic5lX9Flai49PViVVxoFnEQJ1pk/ccakyFpoYFqPpU1m9xHZDAyiQ7nU9kNfJZthfG6
 7ElzzegodjoKVuaP+P5wut6UEuDXichyFzp4GyPgvDzsqKx4ZybnxVzEt/Nh+yrpsJgq
 kRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pfDhDYFuoXDrqHRE8i/08ZQEyfFGj50C9cMmD8Jy2MA=;
 b=CnuGSHV1Idf0jh+dx7jCjcdvHfIJSG1k8ScYAzoC9dHM93pGq5EvqfETE5hErE2t/U
 CaS74cmDiTZO7ZlU6nKH815C/9j+NHJ+Q297rIb1i61d7EAmf5ONfETRJYvJLYBjpNUN
 3FRdjpz8qLPCQvLtdqq0/BygxdofWtoq54rjSx6gDpHF+ahO0D8/ft3vqi5U85MSvjFd
 gW1VODwTvCJaf9yGWluGL+7UB+pdtDhodLD+bnTdls0SUh1/StVV+60G6o3Ar/eP0+3/
 EWIsWf5siE4vFJ02gD0KC6BuV38RZkHVbdAjcmuoJsDPSgi/fVw52uB+gV8vnSjjNm3/
 60Lg==
X-Gm-Message-State: APjAAAXv8LSqnM+/iQjOdctfZRGOL07awwF4nG/IDvHoRjxXY0XdtyxT
 HQ30ZfzkTuFsewAB0IpIstrQqh0LJt4SogkyAwI=
X-Google-Smtp-Source: APXvYqwlR/tF5FA23iHp/eaMoUPuaCaCPBgDqm77FVGRFefN3YELGs3EmpG2NGeQvAJUc/yD31OEVyNePT/dpDkApsU=
X-Received: by 2002:a17:90a:b10b:: with SMTP id
 z11mr4272497pjq.132.1576078162498; 
 Wed, 11 Dec 2019 07:29:22 -0800 (PST)
MIME-Version: 1.0
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
 <1576075099-3441-3-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1576075099-3441-3-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 11 Dec 2019 17:29:12 +0200
Message-ID: <CAHp75Vfq4KqNAGY4ivveR7D0Z1fA1EOFT+oL9+f+Ak2jikCTVg@mail.gmail.com>
Subject: Re: [PATCH v3 02/12] ACPI: thermal: switch to use <linux/units.h>
 helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_072923_756366_75802A9D 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>, linux-iio <linux-iio@vger.kernel.org>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Guenter Roeck <linux@roeck-us.net>,
 Keith Busch <kbusch@kernel.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 4:39 PM Akinobu Mita <akinobu.mita@gmail.com> wrote:
>
> This switches the ACPI thermal zone driver to use celsius_to_deci_kelvin(),
> deci_kelvin_to_celsius(), and deci_kelvin_to_millicelsius_with_offset() in
> <linux/units.h> instead of helpers in <linux/thermal.h>.
>
> This is preparation for centralizing the kelvin to/from Celsius conversion
> helpers in <linux/units.h>.

>  #include <linux/reboot.h>
>  #include <linux/device.h>
>  #include <linux/thermal.h>

> +#include <linux/units.h>

Can we try to keep *some* order, i.e. put this after acpi.h below?

>  #include <linux/acpi.h>
>  #include <linux/workqueue.h>
>  #include <linux/uaccess.h>

>                         } else if (crt > 0) {
> -                               unsigned long crt_k = CELSIUS_TO_DECI_KELVIN(crt);
> +                               unsigned long crt_k =
> +                                       celsius_to_deci_kelvin(crt);

It used to be one line, why do two?

>         pr_info(PREFIX "%s [%s] (%ld C)\n", acpi_device_name(device),
> -               acpi_device_bid(device), DECI_KELVIN_TO_CELSIUS(tz->temperature));
> +               acpi_device_bid(device),
> +               deci_kelvin_to_celsius(tz->temperature));

Ditto.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
