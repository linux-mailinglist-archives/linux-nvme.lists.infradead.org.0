Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CD116AC6
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 20:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lMEs5jQNjWi/wPmS3/ZsD8yrUKpxzGGQFuLKw/mEono=; b=HEkTC48u4XkOFaNoPew1vt2gN
	vstTO/2aAS9jgALenmSAIK4LCpCTmaVs0Z92gTgEZU0Fqne7+NluYj7grYWQdOyuRaz2t44O6j/hS
	LSFMcVxTJ+PXV+WqkoxNZ5xZ+fGeMI1tlg8zWqYBzJV6bHwyWMunspGfsdfsJmHXz90cnIsffeJbO
	vHrjzUfU0JvMQ1uiB7dFAfAtq7GEtW57YPNyMVC8LyAwTwuafmVivvWKatpnxqUszU6VF5xzkVj59
	wlF6ZEbzGSRNYTKGvUag5LpEmol6jRT1Xwa/yNvV8woDLdma81Ou4uVRLIZnbdwfhur6IuDj6TgR0
	KEFkZnkmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5FC-0007Tv-UI; Tue, 07 May 2019 18:55:14 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5F7-0006dx-6F
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 18:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RfklpcPDFOtv6BfATkS9rAGUWpiY778/PP/IiuOkmO8=;
 b=FRf39es0qnRjNAcCq7CDnKUiY4dHR3B/xxJDFrJcpfe3gDF+9eswWxaObJ5Y4BvSzBeh2noHwrFJoawLI7dYP8YFn4CGqdVaehuRWMBxTxICMyqVNpMOivD0QNpeZn1dh1tMOLpRee7JkWwIF1/nNBr76kS5aNRASR9YdrLjQto=
Received: from DB6PR05CA0021.eurprd05.prod.outlook.com (2603:10a6:6:14::34) by
 AM6PR05MB6421.eurprd05.prod.outlook.com (2603:10a6:20b:bb::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 18:55:02 +0000
Received: from DB5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by DB6PR05CA0021.outlook.office365.com
 (2603:10a6:6:14::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Tue, 7 May 2019 18:55:02 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT027.mail.protection.outlook.com (10.152.20.121) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 7 May 2019 18:55:02 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 7 May 2019 21:55:01
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 7 May 2019 21:55:01 +0300
Received: from [172.16.0.179] (172.16.0.179) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 7 May 2019 21:54:28
 +0300
Subject: Re: [PATCH nvme-cli rfc 4/6] fabrics: add --quiet option
To: James Smart <james.smart@broadcom.com>, <linux-nvme@lists.infradead.org>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-5-sagi@grimberg.me>
 <58b674a5-a40e-c0b1-2b89-2fdc89d8efa0@mellanox.com>
 <2437d298-a26d-924f-281e-d20a97cee4c0@broadcom.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <b540cb48-c248-e81e-0bc5-28b6b8a10cd6@mellanox.com>
Date: Tue, 7 May 2019 21:54:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2437d298-a26d-924f-281e-d20a97cee4c0@broadcom.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.179]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(39860400002)(396003)(2980300002)(199004)(189003)(305945005)(65826007)(8936002)(336012)(3846002)(31686004)(70206006)(8676002)(229853002)(70586007)(26005)(230700001)(2906002)(53546011)(446003)(11346002)(16526019)(7736002)(81156014)(486006)(186003)(77096007)(81166006)(2616005)(476003)(126002)(110136005)(106002)(64126003)(58126008)(36756003)(50466002)(6116002)(5660300002)(4744005)(47776003)(16576012)(65956001)(65806001)(356004)(316002)(31696002)(76176011)(2486003)(67846002)(478600001)(6246003)(23676004)(86362001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6421; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f182ba8-876f-44e2-cf4d-08d6d31d8308
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM6PR05MB6421; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB6421:
X-Microsoft-Antispam-PRVS: <AM6PR05MB642125144BEC71E65D8CDCD4B6310@AM6PR05MB6421.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:254;
X-Forefront-PRVS: 0030839EEE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: o7OjGqQe4quUiMzM3Mh5afT587hPXlNWzylY7zOttTZjRL7iEWb7jQ+7JmWPXpS+6DR9JAX+rLMBDXIGyjSOWHht12k4tRVTCVlWEgnYYRjEfuDe2oPsZR0x56UHZeccuETH75COiT8kxxowrRwnTOVi7F46XQK3IqFaCorT9PMOnbvZr66Ls9QsgshyPoPTXorZjXPcXckqTFbG/MhVXWeBQU7kdEkqhw7rEcOwbr95QaAQMWMGrkZNWvUx8BA+dcWu1lmiOFOVkhczevEzCEEXqxxa/ftKV7JAe9rW4yGHk5VnP0vR19ECXFXG6GIZ5tJ7gChzUdV7I60LnGPehHGR2FO55l5paP+Str/nhvAMD78nWgg/xOhqJe6UJHBaKyOBJaPX5zOz0KLiw/OAplE8BADlKBuNZq8bFCC1ZmE=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2019 18:55:02.3377 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f182ba8-876f-44e2-cf4d-08d6d31d8308
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_115509_290290_211BDE04 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/7/2019 8:12 PM, James Smart wrote:
>
>
> On 5/7/2019 2:35 AM, Max Gurtovoy wrote:
>>
>> (and also example can be added to commit message :) )
>>
>
> wow, all these examples. What fun is that. What's left to the 
> developer to go figure out ? :)

well I'm thinking about non-developers that can get added value from 
good examples.


>
> -- james
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
