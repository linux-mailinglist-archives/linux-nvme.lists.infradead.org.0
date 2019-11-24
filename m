Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983671084D5
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 20:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muwfgYiMhrvpmM87aGfiDCvs9iivZP2G92jUEJGcOfI=; b=MMfV8DuNI9BbsU
	eYvySjyhDf5ukQK+r0zFc/OSIfxtNBWgvVwtDsiKrZVKkXL3hgIF/rOIi5s5p55EXlCxhAnqUNsdC
	T+b9T+EaNUqZyzKAvbqxx0rLW+e841UTXRwiNY5oHVTXZI/3nE+p20TJNj0B/9211t+msAjFH2iHc
	8s3LmA82HsYOEoUjkYRBgD7xfI/BsZjwjzdHc/E3Q7muiuM9X/U1OYQA98/3uvjO5NuDOpg2rKqp+
	PfX2wYC6us+ycmtJ6D5iggkBXwQRwL6TZ2ebAkvB8DjGkhjE5t65b9l526BLsourAnUU9Sc50bhlr
	uJKjb0s2F3IPzRsw970A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYxy0-0006OK-Ni; Sun, 24 Nov 2019 19:54:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYxxv-0006NZ-KR
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 19:54:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id b137so3658250pga.6
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 11:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xgxN+slUElCQpDuU8fsY3BZMJxer4zKWxWFoQzMGtA4=;
 b=N9k+kyqVqvVAuU5pmVcD05y0P7ep7fkeAyzpfnA8hS2146dGHNMBjSFR9uiJV8PHu0
 9aJTs33ZWmukHbhGxkM9JoSH+maOgpdQdyDSpGppnHZX79oYQ1DMEBvvya80yKdDrCRn
 UAhC+xeK8nbxYIHlDlIctzaYwHAhcTTcuw140chiI8mR8MQJetOiFzuSlX+qXYuNjuPC
 ALXFb25TaINXA4BSo6hqgC/27e33SJxaQdfegL7mzSgjFC+vMNyCowgMcV3yJvVEhnK/
 XomI1mA4ZMdgY4R282CGbCovH0hL0rqqQ49vvktIoDg5pRbcoXH8+heiUYIo3ezzqGn8
 h4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xgxN+slUElCQpDuU8fsY3BZMJxer4zKWxWFoQzMGtA4=;
 b=nuynqp4Ic4bVdevNnr+8nkHfZsPCrtP3/DRsJr8ayOlIDivFkUfa3WL5Osg2axWwls
 paUlVX/6H7BUyo8EiSftpxdg1vd/bbrfuT2LCm1oliNHgU3xuZoAgylMKVjo2/0/O61E
 HUCzw6LpzCSUdEc32/oHx36hiTOuEXcpIBv+v98dnsaPHYKD5cdVITMaxaZy4Ja9/bAx
 VM/n8eBLdiFvCMgH1WkOf6ZzhXdzSq25wDYbxdicAsBLguYgzyxcB06jgeaHRIoYhlHf
 Tz32ZjAMF5J3Rge92/MJwg8FXNh/fjBY1HOPBMqlmt1VoQizhpIimJeiuEw0hJYI5hrT
 Z7bQ==
X-Gm-Message-State: APjAAAXUQh57T7zP1CsYKkLXkYr7IkqdJLz4zH4/2wjzJc/vCKVURE3n
 6bLspmuxt777+vAcXKjWFv6gl5x/pJjOvl4dteI=
X-Google-Smtp-Source: APXvYqynJhSAT+cBLFOG35mXdSu5donpoINx1X4oii7KCRStNIR2N5Cf8Hh5JzERBkyy6grUixES2mbAfr5mZU7d3zM=
X-Received: by 2002:a62:168f:: with SMTP id 137mr31383941pfw.151.1574625277865; 
 Sun, 24 Nov 2019 11:54:37 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-4-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1574604530-9024-4-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 24 Nov 2019 21:54:26 +0200
Message-ID: <CAHp75VdkhFJZ71FS+DhrKTDPEW7Z-6imRSePm8EhgGF2sgTThg@mail.gmail.com>
Subject: Re: [PATCH 3/8] platform/x86: asus-wmi: switch to use
 <linux/temperature.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_115439_695987_090D1008 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
> The asus-wmi driver doesn't implement the thermal device functionality
> directly, so including <linux/thermal.h> just for DECI_KELVIN_TO_CELSIUS()
> is a bit odd.
>
> This switches the asus-wmi driver to use deci_kelvin_to_millicelsius() in
> <linux/temperature.h>.
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
>  drivers/platform/x86/asus-wmi.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
> index 821b08e..6a1a2f9 100644
> --- a/drivers/platform/x86/asus-wmi.c
> +++ b/drivers/platform/x86/asus-wmi.c
> @@ -33,7 +33,7 @@
>  #include <linux/seq_file.h>
>  #include <linux/platform_data/x86/asus-wmi.h>
>  #include <linux/platform_device.h>
> -#include <linux/thermal.h>
> +#include <linux/temperature.h>
>  #include <linux/acpi.h>
>  #include <linux/dmi.h>
>
> @@ -1512,9 +1512,8 @@ static ssize_t asus_hwmon_temp1(struct device *dev,
>         if (err < 0)
>                 return err;
>
> -       value = DECI_KELVIN_TO_CELSIUS((value & 0xFFFF)) * 1000;
> -
> -       return sprintf(buf, "%d\n", value);

> +       return sprintf(buf, "%ld\n",
> +                      deci_kelvin_to_millicelsius(value & 0xFFFF));

Leave it in one line.

With above,
Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

>  }
>
>  /* Fan1 */
> --
> 2.7.4
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
