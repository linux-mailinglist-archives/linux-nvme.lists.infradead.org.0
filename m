Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9D18B3B3
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 13:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LlI0NDU2qrvqjnqBAZTJi2cCCEgaZImHfacrFVTTkoY=; b=Df+NfCufVpC5NGCk5x1Aa+062
	lZQOtvOgvaZzJQxI0w/EyadRxkaUDtI9RnSW+hq+Fw6omT1YVYUJPpB8ICm6Wi2MFi8XvUoPh9wey
	x3NwuHAhLeKGsWvalS0pE6MBzj1nEr8YxqBR8wLJpCAkwWMk+40YMOsJc4a3AVHxvvF6GfLwrmcdt
	wzW1BJf3uYExuIDH3iwlSn79o3AHc4FAMuvcy7OlrwzvRGgnSUZS3kzRzpQstSa6h0v/cqCXR5FPg
	TXyWzDAMP3m2qdSa0tbmmmNczTR+fq8G62f9BACS5xld+rsynTdC4sQ7TM+G2rIVBxhaulGkANIfd
	fO9T3dwug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEubC-0005dx-9g; Thu, 19 Mar 2020 12:48:34 +0000
Received: from mail-he1eur04on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::608]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEub7-0005dV-SH
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 12:48:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y4gF8y0R3gpb3wMIQWkuhj3Zls2HhRml92l7AFOq2StOJIy/Ly9lBBOQUfMjZDoDqJ5mgiKfCsMRd/ArGtH/21r236CA1ZEIfVJ8X3/R68DAHu0lUQ+ssIZ+MSF1YMWCA8WzPsz7g6nrOxG3pdRa6Jpc+Qs/kTsfN9Njbgbp5Jz/MOeT4XMl4BadcHZhMmY4f2tetkJMA6JSncRuC4ZYaBVJYBavv4gUDt76TqSOaQjq7khmcxGe1fKqtT6i6xAw4PV7qflAXHcm6eUgRAOtyOyI5aWmT/+r93HME1ZOiGGdmgDwh9dZea0brwGFZ+Ft4XB2lbqPUsL2gmUVAbXFOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai6yzjqCvBgFm1t8IGNWdbOCcTtH4z/HmOkm0Xf+2Ew=;
 b=VLF7eELAKrlnxvXNErYs47fcR39rgLt2ItdJJAs8YmLcsQLjiuzsCX5icN9msxoKrjBclbIaB12fk5cwfJGXVsfFnOO3drzJ7hL4s+FQu5Wds/TC/uIggz8vvrfh+ia8p3saaaCMliQEyWJwS5MR+tQ54dDfoXi7+QfcDSFAHuIMoCRWKk51Hc8fxdM7dUL7xg8mJx6eiM83sIVcaYwZaM5Cen3jQ008RQVQzv4gb0e/hs3gAK2gc3EbKGT+r4psCwOMMyoTY9h348wXlhamKfy7yNiTyo+fA6HMSRr7CPSljcw6efZthWvvbSthq2fnFS82Juip7InuyRyz8HgSTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=redhat.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ai6yzjqCvBgFm1t8IGNWdbOCcTtH4z/HmOkm0Xf+2Ew=;
 b=UcbRlZQsG1KJRZLWMHZpi73r5R6rIopwSTHpNXo+nXbk3BhrGZO0cC7n4Hw5PmfYdNWv2aJbGUJ6D+wjPGBIR3Yd3ha8xZS0/RLL282E/1KCG3lwshYly6WKtsjY26jSXGZz3cLgH23BvPKn/aGuQKkGp+JYbFbbPpBqP1Ed4g4=
Received: from AM6P192CA0065.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::42)
 by AM0PR05MB6804.eurprd05.prod.outlook.com (2603:10a6:20b:146::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Thu, 19 Mar
 2020 12:48:25 +0000
Received: from VE1EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:82:cafe::bc) by AM6P192CA0065.outlook.office365.com
 (2603:10a6:209:82::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Thu, 19 Mar 2020 12:48:25 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT062.mail.protection.outlook.com (10.152.18.252) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2814.13 via Frontend Transport; Thu, 19 Mar 2020 12:48:25 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 19 Mar 2020 14:48:24
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 19 Mar 2020 14:48:23 +0200
Received: from [172.27.15.129] (172.27.15.129) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Thu, 19 Mar 2020 14:48:21 +0200
Subject: Re: [PATCH v2 3/5] nvmet-rdma: use SRQ per completion vector
To: Jason Gunthorpe <jgg@mellanox.com>
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-4-maxg@mellanox.com>
 <d72e0312-1dfd-460e-bc83-49699d86dd64@acm.org>
 <5623419a-39e6-6090-4ae2-d4725a8b9740@mellanox.com>
 <20200319115654.GV13183@mellanox.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <0b11c26f-d3de-faf5-5609-c290ea46ed9c@mellanox.com>
Date: Thu, 19 Mar 2020 14:48:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200319115654.GV13183@mellanox.com>
Content-Language: en-US
X-Originating-IP: [172.27.15.129]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(199004)(46966005)(8936002)(478600001)(4326008)(53546011)(37006003)(6862004)(31686004)(16576012)(16526019)(47076004)(86362001)(316002)(2906002)(70206006)(54906003)(31696002)(70586007)(36906005)(36756003)(336012)(5660300002)(81156014)(6636002)(2616005)(356004)(26005)(81166006)(8676002)(186003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB6804; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94d32aa4-4aed-4eee-1778-08d7cc03d092
X-MS-TrafficTypeDiagnostic: AM0PR05MB6804:
X-Microsoft-Antispam-PRVS: <AM0PR05MB68048AE9729B5BB12CDF4E48B6F40@AM0PR05MB6804.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0347410860
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 04ZrSTT6zm9yAvC8AClkvE85lEcTGg25TkLUWkqi55DohN0bihzd1n0BVW+kZjJgISDytcqezvzEOCUNhUj1+R8Czvp3Ufy98VNTVEt8uGbyP2jAFJcNIqQzSb9srD/QgKhw7Q/PKV7eq7RZ4PZtPdhTGds1sOAkh7lY8FHCXkSiOCqn+6+rbrcGtZWvahvC+T+LsrpDTF9lXC5bR82Vw5SqvD7rCzTv+uU5fxdkeSAgvi7tNAcxsAYYKFhjeXfLqg2q0UBJG2I4gu/7TpT+UTM3FIwSDMngBojjUQNjiNSYBYKbu3hpnNH21HtZYYRQfIVw8M8XB+VW3asMLfHBELJvjMPyWe+MASht5Al7DRWRBL/lFYPKWdJy80LHqg1YwksJf1kdKuxNzwGpNIxpWnTUH3rKCdwiuRyM8MA3lODFdqQtqEa0bD5t18wwP+kRioopFrLyMe/Ri2nBbhryYud9tW4mZkaF+NkwV9RJUdeZbh9iWHNivTQjPMplHi3I7Rwi5WzmeV//rGJREtrnvahSDumap4PKZaqhrhgw17M=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 12:48:25.0576 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94d32aa4-4aed-4eee-1778-08d7cc03d092
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_054829_919044_B533EA1E 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:608 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loberman@redhat.com, Bart Van Assche <bvanassche@acm.org>,
 vladimirk@mellanox.com, idanb@mellanox.com, linux-rdma@vger.kernel.org,
 shlomin@mellanox.com, linux-nvme@lists.infradead.org, leonro@mellanox.com,
 dledford@redhat.com, oren@mellanox.com, kbusch@kernel.org, rgirase@redhat.com,
 hch@lst.de, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 3/19/2020 1:56 PM, Jason Gunthorpe wrote:
> On Thu, Mar 19, 2020 at 11:15:50AM +0200, Max Gurtovoy wrote:
>> On 3/19/2020 6:09 AM, Bart Van Assche wrote:
>>> On 2020-03-18 08:02, Max Gurtovoy wrote:
>>>> In order to save resource allocation and utilize the completion
>>>                      ^^^^^^^^^^^^^^^^^^^
>>>                      resources?
>> thanks.
>>
>>
>>>> +static int nvmet_rdma_srq_size = 1024;
>>>> +module_param_cb(srq_size, &srq_size_ops, &nvmet_rdma_srq_size, 0644);
>>>> +MODULE_PARM_DESC(srq_size, "set Shared Receive Queue (SRQ) size, should >= 256 (default: 1024)");
>>> Is an SRQ overflow fatal? Isn't the SRQ size something that should be
>>> computed by the nvmet_rdma driver such that SRQ overflows do not happen?
>> I've added the following code to make sure that the size is not greater than
>> device capability:
>>
>> +ndev->srq_size = min(ndev->device->attrs.max_srq_wr,
>> +                            nvmet_rdma_srq_size);
>>
>> In case the SRQ doesn't have enough credits it will send rnr to the
>> initiator and the initiator will retry later on.
> This is a pretty big change, in bad cases we could significantly
> overflow the srq space available...
>
> A big part of most verbs protocols to ensure that the RQ does not
> overflow.
>
> Are we sure it is OK? With all initiator/targets out there?

IMO if we set the srq size to utilize the wire so we're good.

So the best we can do is decrease the rnr timer to re-transmit faster - 
I've patches for that as well.

Let me know if you prefer I'll sent it in v3.

Nevertheless, this situation is better from the current SRQ per HCA 
implementation.


>
> Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
