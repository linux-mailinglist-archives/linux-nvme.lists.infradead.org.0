Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D5010CB5C
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 16:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Sb2hUhBHHlRVZ4Niri4m89RJfbUHWmtM5LTP/5ls5Y=; b=DH9kt0387knybU
	QBYJNjtX7wm195wwxIZ3OXuRH+OeK/w0gATVMTtzDxtxAbBhJOj3p/h5Lp66rR8BNkWcWYCn7k7eQ
	HqsGQhYrZfPHJUk3YKkU9pKzzeotqUPk3XxiJkADEvjC0WEDaQleCIwPKqvPeYGZ2jGIA1zhqS2h2
	GGbJt45VC7fk56WbLFQgzP58SpVCQJJBXpFW/+R7zyIlubUZzyUgSMdHCnRszXTMcwJhA5d5gjZS3
	0YH/XjSBuK61WkAzlFx/jxAbPK7ulZUlogRUJEQigwaQ/gc8IVcYvuoBD0QA1J4dm9Dnvf9CKY9Mr
	5J2ElUuPKipeSLNzvD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLPy-0003Sa-Sc; Thu, 28 Nov 2019 15:09:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLJL-0004yn-0H
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 15:02:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id l22so838822pff.9
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 07:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/yK+bP/ZquyDqTbwLOoQFt7m4Vf6MNFvYmMx+oPcx0U=;
 b=mslmdNSSudE7yrNxVl9gLKm+PW7faAyM+eH7GAB9JmUxunrZ+delEqNm4/4ejVIm5R
 6A5ngV7ImLhf+KfUj3ECrYK2CM9yXjTX3V5eI2cMxq+8if3m3CelEq6oXt3EyoWAHau9
 2gAH1IOUpTOUyYQ8lI4m/+7Ivw/GDUGd3qiZ3R3pBEz4IN/eQ8tdI/9op3ZUewTeoCd8
 tV8D6Hgp1CryCOZsHcgWKckLtcxCEnAjEtlgrDkkBy3CZJh//UQYr3sJp2k/U6Ppla8E
 Ks9XUiSVHgPIcCpmMxw+IWteo2+p2EWvcNJA7+zoeviWLLedA4ku1VpbfrpkL8xh3fNN
 eRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/yK+bP/ZquyDqTbwLOoQFt7m4Vf6MNFvYmMx+oPcx0U=;
 b=c/pQjZUROeUoDQqN8VAU86iUo2QSV7jNni4P8PGjcyZLXjGe/hnb/Zk9qKeJBj77tg
 It3wsGLVCglPlF3biIoUmI32ioE91mPzg+FhS3dbPsuzKjYqhAWYl+QpF/ZlmNDHZUNv
 Z04vqLYeIZvugr7wPL3Ch1hx6dDKWIty/WWf+yh5j1pfOixA5YD6O14HH422+ukTsQnt
 JYxyvIEf35e2nuLPQci6qomrStCaBFnTb9e0waZQRHQeEu8VVUGHC04Wg+t1OLVtlpht
 jWm+n7jpTSaZYqpHJKArED29RV2DAb0oN8IWdXf/YUXEVyROu9NlkWcgUa/kyEFTyDtJ
 ODtw==
X-Gm-Message-State: APjAAAUzYAfnnnqwb72Hf7hBQW5yvoNw75FXkUz/6/LbCmJkKjURxoUt
 xQfNUciToA15XAXAFp4WAxu+GgOvudZPtzNfCjmpkdD2
X-Google-Smtp-Source: APXvYqzI7Qf+yzT4pAOOBFmdCFGcdvppyFYuVIaWxgTEMPPJrdcAYC6dW5CPkHAinmujdN25OW+CtNH57+kcSY3ry0o=
X-Received: by 2002:a65:6118:: with SMTP id z24mr11995545pgu.203.1574953345343; 
 Thu, 28 Nov 2019 07:02:25 -0800 (PST)
MIME-Version: 1.0
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
 <1574952879-7200-5-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1574952879-7200-5-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 28 Nov 2019 17:02:15 +0200
Message-ID: <CAHp75VdswWO9r5zO=Tph7GF0qtxXVXBQFeNQ3etTDj+8hNhV3Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] platform/x86: intel_menlow: switch to use
 <linux/temperature.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_070227_103432_B855FCD5 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-hwmon@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>, Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
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

On Thu, Nov 28, 2019 at 4:55 PM Akinobu Mita <akinobu.mita@gmail.com> wrote:
>
> This switches the intel_menlow driver to use deci_kelvin_to_celsius() and
> celsius_to_deci_kelvin() in <linux/temperature.h> instead of helpers in
> <linux/thermal.h>.
>
> This is preparation for centralizing the kelvin to/from Celsius conversion
> helpers in <linux/temperature.h>.
>
> This also removes a trailing space, while we're at it.
>

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Cc: Sujith Thomas <sujith.thomas@intel.com>
> Cc: Darren Hart <dvhart@infradead.org>
> Cc: Andy Shevchenko <andy@infradead.org>
> Cc: Zhang Rui <rui.zhang@intel.com>
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
> * v2
> - include <linux/temperature.h> explicitly from thermal drivers
> - fix s/temprature/temperature/ typo in commit log
> - don't mix up another fix (format string for cellsius value)
>
>  drivers/platform/x86/intel_menlow.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/platform/x86/intel_menlow.c b/drivers/platform/x86/intel_menlow.c
> index b102f6d..12c1094 100644
> --- a/drivers/platform/x86/intel_menlow.c
> +++ b/drivers/platform/x86/intel_menlow.c
> @@ -20,6 +20,7 @@
>  #include <linux/pci.h>
>  #include <linux/pm.h>
>  #include <linux/slab.h>
> +#include <linux/temperature.h>
>  #include <linux/thermal.h>
>  #include <linux/types.h>
>
> @@ -302,8 +303,10 @@ static ssize_t aux_show(struct device *dev, struct device_attribute *dev_attr,
>         int result;
>
>         result = sensor_get_auxtrip(attr->handle, idx, &value);
> +       if (result)
> +               return result;
>
> -       return result ? result : sprintf(buf, "%lu", DECI_KELVIN_TO_CELSIUS(value));
> +       return sprintf(buf, "%lu", deci_kelvin_to_celsius(value));
>  }
>
>  static ssize_t aux0_show(struct device *dev,
> @@ -332,8 +335,8 @@ static ssize_t aux_store(struct device *dev, struct device_attribute *dev_attr,
>         if (value < 0)
>                 return -EINVAL;
>
> -       result = sensor_set_auxtrip(attr->handle, idx,
> -                                   CELSIUS_TO_DECI_KELVIN(value));
> +       result = sensor_set_auxtrip(attr->handle, idx,
> +                                   celsius_to_deci_kelvin(value));
>         return result ? result : count;
>  }
>
> --
> 2.7.4
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
