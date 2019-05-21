Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B0524AC0
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 10:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mJ3e38l5snNForrAUpj3f4ksT+jqHYaybo5XUzMeiBQ=; b=RoL+yDafcyqvgH1PenQXZ6LRQ
	AXA+Naw+bD1NfhpYTyhmJNynkSfqBp1vHuB4e3+109c4IitHeFLOLCgl3q8UkawV+fshOtm6/T5gj
	O85wL36+M9DTbKPRXTqniLjToiLhhypnmElM819AB9etUosODmI23dJuY+FuJKcQXxSOsOzfFpvi8
	5alogWh+KrlhxR24BBElaJb7vkazamRNoZGkFzjneUulbiEMCilJZhPDiUSsM6JuSw96hp6s4gn4v
	a3X8F4yTZPNYFkfq7gb17MML6M6mM0ktly9TZUrSJpZ3qkcn0cbvHafsc4d1GXkDQ8jdtnFgEjNPp
	y0S/8dVcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0SR-0000vs-7l; Tue, 21 May 2019 08:49:15 +0000
Received: from mail-eopbgr40085.outbound.protection.outlook.com ([40.107.4.85]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0SL-0000vO-IB
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 08:49:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqD1oNJLVyBZDse9rGjxEAX2vgDfZUtnapMajYAOQG0=;
 b=YHe62jOQ1OomcUZADE1vtUhtlEZ8M8PIiFtryxM1ELUWZMuL6B9LUu2pEk5S7mN8d7CB3SmE8+BUnfKLUEdzpEgQE8ztUdQ0h5QcYUBUKPFlfJ14P2tN076AzRzwFSUG9Kzy/iLXtQFKwGLsVvDGh+9GJwauy23CktnQsbF0eO8=
Received: from HE1PR05CA0234.eurprd05.prod.outlook.com (2603:10a6:3:fa::34) by
 AM0PR0502MB4051.eurprd05.prod.outlook.com (2603:10a6:208:2::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Tue, 21 May
 2019 08:49:06 +0000
Received: from VE1EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by HE1PR05CA0234.outlook.office365.com
 (2603:10a6:3:fa::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.16 via Frontend
 Transport; Tue, 21 May 2019 08:49:05 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT053.mail.protection.outlook.com (10.152.19.198) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 08:49:05 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 11:49:04
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 11:49:04 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 11:49:03
 +0300
Subject: Re: [PATCH] nvmet: get rid of extra line in the tcp code
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 <linux-nvme@lists.infradead.org>
References: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <47ad211c-526f-a33f-13ff-94f02c17baf4@mellanox.com>
Date: Tue, 21 May 2019 11:49:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(346002)(136003)(2980300002)(189003)(199004)(86362001)(47776003)(5660300002)(36756003)(4744005)(31686004)(64126003)(230700001)(70206006)(14444005)(70586007)(16576012)(316002)(65806001)(478600001)(65956001)(23676004)(186003)(16526019)(67846002)(81156014)(26005)(8676002)(8936002)(65826007)(81166006)(77096007)(305945005)(50466002)(2486003)(2906002)(356004)(229853002)(336012)(106002)(446003)(11346002)(4326008)(7736002)(3846002)(76176011)(53546011)(476003)(126002)(58126008)(6246003)(110136005)(6116002)(31696002)(2616005)(486006)(26583001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0502MB4051; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 459f608a-f8aa-461b-da70-08d6ddc92e69
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM0PR0502MB4051; 
X-MS-TrafficTypeDiagnostic: AM0PR0502MB4051:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB4051598557835BD853CD48D7B6070@AM0PR0502MB4051.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: oAmLbYRq31/PIC4YEgO7UELdaS9zUsiOPgjWwo/B6aOpv2E75SwK+Nbduq63Dsm3XJ36H3uZZ8V16weRs69ktGIJAC/d+rxxAddlGThXMlTOJb3JGZc2jR9ZUtu/wuySoYJrY+71lNWnAtClOpwQWd3mYUCOV98nMWpBwFWrC8D9xW64jhkZn7eh4vO2TGWm82n4Zz2R0YN9c+jWY5H0AUBkzClfoOytSrXzyo9FjQJedXhLQ6hLKgKn1A/pUNntHTB2AeJSt0z22m1g+921moAqqWydF5KBJ5kI+guw5xIAF7f7gxhG/RHdqDd1D2gjORr/+rODDLzlxkZERq8VKRiXizjuNyoz0EliJ2h3JnCbV8i2uJKfJyCqjXyfVm+Tv+vkbiv+vD1HQbWXpxM5BD1bV9v95mi7Le4YRJNS930=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 08:49:05.4396 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 459f608a-f8aa-461b-da70-08d6ddc92e69
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB4051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014909_603386_893A9260 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/15/2019 7:10 PM, Chaitanya Kulkarni wrote:
> This is a code cleanup patch, it doesn't change any functionality,
> It removes the extra line at the end of the function.
>
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>   drivers/nvme/target/tcp.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
> index 69b83fa0c76c..f019af264081 100644
> --- a/drivers/nvme/target/tcp.c
> +++ b/drivers/nvme/target/tcp.c
> @@ -557,7 +557,6 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
>   	}
>   
>   	return 1;
> -
>   }
>   
>   static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,


Looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
