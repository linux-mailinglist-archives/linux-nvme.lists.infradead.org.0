Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEE7EF29
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 05:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=j1HK4LsgWbH8KyWjKCaCnAOgQFu8hp/m4sYMDkArSFk=; b=HlMuQMl20Pgnyw
	13sOKC0C7zM7nHrDJL9thP/brr0jgoQJH0FsGv5PQg2ikYoos0sEhGWvHcPZRGHbDcgr0hjEOqNWg
	0NRKunDrSNDYo0kujFKsZ79sTCY9dcE5pcLlvzFO/ZAz6HIAfy5tyNzuc1FmLTwNrMWX3Bbjjz5D4
	obl+6Whs0KH6tqQTtIex+jOJm6nq5mzFqaQJRjRYH5/deWbRw622vZYppjfrgUUc2vQjUFccbd6xN
	4RYwamy9kEW63R9ZmkJaILKPCjVZlKmnXEBfqLX42wxHDsy8+7eLgFpLWnPZwLdZd5+cCDZ0NXQZG
	8DcX9dQEbJ+sKT5b/jrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLJLm-0006mh-Lw; Tue, 30 Apr 2019 03:22:34 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLJLg-0006mC-9x
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 03:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556594549; x=1588130549;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=szuvwRd3vMn2KEmEyYVlVig54bToWRKUI6/TBVGXxiQ=;
 b=M6d4FODtKx9pkVShiOlB3RpaMYTkVeO83K/ZkJ5WqArwYZmyQbphB5D2
 SNOwmjf6pz6scElbGFJXu81qykyjkWCcqOw43yqtjh4uB4O12puHoiwEC
 El8kspCbHXUEKGfv6EfMqZ1m1kB3mljXn5+z4ZroRFyBCmPj5cJKMII6m
 PFvYP5bz5BIo6i53pVFC6grwCBMesEYuGPfAigYhb/S2uwmvPVdx3CCME
 UuqCnVU4XlcSs3M/Iil6B3+AGnELChW63HfowBVSn0560rP1MSF6Zn14T
 UT6/B0bQH/MbtDiDMGHq7lx5CQqbZsd2RBG49COgK+9QiPt6pEcqwRedV Q==;
X-IronPort-AV: E=Sophos;i="5.60,412,1549900800"; d="scan'208";a="108339694"
Received: from mail-cys01nam02lp2054.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.54])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 11:22:27 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HryDbMJXXu9SsorQXwpgFtMILoKojqgWTjK1kOW5uTI=;
 b=FiJHNJ/MQO7FWM/39GyOx/+rdESoC7MRJKzUWpPpiJQsWIPMtroS0m/tQQUMCw3KaM+02cne13y5gHE9FZ/SvYL0XjRzMz0Pm/IbFjyJlEtHYbOJbi6AzZ/wlGYJqN//uKWzT+LZpbJhQlijPlqBPiP96XjiWxYjSlb/Lu7BddU=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5053.namprd04.prod.outlook.com (52.135.116.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 03:22:25 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 03:22:25 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Edmund Nadolski <ednadols@linux.microsoft.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/2] nvme: add clarifying comments and fix some typos
Thread-Topic: [PATCH 2/2] nvme: add clarifying comments and fix some typos
Thread-Index: AQHU/rIERAvMUv4ZwUmXF4+Q6Dbfvw==
Date: Tue, 30 Apr 2019 03:22:25 +0000
Message-ID: <SN6PR04MB4527DCC6112D02BA11216C05863A0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <20190429173533.10366-3-ednadols@linux.microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f6a6b6f-858e-4cff-e12a-08d6cd1b1104
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5053; 
x-ms-traffictypediagnostic: SN6PR04MB5053:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB505367C39CA8B1FE2E2B0440863A0@SN6PR04MB5053.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(136003)(366004)(376002)(346002)(189003)(199004)(73956011)(81166006)(81156014)(478600001)(72206003)(6246003)(7696005)(8676002)(8936002)(6506007)(6436002)(229853002)(74316002)(7736002)(53546011)(76176011)(305945005)(25786009)(55016002)(316002)(33656002)(110136005)(14454004)(53936002)(99286004)(86362001)(9686003)(486006)(446003)(476003)(5660300002)(76116006)(68736007)(66066001)(66446008)(6116002)(66476007)(2906002)(66556008)(64756008)(2501003)(52536014)(66946007)(3846002)(91956017)(97736004)(14444005)(256004)(186003)(1511001)(71200400001)(26005)(71190400001)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5053;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DS/n7dK/6rTw2NOwEEFlE3/4JJLKJw0MZktRM7dmClsaZdpUuNm9yRgtx60+2CIa+6Xt/j/0RXrBMVgFcyJaLFFaKMMaXBuUhEiaMOe2OUNNVcEj8uB/21623V71jZYZXhUr4WECPqn49XoBZRSReqGRFAWvficnKaeNd9dfKuSRqQzGaWFKV7tCbzvSFp/6FVu7KrfFDosQXuQ9Vp3XZosa48DzH3mZq46+D1hn1tRwDdlIc4expdc8F3pV+AVi8kzbyxAhnXfmk8sXsZsBqbsjskw5nqniDHuOFCYYHeguYElTF2uqSWdsql82bdrnXS2uj6bqegydsvj6FCinM82eUwSn/1NgW//M69ux+YM6lMydOsHtLQSJUIfUavpkHvJHMNI9HknuOm6daYMUP03QTw/gVvD2DJxjeqUF7lA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f6a6b6f-858e-4cff-e12a-08d6cd1b1104
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 03:22:25.1446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_202228_461408_5E7CE9A3 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

These fields are taken from the spec, so I don't see the need for
adding comments as most of the fields are combination of the bits and 
for that you have to refer to the spec anyways.

On 4/29/19 10:36 AM, Edmund Nadolski wrote:
> Add comment descriptions for struct fields per NVMe spec.
> 
> Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>
> ---
>   drivers/nvme/host/nvme.h | 32 ++++++++++++++++----------------
>   drivers/nvme/host/pci.c  |  2 +-
>   2 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 527d64545023..61736d1ef15e 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -177,7 +177,7 @@ struct nvme_ctrl {
>   	u16 cntlid;
>   
>   	u32 ctrl_config;
> -	u16 mtfa;
> +	u16 mtfa;		/* maximum time for firmware activation */
>   	u32 queue_count;
>   
>   	u64 cap;
> @@ -185,23 +185,23 @@ struct nvme_ctrl {
>   	u32 max_hw_sectors;
>   	u32 max_segments;
>   	u16 crdt[3];
> -	u16 oncs;
> -	u16 oacs;
> -	u16 nssa;
> +	u16 oncs;		/* optional nvm command support */
> +	u16 oacs;		/* optional admin command support */
> +	u16 nssa;		/* nvme subsystem streams available */
>   	u16 nr_streams;
>   	u32 max_namespaces;
>   	atomic_t abort_limit;
> -	u8 vwc;
> -	u32 vs;
> -	u32 sgls;
> -	u16 kas;
> -	u8 npss;
> -	u8 apsta;
> -	u32 oaes;
> +	u8 vwc;			/* volatile write cache */
> +	u32 vs;			/* version */
> +	u32 sgls;		/* scatter gather list support */
> +	u16 kas;		/* keep alive support */
> +	u8 npss;		/* number of power states supported */
> +	u8 apsta;		/* autonomous power state transition */
> +	u32 oaes;		/* optional asynchronous events supported */
>   	u32 aen_result;
> -	u32 ctratt;
> +	u32 ctratt;		/* controller attribute */
>   	unsigned int shutdown_timeout;
> -	unsigned int kato;
> +	unsigned int kato;	/* keep alive timeout */
>   	bool subsystem;
>   	unsigned long quirks;
>   	struct nvme_id_power_state psd[32];
> @@ -231,8 +231,8 @@ struct nvme_ctrl {
>   	bool apst_enabled;
>   
>   	/* PCIe only: */
> -	u32 hmpre;
> -	u32 hmmin;
> +	u32 hmpre;	/* host memory buffer preferred size */
> +	u32 hmmin;	/* host memory buffer minimum size */
>   	u32 hmminds;
>   	u16 hmmaxd;
>   
> @@ -290,7 +290,7 @@ struct nvme_ns_ids {
>   /*
>    * Anchor structure for namespaces.  There is one for each namespace in a
>    * NVMe subsystem that any of our controllers can see, and the namespace
> - * structure for each controller is chained of it.  For private namespaces
> + * structure for each controller is chained off it.  For private namespaces
>    * there is a 1:1 relation to our namespace structures, that is ->list
>    * only ever has a single entry for private namespaces.
>    */
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index c1eecde6b853..368371c5cafc 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -227,7 +227,7 @@ struct nvme_iod {
>   };
>   
>   /*
> - * Check we didin't inadvertently grow the command struct
> + * Check we didn't inadvertently grow the command struct
>    */
>   static inline void _nvme_check_size(void)
>   {
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
