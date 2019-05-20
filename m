Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFE122B07
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 07:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=B+5JWYtlcv3cEzrDs3VE94vieMa4f3irJMbp0znMIf4=; b=TFcNZyNCU6/Huy
	jHI7Lw55+ZG1m5Dnwa0YOqPbUWXejeUzNvGKXpVbnk+SUhtfoG5UYbcnspncHDm+w1jLyAy7WyzUR
	3G5ll5QOttrH91iqdXCbrMppJqVvqD5fcTtCYne7BoHrJ0wJCr2luV/qyBIseAgoXmIE4SPcaSepz
	LyP7Yl2OzE+ni6EO+WfObNzySoabXLX6jT9+xliriwb9SeHz/MnqgZTV0q5e8NKEpsBdKebwm3JlX
	mIF/WhUIw+Qpm3+Gvq+zhNLzBVcmfKOGUuPKb2lW11bqtpKnkq3N75WikJf8erpXLDakoyTcIJ7e4
	FnTddBI4t+hW3q1NfbvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSadi-0007I1-D8; Mon, 20 May 2019 05:15:10 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSadc-0006Gj-W8
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 05:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558329304; x=1589865304;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=zcrTnA7RoGY8XiCHzBUUCuG7e22aUXNjPqQorRkNVQw=;
 b=Opwn1PzDZP+wijeKa1sAMM4OM3XSYf3U6GVrk8k07qFOd+hTXn6BlXJv
 GHOy/78QmesDN5KD9srg2wdfGmzkM039yuP1J7B32DLYOCqj59QnV3d+v
 cWdL7yMqR1fizMKrX2+AijI/qv+N6ax8JC63GOJJJyLoXB+es4lMgekiW
 0QwgQRskxOHoeq4Oy4yT6fswUu7ysVyuWsaJ3aOSpTLRCP4nwuV7csepv
 98db5UWh2wYIpxpSfBQP5ed7fHOym7KOpfh541foOgEeCeP3qdEfVQ0nL
 t4p/BNFcxnv9QOMJQp4PDixUfv3a/54Yj5qwCi32DOMzvHupmNTUAnBWx w==;
X-IronPort-AV: E=Sophos;i="5.60,490,1549900800"; d="scan'208";a="214787199"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 13:15:01 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+J4JnGj/IRZHhJpviL06uxTzsrubcOwtpo5LXjxw7bU=;
 b=L7F1X30eTm1SJ3MVEKNOLFJmbO7VWCes+3ng8r98x5Y4MPYx7AuWTkRY5eGiAKlsYp1FbFaN/kgmWrGVCCnNBFqUsbmsufHs9ZN9FUG2EdZOcHd5m1SWrub4x4PAb19tVZ6DyAz6inN8PJQoTy3C7TCWDyvjd+kXAIUkzQCaixw=
Received: from BN8PR04MB5747.namprd04.prod.outlook.com (20.179.74.153) by
 BN8PR04MB6227.namprd04.prod.outlook.com (20.178.214.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 05:14:59 +0000
Received: from BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956]) by BN8PR04MB5747.namprd04.prod.outlook.com
 ([fe80::8d57:1897:2466:e956%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 05:14:59 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V3 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Topic: [PATCH V3 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Index: AQHVDnIyVj2prfat2keNGC/xmMj2Og==
Date: Mon, 20 May 2019 05:14:58 +0000
Message-ID: <BN8PR04MB5747677AC6831F90C92D42E086060@BN8PR04MB5747.namprd04.prod.outlook.com>
References: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
 <20190519183913.3493-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:cd31:e5c8:9aac:becc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a247c39-50ab-40f4-2a71-08d6dce21b54
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BN8PR04MB6227; 
x-ms-traffictypediagnostic: BN8PR04MB6227:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BN8PR04MB62277942721A8A9623FD18B786060@BN8PR04MB6227.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(136003)(346002)(376002)(366004)(189003)(199004)(51234002)(14454004)(6116002)(478600001)(229853002)(316002)(110136005)(9686003)(6436002)(72206003)(55016002)(256004)(99286004)(5024004)(7696005)(14444005)(76176011)(5660300002)(33656002)(2501003)(8676002)(86362001)(486006)(73956011)(76116006)(4326008)(2906002)(66476007)(66556008)(64756008)(66946007)(66446008)(6506007)(53936002)(74316002)(53546011)(305945005)(81166006)(91956017)(68736007)(81156014)(52536014)(46003)(71200400001)(71190400001)(102836004)(25786009)(446003)(476003)(6246003)(7736002)(186003)(8936002)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR04MB6227;
 H:BN8PR04MB5747.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HOz75R9Gi6Uj11hXwJFDPjSYAOx2/g7IA6kllGpboJ7lMlQc5nFIy1EXpYf0khYOv1nAA34mQARbnIHndro0jfmzlMAK6gDyVlMJRzVxURqTbJh5v5BylmVOnkvJLoO10Rhi+Oc+HFtphaUZDuZDNgkzk3m7qkkV2Xesjx06cO7sAETCnyHVLADORlYFttVJctWbq1PEOv6Wod1Pj/YnvErSJRnUkK6s4ZVOo/vnNgPXOWuytI2oK94f0qa7NN7YBG6kLCBD0KXSJbV0UTKp4PqkKsWggE7LN/VLvb3098ANd96iUiJ/SK9mFP4Wp+8YJAIA6MK1TMZEzlc/JfdGZ+I7IWDVENfWpi0Si8EJjLgLoMSVi4P4wYRbPTkyXBsvV0JynhTHIF+P8W3R05yaT2ohrr9VGWXKIRwRh+4NRCM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a247c39-50ab-40f4-2a71-08d6dce21b54
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 05:14:58.7770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB6227
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_221505_219521_F3266D46 
X-CRM114-Status: GOOD (  23.67  )
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

On 5/19/19 11:39 AM, Minwoo Im wrote:
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
>  linux/nvme.h  |   6 ++
>  nvme-status.c | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  nvme-status.h |  14 +++++
>  4 files changed, 174 insertions(+), 1 deletion(-)
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
> index 0000000..349b49e
> --- /dev/null
> +++ b/nvme-status.c
> @@ -0,0 +1,152 @@
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
> +	if (status < 0)
> +		return ECOMM;

I'm not sure if this patch is tested or I'm making some terrible mistake
in testing.

It is breaking tests based on the nvme-cli unless I'm doing something wrong,

in that case please correct me.

Default :-

root@mat ~/nvme-cli (master)# nvme id-ns /dev/nvme0n1 
NVME Identify Namespace 1:
nsze    : 0x200000
ncap    : 0x200000
nuse    : 0x200000
nsfeat  : 0
nlbaf   : 0
flbas   : 0
mc      : 0
dpc     : 0
dps     : 0
nmic    : 0
rescap  : 0
fpi     : 0
dlfeat  : 0
nawun   : 0
nawupf  : 0
nacwu   : 0
nabsn   : 0
nabo    : 0
nabspf  : 0
noiob   : 0
nvmcap  : 0
nsattr    : 0
nvmsetid: 0
anagrpid: 0
endgid  : 0
nguid   : 00000000000000000000000000000000
eui64   : 0000000000000000
lbaf  0 : ms:0   lbads:9  rp:0 (in use)
root@mat ~/nvme-cli (master)# echo $?
0

With this patch-series.

root@mat ~/nvme-cli (master)# ./nvme id-ns /dev/nvme0n1 
NVME Identify Namespace 1:
nsze    : 0x200000
ncap    : 0x200000
nuse    : 0x200000
nsfeat  : 0
nlbaf   : 0
flbas   : 0
mc      : 0
dpc     : 0
dps     : 0
nmic    : 0
rescap  : 0
fpi     : 0
dlfeat  : 0
nawun   : 0
nawupf  : 0
nacwu   : 0
nabsn   : 0
nabo    : 0
nabspf  : 0
noiob   : 0
nvmcap  : 0
nsattr    : 0
nvmsetid: 0
anagrpid: 0
endgid  : 0
nguid   : 00000000000000000000000000000000
eui64   : 0000000000000000
lbaf  0 : ms:0   lbads:9  rp:0 (in use)
root@mat ~/nvme-cli (master)# echo $?
5
root@mat ~/nvme-cli (master)#

If I read code correctly it will default into the return EIO for
nvme_XXX_status_to_errno(),

else will return EIO when status == 0. If my analysis is correct
following untested patch

should fix the problem.

root@ ~/nvme-cli (master)# git diff
diff --git a/nvme-status.c b/nvme-status.c
index 349b49e..2dbfad8 100644
--- a/nvme-status.c
+++ b/nvme-status.c
@@ -127,6 +127,9 @@ __u8 nvme_status_to_errno(int status, bool fabrics)
 {
        __u8 sct;
 
+       if (status == 0)
+               return 0;
+
        if (status < 0)
                return ECOMM;

any thoughts ?

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
