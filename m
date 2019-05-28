Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4C2C5C0
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 13:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ICn+LTvmX5AcmsaGwFzAc8maJALazIvWNsSBZWOSQOU=; b=E/9nEKd870ySxlzyqN9lcRk/A
	blAUa9LB2CicHO3ujEQcQVaowAcu7oN61lLQrXJ5UL7UTm45AnTxlWUOWfS5wJozQ2gSbVPUmrL1X
	IS5MvwGzG5o91X6leFcH/S2qZp1whx2Q64JyqdNRoc31IoYsYP2j0F83PyhxgKiFaiU5NArCMbQVq
	L5XBQ+oH27htijVv/6lV+4uOYUTkm87bOf6SY2UgSuBNYfyemRJa2EQhtSvbrfg06D/33pyUpUlkb
	4EWT47ouv+PTccWA6qLq7m5MIS8n5edlpaEpYGfJKSsO08bJIdOKGaX/o5zLpJ3ycUPN1MFm21+SR
	WhAnTzHNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVadP-0004Yn-W6; Tue, 28 May 2019 11:51:16 +0000
Received: from mail-am5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::617]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVadJ-0004Xd-Dl
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 11:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lpmiu4zIe6VUKnCjMXZ8kqZc3PtrwQZ7b6CtpGFrw8U=;
 b=WDCEi0nX89YS0t97xgrlomkg3Rw25KXCqMhayrHBFJ+W21x0n/KqtyuE//OHF/UAb+wZ4q+ObLwDx2zKiMw59LxcvokY++3UuRFwemTQL/CFwa8iyzuFJBJQBKPe2NFuG7Gl1swdHW9L5+AIg1mFTl5Jmo9sJBBuJtylYGQiykU=
Received: from HE1PR05CA0251.eurprd05.prod.outlook.com (2603:10a6:3:fb::27) by
 HE1PR0502MB3019.eurprd05.prod.outlook.com (2603:10a6:3:d9::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.23; Tue, 28 May 2019 11:51:03 +0000
Received: from DB5EUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by HE1PR05CA0251.outlook.office365.com
 (2603:10a6:3:fb::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Tue, 28 May 2019 11:51:03 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT036.mail.protection.outlook.com (10.152.20.185) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Tue, 28 May 2019 11:51:02 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 28 May 2019 14:51:01
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 28 May 2019 14:51:01 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 28 May 2019 14:50:33
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>,
 <hch@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
 <ceb1744a-cc68-9588-bd07-d3060630e857@mellanox.com>
 <724732d9-2ea2-e349-435b-ae664692b565@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <77b99fb1-8996-52bf-1e6f-f2fee9216a2e@mellanox.com>
Date: Tue, 28 May 2019 14:50:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <724732d9-2ea2-e349-435b-ae664692b565@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(396003)(346002)(2980300002)(199004)(189003)(4326008)(47776003)(7736002)(65806001)(65956001)(186003)(65826007)(2486003)(53546011)(229853002)(26005)(126002)(3846002)(67846002)(31686004)(11346002)(14444005)(486006)(476003)(77096007)(6116002)(2616005)(446003)(23676004)(36756003)(16526019)(76176011)(6246003)(16576012)(107886003)(336012)(31696002)(70206006)(8936002)(356004)(64126003)(8676002)(81156014)(81166006)(110136005)(230700001)(70586007)(58126008)(106002)(316002)(478600001)(54906003)(5660300002)(2201001)(2906002)(86362001)(50466002)(305945005)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3019; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4594b09b-4df0-433b-c167-08d6e362c29a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3019; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3019:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB3019894E078693A51668FA28B61E0@HE1PR0502MB3019.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 00514A2FE6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: MhfBz/Ik62VOycw5v+ClI6/mINYvEoy/8r06awnBWHpYM1dUap+sbgvIezZf3PK6Usj+0hsaFGF90O7e8p/hONR7eQSlf+ea/G3HRzWyIF3cWrw/LBHYMK7qwoor5hJrb5ktFcTgIcdcvLUd24EvcKAxj3ayrO0z101oIFh0Bpq9DElBstbTbwbx5wryzH99ddfAPlgJb5EMPSelz9Nf6xORXXPLmQvu+3Q4b+2/ionV1ycl1QbmY3e7fl+K9GPT12rA8kNNguJ2PY1S+42OUUSepppRprhdySj3igu7UTT8HMo8/QVxwY5TMn/forbN4g0nFfL5+44t41Mne4F8O0cMy2vIYjqHj1Nk+8V7E32Z4riRLHCBOFAuNuERUJ4Yl3wUYf0d3+vezPPIlsp5mr4N1yjze1cuuT3Q/qciRHM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2019 11:51:02.8434 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4594b09b-4df0-433b-c167-08d6e362c29a
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_045109_513148_A33A91E3 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:617 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/25/2019 2:05 AM, Sagi Grimberg wrote:
>
>>> Do you actually need the extra reference on the device? why doesn't 
>>> just
>>> the set/clear of ctrl->device sufficient? these routines should be
>>> serialized..
>>
>> Yes we need this reference since the queues are freed during 
>> reconnection. And without ctrl reference, also the device will be freed.
>
> The device should be freed shouldn't it? I thought that this was the
> purpose of the ref removal from the tagset (which is identical to what
> you are trying to replace). I'm not clear on what this is solving that
> the prior reference didn't have?

Prior reference was per tagset and not per controller.


>
>> And when you disconnect during reconnection, the block layer will 
>> call exit_request for each request (but the device is freed) and we 
>> will do the need unmapping from the device..
>>
>> Not so plesent..
>
> Which again is why we had the tagset reference in the first place. I
> thought you wanted to remove the device reference altogether because
> of your bonding use-case..

we remove it in de-configutration state.


>
> I'm getting the feeling that we need to map the qe's in queue_rq
> and unmap in complete_rq. I don't see any other way around it because
> on the bonding use-case we need to wipe out all of the device related
> resources because we need to have it teardown and be prepared to get
> a different device on the next (re)connect.

Yes, thought using block layer iter but in case it won't hurt 
performance I'll do it in queue_rq/complete_rq.

Let me check that...

-Max.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
