Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4057A7EC0
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 11:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KHHrxZ5cOY9x/zh49RghRjA+Ig+ndOrBf+S+4pjwh60=; b=bzpdzLGqBfojMi3VGtUjOuuiW
	LlWxoECqJc67tAyD/T8oR9DIYkv0QzTUAQFe3XZwSiltjueOJsb8R46mqwinA1bFLiJa4xU9RNNQG
	2hK50Lap9XpS1r/5NEiwNXNoag471XpvS2u3xBSwt7A/N0qmnAC+6zK7T7N/vwXGz72B1qqzBCEjS
	W52FU6l0uMqBGPYzNdFdndFm/Cpx2uf6I3dWl+Lr10yGiE36ND8L4VebOYuMxH715ZGOd2UBgD2/1
	6JcCl6GEEx3qvI/CnNrpk2yU5I8r2v00IdUH8ivBuBxf+EDS5PlyC0yYzLZ490CTwnYMCEWTLaTSo
	qygC4LFFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RCR-0001yr-4E; Wed, 04 Sep 2019 09:03:35 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RCJ-0001xZ-2G
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 09:03:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnyKbh8Iclnmlrko6z8/iRiIUCGmUgc+ycDTfU+NYe1uvPAy69W09cXdmrnV4ya8uJwj+DFGz4mkDBPOVa2IS2I3jVuJk+YSJHBhQpm6lmJMe6yLy5Opu0+pbosHdSC6X0aiU7128YSZ+LsWLIT9OpeCYZHtZEjYb5zHolDz5praDfCBUH1DMTSnNvV0loKiPlPP4OY4KDENfdAgpsGTeAllVbK30JClCoJY88kMAuJxbkz8O983OeB4pr2abO4F+MRTFJYzQX+1SLLs/jJ1qkCsp9bqmA6iMHy0hrhQDvqlU4rDs0OBOcs3R32XYxxghYVmPl0djcDXAWsQ9VOuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ArAdNnsU1Gm3/p2my9ZXjJgrqNpjh1uh1+VnEV3Vppo=;
 b=XllR1BYLF7igJ0bTlz45bn8LqTi0NHbuwkIGfptyz2588UxHtAjQtJImHqexs8hFstWqPz1lekhzt/KmRTDCYN2eBVGrZpxuUTmIkYMI6p4REyCgj1HEeBBxks5Yfg7BykKrcThI6vaEmk70eyEL2j3M6ZyWNlqavvkCpahfLndT4BFUqKVA2vsT2qFkKUzA24EXRbi93NU5cgTgpythpzUarixyhGRLZA20WvBCRlsL2DvVD4rB2i8nZ8gXapuTxKpUtZua45PFMf7BWVIVS8u91FN2FK0g2uvZo2o8JQJuQj3t+tGr81fAk7x4x/IL0G1oZvIg8IK2HKRQ4I8u9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=intel.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ArAdNnsU1Gm3/p2my9ZXjJgrqNpjh1uh1+VnEV3Vppo=;
 b=mfJ8Iq9ahZPJMy2bckqsw6Iukm1sYJfmJ/y6QYmnRy5rDmGCuV2ZaDGo6zM+dX2sKV8rVGNRecnznE1i9nsT9YWtvTsO7jyM//WNk+uiYJqO7pgZ8QlT+8+TQ6ppBfhfYSgAvqOPW7X+3s7y+uxr2tv/ZZemno+8Q0D1Fkjwe+w=
Received: from VI1PR0502CA0002.eurprd05.prod.outlook.com (2603:10a6:803:1::15)
 by AM6PR05MB4856.eurprd05.prod.outlook.com (2603:10a6:20b:b::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.21; Wed, 4 Sep
 2019 09:03:21 +0000
Received: from DB5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::208) by VI1PR0502CA0002.outlook.office365.com
 (2603:10a6:803:1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.14 via Frontend
 Transport; Wed, 4 Sep 2019 09:03:21 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT003.mail.protection.outlook.com (10.152.20.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2241.14 via Frontend Transport; Wed, 4 Sep 2019 09:03:20 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 4 Sep 2019 12:03:18
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 4 Sep 2019 12:03:18 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 4 Sep 2019 12:02:30
 +0300
Subject: Re: [PATCH 3/4] nvme-tcp: introduce nvme_tcp_complete_rq callback
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
References: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
 <1567523655-23989-3-git-send-email-maxg@mellanox.com>
 <c5757c95-2a4f-410d-a275-85d8c9da737f@grimberg.me>
 <20190904055419.GD10553@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <a2cb1685-2e44-ae7d-5586-b24d9f332ac4@mellanox.com>
Date: Wed, 4 Sep 2019 12:02:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904055419.GD10553@lst.de>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39860400002)(2980300002)(189003)(199004)(31696002)(3846002)(50466002)(6116002)(7736002)(5660300002)(65956001)(65806001)(70586007)(230700001)(86362001)(81156014)(81166006)(2906002)(336012)(106002)(229853002)(8936002)(8676002)(186003)(316002)(26005)(6246003)(58126008)(4326008)(107886003)(36756003)(16576012)(356004)(31686004)(478600001)(54906003)(2486003)(23676004)(76176011)(47776003)(70206006)(305945005)(110136005)(446003)(11346002)(126002)(2616005)(476003)(486006)(53936002)(53546011)(16526019)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB4856; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7093f6e8-3ad5-4d86-3722-08d73116bc24
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR05MB4856; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB4856:
X-Microsoft-Antispam-PRVS: <AM6PR05MB4856C80C1F3FE14FC67279D6B6B80@AM6PR05MB4856.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0150F3F97D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: +8ifLddACJlE8NhxCGvSwpSTwlakV9yMKtbbzbM3K4/UdXoke0y2bKnyD3Id/ITMIpdolX75aAH+/TvYfSvb4+cpb2Sh0TxkZONHjHTizhpXKfMES6hOFioHGtCG9fXo/9tljhUIMz+uDj0gCgJWLPy4t7wwSUp8wVEpOGFTgv/z44198zJ/qTB5q3vqh/RuLE8VrLBu1caRirKK2V17E3nn976S3DW1Bk8QJekQa6r2tWuchxeIBnlsDmPhLxCTqlglUVYBvRsPq++LnKChqrPbHm2B1S5luTmKjOHh8O+44E7fSoctfUyYibVmCa2eyWGcJQUFF5tD9o8za79ihyZf90Ow8mG4/t47PntgveQNHPo0cx228mAJGoppT3uyy959eT4j+OC2NWaqWFQQmIq/bcyc4Kk1WeWnxaDJy6k=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2019 09:03:20.9614 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7093f6e8-3ad5-4d86-3722-08d73116bc24
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_020327_111139_281D5877 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@kernel.dk, keith.busch@intel.com, martin.petersen@oracle.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 9/4/2019 8:54 AM, Christoph Hellwig wrote:
> On Tue, Sep 03, 2019 at 12:15:48PM -0700, Sagi Grimberg wrote:
>>> The nvme_cleanup_cmd function should be called to avoid resource leakage
>>> (it's the opposite to nvme_setup_cmd). Fix the error flow during command
>>> submission and also fix the missing call in command completion.
>> Is it always called with nvme_complete_rq? Why not just put it there?
> Yes, unless I am missing something we could call nvme_cleanup_cmd
> at the beginning of nvme_complete_rq.

This will cause change is error flow in nvme_fc but I can check this.

>
> Max, can you send one series for all the nvme_cleanup_cmd fixes and
> cleanups and split that from the PI work?  That might be a little
> less confusing.

Yes I will. There is a connection between the patches but for now only 
the nvme-pci supports T10 in the nvme subsystem, we can separate them.

There will be still a small gap in the error flow of the pci driver that 
will call nvme_cleanup_cmd and do the t10 remap that he shouldn't (but 
that's the behavior today)


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
