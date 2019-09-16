Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C9B3EC6
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 18:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pn+MGrvbcOb3wOcEum33YYXWkCQ0HQvh0XofRDOeiU4=; b=AA5AozkamiOXgW5t1TlkjzK9Y
	QS0wdgeI8IUtZ/QcRTuawlxjb4xn1YR7Cf63CYKkxRz+GHNkl6UkcvEegbD6dM2ro1ikAyhtbOGO3
	UjvjyKTqHJhXlDHe6ITtOYAMiB6fwRBwydFtcnA+JN3d8HKn6KigmO5V/lX8+yrYEn8lnvt2i+k7Z
	2l+B6WB2qMkdUfIL/uCZkujk427EmWJa3elfdvSEZ8SHgqMAUB+gwXoBNd4kXjDgNPQ5IyC+5QAsz
	UcJMzIT1aHFZZtPxKtEcJMJmoITntzuGH2qBRtO05vSAgZX+IyagmZdACVkZR/8DxTBLZhhxDWu8L
	VD0Uk+uCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tkv-0007WW-Rn; Mon, 16 Sep 2019 16:21:38 +0000
Received: from mail-db5eur01on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::62a]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tkn-0007WB-7m
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 16:21:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WwdiVXdrvdPy9aq1onkINzsUV4A92dwjdkkjizqSgbQq1CmsMHCPpVQ3IUw8c7M8rBmt61O9wcgJ1C85DUCXxTr3l4TAj006H2Akf9IOAXM6jT6bB0S+I1fOV4fNwSMM2D5AjV/018u7XZYB5qhqeIqDKZqyE8NWmMfA4iBhuL89i6hDoYeniAP7TnacIbgt6Jnid9Dv5yohaM+nYHjXHLM8C9rFIb67AetXGdmnTnEntgvVwHrznVJASiJLGO6UkKR2i7JROZ07rzvNkE/ecO/hBtYAGr0QM28nV7Wl6uiYuYG44tiIY8f4hTkmK8zXYZf48zJThb2/p4F/Y2XRQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWK2jW4Qz2i8nKnV4GFc/QvDTGy54eZN1NXrigwSs28=;
 b=iavJt6bf1H1pRGap0ynzDNRaryqJpVJoTRWcsqmy+CeFt/529S5lM1Iw5UlxrBDyFLCS2pQGNtYsLNv4OnzDw1uT4Yhi0ZIb1JxXiEm4qWuiq0QamzDe5WaJYz/lI6Z1Fv8lDxh5BJ5CtmgI/IaTc0A6Lr9egMF6C2wj8pBJNxJLB9bInchG5+zh8cjHZnaPzWhUHkndLKZykXkKUhOBSwKDAdu2vvemPUCC8Hq6AIYTF9j8yzWbuslddJ33mXcLONnUwF6xfOaYPw1nvlxmrJUUUPXhfgoC6KRJ4c99L6YBNrua0qXf0R+FJyMOZ8mZskl3q5Dszsakv9fo0ioIxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=grimberg.me smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cWK2jW4Qz2i8nKnV4GFc/QvDTGy54eZN1NXrigwSs28=;
 b=ZfP+j118wUZ0j1MM6EnLJznIEe+bJimoRg5gmIfbJ2tprZbFuv+8RSOnUgBue519eT8Jd8f32V0BPUUNYeQfBei+0UrYOSQKUPr3+L9pi1av9fRpeVxKIkBAouIy0ONOqGTd19T0luF7MpMn4CblNyBpK2EA/wSFcPm34J2feGY=
Received: from HE1PR05CA0140.eurprd05.prod.outlook.com (2603:10a6:7:28::27) by
 AM0PR05MB4931.eurprd05.prod.outlook.com (2603:10a6:208:c1::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.26; Mon, 16 Sep 2019 16:21:25 +0000
Received: from DB5EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by HE1PR05CA0140.outlook.office365.com
 (2603:10a6:7:28::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.13 via Frontend
 Transport; Mon, 16 Sep 2019 16:21:24 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT018.mail.protection.outlook.com (10.152.20.69) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2263.14 via Frontend Transport; Mon, 16 Sep 2019 16:21:24 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Mon, 16 Sep 2019 19:21:23
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Mon,
 16 Sep 2019 19:21:23 +0300
Received: from [172.16.0.57] (172.16.0.57) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 16 Sep 2019 19:20:36
 +0300
Subject: Re: [PATCH v7 2/2] block: centralize PI remapping logic to the block
 layer
To: Jens Axboe <axboe@kernel.dk>, <linux-block@vger.kernel.org>,
 <martin.petersen@oracle.com>, <linux-nvme@lists.infradead.org>,
 <keith.busch@intel.com>, <hch@lst.de>, <sagi@grimberg.me>
References: <1568648669-5855-1-git-send-email-maxg@mellanox.com>
 <1568648669-5855-2-git-send-email-maxg@mellanox.com>
 <f56d2bef-93f4-95b1-b607-d97396626359@kernel.dk>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <0684c4af-ab42-c6b2-7bcb-c2ac59a0ceb8@mellanox.com>
Date: Mon, 16 Sep 2019 19:20:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f56d2bef-93f4-95b1-b607-d97396626359@kernel.dk>
Content-Language: en-US
X-Originating-IP: [172.16.0.57]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(199004)(189003)(65806001)(26005)(5660300002)(47776003)(36756003)(70206006)(16576012)(316002)(31696002)(4744005)(106002)(8676002)(23676004)(7736002)(81166006)(81156014)(6246003)(110136005)(107886003)(54906003)(53936002)(53546011)(230700001)(8936002)(486006)(305945005)(356004)(2486003)(76176011)(336012)(14444005)(58126008)(2201001)(70586007)(86362001)(31686004)(2616005)(476003)(11346002)(446003)(50466002)(126002)(3846002)(6116002)(478600001)(186003)(4326008)(16526019)(229853002)(2906002)(65956001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4931; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b223d527-5ca9-4678-22da-08d73ac1eb4b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR05MB4931; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB4931:
X-Microsoft-Antispam-PRVS: <AM0PR05MB4931830EC775C887FBE19D18B68C0@AM0PR05MB4931.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0162ACCC24
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: gmSDwzqkModPCr+/p/EFJxQDETS/5ckQxU9KLKwRF39ULvpiM5lC+lP0CD+hvvhuyE/8P9PSN/tvHkJR6QtdTwBPG30pKp+6FIJpZFORHFn50vzVGxyMeYYdPm0Dtm0S7JPNwbchv4TaiNzEjsvjpvbpQn4A0r7oOpMHwnCsTr/PgYFEjUnhRmf1t3s9FxBA1a0Ju5EoxNEdjp33Z0+DHGEmvwwB0KU+FV2v5h1PD6eQPKTCrs1rwis6RNwkHwKuW12QQKc3ecxWvXJtmm994gdolMNpKNP4G4BtOu4//WFBAgkhIOWeWAq1keTDTEDF/+P+t9QsIayiGFit5CYJM4eilXzed3YFQArCbGZeflPLapX68GArIUuQbjcYSRBcSgFYAP/tw+Go0iCvewbiFRNf3gTH1e4zhVPnCrOrzYs=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2019 16:21:24.5172 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b223d527-5ca9-4678-22da-08d73ac1eb4b
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_092129_345096_C2A1DB5B 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 9/16/2019 7:12 PM, Jens Axboe wrote:
> On 9/16/19 9:44 AM, Max Gurtovoy wrote:
>> Currently t10_pi_prepare/t10_pi_complete functions are called during the
>> NVMe and SCSi layers command preparetion/completion, but their actual
>> place should be the block layer since T10-PI is a general data integrity
>> feature that is used by block storage protocols. Introduce .prepare_fn
>> and .complete_fn callbacks within the integrity profile that each type
>> can implement according to its needs.
> Two notes (for future reference):
>
> 1) This doesn't apply against for-5.4/block, I had to fix it up
>     manually.
>
> 2) For more than one patch, always use a cover letter.

Sure, thanks !


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
