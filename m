Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 645651E20F1
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 13:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFRjCCVhNhkYc8ZzMNaaQEvCnbXRZGq+fMnImZ8FgO0=; b=XS/ATtPzdkZycR
	2IVPIDzEYLRGFDzrhT6QVTyqqLNJ/PwM+cDYlCS6Ibd4cJnIAzyZ7C9ciB2fM5y6cTFMxGe1aN4FU
	PIDnMVX598wInLeV+MTWYqO+n/j22QFl81AE+5AzIP+aEYyghsMNwzFindDvVN11LpihrYOpY+65G
	KxsRaJisOvErdfMU0YGBiealS3bazw6brynEVoQQMwUncQuK7UspIa8wM+8VBQncAxP2Y+gK6WEWv
	zjgbLUl3jJ8vE7EE8KjY0ewfVG1mFNnktipeLIzKkG4iwNz3764k/vthXzQLw5nHWG3iipXiZD9E2
	jaq7J0+MP0AiC4WEJTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXrA-0008TL-Ga; Tue, 26 May 2020 11:34:52 +0000
Received: from mail-eopbgr40072.outbound.protection.outlook.com ([40.107.4.72]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXr6-0008Sg-3t
 for linux-nvme@lists.infradead.org; Tue, 26 May 2020 11:34:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hg7OHtzJ94PNxkxfxbXS4xHGjDNSPJLywghrAp4rAUEUvDh5O7awGZ2WuXm8EkAsUXzSSChMl9VUMOtePC+a/pXoCHAlbG/HWQWSdle2SHGe3yK2BfZBrNV0wwRccOXlqTS5DC0TYD/6f66oPY5m4AMCKpi7aJ5ESR+Vxx05KmUNNKOsH3rkJ1qCIqmeoLXPznTSrPSwDFuBgK9G0O/C8KRoEWSQtYWFmyg19FAERZJpdD5VTK/O59v3UEcOzMYjMHaK3tz2p1Osgm39dOTamouhv+VW9IPHzqSZutXmyD8SRg5U7g2LO/k0oUfc0J2MzLAhPPH8GN9pv4cn+fW5ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5TrDQmFninneD/5s9zTgEpe3nZ5R0K0SDrq68I1PdE=;
 b=b8CfG6cyWnYBkyKr3FGe+J04g2QmR1gy2NBf6JgYoQfSEBvOY6lI0vPhZWDqxyiFwHrIviISAb72WOpQBOGghclWlynLygR6Cxm2/h0IklKA9ZOUCzjili9ckJqtrlno/dpnaPSXtv93dpzGshXFYmLfu49xOI8my18QV4YySA4uTXlTn+n7Z9FM6PE93PYDdmlBmtUcMI5RY/BgUeIerb5TqTI1wkpq2pNKOHT17LbBN6PJFng1RCKvV0Of80PK4ZjRejCOvzH6Gnc6oz7m6f9PHD5ZW6nwJarvYy73zJ817/4odDaKJu3wAPlI57gj74wJ026V4/4yqVzAWvdyNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5TrDQmFninneD/5s9zTgEpe3nZ5R0K0SDrq68I1PdE=;
 b=PRCuYmnE5WZBRW1ddv620g07xCsI9enz1wjEHrNSi4Zm16tyzfuoXMzCQvjw4Lga5u05+hw2YXdC36moOuVJ4RG26qs+qQXybIt3lhh5jxHoaEI/4jOZEhNz4r1gSDZlw6snLAiD0ytFzwewqmTOZma7swCQ9lY9W7Br0giUaBQ=
Authentication-Results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM6PR05MB6408.eurprd05.prod.outlook.com (2603:10a6:20b:b8::23)
 by AM6PR05MB4984.eurprd05.prod.outlook.com (2603:10a6:20b:4::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Tue, 26 May
 2020 11:34:42 +0000
Received: from AM6PR05MB6408.eurprd05.prod.outlook.com
 ([fe80::1466:c39b:c016:3301]) by AM6PR05MB6408.eurprd05.prod.outlook.com
 ([fe80::1466:c39b:c016:3301%4]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 11:34:41 +0000
Date: Tue, 26 May 2020 14:36:28 +0300
From: Leon Romanovsky <leonro@mellanox.com>
To: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@mellanox.com>
Subject: Re: [PATCH rdma-next v3 6/6] RDMA/cma: Provide ECE reject reason
Message-ID: <20200526113628.GC100179@unreal>
References: <20200526103304.196371-1-leon@kernel.org>
 <20200526103304.196371-7-leon@kernel.org>
Content-Disposition: inline
In-Reply-To: <20200526103304.196371-7-leon@kernel.org>
X-ClientProxiedBy: AM0PR02CA0010.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::23) To AM6PR05MB6408.eurprd05.prod.outlook.com
 (2603:10a6:20b:b8::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a00:a040:183:2d::a43) by
 AM0PR02CA0010.eurprd02.prod.outlook.com (2603:10a6:208:3e::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27 via Frontend Transport; Tue, 26 May 2020 11:34:41 +0000
X-Originating-IP: [2a00:a040:183:2d::a43]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 215cd39b-a6c9-482f-d29a-08d80168c803
X-MS-TrafficTypeDiagnostic: AM6PR05MB4984:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB49842207410BAB993BC722C8B0B00@AM6PR05MB4984.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0K5I3zBIGTHL+8rCzAvDlRh9wz18l9yRjspFzVPMd9jO7ASPn5VAjyWdw6rg/eXKHC/yKwsBayg2EiFek9Tp+awO6BdYr5QIJ9YoxbdkPikoj3cOApg3IMfyH5olFVYu+QpvAb4/XoYUHgdNYMitjB5hr9+wLjQHjmdiQePUG87sdh6gcbXTSc5DIaHGiSKZMSe5e8npSTAqa6cIgZYxu0yttw2Bqaaw7iJq+Lcvmp7dvoJCE7/yUP0ll13xPGLJQJweECHoFEkFGka2O5HRHlhHi/cgJZkoy6tCj2rN5YletPA7K/+cTm5kAnsPeLLh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR05MB6408.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(7916004)(366004)(136003)(39860400002)(396003)(376002)(346002)(4326008)(6496006)(8676002)(9686003)(16526019)(186003)(6486002)(33656002)(52116002)(8936002)(1076003)(33716001)(6666004)(478600001)(110136005)(316002)(66946007)(2906002)(86362001)(66476007)(54906003)(66556008)(7416002)(5660300002)(6636002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GcV+0B5o+BRIR5LF+ZmyfObcaug4qX5iSlYkDIdzRiTrrYsgCZIlFsnObH/uKJUuW4tYj3Rk8Bg+3N2RcPnIg49Y+ENne95uJzjodEgvA2a7vfJlChbjz1WVJ00VT1ZeLid/ESbbTAWIvUqbmUfUQI/as/aQIQ6DKpxSSgw5v+PwDaDKLBzDwUAJHiirESJlNsiIaLUlXkzbQXyfsg7C5EsY5OkxTSGfROvYQzFPJYkCTj0qwa2nfP4y6LFLL4StSDTLKOsUOp45N5pT88XGqYnAnDyNqIRz1oDpoxNREgTD8R/dJuS9c9LvYqG2b3POH3rl/8wWhBIn2RY1hgjdn7WnbE8TQT58J4UK7M5srGNUXHX0YKgdoIsB2lfO2bHDSWLRHQUzvlzvX6prUMCrZWkjT3KglEnzyvpBh4qaDHJx4CH1acPDW+8lLYs+B92yx6x8s935iQghnpUIzRbsfu1OMZAyIXZM7RVJczLtPsJVdov+iKf3sEkwAK/1oxRpFY4MhtoyVbxQthQfpSS6Rg==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 215cd39b-a6c9-482f-d29a-08d80168c803
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 11:34:41.9024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h2/K7CFHfV0q+nDYKHQaEiMNOYatK/iXMdNZutpwHw5+ux2XVtZQzUz3hmto3izbSqMbeqbJY578Yr7X+wx0EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_043448_221854_BE12DAAE 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: rds-devel@oss.oracle.com, Bart Van Assche <bvanassche@acm.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 target-devel@vger.kernel.org, Danil Kipnis <danil.kipnis@cloud.ionos.com>,
 Jakub Kicinski <kuba@kernel.org>, Jack Wang <jinpu.wang@cloud.ionos.com>,
 "David S. Miller" <davem@davemloft.net>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 01:33:04PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@mellanox.com>
>
> IBTA declares "vendor option not supported" reject reason in REJ
> messages if passive side doesn't want to accept proposed ECE options.
>
> Due to the fact that ECE is managed by userspace, there is a need to let
> users to provide such rejected reason.
>
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>  drivers/infiniband/core/cma.c           |  9 ++++-----
>  drivers/infiniband/core/ucma.c          | 15 ++++++++++++++-
>  drivers/infiniband/ulp/isert/ib_isert.c |  4 ++--
>  drivers/infiniband/ulp/rtrs/rtrs-srv.c  |  2 +-
>  drivers/infiniband/ulp/srpt/ib_srpt.c   |  3 ++-
>  drivers/nvme/target/rdma.c              |  3 ++-
>  include/rdma/rdma_cm.h                  |  2 +-
>  include/uapi/rdma/rdma_user_cm.h        |  3 ++-
>  net/rds/ib_cm.c                         |  4 +++-
>  9 files changed, 31 insertions(+), 14 deletions(-)

For some reason didn't get the failure in CI, this small fixup is
needed.

commit af02a4a50ec0d18fe9bfb86b96411dfb42054f97 (HEAD -> rdma-next)
Author: Leon Romanovsky <leon@kernel.org>
Date:   Tue May 26 14:34:34 2020 +0300

    fixup! RDMA/cma: Provide ECE reject reason

    Signed-off-by: Leon Romanovsky <leonro@mellanox.com>

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 30a0a9adaddd..d84765f66d49 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -18,6 +18,7 @@
 #include <asm/unaligned.h>

 #include <rdma/ib_verbs.h>
+#include <rdma/ib_cm.h>
 #include <rdma/rdma_cm.h>
 #include <rdma/rw.h>


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
