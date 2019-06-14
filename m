Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C956453AD
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 06:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=+xMt5PumuzFR+5vwTjLaCoY7I6/YP8H+Wynpcn4Zqp8=; b=estf+Zwup74EHT
	055Cf8wIP0IUxABMH9BD2JCKzyqy03oFUNcnvMqe3ofVGOOI5uKqNKWBE4rYEaUilPORa9oGG9o13
	mTgS+pNeUk1MTXxWo9yW7qA2RRsflGk0nuFUb/tUU+DC9nYaOwgQtO1URZyim/rWEOBDkNJQtc2/H
	p0GWuJxoFXQqFxnaIqiEYSQQuTGRZDlvfgQICY/pNLGn6/mVElP1MdPmZtY4e71XUUyzsEnnbXuC0
	+ZCHmvwm9Dx/2jv48SoEdVERpD8a4xFNqgHRupEr00PCr9BQzll4ofsTZICFsfUgkWM9qY3ADFjxB
	M6j2gdcEAoM+DzeiYF6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbe3N-0007sM-4E; Fri, 14 Jun 2019 04:43:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbe3C-0007rn-AL
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 04:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560487374; x=1592023374;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=b1vMIsM4kEcoJhzeKFc38/phxbpoJ8xCbmnNK8NPXeo=;
 b=KsyMfVlOPcaScZkrsIXmyOhaRdjstKTFCndjm2/NbXMGQaTYEAtHIKnG
 NCpnxl29/Qw1OtmeyufiowMDWds9Mlucj2aC+THQngWZOIklm6IV9VKQS
 c0I6aYKP6Elzu82svRDbKHQdSbAFvyoux42l0aVaPBqMKq9RAAH8llbCo
 HQuMsWXhvOHDYwN5hnATyqB7f6X2d21vbOk213f/m2X1DEh+aAcO6ai/u
 8A8R5TxpAKnOluDA7F3lbB8mc+y2OtDzy5kn1zc/SFM6W30Zzz1gtbNHn
 tebVIWoE5FacDpzpVtAfLjd12O9aOO6fTALgPKWLN/RlJIDD1XzGLgIdI g==;
X-IronPort-AV: E=Sophos;i="5.63,372,1557158400"; d="scan'208";a="216890536"
Received: from mail-by2nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.58])
 by ob1.hgst.iphmx.com with ESMTP; 14 Jun 2019 12:42:49 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/xqPy/LC2xyhrypnz4YO5ETzmzoYWzPO4Xb0ua+0iM=;
 b=LpJjx12gbRcr1TFs+ykgbOinilB84ThmONx6KCOZYqFMH8e6iUnbmvsVlZARf4wz/K4uDeOvkQrmWXfGRfBz9rbpP8Zqn0A/S3IJqBUl0sHmekf/uc08hsLSwF23jofZA+02odUBE54YuHWgSgAG6t/tpA7YDNedoMXbp2kEUdE=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB3974.namprd04.prod.outlook.com (52.135.215.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 14 Jun 2019 04:42:47 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.1987.012; Fri, 14 Jun 2019
 04:42:47 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Topic: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Index: AQHVH9BeCr9rG+GhmUKxcuJckMDc0g==
Date: Fri, 14 Jun 2019 04:42:46 +0000
Message-ID: <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa8d2de1-7fb8-4f33-6458-08d6f082bfa9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB3974; 
x-ms-traffictypediagnostic: BYAPR04MB3974:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB3974463900B434E175B36BD986EE0@BYAPR04MB3974.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(366004)(396003)(136003)(376002)(199004)(189003)(81156014)(316002)(14454004)(66946007)(55016002)(81166006)(305945005)(7736002)(6436002)(86362001)(9686003)(8676002)(186003)(73956011)(446003)(229853002)(33656002)(66066001)(8936002)(53546011)(7696005)(6506007)(68736007)(102836004)(99286004)(5660300002)(52536014)(71190400001)(76176011)(54906003)(6246003)(71200400001)(2906002)(476003)(66476007)(110136005)(64756008)(66556008)(53936002)(256004)(3846002)(6116002)(4326008)(26005)(66446008)(74316002)(486006)(76116006)(478600001)(72206003)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3974;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T5e0dQ1ehe8AG258WTkRMs0duf26on84kUwtiJAyeIaVsUCFwszE5S/AF/O1HfSzadRRL6EQ5nuXzrsG9wOebLtJ9Q1vNWuYun/roO2O0EtQ/4q5LzRhfX12+ImXUFl/Q9igg2MoTe0C/M2f6ZMI3uwXGMm6A5cELXV/b1rfF6bAbkoQvAx1+f5QdIx+kCAuTrrmVTpXGKv/kBBOsGInGEXZRM/P5H8vzAuE6oZpBepowjGom9LX5FAdKUlJQusjDnDo2OZRvnUu43IYd85hIY9+moR6XI5Ilm6+bjK2SvSVHyMfef+gVk1t/5pwtpaminjApaPXQ1z46UDWvxpSZr68UGkWnil9OTYwqlEGsnD/cSLGh146NahoqE1pKuwTVsk/f+OAjrZGP1PXy/cCJH4lTZxLtHRj0uXhTTumOf8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8d2de1-7fb8-4f33-6458-08d6f082bfa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 04:42:46.9549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3974
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_214254_838027_252DE039 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/10/19 2:06 PM, Bart Van Assche wrote:
> Make the NVMe NAWUN, NAWUPF, NACWU, NPWG, NPWA, NPDG and NOWS attributes
> available to initator systems.
> 
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Martin K. Petersen <martin.petersen@oracle.com>
> Cc: Hannes Reinecke <hare@suse.com>
> Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>   drivers/nvme/target/admin-cmd.c   |  5 ++++
>   drivers/nvme/target/io-cmd-bdev.c | 43 +++++++++++++++++++++++++++++++
>   drivers/nvme/target/io-cmd-file.c | 34 ++++++++++++++++++++++++
>   drivers/nvme/target/nvmet.h       |  2 ++
>   4 files changed, 84 insertions(+)
> 
> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
> index 9f72d515fc4b..2558ed333d29 100644
> --- a/drivers/nvme/target/admin-cmd.c
> +++ b/drivers/nvme/target/admin-cmd.c
> @@ -442,6 +442,11 @@ static void nvmet_execute_identify_ns(struct nvmet_req *req)
>   		break;
>           }
>   
> +	if (ns->file)
> +		nvmet_file_set_limits(ns->file, id);
> +	else if (ns->bdev)
> +		nvmet_bdev_set_limits(ns->bdev, id);
> +
>   	/*
>   	 * We just provide a single LBA format that matches what the
>   	 * underlying device reports.
> diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
> index 3efc52f9c309..967eadeb0d10 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -8,6 +8,49 @@
>   #include <linux/module.h>
>   #include "nvmet.h"
>   
> +/* Convert a 32-bit number to a 16-bit 0's based number */
Since following function is only helper (and even though it is not in a 
fast patch can we make it inline ?
> +static __le16 to0based(uint32_t a)
The code in io-cmd-bdev.c uses u16, in the above line we are using 
uint32_t. Which one we should follow ? I think either way we should be 
consistent.

> +{
> +	return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
> +}
> +
> +void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
> +{
> +	const struct queue_limits *ql = &bdev_get_queue(bdev)->limits;
> +	/* Number of physical blocks per logical block. */
> +	const uint32_t ppl = ql->physical_block_size / ql->logical_block_size;
> +	/* Physical blocks per logical block, 0's based. */
> +	const __le16 ppl0b = to0based(ppl);
> +
> +	/*
> +	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
> +	 * NAWUPF, and NACWU are defined for this namespace and should be
> +	 * used by the host for this namespace instead of the AWUN, AWUPF,
> +	 * and ACWU fields in the Identify Controller data structure.
> +	 */
> +	id->nsfeat |= 1 << 1;
> +	id->nawun = ppl0b;
> +	id->nawupf = ppl0b;
> +	id->nacwu = ppl0b;
The above 4 assignments are similar to the assignments present in the
nvmet_file_set_limits() ? If so is it make sense to have a helper to 
reduce the code duplication ?
> +
> +	/*
> +	 * For NVMe 1.4 and later, bit 4 indicates that the fields NPWG,
> +	 * NPWA, NPDG, NPDA, and NOWS are defined for this namespace and
> +	 * should be used by the host for I/O optimization.
> +	 */
> +	id->nsfeat |= 1 << 4;
> +	/* NPWG = Namespace Preferred Write Granularity. 0's based */
> +	id->npwg = ppl0b;
> +	/* NPWA = Namespace Preferred Write Alignment. 0's based */
> +	id->npwa = id->npwg;
> +	/* NPDG = Namespace Preferred Deallocate Granularity. 0's based */
> +	id->npdg = to0based(ql->discard_granularity / ql->logical_block_size);
> +	/* NPDG = Namespace Preferred Deallocate Alignment */
> +	id->npda = id->npdg;
> +	/* NOWS = Namespace Optimal Write Size */
> +	id->nows = to0based(ql->io_opt / ql->logical_block_size);
> +}
> +
>   int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
>   {
>   	int ret;
> diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
> index 05453f5d1448..34a22f0ea374 100644
> --- a/drivers/nvme/target/io-cmd-file.c
> +++ b/drivers/nvme/target/io-cmd-file.c
> @@ -13,6 +13,40 @@
>   #define NVMET_MAX_MPOOL_BVEC		16
>   #define NVMET_MIN_MPOOL_OBJ		16
>   
> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
> +{
> +	/* Physical blocks per logical block, 0's based. */
> +	const __le16 ppl0b = cpu_to_le16(0);
> +
> +	/*
> +	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
> +	 * NAWUPF, and NACWU are defined for this namespace and should be
> +	 * used by the host for this namespace instead of the AWUN, AWUPF,
> +	 * and ACWU fields in the Identify Controller data structure.
> +	 */
> +	id->nsfeat |= 1 << 1;
> +	id->nawun = ppl0b;
> +	id->nawupf = ppl0b;
> +	id->nacwu = ppl0b;

The above 3 assignments are where we are assigning value = 0, which will 
be the case any way since caller of this function is using kzalloc() to 
allocate nvme_id_ns *id(), isn't it ?

static void nvmet_execute_identify_ns(struct nvmet_req *req)
{
         struct nvmet_ns *ns;
         struct nvme_id_ns *id;
         u16 status = 0;

         if (le32_to_cpu(req->cmd->identify.nsid) == NVME_NSID_ALL) {
                 status = NVME_SC_INVALID_NS | NVME_SC_DNR;
                 goto out;
         }

         id = kzalloc(sizeof(*id), GFP_KERNEL);
         if (!id) {
                 status = NVME_SC_INTERNAL;
                 goto out;
         }

In that case can we get rid of the redundant code of 0 assignment ?
> +
> +	/*
> +	 * For NVMe 1.4 and later, bit 4 indicates that the fields NPWG,
> +	 * NPWA, NPDG, NPDA, and NOWS are defined for this namespace and
> +	 * should be used by the host for I/O optimization.
> +	 */
> +	id->nsfeat |= 1 << 4;
> +	/* NPWG = Namespace Preferred Write Granularity. 0's based */
> +	id->npwg = ppl0b;
> +	/* NPWA = Namespace Preferred Write Alignment. 0's based */
> +	id->npwa = id->npwg;
> +	/* NPDG = Namespace Preferred Deallocate Granularity. 0's based */
> +	id->npdg = ppl0b;
> +	/* NPDG = Namespace Preferred Deallocate Alignment */
> +	id->npda = id->npdg;
> +	/* NOWS = Namespace Optimal Write Size */
> +	id->nows = ppl0b;

Same here ppl0b assigning 0red values to the structure which is 
allocated using kzalloc().

> +}
> +
>   void nvmet_file_ns_disable(struct nvmet_ns *ns)
>   {
>   	if (ns->file) {
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index c25d88fc9dec..ed0362544932 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -363,6 +363,8 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask);
>   void nvmet_execute_async_event(struct nvmet_req *req);
>   
>   u16 nvmet_parse_connect_cmd(struct nvmet_req *req);
> +void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id);
> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id);
>   u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req);
>   u16 nvmet_file_parse_io_cmd(struct nvmet_req *req);
>   u16 nvmet_parse_admin_cmd(struct nvmet_req *req);
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
