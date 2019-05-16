Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9466B20FFC
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 23:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DSkEzbu/UccH1PLV2tsur72mVeAvOmw4Pheh9PTM5Ng=; b=lAHvfloL7Qe+369GH/x//WsMG
	A4PhqYA+QQhiGbYRkPHX41nVZ1TxoRU36mu+Qvbskafz+VVjQod8jygRvy6/NGS3DU4N8gOgdrCNL
	v/x//Vy0Ug9tNa1o4uwxBDyCPZ85WQowzL5ZMg0+I/cN9GRRk1jzr6PoF1pJNcHMthiV1ZB2nM/a7
	cHNiF1Z3LkBotSQ53a5N2VCkC0s5PR7Y7V1zOhHICLhRpSW/E5J2kd15yubIpY+zAludAF+jHAOvu
	ogUljBdrEkE7C4OgVG+cyx09FMSI6wUKcanuy3CfCTaJVkYZ2e8J9PZHPv0uOXnXtYQF+67eC5gME
	47cUithpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRNsg-0004mG-UX; Thu, 16 May 2019 21:25:38 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRNsb-0004lp-6Q
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 21:25:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 14:25:32 -0700
Received: from unknown (HELO [10.232.112.136]) ([10.232.112.136])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 May 2019 14:25:31 -0700
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <dcb16af2-acb9-eff1-a2f9-ff8154381723@intel.com>
Date: Thu, 16 May 2019 15:25:31 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_142533_257919_60634EAC 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/15/2019 9:17 AM, Akinobu Mita wrote:
> The NVMe controller reports up to nine temperature values in the SMART /
> Health log page (the composite temperature and temperature sensor 1 through
> temperature sensor 8).
> The temperature threshold feature (Feature Identifier 04h) configures the
> asynchronous event request command to complete when the temperature is
> crossed its correspoinding temperature threshold.
> 
> This adds infrastructure to provide these temperatures and thresholds via
> thermal zone devices.
> 
> The nvme_thermal_zones_register() creates up to nine thermal zone devices
> for valid temperature sensors including composite temperature.
> 
> /sys/class/thermal/thermal_zone[0-*]:
>      |---temp: Temperature
>      |---trip_point_0_temp: Over temperature threshold
>      |---trip_point_0_hyst: Under temperature threshold
> 
> The thermal_zone[0-*] contains a symlink to the correspoinding nvme device.
> On the other hand, the following symlinks to the thermal zone devices are
> created in the nvme device sysfs directory.
> 
> - nvme_temp0: Composite temperature
> - nvme_temp1: Temperature sensor 1
> ...
> - nvme_temp8: Temperature sensor 8
> 
> The nvme_thermal_zones_unregister() removes the registered thermal zone
> devices and symlinks.
> 
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Eduardo Valentin <edubezval@gmail.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>   drivers/nvme/host/core.c | 368 ++++++++++++++++++++++++++++++++++++++++++++++-
>   drivers/nvme/host/nvme.h |  24 ++++
>   include/linux/nvme.h     |   4 +
>   3 files changed, 392 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 172551b..a915c6b 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> +
> +static int nvme_tz_type_to_sensor(const char *type)
> +{
> +	int sensor;
> +
> +	if (sscanf(type, "nvme_temp%d", &sensor) != 1)
> +		return -EINVAL;
> +
> +	if (sensor < 0 || sensor > 8)
> +		return -EINVAL;
> +
> +	return sensor;
> +}

I know this has been discussed but it bothers me that this can return a
negative (error code) but then the callers of this function don't check
for errors. If you can prevent the error conditions, can 'sensor' be
treated as unsigned?

> +
> +#define KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS((t) * 10)
> +#define MILLICELSIUS_TO_KELVIN(t) ((MILLICELSIUS_TO_DECI_KELVIN(t) + 5) / 10)
> +
> +static int nvme_tz_get_temp(struct thermal_zone_device *tzdev,
> +			    int *temp)
> +{
> +	int sensor = nvme_tz_type_to_sensor(tzdev->type);
> +	struct nvme_ctrl *ctrl = tzdev->devdata;
> +	int ret;
> +
> +	ret = nvme_get_temp(ctrl, sensor, temp);
> +	if (!ret)
> +		*temp = KELVIN_TO_MILLICELSIUS(*temp);
> +
> +	return ret;
> +}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
