Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F89B32599
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=JdOthImKmKCeNuHbRNj9cocQ9KXNyueECBEWT3XbOw4=; b=NJoFpIUmoIK2TN
	Yfz21WS8iGwBVSUd1qQN5bAEC0r0P35FdcG/I3W8p9P/AataeFBhw0m/hMd7SrRJ/q+/jUojUtUQ1
	/1ppd588aWCy219rYgDcShs1+K+CP6HI0MmPtlNPNc2pV7Lma/ywn6ePn675xIk2/jwLMnmb0RdQL
	An5YxsV0v+sM1Hi9H2MJt53W+0cfu0q0I3WIF2Z0gpfbs/I8PkCnbD9CN2CaZ54HKH6YOVlqMLLQy
	XOE0ilv3OTrOJorMU0A8Gf1ejLD4n+eyCIwHYfSOxuPDVlA2c0+W1nUWRRdoGMhW1YiHOFZryBI/u
	1jL0rk3xuu4Ow8l5wI5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZfq-0003uo-Tn; Sun, 02 Jun 2019 23:13:58 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZfk-0003uT-Ja
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559517233; x=1591053233;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=7MngQ9XSZLPwj/qjTJBTUa198uLk8JL3RLCYqnTOy7U=;
 b=ahNbLTjhoUR6A5AneggcPG2gnjanitUUVp4O20Yf85Sq0kVJQCYomsfk
 tus7kTyesz7VfW97rBK8/SxA1RJW+be7ntvsOFGsqm7pxruRsrDF5Knn4
 A0KGU6y8fbfo60I/Zzq69CHUomrm7Lg9NYfc+1PuSPRumOLTLmAYIJJ+w
 HIEOFPY0eyHmyC3e5EWdEmDrdAIemTFeol3IGD6if59IpM2R3jzcn+jhM
 Mk7nZSDCczI5b5zmPj1j1Wk7D5vWTp2e2bDayhlA95eVSfVzGGGVCfeN4
 /2ekKPckIbhrSpbp3XiiuPC5ZRe9vPu9f0rrzTN4sTd+0uhfl41+Pgwst g==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="114565542"
Received: from mail-sn1nam01lp2055.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.55])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:13:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3wwifaC+q1X82zeX3YC8sjFU7N9i5k9bHxsmgqUOohY=;
 b=LEVsJ4O9ryZ5uNGLwWUQULTiydHv9dkqSPrdNLdqRTG5QTRVN+kFFlwb2TGA9EBZs26hVWZz0ZnKX1fl5iHHYnu0JrmMLmbkYfP5RK8SLpS4vs2TsrRQO+cRB/d9SoXfJ4GvGDVyCVpoI66Yw6BGj3z7ReerbUTGLhi9EPP6p7Y=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4182.namprd04.prod.outlook.com (20.176.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 23:13:49 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:13:49 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 4/6] nvme-status: Introduce nvme status module to map
 errno
Thread-Topic: [PATCH V5 4/6] nvme-status: Introduce nvme status module to map
 errno
Thread-Index: AQHVEXf6EytXzfZV80OaHB6ihZMftA==
Date: Sun, 2 Jun 2019 23:13:49 +0000
Message-ID: <BYAPR04MB5749B100E8D74256F9982AAE861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-5-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6aeded5-c5be-468a-fb44-08d6e7aff87f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4182; 
x-ms-traffictypediagnostic: BYAPR04MB4182:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4182E44B0F9895BEB8877F3C861B0@BYAPR04MB4182.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(189003)(51234002)(2501003)(14444005)(5024004)(71190400001)(71200400001)(14454004)(486006)(72206003)(478600001)(256004)(110136005)(316002)(476003)(229853002)(9686003)(55016002)(53936002)(6436002)(446003)(76116006)(3846002)(8936002)(5660300002)(6116002)(2906002)(66946007)(73956011)(66476007)(66556008)(66446008)(52536014)(33656002)(8676002)(81166006)(81156014)(305945005)(74316002)(7736002)(64756008)(26005)(6246003)(186003)(4326008)(99286004)(66066001)(25786009)(68736007)(102836004)(7696005)(86362001)(6506007)(53546011)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4182;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZiQj4aX4khQmLL6D0jNUlu3oTvBrUtBx9962F6jlIGE8VzqPNIE9ulDg3QWf+0eo0jQe3NiTPeg8xThtkmUBMM16jRBmvzVU+LZVReLzp/xPuKHMLu7afE56UMg3rX6OpnmOSHjaFjlFxSQClqxPW2Nds3YVo/6KI5w/Z0uInzqFajRERn/qM0y3KTXJhyI7nqvPBcPPrjD8mL2bu5B3/bZ2aJBbGCeWhlJIHB4BeAhTGc/5GebmLQPpBE2s/Tt5FgetwOCtby+9IsigFlqSEBWdVfH4o7mODiUkmLoQtU/sGsprrTEQ9PR7soNEjzPcCbckuuAhvreqmmRVWknQyrs+7N9dYTgdt5eR03qUK645m62TxuXR4Yp7pebSTIiIOndW2i3BErqn1KhpvYoQMEOA7UZpemdE4UbjxhnK68o=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6aeded5-c5be-468a-fb44-08d6e7aff87f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:13:49.2984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_161353_113492_1EDE5FA2 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 5/23/19 7:58 AM, Minwoo Im wrote:
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
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  Makefile      |   3 +-
>  linux/nvme.h  |   6 ++
>  nvme-status.c | 155 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  nvme-status.h |  14 +++++
>  4 files changed, 177 insertions(+), 1 deletion(-)
>  create mode 100644 nvme-status.c
>  create mode 100644 nvme-status.h
>
> diff --git a/Makefile b/Makefile
> index ebb6b75..e0c0fe0 100644
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
> index 69f287e..9963e90 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -1319,6 +1319,12 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
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
> index 0000000..c69ff3f
> --- /dev/null
> +++ b/nvme-status.c
> @@ -0,0 +1,155 @@
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
> +	}
> +
> +	return EIO;
> +}
> +
> +/*
> + * nvme_status_to_errno - It converts given status to errno mapped
> + * @status: >= 0 for nvme status field in completion queue entry,
> + *          < 0 for linux internal errors
> + * @fabrics: true if given status is for fabrics
> + *
> + * Notes: This function will convert a given status to an errno mapped
> + */
> +__u8 nvme_status_to_errno(int status, bool fabrics)
> +{
> +	__u8 sct;
> +
> +	if (!status)
> +		return 0;
> +
> +	if (status < 0)
> +		return ECOMM;
> +
> +	/*
> +	 * The actual status code is enough with masking 0xff, but we need to
> +	 * cover status code type which is 3bits with 0x7ff.
> +	 */
> +	status &= 0x7ff;
> +
> +	sct = nvme_status_type(status);
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
> index 0000000..92a474c
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
> +__u8 nvme_status_to_errno(int status, bool fabrics);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
