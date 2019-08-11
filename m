Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C1789216
	for <lists+linux-nvme@lfdr.de>; Sun, 11 Aug 2019 16:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hjeaE6xVfyy8m7hevGgRX3h/6yXZz547Svz0NuYTgAU=; b=dBx0zELIGn0iwWRKWMqgg7X7n
	xNTU3zdSmFoSsLOPc9NmgB2FXQkFD4KtTAOBqnI9S5C1ONkQuAqYQQIw6YQAtpALrZB532AJQTgar
	0gVrYzLmqOxmHcrM1mB+r+Q3SJ2rpVnWFuoKbAgnhv22c1e5I85c/h3mOfbb0PoXkLyapYSN1zJMV
	Jx3jWr0xLT1U/J4f1wmp4KiBjoEt6rTrYV1Qad2/UQfxkuhnfxDXZ7o1VtCC5OnzKuq1n+4093mXd
	XtIw5FQ7aXDCBBrqj8rOVYgEQUNwDAfAkFaVBrJlqlUYZQpN4u8manGjGWutJJdMlBNPw5R+uTz9c
	5+Go3RR7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwpIU-00010Z-Tg; Sun, 11 Aug 2019 14:58:14 +0000
Received: from mail-eopbgr50057.outbound.protection.outlook.com ([40.107.5.57]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwpIP-000102-8G
 for linux-nvme@lists.infradead.org; Sun, 11 Aug 2019 14:58:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htDmvbTknZV9qQKDHJ4DsFO9hWq8iyrM0KckmfaN6jkJiRb+injzd+xqezJv2iNmcO5rzCsMcVoQz9DAqnzzJha94UWfawWlfKis4bR4H1NQyXFExZweO+LV4svxCLCOlngLhbsk3Qui+hhJ8PWSDghaMoXjfEZvajQvTQCIW4YAmBHfhtuhIHz8Wkgc8amZUeRTLxgxchHsX0ZumbUeu/HXqwjIGv8H7jpsLuHC177b9xwK3j4T5RRb8tE/JvzHdE2DaAnpRSzf8pvbW+sNY3J7VaKeSDV3Kq05xW+Q4aE0d50hy2xnYIhb50Dco6TreFRmUNy/3yqDeLaH665tyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+mo2XjIhx2r2kKnaHBtlIypx7wCEiRJEI1KfKE4m5Lc=;
 b=BE1yTHi6FueGkI+BZRs9YqsXOUX9/TNB2p+ez8up3lNTJdH9Xl6N4bH3T584sw28wJpBGNSdZbtK+vRw6vd0kTLEm6NOoLfR4BJ8NhmNwhPoqurqHiocMB3EGCSPO7lenOvYjyS4ESZfQgHYzJmsXV0ob7IJCvqh1qpMph9APazBxIHzLC2a9P3HoE+7/4gi9ip77qKqDpwqvCCOV12iGst+3Yxb5uipRI2e74Jl5TJQyF9oFcxb/LZTHDvm5fZsk9KtEAbl00s7p0GCgdQnBnvXVULh3jdrZBRn5gicvGa+9x4wlNDwmeXMywzD7J1+bG9c/5Ud0kEmDVGVLdsLFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+mo2XjIhx2r2kKnaHBtlIypx7wCEiRJEI1KfKE4m5Lc=;
 b=orgaKm/8e0jeGKid6kpHY+LOcGmThlzVyuoNf0NhvFsqCXZV8OKTt2EpKGckjL065U67ds8q9QhsDmEuKT0ZMFygaL0o/6q+n6Y9QuUpdVQI0zxeglC10aW0hFV+yGTWtpyEvnnYDKBlUhcuz6Vo/srKywPHhcy4mXofUfkI0kQ=
Received: from HE1PR05CA0214.eurprd05.prod.outlook.com (2603:10a6:3:fa::14) by
 VI1PR05MB3487.eurprd05.prod.outlook.com (2603:10a6:802:1e::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Sun, 11 Aug 2019 14:58:02 +0000
Received: from DB5EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by HE1PR05CA0214.outlook.office365.com
 (2603:10a6:3:fa::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Sun, 11 Aug 2019 14:58:01 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT021.mail.protection.outlook.com (10.152.20.238) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Sun, 11 Aug 2019 14:58:01 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 11 Aug 2019 17:58:00
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 11 Aug 2019 17:58:00 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Sun, 11 Aug 2019 17:57:59
 +0300
Subject: Re: [PATCH 1/2] nvmet-tcp: fix possible NULL deref
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190808205522.24638-1-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <5bff9385-b853-4868-6f78-2b9611fc479d@mellanox.com>
Date: Sun, 11 Aug 2019 17:57:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808205522.24638-1-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(2980300002)(189003)(199004)(11346002)(336012)(16526019)(186003)(486006)(476003)(2616005)(446003)(126002)(7736002)(26005)(2486003)(23676004)(76176011)(305945005)(70206006)(65826007)(5660300002)(53546011)(70586007)(64126003)(4326008)(36756003)(316002)(16576012)(58126008)(14444005)(31686004)(81166006)(110136005)(81156014)(230700001)(8676002)(106002)(2906002)(6246003)(65806001)(65956001)(54906003)(356004)(47776003)(3846002)(6116002)(53936002)(31696002)(229853002)(8936002)(478600001)(50466002)(86362001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3487; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28691f51-26bd-4643-d9b7-08d71e6c4e4c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR05MB3487; 
X-MS-TrafficTypeDiagnostic: VI1PR05MB3487:
X-Microsoft-Antispam-PRVS: <VI1PR05MB348704932D15DC9A49243F66B6D00@VI1PR05MB3487.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0126A32F74
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: LwTrmegypMJn9Y2eM5LQmcxlopgixxmclDRRBqNJS+Urc7H6skQMTwM0viIcgvOGY3V/rfK0Unz50ZR3Od8rG60+B1Y2/V90wCU4I7D5GUR42HwKhgrzy6W+S3tZUADfQNLdXoHzmC7M2zclwYu4CWXHqi9SaWpj5dCE5vWp2tLGSkMO35BVGZPGgMRTMs4SAWZoe51eQfRMBmPP2xTNDb0v3MF2BqJVobOiL//oqiJ2tx6nlsLu+5ZJ22fBZH/TCJKWNLBURdJtrBooLMx7XsqrTy9Lzaw1en7Pru6eF+Du1yj118VSjQha1Ua1l9ekFDVKCNpbvejHcLW3VUS10FgrbdyoEUUNAuKfyGZE4KgzsprogNsEMDUzmptvwjB24UOxEb2L1qloTkpL9RUUKprLQHUwa3xN17lrr9kSn0w=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2019 14:58:01.3253 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 28691f51-26bd-4643-d9b7-08d71e6c4e4c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3487
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_075809_538938_2CB9F350 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.57 listed in list.dnswl.org]
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
> We must only call sgl_free for sgl that we actually
> allocated.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/target/tcp.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
> index 69b83fa0c76c..0d63f3da0117 100644
> --- a/drivers/nvme/target/tcp.c
> +++ b/drivers/nvme/target/tcp.c
> @@ -348,7 +348,8 @@ static int nvmet_tcp_map_data(struct nvmet_tcp_cmd *cmd)
>   
>   	return 0;
>   err:
> -	sgl_free(cmd->req.sg);
> +	if (cmd->req.sg_cnt)
> +		sgl_free(cmd->req.sg);


what about zeroing the sg_cnt during nvmet_tcp_get_cmd ?

and NULLify the cmd->req.sg as well in nvmet_tcp_get_cmd ?


>   	return NVME_SC_INTERNAL;
>   }
>   
> @@ -553,7 +554,8 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
>   
>   	if (queue->nvme_sq.sqhd_disabled) {
>   		kfree(cmd->iov);
> -		sgl_free(cmd->req.sg);
> +		if (cmd->req.sg_cnt)
> +			sgl_free(cmd->req.sg);
>   	}
>   
>   	return 1;
> @@ -584,7 +586,8 @@ static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
>   		return -EAGAIN;
>   
>   	kfree(cmd->iov);
> -	sgl_free(cmd->req.sg);
> +	if (cmd->req.sg_cnt)
> +		sgl_free(cmd->req.sg);
>   	cmd->queue->snd_cmd = NULL;
>   	nvmet_tcp_put_cmd(cmd);
>   	return 1;
> @@ -1306,7 +1309,8 @@ static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd)
>   {
>   	nvmet_req_uninit(&cmd->req);
>   	nvmet_tcp_unmap_pdu_iovec(cmd);
> -	sgl_free(cmd->req.sg);
> +	if (cmd->req.sg_cnt)
> +		sgl_free(cmd->req.sg);
>   }
>   
>   static void nvmet_tcp_uninit_data_in_cmds(struct nvmet_tcp_queue *queue)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
