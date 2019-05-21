Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB88224C8F
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 12:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5KLYH2pXBbfMvhFpVTOJt1Ey1hLcyHHEaa9gY3DHnBM=; b=NgYYvCk6Hy23aohl7xGrN1JXN
	EGpJrRuEU/3i1UMKCLeVgjVz00RVJKYDCBQYE48SwwUcUDX5JmVtRKbHl0w2QCt8tO4oYvGO9RYhc
	oXzDuQ70MskpZtXtCz4s+mDKDnEcrSf0AfcY5tBtXRFhvNdHghTqS7PcCh3a/esBW/06g4tm6c42n
	idxHngv0nZYyLlPiENkFxWWkRpZMHTFqLYJpDqIM4qB4X/HE/l1TbqATKE1qLATKQpgyBz3n7JnC1
	+IfojCv0+rZy3MGgY6Zax9xKrIy2U+H1faaXjSPRoJ+fcyUKn++LasUpI0lWL4LVoA+4egKbhIgbX
	atAklLpzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1u4-0003Ok-Q1; Tue, 21 May 2019 10:21:52 +0000
Received: from mail-eopbgr140080.outbound.protection.outlook.com
 ([40.107.14.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1tz-0003OO-65
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 10:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMg2VwEPaq3Rric+8SehXW41e4SqiDzGJVUkaBugIW0=;
 b=Aun+/qA1D6uSKFxS4CbbZ0JVgIsP0xc3enT4vmxrdq4BNv1cQs3DDTpR4qjDF7hzlKmpTqUO5ozooCKjnXtrIcez9KKugYtQd7yR4+zHZQIAPlQvC9tOITQ0orN8f/hnr/4G0agc6MeKm6YWuoigw1AQOn057xBg9nK9b5S5Crc=
Received: from HE1PR05CA0235.eurprd05.prod.outlook.com (10.171.141.11) by
 HE1PR0502MB3020.eurprd05.prod.outlook.com (10.175.32.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 10:21:42 +0000
Received: from VE1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by HE1PR05CA0235.outlook.office365.com
 (2603:10a6:3:fb::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Tue, 21 May 2019 10:21:42 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT008.mail.protection.outlook.com (10.152.18.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 10:21:42 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 13:21:41
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 13:21:41 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 13:21:39
 +0300
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
To: Ming Lei <ming.lei@redhat.com>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
 <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
 <20190521094535.GA28632@ming.t460p>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <7a4863ba-ece9-e3fa-8396-21736d54e1fe@mellanox.com>
Date: Tue, 21 May 2019 13:21:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521094535.GA28632@ming.t460p>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(376002)(2980300002)(199004)(189003)(186003)(26005)(77096007)(81156014)(8676002)(81166006)(356004)(53546011)(230700001)(86362001)(31696002)(5660300002)(16526019)(8936002)(229853002)(106002)(54906003)(76176011)(2486003)(23676004)(31686004)(6916009)(36756003)(16576012)(316002)(58126008)(67846002)(2906002)(7416002)(305945005)(14444005)(64126003)(7736002)(3846002)(6116002)(65826007)(6246003)(4326008)(50466002)(47776003)(486006)(476003)(2616005)(11346002)(126002)(70586007)(336012)(70206006)(65806001)(65956001)(446003)(478600001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3020; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8129def-3bfa-41f1-9e9f-08d6ddd61e87
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3020; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3020:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB30209DD3D9A040893B3246FDB6070@HE1PR0502MB3020.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 4t+Zxe6W3mK6VxTbkcGQH4IQSx3SsH6lhn0+1LvdRQ37X/5eMFdE+o3CKEm/IG6Oa4gMj9kO+zKR5ZVP3QKyNjsSuxzE3tNbgh7neluD35jugzVtCYOJWYYngXg8lv3LffRfVL+Kk8GlidwgUBPovWvVxGnjMiqmC+Oala5v+HwSJIliWcXEaAYyW80psc6v+EBjN7hCuKlQqkowf/uq9XNn5fkU2CGnD2TRY78F+0lXSYY5ABUbHUVpAoyw57z+LFGidJ8lHXfl7zN47yuvoOrP//AOKoS9ZDz281c66DnJDi4MVQBfG/tWxwvOxdvKOKAYESE/pvTQ/XeGzDDia235gWAt6KO02GT6i2wREYD+lYy3+8GZy14rWpDh3h2HJ8T8MPHqDmoV2PdSYNOqxP6u+TXZbzW9h3jEPWHrXdI=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 10:21:42.1275 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8129def-3bfa-41f1-9e9f-08d6ddd61e87
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032147_227182_5ADC3D65 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.80 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph
 Hellwig <hch@lst.de>, Bart Van Assche <bvanassche@acm.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/21/2019 12:45 PM, Ming Lei wrote:
> On Tue, May 21, 2019 at 11:36:26AM +0300, Max Gurtovoy wrote:
>> On 5/9/2019 9:42 PM, Greg Kroah-Hartman wrote:
>>> [ Upstream commit eb3afb75b57c28599af0dfa03a99579d410749e9 ]
>>>
>>> nvme_cancel_request() is used in error handler, and it is always
>>> reliable to cancel request synchronously, and avoids possible race
>>> in which request may be completed after real hw queue is destroyed.
>> Ming,
>>
>> If the completion is async in the block layer, can't a "good" request (not a
>> canceled one..) complete after real HW queue is destroyed ?
> In theory, it can't.
>
> 1) in case of error recovery
>
> It is driver's responsibility to sync normal completion and handling
> error. NVMe PCI calls nvme_dev_disable() to shutdown controller, and
> there won't be good request any more after nvme_dev_disable() returns.
> I am not very familiar with NVMe RDMA code, but nvme_rdma_stop_io_queues()
> is supposed to do that for avoiding race with normal completion. Otherwise,
> it isn't enough by simply canceling in-flight requests.

Indeed nvme_rdma_stop_io_queues will guaranty that we won't get anything 
from the wire/HCA anymore.


But what happens to IO's that were completed before 
"nvme_rdma_stop_io_queues" in async way:

1. nvme_end_request --> blk_mq_complete_request (async)

2. error recovery starts (queues are stopped)

3. block layer calls ops->complete(rq) on rq from step #1

if the blk_mq_quiesce_queue + blk_mq_unquiesce_queue don't sync the 
requests from #1, i think it might be problematic..


>
> 2) in case of device removal
> blk_cleanup_queue() drains all in-queue requests, so there can't be
> such issue.
>
>
> Thanks,
> Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
