Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E989217
	for <lists+linux-nvme@lfdr.de>; Sun, 11 Aug 2019 16:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NrisqVmSwd0I3HBSFWrsYiHI9u34akHOnuW+gppkD2E=; b=KX7GpYAtKeLiJMWBkGN+sAokh
	qwaMAJrdiqzNle/KE1/DAwBDjx7AsB1KAt/fM6ZtDzMJ6rAwOr8GpQVblls4y2y20kRtuHDVjvHDo
	s66lYqdISv4hR9QeIwLLQLbvmLfa046fELsnDomDSw9uk9W4LIck3aHUYKqD+mGZP2KB+fupKqRHl
	y0ngijApMWAcrut+y4uzys5GWQ7QYGI+kvq7CYUbwOUufsw2ds7R7500+Fdqg7KJzPTTZA8IQlDK8
	HYOYGSR4faj+Y6bqOTO/19HgLujOXKUeF2f2EEjJt1Vwyo4FX0WopyCv6kErL4xPWESrehFQzMPFb
	z40colLoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwpJg-0001Ck-Ks; Sun, 11 Aug 2019 14:59:28 +0000
Received: from mail-eopbgr20088.outbound.protection.outlook.com ([40.107.2.88]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwpJc-0001CN-FU
 for linux-nvme@lists.infradead.org; Sun, 11 Aug 2019 14:59:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4u3AZ8jRSmE3AwGwNCCS6TyD2lanzSo9CPEF6C8nZnldO+eWMl/MDW7eE8A2tTrMxEPEk1D0skeISUbWmeZLbyh4z2p9ucGlk2n6XtEXfOhPpirJ6BO8WRBwi8IjYhEkhVASahjAKxfTsjzYHd1xDkHHdN5EYjY1XGpfixnBPF1ET+gXK4Wth4YYGiBcW/oFxWqApPmGG7jpkyFle3Rbwya3u5yauK/WcwirVdNwT5wXvYWwkKIrtJKgWHwDNWv9camoKadrzzfQ2VrUb8v8yhe7oqyOkYp0RUTjoCgQvVA7rgP9DNW8XDOfQ5SxWHNwhsCclm0uBFrhoPCUF/tGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AwENEJWJX2nYJcN/Gen+uO5s3hyoCaCUNK2VEgxvAo=;
 b=ArCqbYlmSrGJYONjpfHAau/Ydwr/HO2PllXafQcYkM3awZON7fIR8xptESP2auc0gA+ZndSezzBf20jR4TMC2cHekLDt18zAFBGFAvHcB41OYVpviaFlbw9nWhOf8z38jkuU8sXLnHVPUPJDXQ1Q0uDa9m8IJJGbapLCZKyJXemirtSHF4ETcpYeC4IL69JXRXZ3kB4tKM6ntuBThDqYBD5AePLbltqpEoiIB8kcocLBpWaWKxjISYUYrfig5Z7q/yjMMqqyUyCGcSVotaHlGa4/2vF0nAxyOkQey7Fbb0/AQrllXp21c/6l6SFjllTGQ6pPGLS8Xd5kHeRnbH1Ohw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AwENEJWJX2nYJcN/Gen+uO5s3hyoCaCUNK2VEgxvAo=;
 b=od8cdrM+VWzKINOXDR+UZxqQPTwb57DYo9WuB1Va8tUQ5GLGlBD6pax3YJp+XU1eQStL0MWIaFja+wn3M8GW3nwrmzYSwr0h7CGv6MpVs9OzKJ+bgN6oqKYqNDmh2ABA18GBxQngOrTwwhythsWKqmr6kg0cgrXwMVB3BopLvcM=
Received: from AM0PR05CA0076.eurprd05.prod.outlook.com (2603:10a6:208:136::16)
 by DB6PR0502MB3062.eurprd05.prod.outlook.com (2603:10a6:4:94::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.21; Sun, 11 Aug
 2019 14:59:15 +0000
Received: from DB5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by AM0PR05CA0076.outlook.office365.com
 (2603:10a6:208:136::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Sun, 11 Aug 2019 14:59:15 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT003.mail.protection.outlook.com (10.152.20.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Sun, 11 Aug 2019 14:59:15 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 11 Aug 2019 17:59:13
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 11 Aug 2019 17:59:13 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Sun, 11 Aug 2019 17:59:00
 +0300
Subject: Re: [PATCH 2/2] nvmet-tcp: fix possible memory leak
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190808205522.24638-1-sagi@grimberg.me>
 <20190808205522.24638-2-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <62ac1147-18d5-fff6-5571-1a592ddd2ae4@mellanox.com>
Date: Sun, 11 Aug 2019 17:58:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808205522.24638-2-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(2980300002)(199004)(189003)(486006)(106002)(316002)(110136005)(186003)(54906003)(16576012)(126002)(53936002)(50466002)(4744005)(229853002)(336012)(478600001)(2616005)(11346002)(58126008)(476003)(5660300002)(36756003)(6246003)(26005)(76176011)(16526019)(70206006)(53546011)(65806001)(23676004)(2486003)(65956001)(4326008)(47776003)(70586007)(7736002)(305945005)(446003)(64126003)(356004)(2906002)(230700001)(8936002)(8676002)(3846002)(81166006)(81156014)(6116002)(31686004)(86362001)(65826007)(31696002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB3062; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 927907c5-ce3d-4add-0090-08d71e6c7a42
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0502MB3062; 
X-MS-TrafficTypeDiagnostic: DB6PR0502MB3062:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB3062BF11A8A30F3EC4BCFF86B6D00@DB6PR0502MB3062.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 0126A32F74
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: iQ3wbzaLehcEDDxXyH27hOpzPje6ZOupAIP1/oVKp1LXjDylJPeo691CtAjW3+t4DJGJBy3B6pY4R72ZLfk00AIbqfySbtY+w3kHqEDCq+nWgLhxXz9+6Rt/5UAw3j34D1QfJODtzZcCAuh/YWb75fxy5DloQgA9DZqeao8RqqYd3CifGj9Ze+2VW1XFaR4NuzuUBxJExkx7yQtyDDq+8hU1l+io8IYjttLIKriMMKhJS2C23sFwZPpo48mfZKX4uUhw6Ihx2T+jxBrX/KO27vlXUQWADGPzSxlRTV54nNWjnFRnCz3wfEnWZQAVFxUXVayeWUgyy2OcGOHfLPa6UTmWYTgjJ0LhidU3HGGqaqkSARR5tIT2sVJC/fY6uCnFkuOOEEsQ5P6d8LSn/18HyUWHo5rBq9gEG9Aw5kHGYrI=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2019 14:59:15.0840 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 927907c5-ce3d-4add-0090-08d71e6c7a42
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB3062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_075924_521421_248CD52B 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/8/2019 11:55 PM, Sagi Grimberg wrote:
> when we uninit a command in error flow we also need to
> free an iovec if it was allocated.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/target/tcp.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
> index 0d63f3da0117..76e43750b9e5 100644
> --- a/drivers/nvme/target/tcp.c
> +++ b/drivers/nvme/target/tcp.c
> @@ -1309,6 +1309,7 @@ static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd)
>   {
>   	nvmet_req_uninit(&cmd->req);
>   	nvmet_tcp_unmap_pdu_iovec(cmd);
> +	kfree(cmd->iov);
>   	if (cmd->req.sg_cnt)
>   		sgl_free(cmd->req.sg);
>   }


Looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
