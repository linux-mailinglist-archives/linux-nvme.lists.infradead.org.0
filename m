Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C1A1084D9
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 20:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhW9mlpu4Tb+TK7s8IXMQ+yDaeLOtrDuC04sC51P2RI=; b=m6UvZskF726cEf
	+qgbtCusT37kdGHO9Rv5DRNqcO2f0FT7Cs2cSEWBR5fNmS6fNSKsporQ2EcTJJPMUOiwF58GSIYE6
	mwj2esuoi0EAW/vmvE0sjr3uNrq1uwKYOnoEqMJrHXakRWJTM665U0gqnY7KBjIAQFvS4RSfyfk/t
	YGwGrMRo/KJ44TsUlr0rZ3dXTAMCk/8IfBq3V/9NCqLocpQl7G5VoblAmXcg7vlKiqiTyn4WYmVZS
	jyZWkHqEfvz3oNHX9nqplmwLJKgrr55/nvKoU+Eih/ZLSCOP45NeUwCAiD6LQJ75Ajh9U3voX8fK4
	N40oS5NJM6odfQQbEQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYy1G-0007tL-BL; Sun, 24 Nov 2019 19:58:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYy1B-0007sX-58
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 19:58:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id d199so1537605pfd.11
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 11:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dkRSUp4LWvNPm+vfZgEiYDvglJm3beCRxL71deUAo/A=;
 b=QOscabZbSDR/sllFcuyMh2fWkaut3t5bOuY0nM8nOMKiyZG47JOoS081/sEHP6TiSj
 uGU32SMvZMtWe7va8tydQDaKyPTujE/Uyyg2LN5+d6IkKB5zwwzTWFwIQXzl7vDR53ov
 qMpnw6eDrkP0065xCLc0cF8tbAz8CZympuICLaAj16lD1w8IYzBxaS9CqyvEvAY1LITb
 A4/c1jqiNY62vbqQdyjhHiY02iU7tjNwKnEe0xffiquj+SOzSW0R0tDQxzr4TZf36xb9
 BTdBTQgr4qL+qn6RAGZ3KS8xnq3EnmUYHcuAv8yiowvBPu+SZ53MJQanBy0DM/sw+3u3
 Fhlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dkRSUp4LWvNPm+vfZgEiYDvglJm3beCRxL71deUAo/A=;
 b=i58NdgZxf9zbh2xE1EIoMeAxHD6SYu7YtPVQ4e4Wj+1QiXFyxZLe1PuhTP1lIAqeA3
 44+UHNQhblBrEsMZTaxdLJe7BzdXwsjsAJDmnRrrXa0p8wAR4PEw32DXQ2Ajdr782LC1
 XhM0KK08UnRPl8MFUbqBcS81NdKK59JBCj+OveZVyLRF48/+jVlSEMvr9jibTJSbiXkV
 dC1kaw6r3ZSNSbSFhFOMO942xfGD5qwnGAPyXvhHjuHlN4pZpOZuIsZ7pxff8PyAN++K
 KN2fGtudjDRWnq0V2EIzLlUZFDoomqbNE5vSwMTLvEo/RTCqozSGtnF64jsLk8d+eg1u
 uuZA==
X-Gm-Message-State: APjAAAUuNb53aW9iqg3jK5/5JlGvNUInRCvt8lqs7JdUW5e/wMEIP+wT
 YTyTb2SRcoWZcsUd2SaQnpNehhjjZckvNuiIErg=
X-Google-Smtp-Source: APXvYqzZWhn8q4bZQQp+nT7h6x2ELej7bYnsrWqD8H+1zhdVeihgLHB4jq7aMAZW914Rfqu8lIObgLw+MrjOOlyJyzk=
X-Received: by 2002:a65:6118:: with SMTP id z24mr29135288pgu.203.1574625480441; 
 Sun, 24 Nov 2019 11:58:00 -0800 (PST)
MIME-Version: 1.0
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-5-git-send-email-akinobu.mita@gmail.com>
In-Reply-To: <1574604530-9024-5-git-send-email-akinobu.mita@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 24 Nov 2019 21:57:49 +0200
Message-ID: <CAHp75VfOUiN_2bW+o-AqGmAY32mmdNxP54B2f2+gj0NTEr9FTQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] platform/x86: intel_menlow: switch to use
 <linux/temperature.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_115801_196565_8D4B163E 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
> This switches the intel_menlow driver to use deci_kelvin_to_celsius() and
> celsius_to_deci_kelvin() in <linux/temperature.h> instead of helpers in
> <linux/thermal.h>.
>
> This is preparation for centralizing the kelvin to/from Celsius conversion
> helpers in <linux/temprature.h>.
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
>  drivers/platform/x86/intel_menlow.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/platform/x86/intel_menlow.c b/drivers/platform/x86/intel_menlow.c
> index b102f6d..6313591 100644
> --- a/drivers/platform/x86/intel_menlow.c
> +++ b/drivers/platform/x86/intel_menlow.c
> @@ -302,8 +302,10 @@ static ssize_t aux_show(struct device *dev, struct device_attribute *dev_attr,
>         int result;
>
>         result = sensor_get_auxtrip(attr->handle, idx, &value);
> +       if (result)
> +               return result;
>
> -       return result ? result : sprintf(buf, "%lu", DECI_KELVIN_TO_CELSIUS(value));
> +       return sprintf(buf, "%ld", deci_kelvin_to_celsius(value));

Can you explain the change %lu to %ld?

>  }
>
>  static ssize_t aux0_show(struct device *dev,
> @@ -332,8 +334,8 @@ static ssize_t aux_store(struct device *dev, struct device_attribute *dev_attr,
>         if (value < 0)
>                 return -EINVAL;
>
> -       result = sensor_set_auxtrip(attr->handle, idx,
> -                                   CELSIUS_TO_DECI_KELVIN(value));

> +       result = sensor_set_auxtrip(attr->handle, idx,
> +                                   celsius_to_deci_kelvin(value));

How come the first line has been changed?

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
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
