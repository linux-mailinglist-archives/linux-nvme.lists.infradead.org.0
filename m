Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2718D5EA
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 16:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kM8R4J6zLsgBM/Y1fl0FQ2J4enrKZ2Y6alRxoaXltqA=; b=ppdXOiZJY4ArYXHRWhIMdzWkS
	IktK41rYa8yOPjzjsWeCUC3bM1ekXF5NdhggQ3mAhMPT5qvsj5lV5PV5LOnoLUzuiVroUIVnMXHQi
	L2f19kEMRMdULCpl9QLGtIqoabt3Ea0V6QuFjbk5rs5VSqecUZEcC2tfHfWg3gSYQ/FPidpDmllkf
	/9VHeVpLSaHa6xqlwiF3NaXPdwH5wdcMC1dGZVLMbEYlHMAEW3dqhJFUbtFsRvL+qyHkwcWZAPfhp
	Xp3BI9hNglO1xXr7a7Qq928IRBqs4i+MFoupOKFVTtz1fxyiHicJ3s06j5D/TC/aSEAqmROOwLLrG
	5SxtcJmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuG4-00028X-KJ; Wed, 14 Aug 2019 14:28:13 +0000
Received: from mail-eopbgr00046.outbound.protection.outlook.com ([40.107.0.46]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuFt-00027t-QO
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:28:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3aOmrznWSaxb6DJUJRtDTdqzAyn/CMt9PeQfows2NZmC7xqAI8O5LmfZvfDI43d/EjvlXLA8AjeBX8NI+YI4rU2RIp+3u4ZQBGkQsPCTDtf89u/LWfQOU54rPjdvz9JHvpWsnhgFEgAazwpSuLl3kBPMgjx9T6xteBAXpj8tucdxIwRJfp4e0mLV9ASBiYl5pWp2ZwCvGgIPOSfmNs5QpIP93STHQI753CuCecCzEGaNW6PVMLEEV16EdGfwWyaTvdEpOu8zOUnVZEBaaYEJ5EC0zxE8Vn3si4UZRPsVNAc/sOqjeWYzz7YuzhxL18VRfIMNEQBxouW1RooZkHwyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cHynI1Exv6pnVA0XdaVGPA9IAOFF2jpWHrx5/8ZcdE=;
 b=C2CFYHFN2RW7zQaPNu+M957fyV+Cvtcr7QH0vAGXQzmuHIoHhPXkjVzEaB2EeQ5G+rSUK3OQLFDfrMsNyt9M9Kj3edIc7W1fGSoes8WjkGE1m9Py3RaZ7m1g71jgzIv3qf9i9dcXyiHWR+mUZHVm43HmuPg5sda3ZqpEnTRYqyxDUOfuUByT6GH0ebB5CNXIkqxfzcy8yfzEvddYJmwoT7IgeUU76uFwmBodmmGYM5HVutuStqU1ytkKXDooMQQAOFfJ2UYNqHYoEfLON+DMfgsq3UVulD5X3SRY8rCSdS1vo34grT/f1li9sVeg3oaTN/QEvs+mA75c3TwI7JjqGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=raithlin.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cHynI1Exv6pnVA0XdaVGPA9IAOFF2jpWHrx5/8ZcdE=;
 b=kiXnWw1WGDIyI2ig25WOXiMZ02wOHcIzGTp5h6tGSf8y4l4o7lnE6UZVk/FfT/oRctfOOrFWgG1INq+jeTVQRem92o3Ze01ucZIA4BXqIk2XOPcivoHQkhJd9CHcHSYtbRvd5+yoZYC7zTz4sIyzphWkWxoedGyvWbr/OBULw1Q=
Received: from HE1PR05CA0211.eurprd05.prod.outlook.com (2603:10a6:3:fa::11) by
 DB6PR05MB3384.eurprd05.prod.outlook.com (2603:10a6:6:1d::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Wed, 14 Aug 2019 14:27:57 +0000
Received: from AM5EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by HE1PR05CA0211.outlook.office365.com
 (2603:10a6:3:fa::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.13 via Frontend
 Transport; Wed, 14 Aug 2019 14:27:57 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 AM5EUR03FT004.mail.protection.outlook.com (10.152.16.163) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 14:27:56 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 14 Aug 2019 17:27:56
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 14 Aug 2019 17:27:56 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 14 Aug 2019 17:26:59
 +0300
Subject: Re: [PATCH v7 03/14] nvmet: add return value to
 nvmet_add_async_event()
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, <linux-block@vger.kernel.org>,
 <linux-fsdevel@vger.kernel.org>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-4-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <9bb2966a-0d7c-a492-7628-37916a941cfb@mellanox.com>
Date: Wed, 14 Aug 2019 17:26:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801234514.7941-4-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(2980300002)(189003)(199004)(5660300002)(110136005)(7416002)(86362001)(356004)(2616005)(65826007)(8676002)(476003)(126002)(31686004)(31696002)(11346002)(6246003)(8936002)(54906003)(58126008)(106002)(3846002)(26005)(65956001)(7736002)(6116002)(230700001)(316002)(16576012)(36906005)(65806001)(305945005)(186003)(47776003)(16526019)(4326008)(14444005)(478600001)(76176011)(2201001)(53546011)(2906002)(336012)(36756003)(53936002)(81156014)(64126003)(2486003)(70586007)(229853002)(446003)(50466002)(81166006)(70206006)(23676004)(486006)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR05MB3384; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 84c156bf-a23d-4e7a-e321-08d720c399f1
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR05MB3384; 
X-MS-TrafficTypeDiagnostic: DB6PR05MB3384:
X-Microsoft-Antispam-PRVS: <DB6PR05MB33841795A8D79D02102627C1B6AD0@DB6PR05MB3384.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:348;
X-Forefront-PRVS: 01294F875B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 0gStcmqk2fYFYWxYB91sqlG4rYuPrp2yxLynrCMUEa5dSQPXs72LjnF3ij9ArI0pgcL/xLhdZatEjh9Nam+MMBcElAA4eKjXBkGQ5TiJ+3s0t8zqUT930frwsngQAe6RH4M8cgWY3ibhZv1xD8CscZ7rA3rr+DxPFtNEEj3Stt3wXQj3CumZ1UqXWSH2Gt5LrKCuY79zULszDibagYQs7XrX8MNsKkLhuciCJIPNaOvGtFJUTlT5jrdpVZFMeF4uE6KePoc9yC234kJAXcIfCq/QC+1sFi+McgtGajcsvBmVHa1Bgkg2RCPdYXkTK78Wy0QVFTXE/OvsxSP4CmeQxpxVBCHsJ/HnmuNzDjJLPYRIM1xI+wrwR+jNle1PrqjNWOMFuOPC3jeHl6RSnzGDsEB5VbntVL/hwQiB1D6v8h4=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 14:27:56.6289 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c156bf-a23d-4e7a-e321-08d720c399f1
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB3384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072801_936129_25F7E4EB 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>, Keith
 Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/2/2019 2:45 AM, Logan Gunthorpe wrote:
> From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>
> Change the return value for nvmet_add_async_event().
>
> This change is needed for the target passthru code to generate async
> events.

As a stand alone commit it's not clear what is the purpose of it.

Please add some extra explanation in the commit message.

Also better to use integer as return value if the return value should 
reflect return code.


> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> [logang@deltatee.com: fixed up commit message that was no
>   longer accurate]
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   drivers/nvme/target/core.c  | 5 +++--
>   drivers/nvme/target/nvmet.h | 2 +-
>   2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 3a67e244e568..f7f25bdc4763 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -173,14 +173,14 @@ static void nvmet_async_event_work(struct work_struct *work)
>   	}
>   }
>   
> -void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
> +bool nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
>   		u8 event_info, u8 log_page)
>   {
>   	struct nvmet_async_event *aen;
>   
>   	aen = kmalloc(sizeof(*aen), GFP_KERNEL);
>   	if (!aen)
> -		return;
> +		return false;
>   
>   	aen->event_type = event_type;
>   	aen->event_info = event_info;
> @@ -191,6 +191,7 @@ void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
>   	mutex_unlock(&ctrl->lock);
>   
>   	schedule_work(&ctrl->async_event_work);
> +	return true;
>   }
>   
>   static void nvmet_add_to_changed_ns_log(struct nvmet_ctrl *ctrl, __le32 nsid)
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index c51f8dd01dc4..217a787952e8 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -441,7 +441,7 @@ void nvmet_port_disc_changed(struct nvmet_port *port,
>   		struct nvmet_subsys *subsys);
>   void nvmet_subsys_disc_changed(struct nvmet_subsys *subsys,
>   		struct nvmet_host *host);
> -void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
> +bool nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
>   		u8 event_info, u8 log_page);
>   
>   #define NVMET_QUEUE_SIZE	1024

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
