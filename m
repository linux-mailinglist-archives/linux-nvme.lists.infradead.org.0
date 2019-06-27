Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171925880F
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 19:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=X2VyXtq0q2xu/v/YAKyAzBqQNXZZ3K/WFYsGEBXOQAg=; b=IdQAJuVmA96+hT
	f85Oj2RH71YHPkvJg6K3DrGiiwb1KBwwF+q504DJwLIpLDpjSd2GnCZhVfibe1/98YXZ3dVSz2uyd
	ELaZZX7xrHLkb32RQRttRjA7LnlfQLkL38Nkt8PE9K6VpnETQLXIJG864IYOaXg/I9kmQnxu5fOup
	YNGOGLElDAVNm/kz06YwdnM7zwz7fGPFoIUaXJhtCy4t8po+J0JlvKcZl6+yW+RaoAtbzGzxLvULW
	ik7sYpcfYgX/0JEsa2wuIU8bl2zYLL8SE2L/XhBtrEOFcWZdN+DtUSVXdFqxvmqZjOO7pji3w82HT
	y9kgHHL018BlDYShD/LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXwH-0000eA-Ne; Thu, 27 Jun 2019 17:12:01 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXw9-0000dc-61
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 17:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561655514; x=1593191514;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=iR5qEnjZpRJCeo2RXGIPVVdW/nPlP2fp004P9OsqRVM=;
 b=jiZRx79AcnMlIWseGVHAVmY4RvQri1pmEMVMuIx/4Fmw48NZy8rGyKqW
 TqcfzA7HMCHW0+w3LYql+ldDKg1PuKTgF145LksOcs6B1eax3I8Wsa5vF
 SP0+QixmkZL+RLmAopoVqHmAcrl4J583qExj8S2ndUO5lsm9mEQGrR7Fr
 qFJqVyho19anaL1y38lYVVJNvJb0WHGAp4tBe4csYuCXVenFomFzfIb3H
 QYh5M9M+X6LGAY8+gWaTPXwqGXGdcqFvKi2hovkxXcogK8TQAO811ZzMN
 os+dwDrqR7T3RPwL+wviUJEsucbgncUOmZcRwZxcXsIzoC/f0VPMimbth w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113338214"
Received: from mail-by2nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.57])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 01:11:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=aonDQQZFGylwetiQjdqeYtfnI3DLkNO+XZpFXvqvj8hJOt9dMSliFEjmE/5xToIDyYRYtYYBvKbO2+TmYzXFLTmDeBUdzO2aXLvbyN7gX8C/jSLpPHwn6Qp44gjDGL8Lc+DcULUcdVtG/cz56tbKhnM9uie+RQPMtB2bhvbz+mM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gn9gUxY2oBqSVBloM+f60h4OXBJKTwddUsBgJTZDDVk=;
 b=CErZ8Ej5Vgt9ZpvhF7a4dWPnTYL7cHhAEBheis9DOtL29SGo5VwHGHdGjQqpct6VBv+ogDnUSBJF3jPNjn/a80M+r6kbxWP0XFf5781XLycY/nlHwxr2vxjNTnUgErCQF/a7XYqAq2YO1oQMEBvG+ZXqXNw1QETQT3XJ21RqZ2w=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gn9gUxY2oBqSVBloM+f60h4OXBJKTwddUsBgJTZDDVk=;
 b=ZXNeJZkCAtQa+hULq7D3ysVhG0WIojpHxh2djf/E/lllpwkZRroEzng66gbHYiIgJrRu1BFNQujMbBgHb9pLX3CbWtRQi27UFtUwbFhF3vqPatRR5bxzn+3ZYLGl17GNPl0JJMvc9u+ai2wt7exTGaGH2b1knIYxRXzRfcPVDF8=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5192.namprd04.prod.outlook.com (20.178.48.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 17:11:48 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.2008.018; Thu, 27 Jun 2019
 17:11:48 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v4 2/3] nvmet: Export NVMe namespace attributes
Thread-Topic: [PATCH v4 2/3] nvmet: Export NVMe namespace attributes
Thread-Index: AQHVLPUutdbyD2G1B02jRKKOgWX27Q==
Date: Thu, 27 Jun 2019 17:11:47 +0000
Message-ID: <BYAPR04MB5749F47AB1FC3409E513F3AE86FD0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190627143215.27443-1-bvanassche@acm.org>
 <20190627143215.27443-3-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a44524f-1d72-4b88-8504-08d6fb2289e0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5192; 
x-ms-traffictypediagnostic: BYAPR04MB5192:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5192D4B46F64A092F22959D486FD0@BYAPR04MB5192.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39860400002)(366004)(346002)(396003)(189003)(199004)(66946007)(66556008)(33656002)(73956011)(68736007)(52536014)(71200400001)(76116006)(64756008)(71190400001)(66476007)(2906002)(7696005)(7736002)(305945005)(99286004)(66066001)(74316002)(186003)(26005)(8936002)(81166006)(8676002)(14454004)(66446008)(478600001)(53546011)(86362001)(81156014)(316002)(256004)(110136005)(54906003)(6506007)(72206003)(5660300002)(102836004)(476003)(486006)(6116002)(25786009)(4326008)(55016002)(3846002)(6436002)(229853002)(6246003)(446003)(9686003)(53936002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5192;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lPLdCBMomztU0vndkjjiYRZj5g1vJzD5CdFeXyITRLM9ZE4P/L/FOWSonZ0tN903UB6+htRKQm4EeZekOFjpgsKX+zyAq/BQMvcdDAjh8YUmXcjQY1dpneFa8qB76FXWi3Zz2ccBjKXbe41ZvHm9dYt4jL5tTx/ryCIiamAR4AZr+2Q29pvYxjMi9gyk3VB8Ue8pahSKLgR/hCpPHHuEsoqpxQRUxuiSsIQheKr5EMmoc+TWrzUJVULmecOZDZienepa/z+z888RccrmawbuaAEelggwih7CgYIiGIUP6K9BCC/hAGWGG1+ZwJlWTqCQ2Rg2VcJegwZMeoImUUnXoF1jWbkjR8zCKI1RlDMQ4zreXuN7+Cm8sd+8pCETzoliA7kZ1qtiMHVMLauaMxiYOrqqTcywUF0q7+vnHxoMfSQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a44524f-1d72-4b88-8504-08d6fb2289e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 17:11:47.8347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_101153_268567_02246591 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Thanks for keeping the comment in the file-backend, very useful.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>


On 6/27/19 7:32 AM, Bart Van Assche wrote:
> Make the NVMe NAWUN, NAWUPF, NACWU, NPWG, NPWA, NPDG and NOWS attributes
> available to initator systems for the block backend.
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
>   drivers/nvme/target/io-cmd-file.c | 12 +++++++++
>   drivers/nvme/target/nvmet.h       |  2 ++
>   4 files changed, 64 insertions(+)
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
> index 7a1cf6437a6a..6e57d0d4f4e9 100644
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
> index 05453f5d1448..8e59c107ec38 100644
> --- a/drivers/nvme/target/io-cmd-file.c
> +++ b/drivers/nvme/target/io-cmd-file.c
> @@ -13,6 +13,18 @@
>   #define NVMET_MAX_MPOOL_BVEC		16
>   #define NVMET_MIN_MPOOL_OBJ		16
>   
> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
> +{
> +	/*
> +	 * Since the file backend uses buffered I/O and since the NVMe spec
> +	 * does not allow to report that atomic commands are not supported by
> +	 * a namespace, do not set any of the namespace specific atomic
> +	 * properties. This will cause the initiator to rely on the atomic
> +	 * properties reported by the controller. To do: discuss whether or
> +	 * not the file backend should use direct I/O instead of buffered I/O.
> +	 */
> +}
> +
>   void nvmet_file_ns_disable(struct nvmet_ns *ns)
>   {
>   	if (ns->file) {
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index dc270944bb25..552af334fe1d 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -365,6 +365,8 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask);
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
