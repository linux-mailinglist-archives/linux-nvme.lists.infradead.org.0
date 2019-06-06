Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA0F36D76
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 09:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rR0R4HfH4JbrTbxrEN/i4nYcRu04qocAB/MweHhgJJY=; b=hr3lGiUhS/fhAiMWSMoLq1rG/
	cmC+a9QCP10Yf/UJUhaMibG5nJdp7xA8/57uZTeUFT4L4LqXlUHnzzzTMh54p7KI4OeIoMLB36odY
	8LUI4pK+y0fiYWuDHx3Q9M0Dy9ZsaP/X+l57tO9YdQR5yYahQn+s4imK1RL19V0Sk1TJLJmQZNxo0
	UCxmQMUlhXyQFiCE5D6xoGc70oEWgT5UkVZGOBl6AERRLZF1eu3m1n4PmfmL5e33Fz8jrjDQOHw2j
	G6oYvuxopu0yU6oHrUgTVp4//R9hb7vDChZcsWLLUSUh25RDoWqtPZM5QwfKJnhl592vMyolgnpJt
	XNcCR5vsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmzR-00013F-Qo; Thu, 06 Jun 2019 07:39:13 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmzM-00012v-Kv
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 07:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=41yBThYDF7Gz1mDyNJqjK18ETkDvDUhC9IrQNAq4yYE=;
 b=byM5LCTNlqf/KHc/oENBUS3yPc5tVZdMxwyHD9va4X6aX3anemkZbyak6IWwjOgfoM9JvBz9OBkzb/uu1tAb+alq3ZzSDC6MjnZWMOCXt3nSI/shv+tf5DlGa2NebcU6trMzoiIwxnQQqtugfOR8BKFLYG6BIrmFfGK6KsEwang=
Received: from HE1PR0501CA0025.eurprd05.prod.outlook.com (2603:10a6:3:1a::35)
 by AM0PR0502MB4051.eurprd05.prod.outlook.com (2603:10a6:208:2::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12; Thu, 6 Jun
 2019 07:39:04 +0000
Received: from AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by HE1PR0501CA0025.outlook.office365.com
 (2603:10a6:3:1a::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.18 via Frontend
 Transport; Thu, 6 Jun 2019 07:39:04 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT018.mail.protection.outlook.com (10.152.16.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Thu, 6 Jun 2019 07:39:03 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 6 Jun 2019 10:39:03
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 6 Jun 2019 10:39:03 +0300
Received: from [172.16.0.41] (172.16.0.41) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 6 Jun 2019 10:38:09
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
To: Christoph Hellwig <hch@lst.de>
References: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
 <20190606064537.GE27033@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <7db16b61-f29a-2fe9-5e58-8f84d208016e@mellanox.com>
Date: Thu, 6 Jun 2019 10:38:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606064537.GE27033@lst.de>
Content-Language: en-US
X-Originating-IP: [172.16.0.41]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(346002)(376002)(39860400002)(2980300002)(189003)(199004)(476003)(4326008)(2616005)(126002)(486006)(16526019)(11346002)(446003)(561944003)(7736002)(305945005)(65826007)(81156014)(81166006)(8676002)(8936002)(31686004)(336012)(23676004)(6916009)(2486003)(76176011)(67846002)(186003)(54906003)(77096007)(26005)(53546011)(58126008)(316002)(16576012)(230700001)(36756003)(106002)(2906002)(47776003)(107886003)(65806001)(6246003)(229853002)(65956001)(6116002)(3846002)(478600001)(64126003)(356004)(70586007)(5660300002)(86362001)(70206006)(31696002)(50466002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0502MB4051; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d612e7b-0228-4a71-8870-08d6ea520cbc
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR0502MB4051; 
X-MS-TrafficTypeDiagnostic: AM0PR0502MB4051:
X-Microsoft-Antispam-PRVS: <AM0PR0502MB4051A0A0CB57F65297F156B2B6170@AM0PR0502MB4051.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 00603B7EEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: YFFcgaaSxuKPui8nhGZMh2gv62x8hcMHYHUjKvyfdWawaWbliWAiB445vEw+/eye9XQKSshSYUFCOdB1e8rDr+1LOQKDQp9E2Dt2sMg59I6ufx1xGIrf9l9JntSSfE4lS4ZDjTAn1M+2Igi+lXUXwzoliXxS7uicyEwxrJ3234RvcoIHgtYHTZAgb7rrLm9+qeuA/0SGOk6ArWAnj1zZwjgcyUrMQERThB+QULitLcxX0DHas+bO4P3iYp7JeuMen0QOJz/KxvFn/N8HkKHr5voPRsqNFZiZph4iUQQixLpZ9df/C6WQLE5m9Vhl4PvHkEW7Lv4URxislG6JQX83InguLzzBASBgn6u48JcJF+YwGAHHx/F12l55qlzXuTQYfSDUfn2lzK5xrW1/p5e6XHu9ocHYge7Mj0/JiHWPlL4=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2019 07:39:03.8962 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d612e7b-0228-4a71-8870-08d6ea520cbc
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB4051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_003908_689398_D7529AAB 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: shlomin@mellanox.com, israelr@mellanox.com, james.r.harris@intel.com,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 6/6/2019 9:45 AM, Christoph Hellwig wrote:
>> Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
>> Suggested-by: Sagi Grimberg <sagi@grimberg.me>
>> Tested-by: Jim Harris <james.r.harris@intel.com>
> Shouldn't this also have a reported-by?

Yes we can, actually we saw it also in our labs even before Jim did and 
I sent a different fix before Sagi's dma map/unmap proposal.

I'll add reported-by Jim.


>
>> -static void nvme_rdma_free_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
>> -		size_t capsule_size, enum dma_data_direction dir)
>> +static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
>> +		struct nvme_rdma_qe *qe, size_t capsule_size,
>> +		enum dma_data_direction dir)
>>   {
>>   	ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
>>   	kfree(qe->data);
>>   }
>>   
>> -static int nvme_rdma_alloc_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
>> -		size_t capsule_size, enum dma_data_direction dir)
>> +static int nvme_rdma_alloc_mapped_qe(struct ib_device *ibdev,
>> +		struct nvme_rdma_qe *qe, size_t capsule_size,
>> +		enum dma_data_direction dir)
> I agree with Sagi that we probably should drop the renames.

ok.


> Can you write out the explanation somewhere why the AEN SQE doesn't
> need this treatment?  Especially as that would actually allow moving
> the DMA mapping into nvme_rdma_post_send and clean things up a bit.

Yes I'll add some comment.

But I'm not sure we would like to move it to post_send and add more 
if/else on the fast path.

We already added more operations (map/unmap) on the fast path...


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
