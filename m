Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2EA108407
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 16:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ipQV1q6rvj+AUTcGYcxJZpzUEZC9NdWBuo2rWkrErLM=; b=NncYrYWzfMQBtTR3o2qAsZNr5
	9/Rr11/H/VAJ46jcraABpbVI6AWFZQm+N5EI4FQv/bQOb5S6p9NpczBMzdbeqxpWPYYOSkLP2eFNo
	JsHOktmHuFif/nGx/huB/mykwSwLqUqPVMF39ZK52HP8qTwru41ooG6mZRUfp5eefVzeOUUHGTTNO
	B4pEvtsQSdIGLZJrmdShYJlCi+Jqr2+SY7zCwnwDbWomQLY9h3TlrFDjCcoBkYRne5EkqtAS+L1J3
	Om1vOtqkA2WGy0UyxyQditQ3d5WhF00QOHCUNIwioksYZVvqSzju47fr1ZFw7HqWUBL7ORgk+s18w
	Ak6VWNjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYteC-0007zp-9M; Sun, 24 Nov 2019 15:18:00 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYte7-0007yb-9k
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 15:17:56 +0000
Received: by mail-oi1-x242.google.com with SMTP id n14so10788550oie.13
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 07:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5C9fcZplZbhqVRMPmr2V23XeMRp4oEU3og0P7QEerd4=;
 b=Jpx1440YYqzexRpdjA3SiAXYclFcRW+1AfgPguF0jIkyAvx6JHX8y+wllMlbcSgDco
 eK2aFQg70ozNQNHxITEOvlqPDYLnndXq9eeXtS4Oi1Z8oBPuAZMLjB4TEa+V3ptHcNG6
 e0hCF5JuyilIJRpYC8aMsh4Lf5ExTN3ISK1ulc9fzIgZ7F/HQITN2iDR6i933R4h6llG
 7oMm6hcdle9fL/RUJhFwLps0dU5tvK4Nh9N5kFbRk1wOnr2ebRLzeTyVJugqrWcGYdVY
 Vkx3FdnZaoBHvR4vkWkyksMbdAHh+QJApDTek7WBJxQHySdHoVoXT37KH6PJSmMgAosL
 jqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5C9fcZplZbhqVRMPmr2V23XeMRp4oEU3og0P7QEerd4=;
 b=C7OCqA8Aq3kXiLXRH+FflnGdx7eV1M1SwcOyJay7exbJe6Kc/oKiZ8C9y8G5ixsyHN
 v4GJ9MIPbuUfQQQpAJ/zLVUDuuMZtARGnNy2L3aQ4k5vjVX+J4wkVm8ccBMZdZeIph70
 tmtVeBtwyW4bS3J7rOO8Sl9MlAGaGLY0MicAJsZVSxxpdTgPLstYJfUId26ml8EGp0SA
 WtY1IRktdAFih1VrHW+D5MJX9FlxlaNk373Shraie+drAhpDtHvBdY6aebUEGLBy3ysd
 YrAxMz1gjsayvYTukEaf0EXqZlGYVG4z/V7Kwv7YMQVqgv5CqtKaKBIUSkr5B+lLPNuu
 CMfQ==
X-Gm-Message-State: APjAAAUSj0H2/SUvcWSbkT6dm8ZiI7Kr//RM/LF9clQBuk4G+luRVUxg
 0TuPI5SVyjilNIBE5tEam4Q=
X-Google-Smtp-Source: APXvYqyo788a2sh7C+EcGrnmfMQbs2nuTW/CVkvqD52t1x6QsdY3JKPC2qKdW9qWYn5up2z8JtTfBw==
X-Received: by 2002:aca:d78a:: with SMTP id o132mr20032815oig.79.1574608669287; 
 Sun, 24 Nov 2019 07:17:49 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 v7sm1548686oie.51.2019.11.24.07.17.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 Nov 2019 07:17:48 -0800 (PST)
Subject: Re: [PATCH 2/8] ACPI: thermal: switch to use <linux/temperature.h>
 helpers
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-3-git-send-email-akinobu.mita@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <00fff683-d0e2-67ae-83e3-c472fdbe9e1d@roeck-us.net>
Date: Sun, 24 Nov 2019 07:17:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574604530-9024-3-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_071755_341599_2573319D 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jens Axboe <axboe@fb.com>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 11/24/19 6:08 AM, Akinobu Mita wrote:
> This switches the ACPI thermal zone driver to use celsius_to_deci_kelvin()
> and deci_kelvin_to_celsius() in <linux/temperature.h> instead of helpers
> in <linux/thermal.h>.
> 
> This is preparation for centralizing the kelvin to/from Celsius conversion
> helpers in <linux/temprature.h>.
> 
s/temprature/temperature/

Looks like this applies to all patches.

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
>   drivers/acpi/thermal.c | 15 +++++++++------
>   1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
> index d831a61..bd9b6eb 100644
> --- a/drivers/acpi/thermal.c
> +++ b/drivers/acpi/thermal.c
> @@ -297,7 +297,9 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
>   			if (crt == -1) {
>   				tz->trips.critical.flags.valid = 0;
>   			} else if (crt > 0) {
> -				unsigned long crt_k = CELSIUS_TO_DECI_KELVIN(crt);
> +				unsigned long crt_k =
> +					celsius_to_deci_kelvin(crt);
> +

>   				/*
>   				 * Allow override critical threshold
>   				 */
> @@ -333,7 +335,7 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
>   		if (psv == -1) {
>   			status = AE_SUPPORT;
>   		} else if (psv > 0) {
> -			tmp = CELSIUS_TO_DECI_KELVIN(psv);
> +			tmp = celsius_to_deci_kelvin(psv);
>   			status = AE_OK;
>   		} else {
>   			status = acpi_evaluate_integer(tz->device->handle,
> @@ -413,7 +415,7 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
>   					break;
>   				if (i == 1)
>   					tz->trips.active[0].temperature =
> -						CELSIUS_TO_DECI_KELVIN(act);
> +						celsius_to_deci_kelvin(act);
>   				else
>   					/*
>   					 * Don't allow override higher than
> @@ -421,9 +423,9 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
>   					 */
>   					tz->trips.active[i - 1].temperature =
>   						(tz->trips.active[i - 2].temperature <
> -						CELSIUS_TO_DECI_KELVIN(act) ?
> +						celsius_to_deci_kelvin(act) ?
>   						tz->trips.active[i - 2].temperature :
> -						CELSIUS_TO_DECI_KELVIN(act));
> +						celsius_to_deci_kelvin(act));
>   				break;
>   			} else {
>   				tz->trips.active[i].temperature = tmp;
> @@ -1087,7 +1089,8 @@ static int acpi_thermal_add(struct acpi_device *device)
>   	INIT_WORK(&tz->thermal_check_work, acpi_thermal_check_fn);
>   
>   	pr_info(PREFIX "%s [%s] (%ld C)\n", acpi_device_name(device),
> -		acpi_device_bid(device), DECI_KELVIN_TO_CELSIUS(tz->temperature));
> +		acpi_device_bid(device),
> +		deci_kelvin_to_celsius(tz->temperature));
>   	goto end;
>   
>   free_memory:
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
