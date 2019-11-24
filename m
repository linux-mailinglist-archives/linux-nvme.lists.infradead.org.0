Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8C108403
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 16:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yJJ8Xh7VJgQfZmUz4Uzk9JpidLvOF2y7yd+V4R0XPyw=; b=SjvbmWjugCCDP3OZhneOKsFZp
	5RH9bLKGjAe9B75JS0XgGZb+7AJToi7JNGDwzKmjRJghYFcKdV1SXR8AKmNjhl8wFi+23yFI2Zwm9
	QOnWufekD+3TvBJPxkeIfzjHu9YGonXrxi6CWoWEjcdi+KTyZEsCTZGC5HvBdk2DjtumCR17rH5Rl
	mho9ToJSor7MtM5uUGSomeHeH79uliwam+DbUUSMswgZjtYrDdSUEIUOu92WXto5irguolVMFUWw5
	BYSx6dHQnX8gtST3PLyws3KNqgd9CLiwqvaVqV+iyOIu9vuV/pP7n8QNCObuhpnYZo5Zk4/ZZR1hx
	FO5ksYrWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYtbt-0007ip-G7; Sun, 24 Nov 2019 15:15:37 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYtbo-0007iT-69
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 15:15:33 +0000
Received: by mail-ot1-x344.google.com with SMTP id 23so8613733otf.2
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 07:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Qzs3qOs+XveSh8n886wzuYL0vjKGt4gRKMHsUcIFuF8=;
 b=SRYABA2Tum5SuAFt4WXZp4belYwreF4wclr+XhQfpmQeUO5x92Ow2l0Bf2Xo3ywhkT
 +JyxiwhYfzFh0QqushVwjUtpeNLz3imZqfnPeyJdqK1l3ojw2jc/Lf2Jof79vU51NhlY
 xEGMIDFzQT7pTgI8rY7t29tbaqEPP0mk3QG+svqyaHGcrwLKXPuloISVKXCmvbv+Le4c
 j+m5ur5dguI05sEpcNsNUoHsNZXyvL1xxDpkaRmppgeRnLZ8PbBEGR5fgOPZAifu0cYj
 uFYFSzMm1ThFcyzwiR3dd7jrYxgUx0Ss0jMbhzFwSfuQ/NZ2Q3y67Kb2jq7BVFrNlJqZ
 YMfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qzs3qOs+XveSh8n886wzuYL0vjKGt4gRKMHsUcIFuF8=;
 b=p8vIca+EIMKOgRuANxuR09+vQ4pYfPmpuNWCTz5wRbP4NxTdmZPhT9qb1M965UJVsq
 ltJsJmPCPgVCGkx1H51GOM51XkrtCmWyGsjQDqD4mVw2mg/IVFf8ZKDJWg3q3oV9GXeF
 ZRQ2hs0nqjXjW9ZsruNhGJTG/6/Tm9+Fd6gujYNWt/AfVZENMGvm/GEnlEUWrQw+/biW
 POjS+UpLUHyb6TH0wH25RAGTIkQzSF+TSHs+3uHGgouODzbSMwEKlybcC1D7YAs0dJRf
 mXGZI7u6Hdh+peW5+PG4lu4gibU3w61kaLRPO9hJI+o/9Y69G7lcTj2Nmw6bwMVMPE4E
 cxMQ==
X-Gm-Message-State: APjAAAVe4QdkhFSytYjY7Vau+ymSyFxedsfGU1iZhztm4qeFywe4FgkO
 AnljlKS2hL47Ryh99ghANNA=
X-Google-Smtp-Source: APXvYqzHGMAySx3hPPd9TqvWHgDWXT68moog0lS8Xa31CZB53JBT53NiCkR51iDhIbjJdckycY0t3Q==
X-Received: by 2002:a05:6830:4a2:: with SMTP id
 l2mr17478845otd.192.1574608530753; 
 Sun, 24 Nov 2019 07:15:30 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 p3sm1394479oti.22.2019.11.24.07.15.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 Nov 2019 07:15:29 -0800 (PST)
Subject: Re: [PATCH 6/8] thermal: intel_pch: switch to use
 <linux/temperature.h> helpers
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
 <1574604530-9024-7-git-send-email-akinobu.mita@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <39b228c3-90c0-5895-9a36-a92747fa7a4c@roeck-us.net>
Date: Sun, 24 Nov 2019 07:15:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574604530-9024-7-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_071532_254380_BC99BC46 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
> This switches the intel pch thermal driver to use
> deci_kelvin_to_millicelsius() in <linux/temperature.h> instead of helpers
> in <linux/thermal.h>.
> 
> This is preparation for centralizing the kelvin to/from Celsius conversion
> helpers in <linux/temprature.h>.
> 
s/temprature/temperature/

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
>   drivers/thermal/intel/intel_pch_thermal.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/intel/intel_pch_thermal.c b/drivers/thermal/intel/intel_pch_thermal.c
> index 4f0bb8f..3cce310 100644
> --- a/drivers/thermal/intel/intel_pch_thermal.c
> +++ b/drivers/thermal/intel/intel_pch_thermal.c
> @@ -92,7 +92,7 @@ static void pch_wpt_add_acpi_psv_trip(struct pch_thermal_device *ptd,
>   		if (ACPI_SUCCESS(status)) {
>   			unsigned long trip_temp;
>   
> -			trip_temp = DECI_KELVIN_TO_MILLICELSIUS(r);
> +			trip_temp = deci_kelvin_to_millicelsius(r);
>   			if (trip_temp) {
>   				ptd->psv_temp = trip_temp;
>   				ptd->psv_trip_id = *nr_trips;
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
