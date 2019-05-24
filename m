Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D0229EF0
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 21:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GuQcyzYdY0FqIKLELAde8TVCiTT0f8URd16EnyWvVIc=; b=W6lS+qxlz/QBVb8iTRb3sCGYQ
	sQG/BimVoe2NhTgKA/e68qjHVIg0t37SXyzY4lqc07ia6XDUXtgq75sWqOp8blRd8uOifBrESXPSc
	lXs00+vjJK27H5SkkawbCiiglpHGqC2I65O5fR4I6OXDCR/yWqbYB/5pkCgGozTg1L5rQRmTfNS4D
	152XmxVj+Btg84apVOQXp5wES0h6piL15gkSdo7lachSbQgbtPwZhW2jQMjTY7h2LQWRPJqrP62AF
	VFZsAy67q6/Eg+4WjFJ1MNpfaxIRyUZPa4bnjJwLE1F7QSea3fKNfm9tZ/OoAMlet9WzH3VqCv8t8
	8OzBevvAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFgu-00007L-PD; Fri, 24 May 2019 19:17:20 +0000
Received: from mail-ve1eur01on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::62f]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFgq-000070-0q
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 19:17:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMUq3nJFyuZMFv6aZWOS5oXs2lHtQwds3xGY6XlFGmg=;
 b=RBxOcZqrxQtjY1AdC4QzPHlaGbCiEbPUYm4QunUzAMomzqZw7ZxYbUTgcfer0dQ1zKrcEKKO8aII4JTcbXvBJb+2Fu6ImOJOQ1ncPBM+F3wiayrXd+XiOoMdy4SPv0XqPWfAGITjCjriUNVcbVo1/LvOFmro5ZfY2K17ZKIaY+s=
Received: from DB6PR0501CA0001.eurprd05.prod.outlook.com (2603:10a6:4:8f::11)
 by HE1PR0502MB3020.eurprd05.prod.outlook.com (2603:10a6:3:db::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Fri, 24 May
 2019 19:17:10 +0000
Received: from VE1EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by DB6PR0501CA0001.outlook.office365.com
 (2603:10a6:4:8f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Fri, 24 May 2019 19:17:09 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT045.mail.protection.outlook.com (10.152.19.51) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 19:17:09 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 24 May 2019 22:17:08
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 24 May 2019 22:17:08 +0300
Received: from [172.16.0.59] (172.16.0.59) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 24 May 2019 22:17:07
 +0300
Subject: Re: [PATCH 1/9] nvme: update list-ns nsid option
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 <linux-nvme@lists.infradead.org>, <kbusch@kernel.org>, <sagi@grimberg.me>,
 <hch@lst.de>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
 <1558602058-29434-2-git-send-email-maxg@mellanox.com>
 <587b0f6b-d1eb-08d3-1219-63b5144351d0@intel.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <279da962-dbd8-9503-d538-fa74be75e33b@mellanox.com>
Date: Fri, 24 May 2019 22:17:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <587b0f6b-d1eb-08d3-1219-63b5144351d0@intel.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.59]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(39850400004)(396003)(2980300002)(189003)(199004)(65826007)(6246003)(3846002)(4326008)(64126003)(2906002)(7736002)(305945005)(53546011)(47776003)(11346002)(486006)(126002)(2616005)(476003)(70586007)(478600001)(70206006)(65806001)(446003)(65956001)(336012)(86362001)(2201001)(230700001)(558084003)(50466002)(26005)(31696002)(77096007)(8676002)(6116002)(81166006)(186003)(81156014)(5660300002)(16526019)(356004)(8936002)(31686004)(110136005)(58126008)(316002)(16576012)(67846002)(23676004)(2486003)(76176011)(54906003)(106002)(36756003)(15650500001)(229853002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3020; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 035f1a41-9379-4683-7cfd-08d6e07c6b16
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3020; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3020:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB302094A7CC7B47E685C7C10EB6020@HE1PR0502MB3020.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: G+y3fl17MUNej1PFBGYxQ14pNddq5WJIPp2W62TUWOd0vw+pxXpA8YrHZrB586rS2Kke8Bj2N9ucophqhAuO9lq1VFhKhQeDqcMln+vhBuPCTNkqrrZdwG2EmUECTRQtHSl8jsTpIIokzpADqyOMOFifl3MGbzNCK9IPp7VDr47wSvCNRW6NrcfYxmDRceO4Ko4Z27pU5ERSTtKes8FWRl+GsHth/1Ee4WmeVKIsXqZctzQ1bx8zS4gw9b5pJQhNxFlHJkhEroIs3ZtqYDXfwMUCq3dzka2XuXF8m5a06gOKM0OGjcPOkkYiBgOzfdetRSRAWF7HoBwaLW/+VBcVXP0fFrknGwUEfk1230Ooc9eap/GMHvMjpTpLs0bJj275QX5Ln0vc5m1gG+csasbic4IZ9k8bSQ3Zr+e+XKASaTw=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 19:17:09.3758 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 035f1a41-9379-4683-7cfd-08d6e07c6b16
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_121716_073365_AB014B28 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/23/2019 8:27 PM, Heitke, Kenneth wrote:
> Would it be useful to include an error message here? I don't like
> playing the guessing game about what I did wrong when I just get the
> help message back. 

Yup good idea. I'll fix that in V3.

-Max.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
