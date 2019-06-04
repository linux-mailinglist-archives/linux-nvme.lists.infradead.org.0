Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CC634C97
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ixX3D5TqJVXr5IXODaWvbis+MdvsN3XjvBYbJb2qBhA=; b=EYkc+v85jQYPTgYTlU9JTl7N3
	TUv959TfdI1ejhMLqv6nxP5irx7KYidI49pMorChPB6Is3+KOrSXFjvc+zMTZQDkZ8/EhsU8Ee/ZC
	nLuwqtB/qRXS+J2dJEKVQDae8GVx/2dEempj3OzitlYhO8LlIo+m2e87zTTKiT06yL68vt50p0M8W
	+cm56Jbr33YfrX1Uz281+cQteCdBv/nk5q94O64SWidjDXjIxKCjfDoZsjbu248NMF72WpaVZCyom
	hFm1zkIYcL/154zsiHER17RWU6Z3WfnJDa61ivl3sDfsMcOfA474R3WAWkwbUweRbpHPXiZm7hpQ/
	b8UQohHSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBiN-0007z2-8h; Tue, 04 Jun 2019 15:51:07 +0000
Received: from mail-eopbgr10060.outbound.protection.outlook.com ([40.107.1.60]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBiI-0007yd-00
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9shmBAI/WRSRT+fZEz2PBlyKcl275mrkq4cNTD37qA=;
 b=L5MF/GabzV47mO8koBNQkPzXFYZrMIidz9ELIdV0BlbAC2ujBDWH2gvTZEn5UQu6TffT2UNMtmRejXe1VpGEcaIeQvDNllBge8CQ4wi1RAHoL2Ehs+gZ+pl5/VNB6enO+BW+zNYyWfBbvCgJKtUgzVx2P8MOdZPrlEJ/ihd/JLM=
Received: from DB7PR05CA0026.eurprd05.prod.outlook.com (2603:10a6:10:36::39)
 by DBBPR05MB6427.eurprd05.prod.outlook.com (2603:10a6:10:c9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.22; Tue, 4 Jun
 2019 15:50:56 +0000
Received: from DB5EUR03FT039.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by DB7PR05CA0026.outlook.office365.com
 (2603:10a6:10:36::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.17 via Frontend
 Transport; Tue, 4 Jun 2019 15:50:56 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT039.mail.protection.outlook.com (10.152.21.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1943.19 via Frontend Transport; Tue, 4 Jun 2019 15:50:55 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 4 Jun 2019 18:50:54
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 4 Jun 2019 18:50:54 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 4 Jun 2019 18:50:28
 +0300
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
To: Sagi Grimberg <sagi@grimberg.me>, "Harris, James R"
 <james.r.harris@intel.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
Date: Tue, 4 Jun 2019 18:50:28 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(376002)(136003)(2980300002)(199004)(189003)(51444003)(16576012)(58126008)(2906002)(77096007)(229853002)(446003)(2616005)(54906003)(36756003)(110136005)(16526019)(6116002)(64126003)(23676004)(8676002)(5024004)(336012)(476003)(508600001)(186003)(106002)(5660300002)(486006)(126002)(26005)(11346002)(2486003)(81156014)(6246003)(356004)(31686004)(3846002)(316002)(53546011)(4744005)(70586007)(70206006)(31696002)(7736002)(65826007)(305945005)(86362001)(230700001)(65806001)(76176011)(47776003)(81166006)(67846002)(65956001)(2501003)(4326008)(50466002)(8936002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR05MB6427; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dbbdb683-b19c-4ab2-2f90-08d6e9046e71
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DBBPR05MB6427; 
X-MS-TrafficTypeDiagnostic: DBBPR05MB6427:
X-Microsoft-Antispam-PRVS: <DBBPR05MB6427090B06F7041754DEB98BB6150@DBBPR05MB6427.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0058ABBBC7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: QP/8u4T5gZBGCpE2Xtq891d/q7/IN3hrBJzwgGvCzY1lcCMthnaT3E45trpgD2+8RlWkNAcyD6+ukLcnFu0QixwL9DrAkobnX8nsR+bgAS6yV+/EjLy/7+tyPIVZLB23d1EtF4jcllHpmn1k6YHez3kIbL5SY3X8VPWcoW3sxrq5HadTICB/onYlrmp+zI7+Z2kCr0IgF1QdyeBdl+DyzVXqqPrY9oC/RucH4HUaCN1TNeURbSu/pTvURz0+x2Wzaa5sh/jhl5L8bBhBVpim510jj6H/GpFmfMA3Jqaj1T4rLG4kKXCiOVUHHCXkpzoFxaoXxTW+ZHRmHShEigcGSsY8bfRMMlRo3jxL1Chy43dvFDLliUgUj78bullNdcUK1I/YffhjZWf+WjH1b38UMM8FpTqE71r/Ffi9Zp4ekiU=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2019 15:50:55.9364 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbbdb683-b19c-4ab2-2f90-08d6e9046e71
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR05MB6427
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085102_087978_DD5AE1CE 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 6/4/2019 6:47 PM, Sagi Grimberg wrote:
>
>> James,
>>
>> can you test the attached patch (without the revert) ?
>
> Max, I think that its pretty late for this change for 5.2,
> I'm leaning towards reverting the offending patch for 5.2-rc and
> getting this into 5.3

are you sure ?

we're only at rc3..


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
