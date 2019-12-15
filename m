Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB5211F7B7
	for <lists+linux-nvme@lfdr.de>; Sun, 15 Dec 2019 13:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ6UZFk2WSPHKAzS61Fs2icfse5+ooVDogD7JJxBdyA=; b=Ci1PNvneZZ+VQe
	V1uOc4gGoXY9YtkI1v8TUfkqPyGpesz+pbb0UweXo89ckWQnUBN8crQX2nlxe7iTMrz4SwH46XuIr
	tyQySnQrkMwbjKE7M2WGZQG/MPYW0NTVbVUsuS6rC5+CgXk0HPjKWTqgRLhHZcQDtIpngtNN1rokj
	fCTUNa9aDWL3rIAFTLb54ZcIg5fGRRI8VIlNbvMaUVQe/RawXvhSlzshVTrKa/lVIIB3XLjxZFo7J
	lMpzkFEPOsV//k1OcYHmMkgRF/wTBOPxa1Car6f4Mu0oTAaYUpxpwShNsB0I8NRXDcruyEQrzKaV5
	+3zkRQJpTE3HBJWXuUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igT27-0003RN-O8; Sun, 15 Dec 2019 12:29:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igT22-0003QI-6q
 for linux-nvme@lists.infradead.org; Sun, 15 Dec 2019 12:29:55 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91F14205C9;
 Sun, 15 Dec 2019 12:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576412993;
 bh=2l6Be057Q7FKP+fhTZ0hbvUe6NBP4LC0WK/+kFX+Qzw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nVrMJK9o/bHwLle8h8ijpAz587lP5+UzFmyLzVpLfTk03WtVsGSd0loHEyynmYNq5
 ZO+RG0dI/Kx+fn9QH1NyD5MnPsvXc/87YDMePY13Ank41Tf5vh/jWPNIlaByRYCDFY
 LtYFkKZ5ESKhTJfvAY6m8xnv8KxC7oWcCIvH9fXk=
Date: Sun, 15 Dec 2019 12:29:48 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v4 12/12] iio: adc: qcom-vadc-common: use
 <linux/units.h> helpers
Message-ID: <20191215122948.773bbc42@archlinux>
In-Reply-To: <1576386975-7941-13-git-send-email-akinobu.mita@gmail.com>
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
 <1576386975-7941-13-git-send-email-akinobu.mita@gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_042954_272706_68078886 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-hwmon@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, 15 Dec 2019 14:16:15 +0900
Akinobu Mita <akinobu.mita@gmail.com> wrote:

> This switches the qcom-vadc-common to use milli_kelvin_to_millicelsius()
> in <linux/units.h>.
> 
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Hartmut Knaack <knaack.h@gmx.de>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,


> ---
> * v4
> - add Reviewed-by tag
> 
>  drivers/iio/adc/qcom-vadc-common.c | 6 +++---
>  drivers/iio/adc/qcom-vadc-common.h | 1 -
>  2 files changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/qcom-vadc-common.c b/drivers/iio/adc/qcom-vadc-common.c
> index dcd7fb5..2bb78d1 100644
> --- a/drivers/iio/adc/qcom-vadc-common.c
> +++ b/drivers/iio/adc/qcom-vadc-common.c
> @@ -6,6 +6,7 @@
>  #include <linux/log2.h>
>  #include <linux/err.h>
>  #include <linux/module.h>
> +#include <linux/units.h>
>  
>  #include "qcom-vadc-common.h"
>  
> @@ -236,8 +237,7 @@ static int qcom_vadc_scale_die_temp(const struct vadc_linear_graph *calib_graph,
>  		voltage = 0;
>  	}
>  
> -	voltage -= KELVINMIL_CELSIUSMIL;
> -	*result_mdec = voltage;
> +	*result_mdec = milli_kelvin_to_millicelsius(voltage);
>  
>  	return 0;
>  }
> @@ -325,7 +325,7 @@ static int qcom_vadc_scale_hw_calib_die_temp(
>  {
>  	*result_mdec = qcom_vadc_scale_code_voltage_factor(adc_code,
>  				prescale, data, 2);
> -	*result_mdec -= KELVINMIL_CELSIUSMIL;
> +	*result_mdec = milli_kelvin_to_millicelsius(*result_mdec);
>  
>  	return 0;
>  }
> diff --git a/drivers/iio/adc/qcom-vadc-common.h b/drivers/iio/adc/qcom-vadc-common.h
> index bbb1fa0..e074902a 100644
> --- a/drivers/iio/adc/qcom-vadc-common.h
> +++ b/drivers/iio/adc/qcom-vadc-common.h
> @@ -38,7 +38,6 @@
>  #define VADC_AVG_SAMPLES_MAX			512
>  #define ADC5_AVG_SAMPLES_MAX			16
>  
> -#define KELVINMIL_CELSIUSMIL			273150
>  #define PMIC5_CHG_TEMP_SCALE_FACTOR		377500
>  #define PMIC5_SMB_TEMP_CONSTANT			419400
>  #define PMIC5_SMB_TEMP_SCALE_FACTOR		356


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
