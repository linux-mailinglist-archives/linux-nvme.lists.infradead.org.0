Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C418B1D3
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 11:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g4ZvGhQ8A7ATq/KvuET0KWZb9BD8G8z8oIKLavjRvHA=; b=O0XN9Ash0jPLACscJ84A05b6h
	8rqWh2wIxJ0mbldF3UHSX0pvllGyddM5Nu9VnFt+SLra49dFII6CUMd+2QjXU9p+tn3434VfwGbJa
	TrnNFrWuD1hCEhjdGCCAf/kCmtX+XuppyuZ9us7jMyK4Fz7Tf/D1cLLcy8MsSMlnxy/sRCl/adAPu
	H6XWHPLfXjhlv0efbELreuOz9VmXIG+A/CVb9pRHZBG+B9W/ok05xQIKbqvoLnK22QhDUmAQl63/p
	UcfwV39y+uFnyNV2yC1CQGX350Z3QVq6faXyw373LHbmA0hGFpRlHRzho6SieHek7kUHxbA7T6PbD
	wNXo6dYHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEsqB-0001qj-TW; Thu, 19 Mar 2020 10:55:55 +0000
Received: from mail-eopbgr30083.outbound.protection.outlook.com ([40.107.3.83]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsq7-0001qA-CV
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 10:55:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kt1DUbi/g2zlgri1jF0UE/h566lz6f6cEL1heiBkTHzfw/IPVTjrqPlKkkNHJ9qP61ilsoQt5OQgFcPDKpP/QaMTZNYy/HP4JX8vPb2kP56j2KKUqJnScpWHVPxdJJFg8wiQqjL/9fFaCXrPteIdHc92QKaLp4UdNNfz9pWGjl/JzyN9PunpeV767Pta43Qnp20aXqcM8vJ7pgVTNAt7TeNVe7Bi6jgZEN1wcVjKmtWk58Sp9JNBmM4g4AO6YVxAXMtXmQL6NY8R1+jUggjUKkhti6mdqaYwYk7FxwvtANvss0JKtMmuHZqdfuGJhLDh3hd9u5/k8SH7s/Qx3v+wYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRCCvzP5xWZTdDebJzjcF/HMKdpD3jm0Y5iRSSL4Py4=;
 b=ckto+f3uQu3icBMx7og1173wR/0ojKRJqs8Dw3ZHVrBUmLoQQOpDnYTNWHyfjVGjSp8U3mq+Y3gmdqCqnuNR51lH3JXovTkFn1AbWhKfAQIxe/tYFc4NZw7GxBHTLSAS/tAHKBmudg6JYnh6HshPzAjf+B5WmIxoyZZ1OtxUWEZ3DZgafm4zdyE2EACaW9q2dnmu4BeCb23agdlybgcBtP/SWs97jIY3WA4U4gQs7VUkn3yZBuDMlaw6xtwKkEqPF94fG4Rjx84yPytmHlUlSQZOkqKHoLBSeWpuCuCmCshgqCTZGH8ap73B4spVycp0lP8hQcZ9hunxHko3qo3Ozw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=redhat.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRCCvzP5xWZTdDebJzjcF/HMKdpD3jm0Y5iRSSL4Py4=;
 b=Ar4MVyhvUcPJmlAxuh0hqFAgwuT6vwzoUME6ZFDAJ5RLQa83laeqfWAKFeC9GRf/1+Q9t/hmzRwzLsh8ifY+E7MIZwend1/NifKNfCHwjjM01W8DUx8UWvLGYr7ytIG70k9tQ4J60fc8vIFYmUF3gud5/ZTErOMurBpqRAkJpk4=
Received: from VI1PR07CA0189.eurprd07.prod.outlook.com (2603:10a6:802:3f::13)
 by DB7PR05MB5464.eurprd05.prod.outlook.com (2603:10a6:10:58::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Thu, 19 Mar
 2020 10:55:46 +0000
Received: from VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:802:3f:cafe::7a) by VI1PR07CA0189.outlook.office365.com
 (2603:10a6:802:3f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.10 via Frontend
 Transport; Thu, 19 Mar 2020 10:55:46 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT052.mail.protection.outlook.com (10.152.19.173) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2814.13 via Frontend Transport; Thu, 19 Mar 2020 10:55:45 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 19 Mar 2020 12:55:44
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 19 Mar 2020 12:55:44 +0200
Received: from [172.27.15.129] (172.27.15.129) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Thu, 19 Mar 2020 12:55:17 +0200
Subject: Re: [PATCH v2 2/5] nvmet-rdma: add srq pointer to rdma_cmd
To: Leon Romanovsky <leonro@mellanox.com>
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-3-maxg@mellanox.com>
 <20200318233258.GR13183@mellanox.com>
 <1a79f626-c358-2941-4e8e-492f5f7de133@mellanox.com>
 <20200319091454.GN126814@unreal>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <f08af9c6-b2bf-8036-0e5a-70b52e5ed168@mellanox.com>
Date: Thu, 19 Mar 2020 12:55:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200319091454.GN126814@unreal>
Content-Language: en-US
X-Originating-IP: [172.27.15.129]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(136003)(199004)(46966005)(70206006)(8936002)(16526019)(8676002)(6636002)(316002)(356004)(86362001)(70586007)(5660300002)(186003)(37006003)(31686004)(54906003)(53546011)(47076004)(4326008)(966005)(6862004)(81156014)(31696002)(81166006)(16576012)(36906005)(26005)(36756003)(336012)(2906002)(2616005)(478600001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR05MB5464; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0203f30b-bc74-46c8-4836-08d7cbf413d5
X-MS-TrafficTypeDiagnostic: DB7PR05MB5464:
X-Microsoft-Antispam-PRVS: <DB7PR05MB5464C880ADCAF26B8E9B285EB6F40@DB7PR05MB5464.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0347410860
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K4UhDafdviqrQQ+byYEMwj9TM7ILvcI0WVU0AZKd+bVt5Jeuc09jAuV1sswBvyopaOR+ia/M0DOVWJfKKMnMVVFhjZFLn2Ba+8JWzOxPG/hQg30WcmDt9ig2g2ie/1AxiCUZyVdtVvBA0bsZRJueGWDa7+bENgmmj26NPIHAaoymR4W5OyqjP8ZmcyYfv/R/hDmfTWsoZdjXjWeF9z0FJgK+wbNvbX8BR1+DqzIYx2+uuR/ZR7pMB9iToSvN9bTXCoshemrwIR9X22m7K8/zfh6kr35YAdLFash+okaSgu/Zd0e2mI18R4tPZYtG7w0zqC3zqENW1Fo3FMoWfDYSmf0wHdOv1fME1TyxqJbhhu42T+cOaPKAevth+nil62144yk4fIg2vueVw6secPn+wxaUfTdS0jNV8kiIJyHKXhm3LnfhKh3Hq0AYR2MKme1xkDg9b+Q6R2jQ3ugiCW7CpTW35HCrXT5d5dnwD9bKKz8LGLIulgM0nBbSc0QFhhK3gE7P5UkcpvTdaxtafuOt1wbj1zKQst5ZYF3umdq4592/3egxDJ5hAnQEiRdoElrclavb1WOmJTR+bqhiWRA+Z1Ajc04CD2NllAJY/5573SMPi4j2o2r7QMR1tUszsiJl
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 10:55:45.8735 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0203f30b-bc74-46c8-4836-08d7cbf413d5
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB5464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_035551_726119_4166B426 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.83 listed in list.dnswl.org]
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
Cc: loberman@redhat.com, bvanassche@acm.org, vladimirk@mellanox.com,
 shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, idanb@mellanox.com, dledford@redhat.com,
 Jason Gunthorpe <jgg@mellanox.com>, oren@mellanox.com, kbusch@kernel.org,
 rgirase@redhat.com, hch@lst.de, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 3/19/2020 11:14 AM, Leon Romanovsky wrote:
> On Thu, Mar 19, 2020 at 10:48:22AM +0200, Max Gurtovoy wrote:
>> On 3/19/2020 1:32 AM, Jason Gunthorpe wrote:
>>> On Wed, Mar 18, 2020 at 05:02:54PM +0200, Max Gurtovoy wrote:
>>>> This is a preparetion patch for the SRQ per completion vector feature.
>>>>
>>>> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
>>>> ---
>>>>    drivers/nvme/target/rdma.c | 6 ++++--
>>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>> Max, how are you sending these emails, and why don't they thread
>>> properly on patchworks:
>>>
>>> https://patchwork.kernel.org/project/linux-rdma/list/?series=258271
>>>
>>> This patch is missing from the series
>>>
>>> v1 had the same issue
>>>
>>> Very strange. Can you fix it?
>> I'm using "git send-email".
>>
>> Should I use some special flags or CC another email for it ?
>>
>> How do you suggest sending patches so we'll see it on patchworks ?
> It can be related to your SMTP relay, I see that you are sending
> patches through labmailer, and it is known as unreliable. Use the
> same SMTP server as you are using to send emails.

I'll use it in V3.

Thanks.


>
> Thanks
>
>>> Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
