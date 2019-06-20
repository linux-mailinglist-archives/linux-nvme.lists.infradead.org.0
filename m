Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263934C5BC
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 05:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=L+qyi8ucaqUlf8Hd/o6NT4MjbP7+Ly5CeJUaroUwrRM=; b=ihwY69UNOPDiBH
	DGO3ykMLUobeEyqniVbv5/PBtDr9+g1z2aQ/selFNMLElT/OOmABnZSfYDCFhpu32ZC6x19Vx3K1f
	7/xRSSVkUl++U0oY0tBAap++21HaIFjJ6xFrmbBnvKcMhqgEhfFkN+zeFOQGZdVtdvmQccMPDL76+
	0ImtSXUKLUafJExNZRA7M31FWK12WGdgLT+2H6Bka1z1NVNDdrm/4DV7Nmaag/LRn02bW7vSGVKg3
	Ei0sg6eQqC9KSXEd2uO9wF+N4joTRDoNc93uzuwnrSjYvO1Xg40hh7wIUssPSzcnPEfblbBFv1BFB
	uTw7UYm5x1GX2NKdmR7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdnbz-0005pq-Fj; Thu, 20 Jun 2019 03:19:43 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdnbu-0005pJ-1J
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 03:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561000777; x=1592536777;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=gNkZ/fVfUNIPFyoI+zecEcQAwtWn2MWuYE9cdh3hrZQ=;
 b=YtT52qHv98PqGy5NO+7ZYbj4rwtUOG+3EZ23FF0er31GHdjhNlzEGo+f
 cOo0apjPlTueLZ7xoenQc+iNTBPa1qrJ0gH+WM/ObfNmi1uMmgyvh2zDW
 BDltNq+G63YuWRzo3D5QSh5J5bkIyWX/ToKBfECM02jjWJbNkAHaYxrVM
 mrYzt6p47dmSszPAG9F4D9i4t/348tfApcJcgarwVhPcDs3NVLv7fnEDz
 rIwT47Hvfxed1s1KOwONvDEAUzldKqLc8bNmiU5kww59/uC48+wXrJcIs
 yweAqLt5K253UEIgpuDQDEFYKFKI6BsN4ezjGb+/8zk4sJPjg1TyBAyxy w==;
X-IronPort-AV: E=Sophos;i="5.63,395,1557158400"; d="scan'208";a="217379469"
Received: from mail-sn1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.59])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2019 11:19:33 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t2SJR6F4eCv8ezaFh0mEBRECQRE//vE2LHfjxWbBLHc=;
 b=BKwPExt3toV4FNsuvskxtSwlRHo6GkPXbUDfVPVsOd7lU6zyl8z7T9Z44z1JFb0FB/GVXF681RBDjLoBouMSiagdRrni/WXNMIdzzSQ4WP6iH8rc/2C5X44z3/3dgugtwhH5vv/fufivVonvTNK3jlmLybg2/1EF4aspag/iaCM=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5288.namprd04.prod.outlook.com (20.178.49.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Thu, 20 Jun 2019 03:19:30 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 03:19:30 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
Thread-Topic: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
Thread-Index: AQHVJSeLKLubxvlofUeezMrlC6YbMw==
Date: Thu, 20 Jun 2019 03:19:30 +0000
Message-ID: <BYAPR04MB57491E682D39461CA263529886E40@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9277992c-a620-4c12-296f-08d6f52e1c1b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5288; 
x-ms-traffictypediagnostic: BYAPR04MB5288:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5288BE161D28A9F52148AB2586E40@BYAPR04MB5288.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(189003)(256004)(71200400001)(55016002)(53546011)(71190400001)(81156014)(6436002)(66066001)(8936002)(33656002)(54906003)(446003)(66556008)(14454004)(102836004)(66446008)(74316002)(72206003)(64756008)(81166006)(6506007)(229853002)(66476007)(7736002)(316002)(110136005)(73956011)(6246003)(5660300002)(305945005)(2906002)(186003)(25786009)(8676002)(3846002)(6116002)(86362001)(99286004)(7696005)(68736007)(486006)(76176011)(52536014)(26005)(4326008)(66946007)(53936002)(9686003)(476003)(76116006)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5288;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /sm8FDqkmys4QK7ydC/PL3nh1blEvXNTb0xjywcQ0v7Ks3Z2+OXz9S0S9Q5g0dSRiLtxir268k3ug0GaoK1+0kbKs30j5mWknNI8nGLixg5NY9OS0SxKuMJfLAnUZvZhvbCX5Vf+QXbqFyAcqrNEnXudfjzbevSZqzBbcaZvGiA3425fAYPgLvhE7WGVdvL8pVnoCYtVB+ABUsd2mHAguSnzoI/667i/LSPBqhFaqnErHhALmYEQ8ydotREM9tXf6iCvM/8jwNqcp0Modf5AixR8Rbo8CWpiJq7gz2gi7mp47+r/MBTLu7JVrT1dUPsAeYHiPyw+dfdSzsJlejHhp/A+2JVni2QrteOSkyUOwMsYI23Zd2+n3VCKAzC141sMgQEam74gvl+I6oic8upLxvnENUlZr6ITG6Xqws0hqg8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9277992c-a620-4c12-296f-08d6f52e1c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 03:19:30.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_201938_311783_0CBDCB6A 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>, "Martin
 K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 6/17/19 9:13 AM, Bart Van Assche wrote:
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
>   drivers/nvme/target/io-cmd-bdev.c | 45 +++++++++++++++++++++++++++++++
>   drivers/nvme/target/io-cmd-file.c | 37 +++++++++++++++++++++++++
>   drivers/nvme/target/nvmet.h       |  2 ++
>   4 files changed, 89 insertions(+)
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
> index 3efc52f9c309..5fe51e5d2f1b 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -8,6 +8,51 @@
>   #include <linux/module.h>
>   #include "nvmet.h"
>   
> +/* Convert a 32-bit number to a 16-bit 0's based number */
> +static __le16 to0based(u32 a)
> +{
> +	return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
> +}
> +
> +void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
> +{
> +	const struct queue_limits *ql = &bdev_get_queue(bdev)->limits;
> +	/* Number of physical blocks per logical block. */
> +	const u32 ppl = ql->physical_block_size / ql->logical_block_size;
> +	/* Physical blocks per logical block, 0's based. */
> +	const __le16 ppl0b = to0based(ppl);
> +
> +	/*
> +	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
> +	 * NAWUPF, and NACWU are defined for this namespace and should be
> +	 * used by the host for this namespace instead of the AWUN, AWUPF,
> +	 * and ACWU fields in the Identify Controller data structure. If
> +	 * any of these fields are zero that means that the corresponding
> +	 * field from the identify controller data structure should be used.
> +	 */
> +	id->nsfeat |= 1 << 1;
> +	id->nawun = ppl0b;
> +	id->nawupf = ppl0b;
> +	id->nacwu = ppl0b;
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
> index 05453f5d1448..268dfc678567 100644
> --- a/drivers/nvme/target/io-cmd-file.c
> +++ b/drivers/nvme/target/io-cmd-file.c
> @@ -13,6 +13,43 @@
>   #define NVMET_MAX_MPOOL_BVEC		16
>   #define NVMET_MIN_MPOOL_OBJ		16
>   
> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
> +{
> +	/*
> +	 * Physical blocks per logical block, 0's based. Is it possible to
> +	 * extract this information from the filesystem properties?
> +	 */
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
