Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D17429F28
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 21:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WY2rbxUATASv/8r7AVWNauSxsSIBa+AaOTqAP/RHjwI=; b=O/9FYRIjyv965gur9HlXiDhkx
	852EfvtVwYo4nBtPF1x+NnPzj7pS5wzYWYKidW3opJN4Dq4J40SugiRGytfx25rU2Axo/NXn/Iuv9
	Qv2KAmzbIQ/vHF6l/UjomcZt1dttFzxzuHM+8f5jOccKQqzov3/Z4bUE/1mT8plPTlWoTIAp4ba1x
	9IRJEJAh0BEQE4Hlnn/iRkv0Si8NAlCFuBXHufJTixbZTLS0Tk6NUEKePNstS8wqInYZG1yv8VdTB
	euKvU6EHtv0I0NTF2E65miNyZrTY1fIGliJ3Pf5M7WeSLgpNRVdmPMUTqXeLtrXGEId5MgnyvjQq8
	1wBHKvxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFzj-0006Ty-Vv; Fri, 24 May 2019 19:36:48 +0000
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFzd-0006Ta-3O
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 19:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5xrVMW9yw8FPNEL3sUbEZhX5j/ZX6ml+KbmUJnardHc=;
 b=Mr+0LrcYjycMxmrqOhrXbI13c7K8JZ82Ojl2lIsVy82COX7jh5wAOYbihx+D/Qc/9Su5keqtG05nCy1MjqfyEW+QjS7aF70WdZqDBb84S0vZJtfCDMGEM40usTbhudxHrRug477pLQKK6tqv1zFN0adjOo5TTJ0mf0fFHtNZsag=
Received: from AM0PR05CA0090.eurprd05.prod.outlook.com (2603:10a6:208:136::30)
 by DB3PR0502MB4059.eurprd05.prod.outlook.com (2603:10a6:8:4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.16; Fri, 24 May
 2019 19:36:34 +0000
Received: from AM5EUR03FT035.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by AM0PR05CA0090.outlook.office365.com
 (2603:10a6:208:136::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Fri, 24 May 2019 19:36:34 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT035.mail.protection.outlook.com (10.152.16.119) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 19:36:33 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 24 May 2019 22:36:32
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 24 May 2019 22:36:32 +0300
Received: from [172.16.0.59] (172.16.0.59) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 24 May 2019 22:36:31
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Christoph Hellwig <hch@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <20190523102236.GC15492@lst.de>
 <264c1ab2-a097-3384-381f-2b8c56c4442c@mellanox.com>
 <20190523153323.GA21083@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d5568362-3589-6670-dd83-56502757fe87@mellanox.com>
Date: Fri, 24 May 2019 22:36:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190523153323.GA21083@lst.de>
Content-Language: en-US
X-Originating-IP: [172.16.0.59]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(979002)(346002)(376002)(396003)(39850400004)(136003)(2980300002)(189003)(199004)(31686004)(64126003)(70586007)(126002)(486006)(7736002)(305945005)(478600001)(4326008)(476003)(446003)(8936002)(81166006)(81156014)(36756003)(2906002)(58126008)(70206006)(54906003)(336012)(356004)(16576012)(65826007)(8676002)(316002)(31696002)(26005)(53546011)(86362001)(65956001)(106002)(65806001)(3846002)(6916009)(67846002)(229853002)(77096007)(4744005)(6116002)(47776003)(11346002)(23676004)(2486003)(230700001)(107886003)(5660300002)(50466002)(6246003)(186003)(2616005)(76176011)(16526019)(3940600001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0502MB4059; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd5be7cc-4b48-479c-aa2d-08d6e07f210c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DB3PR0502MB4059; 
X-MS-TrafficTypeDiagnostic: DB3PR0502MB4059:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB4059FB6FBD2D8E98F51CE9BBB6020@DB3PR0502MB4059.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: IyWACCOAIa4fzKt9TYa3DWOvGqJ7F9AnEdD8wkm3lw8eV09r91ULsxaJV9iKWB7LMqZaIWdz6wVo+1gHS96CTQEmP5hlAlwYHUnkMzB01XtRZyg6CV2kJisGhYsfh/AQLb3YoQ/JbpJE8pb0/ROwSKGBrbpQDczEYNplhmo1ipISalwkdVcogiojY7nNRU9y2vZxIrO9qvRJ6+MB1Xj8zJ0D0G+ZYlvCyEyQHdyhp1KkOj9W+6x3kity7vwGOUW++2LiOXHsLQKKFHg98xQgMYG84Tkn77r6y4lvyNgINEIIHMklz3ZUc+ejuRuN2LFvjqDsGpKBGZQT/JwCPbaERKjtxlhm2SAILUNgKNrGBJZupCy2LukwvQ+2aUywTBIZGhzbPKAM3iFVd2RfQR/wtWB+SNv2qg/xDpOgeyDio7o=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 19:36:33.7648 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cd5be7cc-4b48-479c-aa2d-08d6e07f210c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB4059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_123641_145391_2462F542 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.51 listed in list.dnswl.org]
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
Cc: israelr@mellanox.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/23/2019 6:33 PM, Christoph Hellwig wrote:
> On Thu, May 23, 2019 at 02:05:23PM +0300, Max Gurtovoy wrote:
>> On 5/23/2019 1:22 PM, Christoph Hellwig wrote:
>>>> +static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
>>>> +				   struct nvme_rdma_device *dev)
>>>> +{
>>>> +	ctrl->device = 	NULL;
>>> double whitespace here.
>> thanks.
>>>> +	kref_put(&dev->ref, nvme_rdma_free_dev);
>>>> +}
>>>> +
>>>> +static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
>>>> +				   struct nvme_rdma_device *dev)
>>>> +{
>>>> +	kref_get(&dev->ref);
>>>> +	ctrl->device = dev;
>>> Why aren't these using nvme_rdma_dev_put / nvme_rdma_dev_get?
>> Since we change the ctrl->device pointer here.
>>
>> Do you prefer doing it without helper ?
> We can still use the helper underneath instead of open coding the kref
> calls, right?

since nvme_rdma_ctrl_dev_get is void function I preferred calling void 
function kref_get instead of the non-void nvme_rdma_dev_get.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
