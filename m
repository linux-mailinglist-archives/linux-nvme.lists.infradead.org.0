Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09715227E9
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 19:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RLX+kF+PQwWAZoJvOperL57lAgYk+VwlyRa/Dp5B/nI=; b=cunv+5aJ6qCSyl
	IQse52RTOHve8IUCgxQ2VlVj7eYcv5aQk2R9hXq62G/ka+laJ7EzAbsU0GxxS5oIw49t3ET0huJoh
	I6Yxu0FfJ+chW61rJ+CmyYU6teN6aJxpH/p7Px7H6t1ouz3wPkwS3PBxjXfLo3+uUSxxqYfA+xO1T
	Nso6l/PCcC/EC3IL1sUVu226wNLHfbfuplSIHza2lsfoTH/BrNKn+oZwdwQxVViRQthA+888XEU/X
	2WW0NvhuDcsUTtmUJHjHUgFskIKXOHePKS5sC1lq7znNdbxZczjsuucwDktJPSbYchEny+l/5XycV
	NShoM/4MO20zgHPMaA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSPpM-0000mq-6v; Sun, 19 May 2019 17:42:28 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSPpG-0000lp-53
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 17:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558287742; x=1589823742;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=IkAUACcYmoPhwFo723QtsgIMGBdMS+46XLf8PYbAd4k=;
 b=rNx1h1cf0sObtiWdxiQKUU1bEoS2YPacMMqXDgEVe41iCjyvppSuSCY8
 5bpGyTbYUacFsWfflvg0SKm5Dr9NvQBiHykX18UvXfnyuTCpi6z3kI+Yj
 9OANmwbGL3Vf0cj2medtSiiuCvEmMCqYUzaNPo6IUslmrmjIHP77m9R4m
 0XiHjgC35MIEqWXQ/6KjgacSvZV4B3csq73M13L2f+v7CXCV9uh+StTYc
 zCaUWm5p5xnuxgwheg4kvv7NmctLDbNkfsvEqKqznGFsnz+fewoMqXB8x
 SIDiOzbjT19Vu+YXs/BEQhvalm2amDVUWfR0At2uWoHb32FpfcbM4dkX3 A==;
X-IronPort-AV: E=Sophos;i="5.60,488,1549900800"; d="scan'208";a="214761278"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 01:42:20 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S2SDTHb8LzOo2o7utGH9YCxboWRg9+KfLFtfhf6930A=;
 b=Wg9wdhVr7YYEngyArUzlbwNLaQt5EHQA6sMiC1Sk3uPL9P4KjP86NZkW2yGD+V5o2ty5dDtv7qsJ68JD06e8mGY8SKRWPgfU7evTuenx6JMpZq34FUBD3KEJmRQXk/thVEmt6u+uQ4t0P1n4CofqH5rCdYhxTGdP2uTpl6L49Q8=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB6117.namprd04.prod.outlook.com (20.178.234.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Sun, 19 May 2019 17:42:19 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1900.020; Sun, 19 May 2019
 17:42:19 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Topic: [PATCH V2 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Index: AQHVCa3uiVAerE0kNUaD/8qM4n5fxA==
Date: Sun, 19 May 2019 17:42:19 +0000
Message-ID: <BYAPR04MB5749007DAA9F804D6385FF8F86050@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8ab0cb7-265d-4ad6-6d22-08d6dc815763
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6117; 
x-ms-traffictypediagnostic: BYAPR04MB6117:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB61178DB899C3552A2BC0343486050@BYAPR04MB6117.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00429279BA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(396003)(346002)(136003)(376002)(199004)(189003)(51234002)(25786009)(8936002)(478600001)(5660300002)(14454004)(72206003)(4326008)(229853002)(33656002)(7736002)(66556008)(71190400001)(71200400001)(305945005)(102836004)(6506007)(316002)(52536014)(2906002)(66476007)(66446008)(64756008)(186003)(76116006)(66946007)(73956011)(6116002)(3846002)(76176011)(53546011)(99286004)(486006)(7696005)(86362001)(74316002)(446003)(476003)(66066001)(55016002)(2501003)(8676002)(9686003)(256004)(14444005)(81156014)(53936002)(110136005)(68736007)(6246003)(81166006)(26005)(5024004)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6117;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mQ9RVc97kZyCuM+6fMFeXFVlq+5yKLLkwyLAF+fs4J+RxYDwDvr3UMSguwLOYO0OUQEZU50r/RhijAbzvx1kknvPh4owbMH1S3g/WV4avqY0OLWAKckNZ4jz/bebAShwKYFFJQjGhS4+ARz0wB5TLmPUnewhSJG1DE9h+HkLl+bkZG4BiXMqHdFgOrYlVMGhPr+l5TD5b2Sw4QBP1Bcv6xIoyT69O8oB3jUtZz2CBLIoaxA91HYhiIKG9FDFFVwwn+ieQ+gSbmVC6ZGv0o2DWa1Zg9kompmJkEwJ7Sdd3lP44q5mzrBra+Q34T/1VrmMbzeVaomuNUy76BKSV8gcwpGlfp1DnVNnsgMw6wU8FBT5Ynbs97twcMC34dpw7vh7c9W+XnrFyFFU+kuwTiH+D+xTynqmVDsyHNFPQPN+9+E=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8ab0cb7-265d-4ad6-6d22-08d6dc815763
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2019 17:42:19.3929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_104222_314458_B7C6F0BD 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/13/2019 10:04 AM, Minwoo Im wrote:
> Background:
>    It's not enough to return the nvme status value in main() because it's
> allowed to be in 8bits, but nvme status is indicated in 16bits.  So we
> has not been able to figure out what kind of nvme status has been
> returned by return value.
>
>    This patch introduces nvme-status module that manages mapping between
> nvme status and errno.  It's not possible to make 1:1 mapping relations,
> but we can map it as a groups.
>
> All the internal errors which has been returned in a negative value will
> be returned with ECOMM that indicates communication errors.  In this
> case, we can see what happened via stderr.

I didn't understand this as I don't see ECOMM in this patch, also when 
you mentioned internal errors are you referring to the  NVME_SC_INTERNAL 
? in that case in this patch NVME_SC_INTERNAL is mapped to the EIO. Can 
you please explain ?

>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   Makefile      |   3 +-
>   linux/nvme.h  |   6 +++
>   nvme-status.c | 147 ++++++++++++++++++++++++++++++++++++++++++++++++++
>   nvme-status.h |  14 +++++
>   4 files changed, 169 insertions(+), 1 deletion(-)
>   create mode 100644 nvme-status.c
>   create mode 100644 nvme-status.h
>
> diff --git a/Makefile b/Makefile
> index 4bfbebb..1e50a65 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -32,7 +32,8 @@ override CFLAGS += -DNVME_VERSION='"$(NVME_VERSION)"'
>   NVME_DPKG_VERSION=1~`lsb_release -sc`
>
>   OBJS := argconfig.o suffix.o parser.o nvme-print.o nvme-ioctl.o \
> -	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o
> +	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o \
> +	nvme-status.o
>
>   PLUGIN_OBJS :=					\
>   	plugins/intel/intel-nvme.o		\
> diff --git a/linux/nvme.h b/linux/nvme.h
> index c99b438..5ca7442 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -1307,6 +1307,12 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
>   	return cmd->common.opcode & 1;
>   }
>
> +enum {
> +	NVME_SCT_GENERIC		= 0x0,
> +	NVME_SCT_CMD_SPECIFIC		= 0x1,
> +	NVME_SCT_MEDIA			= 0x2,
> +};
> +
>   enum {
>   	/*
>   	 * Generic Command Status:
> diff --git a/nvme-status.c b/nvme-status.c
> new file mode 100644
> index 0000000..3f51ceb
> --- /dev/null
> +++ b/nvme-status.c
> @@ -0,0 +1,147 @@
> +#include <linux/types.h>
> +#include <stdbool.h>
> +#include <errno.h>
> +
> +#include "nvme.h"
> +#include "nvme-status.h"
> +
> +static inline __u8 nvme_generic_status_to_errno(__u16 status)
> +{
> +	switch (status) {
> +	case NVME_SC_INVALID_OPCODE:
> +	case NVME_SC_INVALID_FIELD:
> +	case NVME_SC_INVALID_NS:
> +	case NVME_SC_SGL_INVALID_LAST:
> +	case NVME_SC_SGL_INVALID_COUNT:
> +	case NVME_SC_SGL_INVALID_DATA:
> +	case NVME_SC_SGL_INVALID_METADATA:
> +	case NVME_SC_SGL_INVALID_TYPE:
> +	case NVME_SC_SGL_INVALID_OFFSET:
> +	case NVME_SC_SGL_INVALID_SUBTYPE:
> +		return EINVAL;
> +	case NVME_SC_CMDID_CONFLICT:
> +		return EADDRINUSE;
> +	case NVME_SC_DATA_XFER_ERROR:
> +	case NVME_SC_INTERNAL:
> +	case NVME_SC_SANITIZE_FAILED:
> +		return EIO;
> +	case NVME_SC_POWER_LOSS:
> +	case NVME_SC_ABORT_REQ:
> +	case NVME_SC_ABORT_QUEUE:
> +	case NVME_SC_FUSED_FAIL:
> +	case NVME_SC_FUSED_MISSING:
> +		return EWOULDBLOCK;
> +	case NVME_SC_CMD_SEQ_ERROR:
> +		return EILSEQ;
> +	case NVME_SC_SANITIZE_IN_PROGRESS:
> +		return EINPROGRESS;
> +	case NVME_SC_NS_WRITE_PROTECTED:
> +	case NVME_SC_NS_NOT_READY:
> +	case NVME_SC_RESERVATION_CONFLICT:
> +		return EACCES;
> +	case NVME_SC_LBA_RANGE:
> +		return EREMOTEIO;
> +	case NVME_SC_CAP_EXCEEDED:
> +		return ENOSPC;

nit:- Compiler/static code analysis tools might complain or generate a 
warning for not having default case for switch. Let's avoid that by 
declaring a variable ret and initializing it at each case and default 
(ret = EIO), then use only one return at the end of the function,
> +	}
> +
> +	return EIO;
> +}
> +
> +static inline __u8 nvme_cmd_specific_status_to_errno(__u16 status)
> +{
> +	switch (status) {
> +	case NVME_SC_CQ_INVALID:
> +	case NVME_SC_QID_INVALID:
> +	case NVME_SC_QUEUE_SIZE:
> +	case NVME_SC_FIRMWARE_SLOT:
> +	case NVME_SC_FIRMWARE_IMAGE:
> +	case NVME_SC_INVALID_VECTOR:
> +	case NVME_SC_INVALID_LOG_PAGE:
> +	case NVME_SC_INVALID_FORMAT:
> +	case NVME_SC_INVALID_QUEUE:
> +	case NVME_SC_NS_INSUFFICIENT_CAP:
> +	case NVME_SC_NS_ID_UNAVAILABLE:
> +	case NVME_SC_CTRL_LIST_INVALID:
> +	case NVME_SC_BAD_ATTRIBUTES:
> +	case NVME_SC_INVALID_PI:
> +		return EINVAL;
> +	case NVME_SC_ABORT_LIMIT:
> +	case NVME_SC_ASYNC_LIMIT:
> +		return EDQUOT;
> +	case NVME_SC_FW_NEEDS_CONV_RESET:
> +	case NVME_SC_FW_NEEDS_SUBSYS_RESET:
> +	case NVME_SC_FW_NEEDS_MAX_TIME:
> +		return ERESTART;
> +	case NVME_SC_FEATURE_NOT_SAVEABLE:
> +	case NVME_SC_FEATURE_NOT_CHANGEABLE:
> +	case NVME_SC_FEATURE_NOT_PER_NS:
> +	case NVME_SC_FW_ACTIVATE_PROHIBITED:
> +	case NVME_SC_NS_IS_PRIVATE:
> +	case NVME_SC_BP_WRITE_PROHIBITED:
> +	case NVME_SC_READ_ONLY:
> +		return EPERM;
> +	case NVME_SC_OVERLAPPING_RANGE:
> +	case NVME_SC_NS_NOT_ATTACHED:
> +		return ENOSPC;
> +	case NVME_SC_NS_ALREADY_ATTACHED:
> +		return EALREADY;
> +	case NVME_SC_THIN_PROV_NOT_SUPP:
> +	case NVME_SC_ONCS_NOT_SUPPORTED:
> +		return EOPNOTSUPP;
nit:- same here as mentioned.
> +	}
> +
> +	return EIO;
> +}
> +
> +static inline __u8 nvme_fabrics_status_to_errno(__u16 status)
> +{
> +	switch (status) {
> +	case NVME_SC_CONNECT_FORMAT:
> +	case NVME_SC_CONNECT_INVALID_PARAM:
> +		return EINVAL;
> +	case NVME_SC_CONNECT_CTRL_BUSY:
> +		return EBUSY;
> +	case NVME_SC_CONNECT_RESTART_DISC:
> +		return ERESTART;
> +	case NVME_SC_CONNECT_INVALID_HOST:
> +		return ECONNREFUSED;
> +	case NVME_SC_DISCOVERY_RESTART:
> +		return EAGAIN;
> +	case NVME_SC_AUTH_REQUIRED:
> +		return EPERM;
nit:- same here as mentioned.
> +	}
> +
> +	return EIO;
> +}
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
> +	if (sct == NVME_SCT_GENERIC)
> +		return nvme_generic_status_to_errno(status);
> +	else if (sct == NVME_SCT_CMD_SPECIFIC && !fabrics)
> +		return nvme_cmd_specific_status_to_errno(status);
> +	else if (sct == NVME_SCT_CMD_SPECIFIC && fabrics)
> +		return nvme_fabrics_status_to_errno(status);
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
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
