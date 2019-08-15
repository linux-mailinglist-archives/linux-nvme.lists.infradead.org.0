Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50238EBA1
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 14:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+8y848XevfYEQBD5m3YRTIkaS6g/a91NcHK6WOWPkd4=; b=SeohfAtWhT7RmfK+ns9gVkaDI
	CTWcS5T7qX+BPxoi9X26HKmXeY/JwaZzugELKLY4QN8zZU9OVX7oasMztE0QMss5Aw0vxdnNYvQo1
	eBEZAqqBEolLtsMBUn/wT35PVHiPWi2lqw8is0gx0C4cwrRdjmUt8DySc7p3bmVm3tsu9ooU6c9nf
	t9TSCGywxe1sLivWgC5LEgwAzRq8aGWVfXej8embs1exCp311Ee4J/ZUfQM3nzjpHrV4mgtPohhQd
	6OQsyGh4uWffm17xxsERNSASLfwpqZRoetGe4qL+1IwyApTpo/ExBA0Kw3CLmbCistgD8szYfvuEm
	lz6gboDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEzb-0005uw-JR; Thu, 15 Aug 2019 12:36:36 +0000
Received: from mail-eopbgr40077.outbound.protection.outlook.com ([40.107.4.77]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEzK-0005uO-2E
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 12:36:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/c+1DhHbo8drkxxnx0xZedcez1djWUWd5EmN+UwvPOwjT8f9llfNEWaohro673WpYTICKekNF2jxEvUn+aETxx7DNf/hlP4QW/VZqWNGcL9tjDRWgNMlCEGeZcI0Cwc6HjI+gzr/xaRbP53L2mlJkYBwbxTJ7r7w/Gnv8pERDsbMcWsv+5twxyo4sTiUjKAU5Dqdt9Xda4N8s3hZCYv6jJu0DyKQV38pAN0tdfSs6h47BAChvrDhPXCxfpMaokP/Zc49CQGapJApGMHPhUiOzXBuyTzoutFd+Flfc+ZMeSp210U1PxfHDVVM8ZkkWoCYoPYh9VLZdOrm0zhCvdDkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AgDzAUr85P7roIVwRFfMh4yy0wPWvocZoiukW+xLKw=;
 b=a07Cy14gBEqpx79rNcYQqsKV57TEUhreZZ5YR98vzYK3LxDygxoRwSZJouXh4bnM0ICiRckYD0WGs+/r/vHK9jhgjdstT01eFmPxgnkMo1NY7TkQDJuE9Dxcg0s2Cg875tjh6IYaBIa84YvJx+bi7tS7jeU7It0BTAeGqQdSLu25HJq1MKGZGF7plVHkH47WLtvGu1/KgLscYIB3ptdjIdOLWL+AKZxO46l8ypAuc8aA1mVvuYMuNCPA8s7ydyTMjMTkULkmi/CzPfjrACxRVYQqstob/4RE/7D/4eNSikTo8SliU8DgwwvhoupYAoEznv9CRuh+pRlJxJdGBqpsAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=raithlin.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0AgDzAUr85P7roIVwRFfMh4yy0wPWvocZoiukW+xLKw=;
 b=XuWk+cQl19f0Lu7oUNuJE1tMv1hAJSiSDdgs29LS+kmEcpKXVxnIxsWRJeHGNFJYsqLwFcVL5e12SNcNJzyw4XOAzmNEj7nxwzDB16bjyLmYVF4S2pvhBITfYCGOkKEuIi7dTx57GCWzzx7mhIkdRO8Jd1b1FxtB2eqn/OJ1ukc=
Received: from HE1PR05CA0134.eurprd05.prod.outlook.com (10.170.249.149) by
 VI1PR0502MB3072.eurprd05.prod.outlook.com (10.175.26.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 15 Aug 2019 12:36:14 +0000
Received: from AM5EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::208) by HE1PR05CA0134.outlook.office365.com
 (2603:10a6:7:28::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.16 via Frontend
 Transport; Thu, 15 Aug 2019 12:36:13 +0000
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
 15.20.2178.16 via Frontend Transport; Thu, 15 Aug 2019 12:36:12 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 15 Aug 2019 15:36:12
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 15 Aug 2019 15:36:12 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 15 Aug 2019 15:36:10
 +0300
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, <linux-block@vger.kernel.org>,
 <linux-fsdevel@vger.kernel.org>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
Date: Thu, 15 Aug 2019 15:36:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801234514.7941-9-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(2980300002)(189003)(199004)(230700001)(2201001)(36756003)(5660300002)(86362001)(2906002)(31696002)(3846002)(6116002)(7736002)(7416002)(305945005)(65826007)(2616005)(476003)(126002)(486006)(26005)(186003)(16526019)(11346002)(229853002)(446003)(70206006)(70586007)(4744005)(53546011)(336012)(4326008)(2486003)(6246003)(76176011)(53936002)(50466002)(316002)(478600001)(36906005)(8936002)(16576012)(356004)(23676004)(6666004)(58126008)(110136005)(54906003)(106002)(31686004)(47776003)(65956001)(65806001)(8676002)(81156014)(81166006)(64126003)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB3072; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 49d5e323-ad65-4e91-7fc6-08d7217d289c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3072; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3072:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB3072C24994F8F301E0634F25B6AC0@VI1PR0502MB3072.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 01304918F3
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: JJKQusnZ9YbpiydBdlLayxL8/OBxfUt87G2tfK/wgm74SF0HT1vO90/c7U7QEMfJWnq/RSgf2YZQ1iLMGymg66bARHJIW5XGujbMuXhEe3K/a8ciuYbj+bRiHjwWaELLL4qvjtJgEjV+ZxgR8a54yM/KOH3kP2N5X0zG48d6E8ho/HNtHEjMHUVayV8kcm1Ad87oOysUgn0lniZ5aXk9Ll0iB88QMD86wZxwTCqBUbuAJsGXWZ5rXzkiyxKkERtUWjjd0wi87KenrdUUZA6nyEk9lng6/oMs/rozhDriy2X4C7gCBuzU/7Vt5ZigcVYW0T7gCl/8v//fFx+aCPXM41OF5BAV39CQsPT2vjbbfCNJ/HrouwnwQturDWQxKFtZ88z8KNhVcHYVZNwclHeM5B9MAOSn196Zulio91KTplQ=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2019 12:36:12.8585 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 49d5e323-ad65-4e91-7fc6-08d7217d289c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_053618_336868_2F10D506 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>, Keith
 Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/2/2019 2:45 AM, Logan Gunthorpe wrote:
> This patch rejects any new connection to the passthru-ctrl if this
> controller is already connected to a different host. At the time of
> allocating the controller we check if the subsys associated with
> the passthru ctrl is already connected to a host and reject it
> if the hostnqn differs.

This is a big limitation.

Are we plan to enable many front-end ctrl's to connect to the single 
back-end ctrl in the future ?

I guess it can be incremental to this series.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
