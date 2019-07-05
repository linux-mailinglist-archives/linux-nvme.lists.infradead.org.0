Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8C160877
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jul 2019 16:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NFF12FOB5ea5m3BYaN3i93ZaKN8GChDzsT4K17nlMFU=; b=BU3LwWNyaFZZ5By2Rq6qJO6G/
	NfPfJ9SoNyJfMC2E0rfB3YAl8KWLY30ytH2KV/X9yz0UNfWSJRiAStwsQTPGZ9CwvhlM9I5Y4QPm4
	Ik1Y4w6mfjTg48/6zMOs9AC8px9ImnOaOGqDX35GYT3xaFHJ8cXa28u9ekCJt1iS3HAJzcFbIcL5k
	sLX9LAqy4VdAaI8tX4Vky1xpm1SvG/pbY2lI3tytB7UL0bz4TPzF9OceNkCmVMPQV1YFxE34cvCeg
	5WTIlOxFI80JNepiJzpNB3c2YJTeDtM+NEi/HAKwy+YMg9m8fmYYHVr5WlwNBw8KdnxLfGwPPzT0z
	8mfUYp9CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPaW-0006xX-Ux; Fri, 05 Jul 2019 14:53:25 +0000
Received: from mail-eopbgr50088.outbound.protection.outlook.com ([40.107.5.88]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPaS-0006x3-3N
 for linux-nvme@lists.infradead.org; Fri, 05 Jul 2019 14:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nedWuy/27H1a+ingUAprQRS6TMjCVkFTEoHNByrPO+I=;
 b=ifB+RvhWNe5HYvkjhzQkYocNwec6QRq0UQfd34Q9xfF8+sXjNIbpybKJaCFGm39hG6HOMBxA+yHnjLfCSMQQSarbdLKSgRJrAkfTUFO6iqoIqz1QK3uhadh724GyoCgudIyVDT4K31hxhrRpLIkSg12BEMSmeT+IorC9ydHM06A=
Received: from HE1PR05CA0297.eurprd05.prod.outlook.com (20.176.160.156) by
 DB3PR0502MB3977.eurprd05.prod.outlook.com (52.134.70.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 12:20:34 +0000
Received: from VE1EUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by HE1PR05CA0297.outlook.office365.com
 (2603:10a6:7:93::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2052.19 via Frontend
 Transport; Fri, 5 Jul 2019 12:20:34 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT042.mail.protection.outlook.com (10.152.19.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Fri, 5 Jul 2019 12:20:33 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 5 Jul 2019 15:20:31
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 5 Jul 2019 15:20:31 +0300
Received: from [172.16.0.102] (172.16.0.102) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 5 Jul 2019 15:20:31
 +0300
Subject: Re: [PATCH v2 2/2] nvmet-loop: Flush nvme_delete_wq when removing the
 port
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>, "Sagi
 Grimberg" <sagi@grimberg.me>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-3-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <bbbfdcda-5acc-a02c-565a-929180ab6c0c@mellanox.com>
Date: Fri, 5 Jul 2019 15:20:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703230304.22905-3-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.102]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(2980300002)(189003)(199004)(64126003)(229853002)(3846002)(6116002)(77096007)(16526019)(186003)(356004)(86362001)(7736002)(486006)(2201001)(476003)(478600001)(8676002)(81166006)(230700001)(65826007)(81156014)(4326008)(446003)(2616005)(305945005)(8936002)(126002)(11346002)(23676004)(2486003)(106002)(6246003)(31686004)(76176011)(53546011)(31696002)(16576012)(67846002)(58126008)(110136005)(316002)(65806001)(47776003)(26005)(14444005)(2906002)(70206006)(70586007)(50466002)(336012)(5660300002)(36756003)(65956001)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0502MB3977; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa205c8-ec5e-4c25-319e-08d701432da4
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0502MB3977; 
X-MS-TrafficTypeDiagnostic: DB3PR0502MB3977:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB3977211A03BFF00FE5192854B6F50@DB3PR0502MB3977.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 008960E8EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 3d3uzSNvC9su4jASWxDwHJAKJOhOFmpbS0xwRpJSaQyaEfbo7n9k08gtyywmQBc/mn5k15A2jGBPeIRZfqq7PJvQTGuzpLlcAed75ll6imTma0bJrOV44ph47+wCvRCOqVAjaHEeWeOjGrwMGEMmiWyVb/vEfStLSttEnOhYKJyFW0w2TMk7YPcBDt2lIRDCqQX5bP+d+T9Ekopi9//NUhZ7c2uPGi0Hu6UUn7UI4dtNrHyv3zbZ1MsEZIp3nj5aa+EIbcCKrfc7DmJ0agXtntamCMY4JosU6e/4zq/DsiXA23/Ks97+IrVcyc/AE1zEFz0KAlzyHpEY3SowpgVsk4XmR0OHZgSU+9wP1EBcVwg95NJ5Qc/GlXSDVg5NTszvUh00weby0jNH6SR5so7vHNao9tZoehVPGn88qWKiEG0=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2019 12:20:33.3143 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: caa205c8-ec5e-4c25-319e-08d701432da4
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB3977
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_075320_147118_9622B2FB 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 7/4/2019 2:03 AM, Logan Gunthorpe wrote:
> After calling nvme_loop_delete_ctrl(), the controllers will not
> yet be deleted because nvme_delete_ctrl() only schedules work
> to do the delete.
>
> This means a race can occur if a port is removed but there
> are still active controllers trying to access that memory.
>
> To fix this, flush the nvme_delete_wq before returning from
> nvme_loop_remove_port() so that any controllers that might
> be in the process of being deleted won't access a freed port.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   drivers/nvme/target/loop.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
> index 9e211ad6bdd3..da9cd07461fb 100644
> --- a/drivers/nvme/target/loop.c
> +++ b/drivers/nvme/target/loop.c
> @@ -654,6 +654,14 @@ static void nvme_loop_remove_port(struct nvmet_port *port)
>   	mutex_lock(&nvme_loop_ports_mutex);
>   	list_del_init(&port->entry);
>   	mutex_unlock(&nvme_loop_ports_mutex);
> +
> +	/*
> +	 * Ensure any ctrls that are in the process of being
> +	 * deleted are in fact deleted before we return
> +	 * and free the port. This is to prevent active
> +	 * ctrls from using a port after it's freed.
> +	 */
> +	flush_workqueue(nvme_delete_wq);
>   }
>   
>   static const struct nvmet_fabrics_ops nvme_loop_ops = {

Looks good:

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
