Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01A7133D2
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 21:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfBA9eQmlxtsUwjkLJLKR8XqonCVDfLdYsk0VaqCy2E=; b=BH4In/FOCxSxR5ksAISOiHQ+c
	U2uqiyBA8kVqAZAnKBWz/vGi0opv9TQWZ0sqXvM+LB2cFFeMHV5uIhvGdvXBmEORbX7LWGFuALNev
	TJKxfCOScbh+7wNYZfRiuOTb+NYXOq8oBF4GBI20K6Mt7HeTKPyl4SH/nhUnsgU6wVTVkaQ7+ifqH
	DKnmdJP2331vyZjrl/clQA8lXpQAj3OCH1x3czOwlFUnZphDdyzMmiZB4GlilwciGdxeI0HHXtN0w
	TkXDnBh2HXUyA109TUzbjOkjQpDLKfZMVvt8urGnO0shGBIZu8Z0/MRmEZQwz8caOui8Wo5/Q8+4x
	7zSRs5IGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdR3-0002oK-ED; Fri, 03 May 2019 19:01:29 +0000
Received: from mail-eopbgr30063.outbound.protection.outlook.com ([40.107.3.63]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdQy-0002no-LJ
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 19:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G5rmKY/ryyqvCzcofiGq32JWwfZXN1f8sSMf9ymEfmQ=;
 b=VRpg/Yqh0hd9jbFvpjeuTHFZufDbSnOGTlAloIDMqI5ZLBH9lFqgQ52ZqrHREBMR0otCUlK6Iv0+9cFk47KChyXKdwPPhnNuQ/549GcFxaZ8JMBLNJeNK86ereqXm4d8QyN1p4kPiLSggtgrYadcRTaVHtNJqRfzp2LwOcHZjOc=
Received: from VI1PR0501CA0016.eurprd05.prod.outlook.com
 (2603:10a6:800:92::26) by VI1PR0502MB4061.eurprd05.prod.outlook.com
 (2603:10a6:803:25::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Fri, 3 May
 2019 19:01:16 +0000
Received: from VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by VI1PR0501CA0016.outlook.office365.com
 (2603:10a6:800:92::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Fri, 3 May 2019 19:01:16 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; davemloft.net; dkim=none (message not signed)
 header.d=none; davemloft.net; dmarc=pass action=none header.from=mellanox.com; 
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT023.mail.protection.outlook.com (10.152.18.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Fri, 3 May 2019 19:01:14 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 3 May 2019 22:01:13
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 3 May 2019 22:01:13 +0300
Received: from [172.16.0.54] (172.16.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 3 May 2019 22:00:59
 +0300
Subject: Re: [PATCH v2 06/10] nvme/core: add mdev interfaces
To: Christoph Hellwig <hch@infradead.org>, Maxim Levitsky <mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-7-mlevitsk@redhat.com>
 <20190503122902.GA5081@infradead.org>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d1c0c7ae-1a7d-06e5-d8bb-765a7fd5e41d@mellanox.com>
Date: Fri, 3 May 2019 22:00:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503122902.GA5081@infradead.org>
Content-Language: en-US
X-Originating-IP: [172.16.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(396003)(376002)(2980300002)(199004)(189003)(31686004)(26005)(77096007)(230700001)(6246003)(229853002)(67846002)(53546011)(2906002)(186003)(305945005)(16526019)(6306002)(50466002)(64126003)(70586007)(966005)(7736002)(478600001)(70206006)(11346002)(446003)(110136005)(58126008)(486006)(2616005)(54906003)(476003)(126002)(316002)(16576012)(336012)(6116002)(4326008)(86362001)(81166006)(5660300002)(76176011)(106002)(31696002)(81156014)(356004)(6666004)(2486003)(23676004)(65956001)(47776003)(7416002)(8676002)(4744005)(8936002)(65826007)(3846002)(36756003)(65806001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB4061; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff93b9a1-2b4e-495b-0884-08d6cff9b7b8
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4061; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB4061:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <VI1PR0502MB4061D957FC2EB182C173BF90B6350@VI1PR0502MB4061.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0026334A56
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: DGddPswefKoHsVgWtC7pnM5lSpWMOv75Oc/NluAwqS56HkPDM/c2drjGZroZ6m91Z7v5SRzJ7rt+UflzPbm3hHC9sgrdGgH1KJAddQ1cP/QLwBogeN947+AA3opIcmlLuvwvU1DHlEdBNmtvXtQ6FT/+q6vDC5QjFm0KtykIPVlomZEloPWrfaktmYBsqJq8VIA1iYmdTaBD9PxZ4Otr6fk/WoHefeaJaaIRPOfbTjrPIkmcYAZEprdxaPRdhm0I5rw5MqaDqLJuYKM+uFlqA7niMIv+Pmo65jGy3ebUDrAT/CIvwYmrjNIpzg5tIHUiv+jGygEVhGcWaSVh/zSuG/t7ruG03SONQnBGb5Lgx8DelSixm/MJGnAvcQ9rEz+PBBlm/nBXGvQctY6glxtT4hRuovmcYcVtHTDAUzTP5VM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2019 19:01:14.9096 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff93b9a1-2b4e-495b-0884-08d6cff9b7b8
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_120124_757161_56BD879B 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.63 listed in list.dnswl.org]
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
Cc: Fam Zheng <fam@euphon.net>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>, Kirti
 Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Liang
 Cunming <cunming.liang@intel.com>, Jens Axboe <axboe@fb.com>, Alex
 Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 Liu Changpeng <changpeng.liu@intel.com>, Jens Axboe <axboe@kernel.dk>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon
 Ilan <ailan@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/3/2019 3:29 PM, Christoph Hellwig wrote:
> On Thu, May 02, 2019 at 02:47:57PM +0300, Maxim Levitsky wrote:
>> If the mdev device driver also sets the
>> NVME_F_MDEV_DMA_SUPPORTED, the mdev core will
>> dma map all the guest memory into the nvme device,
>> so that nvme device driver can use dma addresses as passed
>> from the mdev core driver
> We really need a proper block layer interface for that so that
> uring or the nvme target can use pre-mapping as well.

I think we can also find a way to use nvme-mdev for the target offload 
p2p feature.

Don't see a big difference of taking NVMe queue and namespace/partition 
to guest OS or to P2P since IO is issued by external entity and pooled 
outside the pci driver.

thoughts ?


>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
