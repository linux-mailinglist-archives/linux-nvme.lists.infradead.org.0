Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E904E1BA26
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=C3siJYEh/rlzahwfd8VehFQa1NOL+QoQKPcvJmgZIus=; b=YTbTlcnyMJp39m
	CvzoaV4miOL44FgL4b35ljMJOkS87qVHNyo70To1Nt6/pus7MgKBBsuh11PfghRNYPrkLEYYmQ86j
	ApxpH0B3Mz3w3/6H4iMvIohmkoevKtvniGzDgH4Widc5WlmJbNrwB/EYildX1v9puyp5AyVTRoeGA
	AGMtrBoXfLrM6auJs7KsjPHtAnaog9lNxOtak8PKp30ZI8gC1XDRFDcV3uqZNKt7g7RDFN9udumX2
	AexXmDqqpdj5d0CPOi6YSn4Or10Xj511pAvt5CQLHll1zTKlc4YVSk72Nyi/ao2iE/AdtCui/fiSC
	XeX+wzVO+93PJx94g6kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCyA-00080p-2c; Mon, 13 May 2019 15:34:26 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCy4-000803-3Q
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:34:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557761660; x=1589297660;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=flGhTy3TR+0mqV5XhaZmrjl1ZW+5B/gzMUXNDgdGT2k=;
 b=Q0Lib3Z9PgJ28snmqby3mad7bOE7cOMMz3JfMaWQike6LVn3lD1jl7Dr
 VqQ8LXVxlW4XDdZZPOGDP7Nd83l2VpFhyHsWmcC2tv8V56jfLSCJBs6wF
 HegXhUGFKzZhjNwx0EIkwh04NrNMRAruzTRrKAb8h3zipu0nCCAzUyRB9
 /giyUBAakvT8E9XKw6djQEc71VnYcmcpCYaKaHYqaA+sGiK4d8/K92Rtb
 h86GNoLG0mGe75y8e00eVpP+t24odCTFz2jD8QBxhYf/eI0VM74eAdkk+
 p0HFtQP4UKrG7hBoUtcI09zf+NPAXVb1WStimkCWqZszaCExP3uzZFeKY Q==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="113093643"
Received: from mail-co1nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.58])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:34:18 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=patcxQKA/m5B015jcVT8PhapMHr65hzcFhJpilxr6N0=;
 b=eUb37EO1nHTMGYlxVA0xdb+Hy98MTrGzMmv6Jgskog4ohoyKrBhBn90rx+G+7Wpn/QrUf6zsO7a37/C8WOupvfQ7Hi9KdLm+C2jJ13W11S+tz12jvBCe8xKLBs8OtZKtKihom3iY5z1ztgoWJW8SCKprtocN3ZsGeGxyfqQyBmM=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4829.namprd04.prod.outlook.com (52.135.122.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 15:34:15 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:34:15 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 4/7] nvme: add basic facility to get telemetry log page
Thread-Topic: [PATCH v3 4/7] nvme: add basic facility to get telemetry log page
Thread-Index: AQHVCNsftCzLP1UjZkWS9UhDPRIwqQ==
Date: Mon, 13 May 2019 15:34:15 +0000
Message-ID: <SN6PR04MB4527A2B52661330D519FD618860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-5-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c687f9b-f3dd-4b9f-f67d-08d6d7b87534
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4829; 
x-ms-traffictypediagnostic: SN6PR04MB4829:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB48293740EE8782E24CA16A8F860F0@SN6PR04MB4829.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(39860400002)(136003)(396003)(199004)(189003)(66066001)(68736007)(25786009)(14454004)(52536014)(5660300002)(33656002)(4326008)(229853002)(8936002)(478600001)(72206003)(8676002)(81156014)(81166006)(2501003)(14444005)(256004)(3846002)(316002)(6436002)(446003)(7736002)(486006)(6116002)(7696005)(476003)(71190400001)(6246003)(74316002)(76176011)(9686003)(305945005)(55016002)(71200400001)(102836004)(86362001)(91956017)(110136005)(2906002)(186003)(54906003)(2201001)(99286004)(66476007)(73956011)(66556008)(53936002)(66946007)(53546011)(64756008)(76116006)(66446008)(6506007)(7416002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4829;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m6hXV95rFelgkDHFTzgohbwuVF6Qlg92NqUDRw1HDzUzCpwYC/hFD0UQ36NqP90E0b0+xirdMr5FNomrJhRHx+mNP4O/XGpg2vLwZjsL55catKhFMSv44tSYznBWFr8eH3d8rQ8ePnYkUmR8JRh2BVVP4saqM7Yr1v3pdemnwJ3KKlj6+8eXihj18P6ZMeoTAmZmuJbS0W9RkCl7ulva2pqQ3ekmYWtBkl4wCxNZnXCDrN7kRUYFutQjGxKC7smWPG64Xo4DklTL+gMhfkx9/nLH/v/kMqgnIofyDdrQi3pjE0LhQ9UTDwru4zH49uGKkjdf4mzW3piRcp7pS541bObYR1ejGV8JqzQ+l1ajcoC7lZexI0uEeznihMXZm2hGoc/aRsQrb3vrcTK6tJU0ANQoVXf1BnlKPtN7wKa8qfI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c687f9b-f3dd-4b9f-f67d-08d6d7b87534
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:34:15.8762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_083420_183889_7FB628A5 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/12/2019 08:55 AM, Akinobu Mita wrote:
> This adds the required definisions to get telemetry log page.
s/definisions/definitions/
> The telemetry log page structure and identifier are copied from nvme-cli.
>
> We also need a facility to check log page attributes in order to know
> the controller supports the telemetry log pages and log page offset field
> for the Get Log Page command.  The telemetry data area could be larger
> than maximum data transfer size, so we may need to split into multiple
> transfers with incremental page offset.
>
> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Cc: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
> * v3
> - Merge 'add telemetry log page definisions' patch and 'add facility to
>    check log page attributes' patch
> - Copy struct nvme_telemetry_log_page_hdr from the latest nvme-cli
> - Add BUILD_BUG_ON for the size of struct nvme_telemetry_log_page_hdr
>
>   drivers/nvme/host/core.c |  2 ++
>   drivers/nvme/host/nvme.h |  1 +
>   include/linux/nvme.h     | 17 +++++++++++++++++
>   3 files changed, 20 insertions(+)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a6644a2..0cea2a8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2585,6 +2585,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>   	} else
>   		ctrl->shutdown_timeout = shutdown_timeout;
>
> +	ctrl->lpa = id->lpa;
>   	ctrl->npss = id->npss;
>   	ctrl->apsta = id->apsta;
>   	prev_apst_enabled = ctrl->apst_enabled;
> @@ -3898,6 +3899,7 @@ static inline void _nvme_check_size(void)
>   	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
>   	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
>   	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_telemetry_log_page_hdr) != 512);
>   	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
>   	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
>   	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 5ee75b5..7f6f1fc 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -195,6 +195,7 @@ struct nvme_ctrl {
>   	u32 vs;
>   	u32 sgls;
>   	u16 kas;
> +	u8 lpa;
>   	u8 npss;
>   	u8 apsta;
>   	u32 oaes;
> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index c40720c..8c0b29d 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -294,6 +294,8 @@ enum {
>   	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
>   	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
>   	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
> +	NVME_CTRL_LPA_EXTENDED_DATA		= 1 << 2,
> +	NVME_CTRL_LPA_TELEMETRY_LOG		= 1 << 3,
>   };
>
>   struct nvme_lbaf {
> @@ -396,6 +398,20 @@ enum {
>   	NVME_NIDT_UUID		= 0x03,
>   };
>
> +struct nvme_telemetry_log_page_hdr {
> +	__u8    lpi; /* Log page identifier */
> +	__u8    rsvd[4];
> +	__u8    iee_oui[3];
> +	__le16  dalb1; /* Data area 1 last block */
> +	__le16  dalb2; /* Data area 2 last block */
> +	__le16  dalb3; /* Data area 3 last block */
> +	__u8    rsvd1[368];
> +	__u8    ctrlavail; /* Controller initiated data avail?*/
> +	__u8    ctrldgn; /* Controller initiated telemetry Data Gen # */
> +	__u8    rsnident[128];
> +	__u8    telemetry_dataarea[0];
> +};
> +

nit:- Thanks for adding the comments, can you please align all the above 
comments like :-

+struct nvme_telemetry_log_page_hdr {
+       __u8    lpi;            /* Log page identifier */
+       __u8    rsvd[4];
+       __u8    iee_oui[3];
+       __le16  dalb1;          /* Data area 1 last block */
+       __le16  dalb2;          /* Data area 2 last block */
+       __le16  dalb3;          /* Data area 3 last block */
+       __u8    rsvd1[368];
+       __u8    ctrlavail;      /* Controller initiated data avail?*/
+       __u8    ctrldgn;        /* Controller initiated telemetry Data 
Gen # */
+       __u8    rsnident[128];
+       __u8    telemetry_dataarea[0];
+};
+


>   struct nvme_smart_log {
>   	__u8			critical_warning;
>   	__u8			temperature[2];
> @@ -832,6 +848,7 @@ enum {
>   	NVME_LOG_FW_SLOT	= 0x03,
>   	NVME_LOG_CHANGED_NS	= 0x04,
>   	NVME_LOG_CMD_EFFECTS	= 0x05,
> +	NVME_LOG_TELEMETRY_CTRL	= 0x08,
>   	NVME_LOG_ANA		= 0x0c,
>   	NVME_LOG_DISC		= 0x70,
>   	NVME_LOG_RESERVATION	= 0x80,
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
