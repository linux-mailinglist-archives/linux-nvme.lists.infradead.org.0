Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E9C18A939
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 00:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlFwthfCS6pXd/194vytzbC1iy33LA9e7TfQDixBSlg=; b=adfJM24PCXvouU
	SOSk7yUwRyg3kO9A17hQN/rbfIAO+3t3oys0FuHgkUzjAz2YVW9+oG1JX1Q57YEgjx/aSqSKeB6rm
	3PBWH+Mo9DdWxaUFC8kD4fy7LCVJufCw0t4Hm2M5L2gI6K7OGr40GjeBg9PuI0ueYrLpFGEy8WTUQ
	j2hCsyrMXxTyMiefmE+578n+dm7Qz5uLjJZo2kQP4pjc/QnEqA0rtHwB9+NTfXkGY1pM3h27noNRU
	Qe2aNbJ5pYaeKabp0iCx5b0SDrKWRX0WIb3+H32qIW5s1NWZLe53rtIoDTW7KcsUXlBzxJ6qnbYKw
	mg6Vz+7m5o+R1Ix4e52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEiBa-0002bG-B3; Wed, 18 Mar 2020 23:33:18 +0000
Received: from mail-db5eur03on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::60b]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEiBV-0002aA-J3
 for linux-nvme@lists.infradead.org; Wed, 18 Mar 2020 23:33:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aDPRRq0KWPQm0IuezPQTwN9N2W2bGb9fdRpL4RQOdmR9/3VbibdW8HeQ9YcitlHff+hBrFIaO02ye8p5Ys6JA5w25uMqPPh7iZc2TWCgQJbM2ChEvPU8ZFiEdaaN4C0CZnuD2RPkkxIFPTGaYMSlLNSiFd02Xx4B63Owu7DR5keQrfKspeGliCx5c9e2wppLHieKE7MMU9TRoe+HFIj0za4mSZ3gZ9fYVYqSLVgBpOxf8azvaVEKb7Ufvjj3waJK0vR9zL5g+RoTlMeNy2E4ws/18awFts05Lg7fnE8ih2HsRB2AtgA+M9tBWHmAT6HXIwzB6HTZXnCtpn7a+It2Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvvA96gT6mIdEkGtAzEPJv+esKy4XsBFod1+z0Z9pCA=;
 b=k3GeCv3txMmDtZ+mmA1caOiqMk7bcbAOZzRJ8WmUad8iuA1xkHc9pjiqMlBM0ckc0Sc6lqe5JrO6h2vI0lr78eevBiNP9jCQYLYFBdOezI5dXKcFGtoS11fACHT+kLUSnDc4p98oBDi8Lwc2hvGyOYjx+C5LF8TPp6ZdwmuzG5OnlVPQXqMDg0bcxS0tiSG0AW3aIzK50zHfJRChy6CsAbx8qL2lEMhrw4dAPo6nibZpvqz/bl8lISjH/8LZSQQU8YMLhFPlP3zNnjK/5WST3S6ihNFPJI0b/cNcpatV0hLjJtMIY6HNM+Wipao0lHcgRM5XUlUDpyv4ExQCXsQt3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RvvA96gT6mIdEkGtAzEPJv+esKy4XsBFod1+z0Z9pCA=;
 b=FG70YrHD2sSwWpt1QWKeXg9A68/FcBLjwoUcHaMYB12v9vZ2nv29VExwSckeXclo/7y3ItpxIFISZZymmw3Ru5JBX/GQOUnx9JKSpTWsYM6qzgPWpO8YKhL4n7bzrSFTk+sWO1fFfzglOrd9OtrbNzABnq4B11PxHg8GmRxoyoc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (52.133.14.15) by
 VI1PR05MB3373.eurprd05.prod.outlook.com (10.170.239.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19; Wed, 18 Mar 2020 23:33:02 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::18d2:a9ea:519:add3]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::18d2:a9ea:519:add3%7]) with mapi id 15.20.2814.025; Wed, 18 Mar 2020
 23:33:02 +0000
Date: Wed, 18 Mar 2020 20:32:58 -0300
From: Jason Gunthorpe <jgg@mellanox.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 2/5] nvmet-rdma: add srq pointer to rdma_cmd
Message-ID: <20200318233258.GR13183@mellanox.com>
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-3-maxg@mellanox.com>
Content-Disposition: inline
In-Reply-To: <20200318150257.198402-3-maxg@mellanox.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: MN2PR10CA0005.namprd10.prod.outlook.com
 (2603:10b6:208:120::18) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:44::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (142.68.57.212) by
 MN2PR10CA0005.namprd10.prod.outlook.com (2603:10b6:208:120::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Wed, 18 Mar 2020 23:33:01 +0000
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)	(envelope-from
 <jgg@mellanox.com>)	id 1jEiBG-0004wM-El; Wed, 18 Mar 2020 20:32:58 -0300
X-Originating-IP: [142.68.57.212]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7b6c882a-1775-47a2-eff9-08d7cb94b344
X-MS-TrafficTypeDiagnostic: VI1PR05MB3373:|VI1PR05MB3373:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB3373F2341B4E5BE782D18B7CCFF70@VI1PR05MB3373.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(366004)(199004)(6862004)(81166006)(6636002)(81156014)(478600001)(52116002)(86362001)(33656002)(316002)(1076003)(26005)(8936002)(2616005)(2906002)(9786002)(186003)(5660300002)(8676002)(9746002)(4326008)(36756003)(37006003)(966005)(66946007)(66556008)(66476007)(4744005)(24400500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB3373;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YDti3UYrOzm+e/Yom8ydpybvssirTQwsE0HAQNRs2YNRmqqMtXAcljbuUa7o+5HqeUUHZVq82OS2210CcFLSYBKguKezjctruzQZ40gZzWxBQQr9TlDhqpgSBhnkfyM/bojelM9jFXTPgTEN7d4xpekLI/pmpZOHWqGvJnTpJkiXOW9RexWlP5kgM17iWAPgNDr79SAIpj2XleOqGDkte4MwaWTBKYekDAOK/5NlpTo+YD/1ZigfFCsnClCiujcRwgJuIlmDqtcAsxANn+YCxNOfGKWKHD89cpYY/4RK2nn5bUtVC8XZGA/geikTSjVH9V2v38jvd8raPivysTA2IgElhLpPw978UH3IPRyJYtnM1w12T/VvVSsNB58eYFI9hE+HndCon81YWCPjaeuKuAl57Hud663UDg4Eo86gn4pkkyIkvbe0W/L0edYxkxhsAuMhS2SoatlljGb3Ts339WCVU2nz671hiL73EpKlLYkG/CIPVSHkbgk3SWizV3XMcdB8e86Fi9yLvJfLubbhTekPEMjRy9nMHh/Qa2Bj+hibGMj/QIffa8Pbv7SIi4xJ3k+6rWqP1Y+jZmTSx5v+mg==
X-MS-Exchange-AntiSpam-MessageData: SmNKsTQUxs+xRnUu9IY/WIbfmSUbrG5Pyx8oTtVoTu9bhYetvSsLnoM4yNecXPKgpuP5eRzVVJxm/DaaCAcv/Ti/CxAaGT7EV/NXHthO/hmu8UgbURyXmbldOsGFopZHckjZkHQxKZSuCJDT/+NYRg==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b6c882a-1775-47a2-eff9-08d7cb94b344
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 23:33:02.1281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sUA5z9MxKHOpDa+xmzPk+hzVn7PkQP+Q1+RgvzMpQjfo1uuoR2+04EO7SzfYSdTT1PFguRtukoDrtWWp1pdpDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_163313_631612_5A27FFCD 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: loberman@redhat.com, bvanassche@acm.org, vladimirk@mellanox.com,
 idanb@mellanox.com, linux-rdma@vger.kernel.org, shlomin@mellanox.com,
 linux-nvme@lists.infradead.org, leonro@mellanox.com, dledford@redhat.com,
 oren@mellanox.com, kbusch@kernel.org, rgirase@redhat.com, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 05:02:54PM +0200, Max Gurtovoy wrote:
> This is a preparetion patch for the SRQ per completion vector feature.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/target/rdma.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Max, how are you sending these emails, and why don't they thread
properly on patchworks:

https://patchwork.kernel.org/project/linux-rdma/list/?series=258271

This patch is missing from the series

v1 had the same issue

Very strange. Can you fix it?

Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
