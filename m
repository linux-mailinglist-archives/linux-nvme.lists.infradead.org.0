Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB237FC4
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=BsBxLVG3aypZni6S8ykkN/wG0AcWzy+RAYCUtWj7URc=; b=o8gG/fD1TDs+Pc
	CLNClAhxvBCGHIqslmZgVVMmEQDFd2y5iF5WRDtG0LIj1ZVfRXNhYLeMxcr0WEjwOwj33tTXRUiAp
	2YbfNFHVDGm4zWO7Kn4XdeV30Difcwc1iG6EvGy5kb+OCqcO81qb/GG6aO7LlwaGgNxzukPvHZzvv
	EmSrqTCeEySjWVtg8slqbjxn8c+bQrnNCs9mTs+xzVRd3kAsVj5G8bvHqVxv9HJ1zCsGzOXZExKCe
	bKSnryqsrL1DrWUiol7sYyMM3gQiDdB10xfeTmlQRI53aC9+Ubq5HhEaH5hUJqeTOFPhxbWG6Brvm
	QoYuhwPA5acCc0/ugkOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ09J-0003Fu-7z; Thu, 06 Jun 2019 21:42:17 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ09C-0003FX-3a
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559857330; x=1591393330;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=lNrvkzk8z02EWrFDR/Wi3u24wTLf/TLZOZLBkJvdN/U=;
 b=dmwGbQ3YaCTFW5iTpQVxx3L1sh+2MZz1l4MLZG/uButMyR/UN1BSsQI+
 m3PN/FXW40E3D07ZcVgy6tqjSQt9ttwKHl76lzgaRN7/q+KAYpu4gRTZ8
 D2bbGoUFeJeRDkCe5rb7N14zI/k3GRKdJKLBQB7UyButEAN5ZIY9kIVUt
 S3Fsj3lIgNW/BbLOjKvA2oUZG54jp3lNWg1rE8yZW/v257nraw1NeFR3F
 hUpmxb9XMhclQI01qgD+v5yFNVJuRb0z+D99dgCwSWvuYiTeefd9BwZae
 W0YTSo8Mtla/zyy7ffwMhvdBVv4wWLwi1xY2958SC0XzyEcYK9kQcWe1p w==;
X-IronPort-AV: E=Sophos;i="5.63,560,1557158400"; d="scan'208";a="111650971"
Received: from mail-co1nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.59])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 05:42:08 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AkCG20N6TenXb+1qHFmeTyuifMhPJcOixGQja4zCj5k=;
 b=IV7bZ4VUL4iF2dmXG3JBvCvJD18xZQMuYAvnY9D6PCAg9jB13F+IgZqXH/j9ik3kY9LxovXRo/e+sC9k7qDc+LhzsGb6EelvJdCgEyXR47RKg5LaEEVxr+2TH4fhadpTjviwZlbPeiOLHL5CNECjeN7HQiTdL2f0Go+fM1w18i0=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5446.namprd04.prod.outlook.com (20.178.51.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 21:42:06 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 21:42:06 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Keith Busch <keith.busch@intel.com>, 
 Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Thread-Topic: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Thread-Index: AQHVHK7x9AI8IuFdkEGytuTT5fcunw==
Date: Thu, 6 Jun 2019 21:42:06 +0000
Message-ID: <BYAPR04MB5749E9F546E6EA5415BEB20686170@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a98958d8-e909-4570-e29f-08d6eac7d225
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5446; 
x-ms-traffictypediagnostic: BYAPR04MB5446:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB54469015CD0F4DE0441B1ABD86170@BYAPR04MB5446.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(39860400002)(396003)(366004)(189003)(199004)(26005)(8676002)(9686003)(5660300002)(81166006)(81156014)(53936002)(186003)(14454004)(6116002)(72206003)(3846002)(305945005)(6246003)(99286004)(8936002)(68736007)(54906003)(476003)(102836004)(110136005)(229853002)(33656002)(6506007)(53546011)(486006)(7696005)(14444005)(55016002)(478600001)(7736002)(76176011)(256004)(6436002)(71200400001)(446003)(66066001)(76116006)(52536014)(71190400001)(66476007)(66556008)(73956011)(64756008)(66446008)(316002)(4326008)(2906002)(25786009)(74316002)(86362001)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5446;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uzTjXLfCY3ZXaGCPASLG9K0Lbnl+rFuXcneJw0bV3myFpmYih5eOWYvRbHWSv7U8OExd5XEAcbYgjaNTrV4G7VMAAxlBV47OKtQT7jkiSnxL5KvowzJ/RSMZgNK8AQo0LLKp4beEn/qm0qNmfQ/YLVmYTBmSQFRxBe+iOeLPGsU63W0nuFpeXwapZcRyU0DR5ZYsV/4zA/HMhldS8vC3m8AF6+1UseCefanmda4/LiAblYjrhurYxt/OHd9MjiAxVEkwwWDPI3F5+H0OBiCsthdl8dB4BTO7UajgmGEPE9IXNXD9T9VBMIGQF4LTcDFYzGgsXZb6QGM8imdwGD89ZYzD+0+N170ecjNvUj+8HaJ7tMW5NmRxosefpqxM9DahyNqmIo4DM4FsMQFJW9/j8SL/S5TtrHuHPce/6jgCwS8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a98958d8-e909-4570-e29f-08d6eac7d225
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 21:42:06.3244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_144210_271787_702C01C4 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good. One quick question though do you actually have a controller
on which you have tested this feature ?

On 06/06/2019 02:29 PM, Bart Van Assche wrote:
>  From the NVMe 1.4 spec:
>
> NSFEAT bit 4 if set to 1: indicates that the fields NPWG, NPWA, NPDG, NPDA,
> and NOWS are defined for this namespace and should be used by the host for
> I/O optimization;
> [ ... ]
> Namespace Preferred Write Granularity (NPWG): This field indicates the
> smallest recommended write granularity in logical blocks for this namespace.
> This is a 0's based value. The size indicated should be less than or equal
> to Maximum Data Transfer Size (MDTS) that is specified in units of minimum
> memory page size. The value of this field may change if the namespace is
> reformatted. The size should be a multiple of Namespace Preferred Write
> Alignment (NPWA). Refer to section 8.25 for how this field is utilized to
> improve performance and endurance.
> [ ... ]
> Each Write, Write Uncorrectable, or Write Zeroes commands should address a
> multiple of Namespace Preferred Write Granularity (NPWG) (refer to Figure
> 245) and Stream Write Size (SWS) (refer to Figure 515) logical blocks (as
> expressed in the NLB field), and the SLBA field of the command should be
> aligned to Namespace Preferred Write Alignment (NPWA) (refer to Figure 245)
> for best performance.
>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>   drivers/nvme/host/core.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 1b7c2afd84cb..c67f2fc8c5c0 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1608,6 +1608,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
>   {
>   	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
>   	unsigned short bs = 1 << ns->lba_shift;
> +	uint32_t phys_bs, io_opt;
>
>   	if (ns->lba_shift > PAGE_SHIFT) {
>   		/* unsupported block size, set capacity to 0 later */
> @@ -1616,9 +1617,18 @@ static void nvme_update_disk_info(struct gendisk *disk,
>   	blk_mq_freeze_queue(disk->queue);
>   	blk_integrity_unregister(disk);
>
> +	phys_bs = bs;
> +	io_opt = bs;
> +	if (id->nsfeat & (1 << 4)) {
> +		/* NPWG = Namespace Preferred Write Granularity */
> +		phys_bs *= 1 + le16_to_cpu(id->npwg);
> +		/* NOWS = Namespace Optimal Write Size */
> +		io_opt *= 1 + le16_to_cpu(id->nows);
> +	}
>   	blk_queue_logical_block_size(disk->queue, bs);
> -	blk_queue_physical_block_size(disk->queue, bs);
> -	blk_queue_io_min(disk->queue, bs);
> +	blk_queue_physical_block_size(disk->queue, phys_bs);
> +	blk_queue_io_min(disk->queue, phys_bs);
> +	blk_queue_io_opt(disk->queue, io_opt);
>
>   	if (ns->ms && !ns->ext &&
>   	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
