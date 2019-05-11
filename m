Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3EA1A9A1
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 23:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=StX7Rlcy/SWkO7f3wGmwt8wcW3ocy+Z00dlJzTKFoDk=; b=eD9v4hjyoIP4Pw
	hck9GAPRltV5J8WiheOnMvAmSAc1EpnCFAcqH0sMhvCfZmIsVpZQqorku162+H9NchWVcXwu5jUu3
	XGj6kPPweWHaE6SBfR9Snu0R9nUbXIf647gPd4cENWJFs8Dq7iuSpbga8o7whVq/2WZKfe4+1FELx
	EkdjFjDCS5L5xKmwlQYbuyAlZNXhK5D6pEEbO2FfnS9J2s8RNlL/4LwX9334O11lXKL1dwMPtymHj
	+R9xrkxy5qmKsi9lRWqEaCzTgQr7bzo40+V9diqouujgverhR3uCFO1Ua6pMnrLCBoNFLwOm5GhIm
	8ttoKkwwn8IoJkZhdK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPa0k-0002sr-NF; Sat, 11 May 2019 21:58:30 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPa0e-0002sV-QU
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 21:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557611904; x=1589147904;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=+jX4lryGiwxGqloCDWwmL42XV17R2Y1MilFSJMTXFRw=;
 b=VDAj1jiIJhTM+ChmSPofDY0ky4qf0BRL+AXv4dLLSJqDtTsUxFi2i99P
 TS7lNBPs6y84fW3skWgYY7PcakuiGyjOSGQFoV6D0rLPgpGt8fNRB0Jd/
 Z6WwzbHplpKbWsr1PmAlJGjB/MY7cfRfKbynnWWu6TURrRrKfQx4orUpa
 KTZy3sjY/uLHmKJUPI9YeTOYhRdsQMm5eNYyYhxX7ZMUJ66kiQRzqoniM
 wW5D8zecyA9RMjMUPYq3jF6u4f2yBlwx1ortoxPlSwjHNbnr/Pm3d7A+Z
 1g66SIHt3o41E/OWsPew8LlshbjUQPu83V0hjUTNdwuzetVKCJMrP2pyG Q==;
X-IronPort-AV: E=Sophos;i="5.60,459,1549900800"; d="scan'208";a="214116777"
Received: from mail-co1nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.58])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 05:58:23 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Je3+rJYYy/zWgSLlXz4X7zdi/6j5RCiK1emrcUtzeDU=;
 b=O32/4mgC2fsospV4jbjY+zuNZksHViMaH5wTDa34TsKkeYJ4vgfbDFpKhpjSPxscEWfYKo+t9h4EhSMil1tqC4jSbX9EHOwcyQ2T5uRD7jRMTCKlgiucHwH3Sptp4g0beMrDMGxtLAFopE46Ho6DiSl4BoahT9KfJRloAecyblc=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5005.namprd04.prod.outlook.com (52.135.114.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Sat, 11 May 2019 21:58:20 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.016; Sat, 11 May 2019
 21:58:20 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Topic: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Index: AQHVCDECitgdLJFKvEOQcXscsVQnZw==
Date: Sat, 11 May 2019 21:58:20 +0000
Message-ID: <SN6PR04MB452726893B1EC5E52D347B3F860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
 <20190511193713.29516-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:1052:134a:6e3b:f2ba]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a14c33b9-7e03-4a08-1d2c-08d6d65bc839
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5005; 
x-ms-traffictypediagnostic: SN6PR04MB5005:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5005B21852C3BEBC69128890860D0@SN6PR04MB5005.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00342DD5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(366004)(376002)(39850400004)(199004)(189003)(51234002)(6246003)(4326008)(102836004)(73956011)(64756008)(91956017)(14444005)(256004)(66556008)(76116006)(25786009)(52536014)(66946007)(66476007)(5024004)(2906002)(476003)(55016002)(6436002)(86362001)(446003)(6506007)(53546011)(486006)(66446008)(5660300002)(6116002)(229853002)(46003)(33656002)(71200400001)(71190400001)(110136005)(74316002)(7696005)(76176011)(68736007)(14454004)(72206003)(53936002)(7736002)(2501003)(316002)(99286004)(478600001)(9686003)(8936002)(81156014)(8676002)(186003)(305945005)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5005;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P3JZD9N6/ikRtoL5iaSN5re8RA/OTvS49rqzWHHpH7J4Flm3ujPTEmrJqPu6RxZDuznntYAYd1SDZBu3qRHxl2rNzr+VZH0cqtZRO51lFcoJaXB/igSncJIHZBAK7rRO7d4e9xcgdPVPcXnxqJxdjMUht02sK3z8/ewns/5e+tPK86aJGP3QobqZaKxUPfsz8ugBx7odOvPA03UfZaRd3f8AKE85GTXJvEJi4DXE8tmPM6wnozSeDVHS9B2C6IpMNA3pkPLONgAv1OxcZxFEDl5lcV4OHhPVwjMDjKpmezwr5mftiEnn83MQY+8b4/Af9n0TLvBJ76uiZZzuzOQoy+iVeOtC7qs6SmcY/A6pA5dVcfL7YV2ZDpDkoxQW/PNpL2ThQ5pLftBmBKynISQ3l8VLranbzozbMn4mieBMlxw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a14c33b9-7e03-4a08-1d2c-08d6d65bc839
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2019 21:58:20.7717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_145824_873104_BD892E3F 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/11/19 12:37 PM, Minwoo Im wrote:
> Background:
>   It's not enough to return the nvme status value in main() because it's
> allowed to be in 8bits, but nvme status is indicated in 16bits.  So we
> has not been able to figure out what kind of nvme status has been
> returned by return value.
>
>   This patch introduces nvme-status module that manages mapping between
> nvme status and errno.  It's not possible to make 1:1 mapping relations,
> but we can map it as a groups.
>
> All the internal errors which has been returned in a negative value will
> be returned with ECOMM that indicates communication errors.  In this
> case, we can see what happened via stderr.
>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  Makefile      |   3 +-
>  linux/nvme.h  |   6 +++
>  nvme-status.c | 127 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  nvme-status.h |  14 ++++++
>  4 files changed, 149 insertions(+), 1 deletion(-)
>  create mode 100644 nvme-status.c
>  create mode 100644 nvme-status.h
>
> diff --git a/Makefile b/Makefile
> index 4bfbebb..1e50a65 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -32,7 +32,8 @@ override CFLAGS += -DNVME_VERSION='"$(NVME_VERSION)"'
>  NVME_DPKG_VERSION=1~`lsb_release -sc`
>  
>  OBJS := argconfig.o suffix.o parser.o nvme-print.o nvme-ioctl.o \
> -	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o
> +	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o \
> +	nvme-status.o
>  
>  PLUGIN_OBJS :=					\
>  	plugins/intel/intel-nvme.o		\
> diff --git a/linux/nvme.h b/linux/nvme.h
> index c99b438..5ca7442 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -1307,6 +1307,12 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
>  	return cmd->common.opcode & 1;
>  }
>  
> +enum {
> +	NVME_SCT_GENERIC		= 0x0,
> +	NVME_SCT_CMD_SPECIFIC		= 0x1,
> +	NVME_SCT_MEDIA			= 0x2,
> +};
> +
>  enum {
>  	/*
>  	 * Generic Command Status:
> diff --git a/nvme-status.c b/nvme-status.c
> new file mode 100644
> index 0000000..63511a5
> --- /dev/null
> +++ b/nvme-status.c
> @@ -0,0 +1,127 @@
> +#include <linux/types.h>
> +#include <stdbool.h>
> +#include <errno.h>
> +
> +#include "nvme.h"
> +#include "nvme-status.h"
> +
> +/*
> + * nvme_status_to_errno - It converts given status to errno mapped
> + * @status: nvme status field in completion queue entry
> + * @fabrics: true if given status is for fabrics
> + *
> + * Notes: This function can handle generic command status only.
> + */
> +__u8 nvme_status_to_errno(__u16 status, bool fabrics)
> +{
> +	__u8 sct = nvme_status_type(status);
> +
> +	/*
> +	 * The actual status code is enough with masking 0xff, but we need to
> +	 * cover status code type which is 3bits with 0x7ff.
> +	 */
> +	status &= 0x7ff;
> +
> +	if (sct == NVME_SCT_GENERIC) {
> +		switch (status) {
> +		case NVME_SC_INVALID_OPCODE:
> +		case NVME_SC_INVALID_FIELD:
> +		case NVME_SC_INVALID_NS:
> +		case NVME_SC_SGL_INVALID_LAST:
> +		case NVME_SC_SGL_INVALID_COUNT:
> +		case NVME_SC_SGL_INVALID_DATA:
> +		case NVME_SC_SGL_INVALID_METADATA:
> +		case NVME_SC_SGL_INVALID_TYPE:
> +		case NVME_SC_SGL_INVALID_OFFSET:
> +		case NVME_SC_SGL_INVALID_SUBTYPE:
> +			return EINVAL;
> +		case NVME_SC_CMDID_CONFLICT:
> +			return EADDRINUSE;
> +		case NVME_SC_DATA_XFER_ERROR:
> +		case NVME_SC_INTERNAL:
> +		case NVME_SC_SANITIZE_FAILED:
> +			return EIO;
> +		case NVME_SC_POWER_LOSS:
> +		case NVME_SC_ABORT_REQ:
> +		case NVME_SC_ABORT_QUEUE:
> +		case NVME_SC_FUSED_FAIL:
> +		case NVME_SC_FUSED_MISSING:
> +			return EWOULDBLOCK;
> +		case NVME_SC_CMD_SEQ_ERROR:
> +			return EILSEQ;
> +		case NVME_SC_SANITIZE_IN_PROGRESS:
> +			return EINPROGRESS;
> +		case NVME_SC_NS_WRITE_PROTECTED:
> +		case NVME_SC_NS_NOT_READY:
> +		case NVME_SC_RESERVATION_CONFLICT:
> +			return EACCES;
> +		case NVME_SC_LBA_RANGE:
> +			return EREMOTEIO;
> +		case NVME_SC_CAP_EXCEEDED:
> +			return ENOSPC;
> +		}

Please move above switch to the small helper inline function

nvme_status_code_generic().

> +	} else if (sct == NVME_SCT_CMD_SPECIFIC && !fabrics) {
> +		switch (status) {
> +		case NVME_SC_CQ_INVALID:
> +		case NVME_SC_QID_INVALID:
> +		case NVME_SC_QUEUE_SIZE:
> +		case NVME_SC_FIRMWARE_SLOT:
> +		case NVME_SC_FIRMWARE_IMAGE:
> +		case NVME_SC_INVALID_VECTOR:
> +		case NVME_SC_INVALID_LOG_PAGE:
> +		case NVME_SC_INVALID_FORMAT:
> +		case NVME_SC_INVALID_QUEUE:
> +		case NVME_SC_NS_INSUFFICIENT_CAP:
> +		case NVME_SC_NS_ID_UNAVAILABLE:
> +		case NVME_SC_CTRL_LIST_INVALID:
> +		case NVME_SC_BAD_ATTRIBUTES:
> +		case NVME_SC_INVALID_PI:
> +			return EINVAL;
> +		case NVME_SC_ABORT_LIMIT:
> +		case NVME_SC_ASYNC_LIMIT:
> +			return EDQUOT;
> +		case NVME_SC_FW_NEEDS_CONV_RESET:
> +		case NVME_SC_FW_NEEDS_SUBSYS_RESET:
> +		case NVME_SC_FW_NEEDS_MAX_TIME:
> +			return ERESTART;
> +		case NVME_SC_FEATURE_NOT_SAVEABLE:
> +		case NVME_SC_FEATURE_NOT_CHANGEABLE:
> +		case NVME_SC_FEATURE_NOT_PER_NS:
> +		case NVME_SC_FW_ACTIVATE_PROHIBITED:
> +		case NVME_SC_NS_IS_PRIVATE:
> +		case NVME_SC_BP_WRITE_PROHIBITED:
> +		case NVME_SC_READ_ONLY:
> +			return EPERM;
> +		case NVME_SC_OVERLAPPING_RANGE:
> +		case NVME_SC_NS_NOT_ATTACHED:
> +			return ENOSPC;
> +		case NVME_SC_NS_ALREADY_ATTACHED:
> +			return EALREADY;
> +		case NVME_SC_THIN_PROV_NOT_SUPP:
> +		case NVME_SC_ONCS_NOT_SUPPORTED:
> +			return EOPNOTSUPP;
> +		}
Please move above switch to the small helper inline function
nvme_status_code_cmd_specific().
> +	} else if (sct == NVME_SCT_CMD_SPECIFIC && fabrics) {
> +		switch (status) {
> +		case NVME_SC_CONNECT_FORMAT:
> +		case NVME_SC_CONNECT_INVALID_PARAM:
> +			return EINVAL;
> +		case NVME_SC_CONNECT_CTRL_BUSY:
> +			return EBUSY;
> +		case NVME_SC_CONNECT_RESTART_DISC:
> +			return ERESTART;
> +		case NVME_SC_CONNECT_INVALID_HOST:
> +			return ECONNREFUSED;
> +		case NVME_SC_DISCOVERY_RESTART:
> +			return EAGAIN;
> +		case NVME_SC_AUTH_REQUIRED:
> +			return EPERM;
> +		}
Please move above switch to the small helper inline function
nvme_status_code_cmd_fabrics().
> +	}
> +
> +	/*
> +	 * Media, integrity related status, and the others will be mapped to
> +	 * EIO.
> +	 */
> +	return EIO;
> +}
> diff --git a/nvme-status.h b/nvme-status.h
> new file mode 100644
> index 0000000..094132b
> --- /dev/null
> +++ b/nvme-status.h
> @@ -0,0 +1,14 @@
> +#include <linux/types.h>
> +#include <stdbool.h>
> +
> +/*
> + * nvme_status_type - It gives SCT(Status Code Type) in status field in
> + *                    completion queue entry.
> + * @status: status field located at DW3 in completion queue entry
> + */
> +static inline __u8 nvme_status_type(__u16 status)
> +{
> +	return (status & 0x700) >> 8;
> +}
> +
> +__u8 nvme_status_to_errno(__u16 status, bool fabrics);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
