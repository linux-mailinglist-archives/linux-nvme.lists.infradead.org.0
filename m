Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17CE8D5D9
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 16:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qYItnjcLvLXtVV60Pkz8DB3biJ+eTZyCXEZzn2a7Des=; b=I7ppIJI39TipNTQl6HUi5iWIE
	pq2tgmq5pPkxwNXSFsAOWPFmcf6A/F/nn+Gutlb8StQNEOnG0Yqn43NMG8FAEWkw1ClTNYeSBMZyI
	xMI6NR449F044RrpqfOpItrtAgaocLU6tl7pyQPC4+jwZiN99copMKlgHbI4CxwWaJDMzd1uqyG6J
	ye0CXkRx9dmdMq5QsH7wbb1o4JDZ8l4YlH7AOl1LwYebzqlKzBconQL+/3zI34B/lDtXZ2ovibXkH
	wWkEFTty/qgHZIA0jIgmZ8gEzviGMf0WpCE/g4QeR1Dx9DH9kVhdZWDs/ooNNFU9UFWuZfLCNGrFJ
	il3gSvU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxu9U-0007yT-NT; Wed, 14 Aug 2019 14:21:24 +0000
Received: from mail-eopbgr10089.outbound.protection.outlook.com ([40.107.1.89]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxu96-0007sH-Lw
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:21:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/SC2gPq4XgNiP5olbptEibEIz483j5L46ubDwcbhwkgtXmHLCiwv601CMcD3YYkdfp9bfKN7u6U0rhLt6ghgXKWhbkucuMFGpybE0WKe3TtM/B7F+z5BfMd5KPh0q/GOQSwNDR9izzP1/+jsknup+rniI17D4QYeXDuwe1+50MMNqDQaGlqGYfPVWlm4csKFzq++ZDNSYKTFQCY8XGmwnWvUFNMxJwPxptrStO3A/e3eyTzhXui3jCY+RIdR2YoBu2ODBwxesGq6eDgQ4WWeBo0xSNrimhlRNx8mWQcSMJUpzXiuMDWq/8yKpqViYHpYoFWE5MusjzzdEANcJkCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZpJQLjo/NUIR14F4IBuuvp9+OBzmgZ1Zt139Y9cJ5w=;
 b=HEmp3LmphFf2hlZr4fdK9MdIyx/5pwGy0677mYZ5KJEVDgfq+VzLGlPqkNTfEoMH3G95eAdigircjum4IOcGTheyq9UCxTh2DS2YEVfjx4EdjakSIU5fe+Hml4zJ8tMW3BgFuzVF1T7lHSBw/mGtc/OOaBx6PtyAU7F++SBeGdRUK4XqoMsCgEPtfHYVzzKGFKP1qj7/YJ/SKWy406dMTLKlQUsMY/nEcL5Fg+0r/n8lX+3RAmR9oVZBEEfTK/byMc2dYMtBuw7LaMVMw1W2P+/xLxHEDmH7ZeRWwaKoWO0o+qyrmIhphAaT8JlFZ7NzKMl+cz0zQ3CfxBdadHFNog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=raithlin.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZpJQLjo/NUIR14F4IBuuvp9+OBzmgZ1Zt139Y9cJ5w=;
 b=UFyMy2L9wwPhYfw9oYHLAv9cqaZz4sQzpVAraEZU9YZMrrFcwfXapu/aT4yHZLNpnMFPyCoAiCz1qUfJ4lnQRj4qB91DtVV+r3oHmQhlug5YnaqRJrFRunC55ZM+Sl2/8gE76EAnJ5LJUuuMhZmm9G+TTFLQytm2pr6qXEEFULs=
Received: from DB6PR0501CA0033.eurprd05.prod.outlook.com (2603:10a6:4:67::19)
 by AM4PR05MB3476.eurprd05.prod.outlook.com (2603:10a6:205:6::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Wed, 14 Aug
 2019 14:20:54 +0000
Received: from DB5EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by DB6PR0501CA0033.outlook.office365.com
 (2603:10a6:4:67::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Wed, 14 Aug 2019 14:20:54 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT054.mail.protection.outlook.com (10.152.20.248) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 14:20:54 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 14 Aug 2019 17:20:53
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 14 Aug 2019 17:20:53 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 14 Aug 2019 17:20:51
 +0300
Subject: Re: [PATCH v7 01/14] nvme-core: introduce nvme_ctrl_get_by_path()
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, <linux-block@vger.kernel.org>,
 <linux-fsdevel@vger.kernel.org>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-2-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <e107b5f4-de8b-4dd1-2855-aa65e9f47376@mellanox.com>
Date: Wed, 14 Aug 2019 17:20:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801234514.7941-2-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(39860400002)(2980300002)(189003)(199004)(8936002)(106002)(23676004)(2906002)(478600001)(53936002)(54906003)(81156014)(81166006)(53546011)(2486003)(64126003)(8676002)(7736002)(70586007)(76176011)(305945005)(7416002)(2201001)(50466002)(70206006)(4326008)(6116002)(6246003)(3846002)(86362001)(110136005)(230700001)(229853002)(446003)(486006)(36756003)(4744005)(58126008)(31686004)(11346002)(16576012)(31696002)(65826007)(5660300002)(65956001)(65806001)(186003)(356004)(47776003)(316002)(126002)(476003)(26005)(336012)(2616005)(16526019)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR05MB3476; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff1b63c9-632d-450d-8157-08d720c29e29
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM4PR05MB3476; 
X-MS-TrafficTypeDiagnostic: AM4PR05MB3476:
X-Microsoft-Antispam-PRVS: <AM4PR05MB3476062B146377110BF9AEFFB6AD0@AM4PR05MB3476.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:462;
X-Forefront-PRVS: 01294F875B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: v0hHhiM7PGZc/VIcG2kQUoeH/3Y1SbJ8moT9JPsjPRqSUeSXZ//iB+TJ4zSHrXGO8Eqlsv4Kzt8oxiSMtV+6vfNdOQ+d1vuckxk000fGCnT1VKVe06duB8+j/pYQnADlpMpxU4u6iL9G1qu+ehoXlmBwcAdJ8FqElsh1A3QTkhKeWo3yQqSbtNzBUYXOpE8J/Iv/p6cPzlJztAwEyeaaJHbkBwJWqZ95iRbG/8WyympKuRFwF+KQAhkpuUFexHlJJSIyoUGl3ud8T+WGsiLuYO3aSdHe8fwpk98p91MRyM6MwUa5Zpix9i1S0ppQXBfXrH6YqNH/cHtJ6LLNARKJb23BPzztedhyNFaT8cmcI2XNl/2Hw9A+YKguGS/1JAfrj6G2C9eyNl0IOkPZgXE7zXODC3pzZoBu9DFpktdxM/4=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 14:20:54.2836 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff1b63c9-632d-450d-8157-08d720c29e29
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR05MB3476
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072100_722351_462571EE 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.89 listed in list.dnswl.org]
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
> nvme_ctrl_get_by_path() is analagous to blkdev_get_by_path() except it
> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
> It makes use of filp_open() to open the file and uses the private
> data to obtain a pointer to the struct nvme_ctrl. If the fops of the
> file do not match, -EINVAL is returned.
>
> The purpose of this function is to support NVMe-OF target passthru.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   drivers/nvme/host/core.c | 24 ++++++++++++++++++++++++
>   drivers/nvme/host/nvme.h |  2 ++
>   2 files changed, 26 insertions(+)


Looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
