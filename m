Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C3D21117
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 01:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=esWbGFIqDqfBZkcnTIU78aaC6ciL2vQlFbe8kKIjIB8=; b=epEqslWP3XQyz1
	avRGekaFsQI9G7WaiF4wIEQ0Wbf9/QlYFeEuZ/bN5AHcKX+XrssMnCEMJOz4LPn2re4MZg88JNsJ6
	yiw5FKwSbFF81StSadpUyQXAxAeB6QhRPTtJ5LRYDMQm/cj3j5gEZOgOCMkGi1f6WkSjw7aGIqpgz
	f+Bzq9TRDvqfoQIDu4CGItD4xgCeXU9i49IxqFvPyPIJeTm7VPoT5ZOf+j4XzEOuofeESEPeKY2Xl
	67CmCZ469AoZxtmTzqtboARrvhBhxSY4wars4W87ZAVB8sCtlXIiAECGAZjG/JPfhOohWNHbBzDlL
	n63Mm4YOFtSD4YMLckVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQ3f-0001sm-3b; Thu, 16 May 2019 23:45:07 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRQ3W-0001iD-G6
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 23:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558050299; x=1589586299;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=UoVngPZ21XehvHWQydJoF/hcGNqN8uoBSAr7T4auy6Q=;
 b=IZOdQigSX1rUzNPs5l1VGpCjgyJS78magDyITyiIV86ejq7OdJDKjvRR
 +Tc6x0mLEbWf+0Mbs7pqJimrWEvYzY4y4tZ31hhP6qDz22Bg74KxKygav
 8SODv+Rl/gB8mrxNwHshO+ICFxb7ngeR5MU/uH/T86ndcgcxo3tG8h64N
 wswJ2Fa2tuMsAoS0yoUh47Jlj2e1UM6DUCijJpMtnwrj9RG7dWlgWXxRB
 8R4gBCEu1jEUPP5bbXconO+Yk6SbaNWpjcUso1+mQMVX7FcogbQ7hKI74
 5VrVeh4qLZpsihUimdBjq1ksNatc/OncUgwAUCt8Onq7h5naGOt7ttiLj A==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="109706905"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 07:44:57 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z40tYaAq2LWKqy7yR73W+9Mrg4ip0ALKjYUKiRefUfg=;
 b=CdzbMZjI0xpXTMKKcjegFgw7FR4MTYdHrQWs8LJwffoTywK1fI+JZwkFvqmxkR8jfjlO/F+KHAeRU66rirJesm7AiCmuhll7TwQGD/zbl+d/ANUQa9LoAcXUH2iNgTxuqC1rQwSwjtWCOLLdF4M4NoAy1Hg+GKgocRHXFTORKIM=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB4619.namprd04.prod.outlook.com (20.176.105.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 23:44:55 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 23:44:55 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Thread-Topic: [PATCH 1/2] nvme: add thermal zone infrastructure
Thread-Index: AQHVCzFoHFFF5ExL0ECGVZaOXi7wYg==
Date: Thu, 16 May 2019 23:44:54 +0000
Message-ID: <DM6PR04MB4521D53A9243977EF0B1EE2B860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f3f9307-a6f7-4f07-5ab6-08d6da587f8a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB4619; 
x-ms-traffictypediagnostic: DM6PR04MB4619:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB4619DED98CD671DB0D55BFB0860A0@DM6PR04MB4619.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(366004)(376002)(39860400002)(136003)(199004)(189003)(68736007)(316002)(64756008)(71200400001)(110136005)(66556008)(53936002)(74316002)(2501003)(66476007)(91956017)(186003)(6116002)(3846002)(66946007)(66446008)(486006)(71190400001)(76116006)(26005)(73956011)(54906003)(2201001)(86362001)(478600001)(446003)(2906002)(30864003)(33656002)(5660300002)(25786009)(72206003)(14444005)(9686003)(256004)(53946003)(55016002)(6246003)(81156014)(102836004)(8936002)(6436002)(14454004)(4326008)(229853002)(7416002)(7696005)(81166006)(53546011)(6506007)(66066001)(476003)(76176011)(52536014)(99286004)(305945005)(8676002)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4619;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T+ixRyiapJeFYTJYU5id1aHW4hVa9v1ot5Hb0I0xQIRV969BX1dmgzIqYxltecRQaWtWQhOoseDVqL6No2XYC+wIZkVlFv6feHt9E5QxEHTragaeaVBodUs55SZsTHAI721G1Q44QMRSDfIXryB0MJalxY7zy6q5t4uMctdwHP2AB1kfYLmzxY7lHr7HfkyNUrfYuPz4HrxsqT96UcZ0kM074GFf2vNg6YHx7zTlEAPm7vSu2VFeWGdfgWzjETSbzDAO2S8qcXoARiTgtbJ5DQYjgdGLttofrmiVu+WDCJhSwHE3o8P82fwwnA8AbRm7fafQ/sU+uszSMRQNDUTrBXluM6Zms570eEEPIZxiq2qlovBMBx/EB/QO3zwDEpdy3lgSplXnRmAvtJggmJ/b+cNBj8WcF8vPOABlNJMq+aM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f3f9307-a6f7-4f07-5ab6-08d6da587f8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 23:44:54.9365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_164458_820620_7531DE88 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks Akinobu for this work, please see some nit comments.

On 5/15/19 8:18 AM, Akinobu Mita wrote:
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
>     |---temp: Temperature
>     |---trip_point_0_temp: Over temperature threshold
>     |---trip_point_0_hyst: Under temperature threshold
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
>  drivers/nvme/host/core.c | 368 ++++++++++++++++++++++++++++++++++++++++++++++-
>  drivers/nvme/host/nvme.h |  24 ++++
>  include/linux/nvme.h     |   4 +
>  3 files changed, 392 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 172551b..a915c6b 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1113,15 +1113,16 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
>  	return id;
>  }
>  
> -static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> -		      void *buffer, size_t buflen, u32 *result)
> +static int nvme_features(struct nvme_ctrl *dev, u8 opcode, unsigned int fid,
> +			 unsigned int dword11, void *buffer, size_t buflen,
> +			 u32 *result)
>  {
>  	struct nvme_command c;
>  	union nvme_result res;
>  	int ret;
>  
>  	memset(&c, 0, sizeof(c));
> -	c.features.opcode = nvme_admin_set_features;
> +	c.features.opcode = opcode;
>  	c.features.fid = cpu_to_le32(fid);
>  	c.features.dword11 = cpu_to_le32(dword11);
>  
> @@ -1132,6 +1133,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>  	return ret;
>  }
>  
> +static int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
> +			     unsigned int dword11, void *buffer, size_t buflen,
> +			     u32 *result)

1. nit:- can we align the start of the line to start of the character
and not to the (.

+static int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
+			      unsigned int dword11, void *buffer, size_t buflen,
+			      u32 *result)

> +{
> +	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +
> +static int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
> +			     unsigned int dword11, void *buffer, size_t buflen,
> +			     u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +
I think above code change should go into the prep patch.
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>  {
>  	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> @@ -1168,6 +1185,9 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
>  	u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
>  	int status;
>  
> +	if (IS_ENABLED(CONFIG_THERMAL))
> +		supported_aens |= NVME_SMART_CRIT_TEMPERATURE;
> +
>  	if (!supported_aens)
>  		return;
>  
> @@ -2164,6 +2184,334 @@ static void nvme_set_latency_tolerance(struct device *dev, s32 val)
>  	}
>  }
>  
> +#ifdef CONFIG_THERMAL
> +
> +static int nvme_get_temp(struct nvme_ctrl *ctrl, int sensor, int *temp)
> +{
> +	struct nvme_smart_log *log;
> +	int ret;
> +
> +	if (sensor >= ARRAY_SIZE(log->temp_sensor))
Can we add a print warn or error message here ?
> +		return -EINVAL;
> +
> +	log = kzalloc(sizeof(*log), GFP_KERNEL);
> +	if (!log)
> +		return -ENOMEM;
> +
> +	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
> +			   log, sizeof(*log), 0);
> +	if (ret) {
> +		ret = ret > 0 ? -EINVAL : ret;
> +		goto free_log;
> +	}
> +
> +	if (sensor)
> +		*temp = le16_to_cpu(log->temp_sensor[sensor - 1]);
> +	else
> +		*temp = get_unaligned_le16(log->temperature);
> +
> +	if (!*temp)
> +		ret = -EINVAL;
> +
> +free_log:
> +	kfree(log);
> +
> +	return ret;
> +}
> +
> +static int nvme_tz_type_to_sensor(const char *type)
> +{
> +	int sensor;
> +
> +	if (sscanf(type, "nvme_temp%d", &sensor) != 1)
> +		return -EINVAL;
> +
> +	if (sensor < 0 || sensor > 8)

nit:- please avoid using hard coded value 8 in the above, can we please
define

a macro in nvme.h ?

> +		return -EINVAL;
> +
> +	return sensor;
> +}
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
> +
> +static int nvme_tz_get_trip_type(struct thermal_zone_device *tzdev,
> +				 int trip, enum thermal_trip_type *type)
> +{
> +	*type = THERMAL_TRIP_ACTIVE;
> +
> +	return 0;
> +}
> +
> +static int nvme_get_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
> +				int *temp)
> +{
> +	unsigned int threshold = sensor << 16;
> +	int status;
> +	int ret;
> +
> +	if (under)
> +		threshold |= 0x100000;
hardcoded value, possible macro ?
> +
> +	ret = nvme_get_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
> +				&status);
> +	if (!ret)
> +		*temp = status & 0xffff;
hardcoded value, possible macro ?
> +
> +	return ret > 0 ? -EINVAL : ret;
> +}
> +
> +static int nvme_get_over_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
> +				     int *temp)
> +{
> +	return nvme_get_temp_thresh(ctrl, sensor, false, temp);
> +}
> +
> +static int nvme_get_under_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
> +				     int *temp)
> +{
> +	return nvme_get_temp_thresh(ctrl, sensor, true, temp);
> +}
> +
> +static int nvme_set_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
> +				int temp)
> +{
> +	unsigned int threshold = (sensor << 16) | temp;
> +	int status;
> +	int ret;
> +
> +	if (temp > 0xffff)
> +		return -EINVAL;
> +
> +	if (under)
> +		threshold |= 0x100000;
> +
> +	ret = nvme_set_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
> +				&status);
> +
> +	return ret > 0 ? -EINVAL : ret;
> +}
> +
> +static int nvme_set_over_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
> +				     int temp)
> +{
> +	return nvme_set_temp_thresh(ctrl, sensor, false, temp);
> +}
> +
> +static int nvme_set_under_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
> +				     int temp)
> +{
> +	return nvme_set_temp_thresh(ctrl, sensor, true, temp);
> +}
> +
> +static int nvme_tz_get_trip_temp(struct thermal_zone_device *tzdev,
> +				 int trip, int *temp)
> +{
> +	int sensor = nvme_tz_type_to_sensor(tzdev->type);
> +	struct nvme_ctrl *ctrl = tzdev->devdata;
> +	int ret;
> +
> +	ret = nvme_get_over_temp_thresh(ctrl, sensor, temp);
> +	if (!ret)
> +		*temp = KELVIN_TO_MILLICELSIUS(*temp);
> +
> +	return ret;
> +}
> +
> +static int nvme_tz_set_trip_temp(struct thermal_zone_device *tzdev,
> +				 int trip, int temp)
> +{
> +	int sensor = nvme_tz_type_to_sensor(tzdev->type);
> +	struct nvme_ctrl *ctrl = tzdev->devdata;
> +	int ret;
> +
> +	temp = MILLICELSIUS_TO_KELVIN(temp);
> +
> +	ret = nvme_set_over_temp_thresh(ctrl, sensor, temp);
> +
> +	return ret > 0 ? -EINVAL : ret;
> +}
> +
> +static int nvme_tz_get_trip_hyst(struct thermal_zone_device *tzdev,
> +				 int trip, int *hyst)
> +{
> +	int sensor = nvme_tz_type_to_sensor(tzdev->type);
> +	struct nvme_ctrl *ctrl = tzdev->devdata;
> +	int ret;
> +
> +	ret = nvme_get_under_temp_thresh(ctrl, sensor, hyst);
> +	if (!ret)
> +		*hyst = KELVIN_TO_MILLICELSIUS(*hyst);
> +
> +	return ret;
> +}
> +
> +static int nvme_tz_set_trip_hyst(struct thermal_zone_device *tzdev,
> +				 int trip, int hyst)
> +{
> +	int sensor = nvme_tz_type_to_sensor(tzdev->type);
> +	struct nvme_ctrl *ctrl = tzdev->devdata;
> +	int ret;
> +
> +	hyst = MILLICELSIUS_TO_KELVIN(hyst);
> +
> +	ret = nvme_set_under_temp_thresh(ctrl, sensor, hyst);
> +
> +	return ret > 0 ? -EINVAL : ret;
> +}
> +
> +static struct thermal_zone_device_ops nvme_tz_ops = {
> +	.get_temp = nvme_tz_get_temp,
> +	.get_trip_type = nvme_tz_get_trip_type,
> +	.get_trip_temp = nvme_tz_get_trip_temp,
> +	.set_trip_temp = nvme_tz_set_trip_temp,
> +	.get_trip_hyst = nvme_tz_get_trip_hyst,
> +	.set_trip_hyst = nvme_tz_set_trip_hyst,
> +};
> +
> +static struct thermal_zone_params nvme_tz_params = {
> +	.governor_name = "user_space",
> +	.no_hwmon = true,
> +};
> +
> +static struct thermal_zone_device *
> +nvme_thermal_zone_register(struct nvme_ctrl *ctrl, int sensor)
> +{
> +	struct thermal_zone_device *tzdev;
> +	char type[THERMAL_NAME_LENGTH];
> +	int ret;
> +
> +	snprintf(type, sizeof(type), "nvme_temp%d", sensor);
> +
> +	tzdev = thermal_zone_device_register(type, 1, 1, ctrl, &nvme_tz_ops,
> +					     &nvme_tz_params, 0, 0);
The trips and type values should be #defined with a nice comment.
> +	if (IS_ERR(tzdev))
> +		return tzdev;
> +
> +	ret = sysfs_create_link(&ctrl->ctrl_device.kobj,
> +				&tzdev->device.kobj, type);
> +	if (ret)
> +		goto device_unregister;
> +
> +	ret = sysfs_create_link(&tzdev->device.kobj,
> +				&ctrl->ctrl_device.kobj, "device");
> +	if (ret)
> +		goto remove_link;
> +
> +	return tzdev;
> +
> +remove_link:
> +	sysfs_remove_link(&ctrl->ctrl_device.kobj, type);
> +device_unregister:
> +	thermal_zone_device_unregister(tzdev);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_smart_log *log;
> +	int ret;
> +	int i;
> +
> +	log = kzalloc(sizeof(*log), GFP_KERNEL);
> +	if (!log)
> +		return -ENOMEM;
> +
> +	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
> +			   log, sizeof(*log), 0);
> +	if (ret) {
> +		ret = ret > 0 ? -EINVAL : ret;
> +		goto free_log;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		struct thermal_zone_device *tzdev;
> +
nit:- a comment will be useful here.
> +		if (i && !le16_to_cpu(log->temp_sensor[i - 1]))
> +			continue;
> +		if (ctrl->tzdev[i])
> +			continue;
> +
> +		tzdev = nvme_thermal_zone_register(ctrl, i);
> +		if (!IS_ERR(tzdev))
> +			ctrl->tzdev[i] = tzdev;
> +	}
> +
> +free_log:
> +	kfree(log);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(nvme_thermal_zones_register);
> +
> +void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		struct thermal_zone_device *tzdev = ctrl->tzdev[i];
> +
> +		if (!tzdev)
> +			continue;
> +
> +		sysfs_remove_link(&tzdev->device.kobj, "device");
> +		sysfs_remove_link(&ctrl->ctrl_device.kobj, tzdev->type);
> +		thermal_zone_device_unregister(tzdev);
> +
> +		ctrl->tzdev[i] = NULL;
> +	}
> +}
> +EXPORT_SYMBOL_GPL(nvme_thermal_zones_unregister);
> +
> +static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
> +{
> +	queue_work(nvme_wq, &ctrl->thermal_work);
> +}
> +
> +static void nvme_thermal_work(struct work_struct *work)
> +{
> +	struct nvme_ctrl *ctrl =
> +		container_of(work, struct nvme_ctrl, thermal_work);
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
> +		if (ctrl->tzdev[i])
> +			thermal_notify_framework(ctrl->tzdev[i], 0);
> +	}
> +}
> +
> +static void nvme_thermal_init(struct nvme_ctrl *ctrl)
> +{
> +	INIT_WORK(&ctrl->thermal_work, nvme_thermal_work);
> +}
> +
> +#else
> +
> +static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
> +{
> +}
> +
> +static void nvme_thermal_init(struct nvme_ctrl *ctrl)
> +{
> +}
> +
> +#endif /* CONFIG_THERMAL */
> +
>  struct nvme_core_quirk_entry {
>  	/*
>  	 * NVMe model and firmware strings are padded with spaces.  For
> @@ -3630,6 +3978,14 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
>  	}
>  }
>  
nit:- I think AEN modification code needs to be split into different patch.
> +static void nvme_handle_aen_smart(struct nvme_ctrl *ctrl, u32 result)
> +{
> +	u32 aer_smart_type = (result & 0xff00) >> 8;
> +
> +	if (aer_smart_type == NVME_AER_SMART_TEMP_THRESH)
> +		nvme_thermal_notify_framework(ctrl);
> +}
> +
>  void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
>  		volatile union nvme_result *res)
>  {
> @@ -3643,8 +3999,10 @@ void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
>  	case NVME_AER_NOTICE:
>  		nvme_handle_aen_notice(ctrl, result);
>  		break;
> -	case NVME_AER_ERROR:
>  	case NVME_AER_SMART:
> +		nvme_handle_aen_smart(ctrl, result);
> +		/* fallthrough */
> +	case NVME_AER_ERROR:
>  	case NVME_AER_CSS:
>  	case NVME_AER_VS:
>  		trace_nvme_async_event(ctrl, aer_type);
> @@ -3776,6 +4134,8 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
>  	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
>  		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
>  
> +	nvme_thermal_init(ctrl);
> +
>  	return 0;
>  out_free_name:
>  	kfree_const(ctrl->device->kobj.name);
Also, definitions and data structures updates should go into the
different patch prep patch.
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 7f6f1fc..ff7bd8f 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -15,6 +15,7 @@
>  #include <linux/sed-opal.h>
>  #include <linux/fault-inject.h>
>  #include <linux/rcupdate.h>
> +#include <linux/thermal.h>
>  
>  extern unsigned int nvme_io_timeout;
>  #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
> @@ -248,6 +249,11 @@ struct nvme_ctrl {
>  
>  	struct page *discard_page;
>  	unsigned long discard_page_busy;
> +
> +#ifdef CONFIG_THERMAL
Add a macro here for tzdev[9] or refer to spec.
> +	struct thermal_zone_device *tzdev[9];
> +	struct work_struct thermal_work;
> +#endif
>  };
>  
>  enum nvme_iopolicy {
> @@ -553,6 +559,24 @@ static inline void nvme_mpath_stop(struct nvme_ctrl *ctrl)
>  }
>  #endif /* CONFIG_NVME_MULTIPATH */
>  
> +#ifdef CONFIG_THERMAL
> +
> +int nvme_thermal_zones_register(struct nvme_ctrl *ctrl);
> +void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl);
> +
> +#else
> +
> +static inline int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
> +{
> +	return 0;
> +}
> +
> +static inline void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
> +{
> +}
> +
> +#endif /* CONFIG_THERMAL */
> +
>  #ifdef CONFIG_NVM
>  int nvme_nvm_register(struct nvme_ns *ns, char *disk_name, int node);
>  void nvme_nvm_unregister(struct nvme_ns *ns);
> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index 8c0b29d..7acc77d 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -500,6 +500,10 @@ enum {
>  };
>  
>  enum {
> +	NVME_AER_SMART_TEMP_THRESH	= 0x01,
> +};
> +
> +enum {
>  	NVME_AER_NOTICE_NS_CHANGED	= 0x00,
>  	NVME_AER_NOTICE_FW_ACT_STARTING = 0x01,
>  	NVME_AER_NOTICE_ANA		= 0x03,



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
