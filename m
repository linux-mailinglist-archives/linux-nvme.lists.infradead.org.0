Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEC81C709
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vg6wYMaS42bgZJqz4gNVi2fU8S3tmT+t2K+BOVx/tGY=; b=Dsp+0/3El4O4TFh0ADoqZ+Z0C
	ntN0QXuOrQbI9Nc3MxAKtEi+IUW6CZQTbPZoyM1N3GO7BH7yAMpq6MGS3oHJAzVowyTtS2kzrpoxd
	+7YaAPy0sdhQO4z7oPXpuSoOZurAjiAvoHhi9QA46qv3vDarRAf11YBoePSdhmqA1q8JH/XK13w0Z
	sczxhoItrR/59d6CvoSFW9K3YohCn5/dicXIide2IZdn1Qy7I7PQRCFd401rdYTYej7DLskZVAaxm
	cFPYFgeBNv5SRVl5P9sClNZjoAfPG3HRsPd7/TKWg5FtVU9QL+r5zZYO3iTT+J+bOzCAX38iJr2hk
	9IiYdhPWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUhb-0002nR-KB; Tue, 14 May 2019 10:30:31 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUhW-0002kn-0f
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K2xWOyOzBUnzhivNj6QSxCmI9c7ocrIn4gLQ6ymdPS0=;
 b=C+fbiOBouE/qKt+21AgztIkl8//KzjOOWsGBTYwJRXjCaG0Dw35NAP+EXRCXENjyioRtyAXmQzsqwwxJHEKCFrwbnhL5ypLdRoIxUkPw8SGWgYXm1+D7lf0EPB/pnrV7ElzaXD5Tjt3Ocal9abGrf6C8bm+xAcADkSg+/R2JxoY=
Received: from HE1PR05CA0250.eurprd05.prod.outlook.com (2603:10a6:3:fb::26) by
 VI1PR05MB6432.eurprd05.prod.outlook.com (2603:10a6:803:101::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.16; Tue, 14 May
 2019 10:30:20 +0000
Received: from DB5EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by HE1PR05CA0250.outlook.office365.com
 (2603:10a6:3:fb::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1878.21 via Frontend
 Transport; Tue, 14 May 2019 10:30:20 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT015.mail.protection.outlook.com (10.152.20.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 14 May 2019 10:30:20 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 14 May 2019 13:30:19
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 14 May 2019 13:30:19 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 14 May 2019 13:30:17
 +0300
Subject: Re: [PATCH] nvme-rdma: remove redundant reference between ib_device
 and tagset
To: Sagi Grimberg <sagi@grimberg.me>, <hch@lst.de>,
 <linux-nvme@lists.infradead.org>
References: <1557139675-2469-1-git-send-email-maxg@mellanox.com>
 <c162fcdf-9ae5-93bb-e1f2-5179acef3083@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <16c44835-dfc6-81b3-9d80-04571cdb19fb@mellanox.com>
Date: Tue, 14 May 2019 13:30:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c162fcdf-9ae5-93bb-e1f2-5179acef3083@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(136003)(2980300002)(189003)(199004)(64126003)(2486003)(50466002)(65806001)(65956001)(76176011)(3846002)(23676004)(70206006)(70586007)(31696002)(47776003)(36756003)(31686004)(86362001)(229853002)(230700001)(14444005)(2201001)(6246003)(8676002)(65826007)(58126008)(5660300002)(305945005)(16576012)(53546011)(476003)(126002)(356004)(2616005)(486006)(446003)(478600001)(11346002)(336012)(16526019)(106002)(77096007)(186003)(4326008)(8936002)(81156014)(4744005)(110136005)(54906003)(316002)(26005)(81166006)(6116002)(2906002)(67846002)(7736002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6432; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d2670248-6470-44a5-4d90-08d6d8572a4e
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR05MB6432; 
X-MS-TrafficTypeDiagnostic: VI1PR05MB6432:
X-Microsoft-Antispam-PRVS: <VI1PR05MB6432AF4199BFA58472FF0FE4B6080@VI1PR05MB6432.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:95;
X-Forefront-PRVS: 0037FD6480
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: PNAz3SYD0Gl8SLKr+ZhnIFrBMYF7OFhVZhUtcpZ0pKj5cIOsfkibjTq9/tXU2RpbWNKTkPZRwdEfxMfmlW3YSmM9hc9UF3ViBEH/WfVdKUolaO5CHk/WHR7pRlLS8/ZGwCIBfZLByveTvvJEiojKLCEhLDqP8CrgpIE5EKjx1s49pb2Y0s+67A7auNEVVJONYVsg7gURB0C0rIOV28BrPe9r2/7tfiR+Hf+DmwG8kq5RWxA6CLdw6ns2bBZqNiYDeP82JkZI9RLWfSoweCz+udZwlUA6nlWMow7volI+7L0l69+REv/mBHL1d1CK5Rk0s+PGwbl0MQnG55fZIigd8a9MnHQE1a8EKPABK4v2u7hxZmsd7jQN1a5Xi04eR1RVEIauBYr5qpYM60Mmx8rT1QbEZ9de4MXBo80pirYCyIo=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2019 10:30:20.0278 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2670248-6470-44a5-4d90-08d6d8572a4e
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_033026_068757_C411AE1F 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: israelr@mellanox.com, dmilburn@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/12/2019 6:26 PM, Sagi Grimberg wrote:
> This looks good max.
>
> On 5/6/19 3:47 AM, Max Gurtovoy wrote:
>> In the past, before adding f41725bb ("nvme-rdma: Use mr pool") commit,
>> we needed a reference on the ib_device as long as the tagset
>> was alive, as the MRs in the request structures needed a valid 
>> ib_device.
>> Now, we allocate/deallocate MR pool per QP and consume on demand.
>>
>> Also remove nvme_rdma_free_tagset function and use blk_mq_free_tag_set
>> instead, as it unneeded anymore.
>>
>> This commit also fixes a memory leakage and possible segmentation fault.
>> When configuring the system with NIC teaming (aka bonding)
>
> Question, what about sqe dma mappings? don't they need to be remapped as
> well?


Yes, I'm looking into the block layer to find a function that does 
exit_request for each hctx and init_request for each hctx..


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
