Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA138174D9B
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 15:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N1NTRtR8x5gk2YqJW3BD1Z+HpvtNe6+ZVhDblHMYR74=; b=ko0pUJPyu84RDBPMifqn60rft
	ZRSRzmA4UKpsH/FIufAnk5ycQGouIQfzqlaPhOL+zNCtyB2VRMJgvdpEo7kMKva6Fl/GD6BLVJl3i
	Rh7ItIbj80H0r323ZwHRtsicZCKNunVlP1bA9mMUUI/cv6ntULz1eJ4ASDli2ZEFtdxubBNdaLeNy
	mFZbqDAPWe1V6Y0yJzbaUaTiGTnwl0vx1ZSlTC6atmxCVrW0t9dM3drAT5cHW4qXRQz29z8QP0Syc
	qCB0VuqtolTZrezQML4W6l/d1UIuqj0Qv0JHUZuORBrD5jmuSA3zWhoDhjOvIPLt6nA/qCXJYi8MS
	P7cLEDEhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8PEN-0007cW-PH; Sun, 01 Mar 2020 14:06:07 +0000
Received: from mail-vi1eur05on2083.outbound.protection.outlook.com
 ([40.107.21.83] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8PEI-0007bh-8V
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 14:06:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=obPOdVDdIEwsxK8ptaHWgkfbtMmJ4BW7L6tj/S56I18XlZT9FxBDSesS8YoQwJyQ7wHKUh9fhwKiqgt0aSAWOa4HI7zebClEH5CH65L9EmV0NR38MQZH8tSOtsXe7RfXO/+TlFirJSX9evYN9XVU1D1ya2P/PIOoRkIvJcUTnBDFtXCK0pyi8eDDxKTA2ypCBMGxHQaiaJzRnGSVJCmqzFFECVG5P0Z4uIgjFIYgi+DD/fdcc3x+WWbIvrTfDHoUbq/O0v6C9TbQzXFYXsNMa+weblhZI37DAVNf3QXUNhTOx4h92c65jHZyW59dSf/Y4tFDMW3QyEr4PKI+BYcnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNUAmFq9qBmZdZDFxv5UJnnZW21vJfcl79Jz41Yu28w=;
 b=lkSWVa/jRKcDAYIBuXOWNkXYhCBHpHBo5S/z4+3UWswFifMDOrUcpU8zK+2OIBJ2P0q0ZhUpwhslddn+v0kJBEVbc3Vvi/5XrrHcyzGqVePnZ0BCNfzTCQB95o7ZikA3RtVcvPR/2mjSw6+9KQwFDhl+pIkxpYiGFLHQO9boC2ZeynOQ2xPxq7BvJRKlpMT6wllLhlLasncWwI5YjJ5cVynXaXtOCDbFXJWFa0CfgW6hE2nXHMKUh5byRFkPwbhLvSuuWv5RRwF56w+qAgLCWtmb5VR/7JwhujP5Tag0f8Z9qXf/597WOLwDGmUzwTElbcT8Gj32y3/ZBAMYymtiQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=chelsio.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNUAmFq9qBmZdZDFxv5UJnnZW21vJfcl79Jz41Yu28w=;
 b=Eq4s0l1iv/rg2eohyg2wI28IaYw7tXSVzSpeAvYluq00yp9HaGj1ZhCeGzgcP3Py+3DFiXZfL1E7rVHBf6KQQXCs0BecTGp39wJeMEd5EWallkzfzybXYnDR7bXcoSclnHNJotpyLWHLvbkzZOc4pI1L/5Wzb7QWJTYiwxoB2mA=
Received: from AM6PR0502CA0052.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::29) by HE1PR0501MB2491.eurprd05.prod.outlook.com
 (2603:10a6:3:6e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Sun, 1 Mar
 2020 14:05:56 +0000
Received: from AM5EUR03FT016.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by AM6PR0502CA0052.outlook.office365.com
 (2603:10a6:20b:56::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15 via Frontend
 Transport; Sun, 1 Mar 2020 14:05:56 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; chelsio.com; dkim=none (message not signed)
 header.d=none;chelsio.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 AM5EUR03FT016.mail.protection.outlook.com (10.152.16.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2772.15 via Frontend Transport; Sun, 1 Mar 2020 14:05:55 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 1 Mar 2020 16:05:54
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 1 Mar 2020 16:05:54 +0200
Received: from [10.223.0.100] (10.223.0.100) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Sun, 1 Mar 2020 16:05:53
 +0200
Subject: Re: [PATCH for-rc] nvme-rdma/nvmet-rdma: Allocate sufficient RW ctxs
 to match hosts pgs len
To: Sagi Grimberg <sagi@grimberg.me>, Krishnamraju Eraparaju
 <krishna2@chelsio.com>, <jgg@ziepe.ca>
References: <20200226141318.28519-1-krishna2@chelsio.com>
 <b7a7abdc-574a-4ce9-ccf0-a51532f1ac58@grimberg.me>
 <20200227154220.GA3153@chelsio.com>
 <aeff528c-13ed-2d6a-d843-697035e75d6c@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <7a8670c0-64bc-7d7b-1c7a-feb807ed926a@mellanox.com>
Date: Sun, 1 Mar 2020 16:05:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <aeff528c-13ed-2d6a-d843-697035e75d6c@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.100]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(70206006)(186003)(70586007)(16526019)(2906002)(2616005)(336012)(31696002)(36756003)(53546011)(31686004)(316002)(81166006)(8936002)(4326008)(356004)(86362001)(478600001)(36906005)(81156014)(5660300002)(26005)(16576012)(54906003)(8676002)(110136005)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0501MB2491; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5b155bf-9f67-4e09-e591-08d7bde9a927
X-MS-TrafficTypeDiagnostic: HE1PR0501MB2491:
X-Microsoft-Antispam-PRVS: <HE1PR0501MB2491185A7FFA416B08B3371CB6E60@HE1PR0501MB2491.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0329B15C8A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cVsQO6KLXlEWdWOE+rGitbelI69lNwtKPRk8Y+VNA8EAHvNn/l3ktFkw/hP72fPrVE6R1e48XU9ezFkMBxdaXdMwFuJSHWGb5tueTO6UXQ5oIK2qfoHZrLpA0QaOqsvTlrLfG77Gtgq4RyBW4JwQEMLOyB+quR67bKGMXp+tVrE4b7zu/GDZSFzYlO1KK646k6pkYXTpLW2d+EPN0Rf9lPYcDLx99PETdJwxrLcgsnr6TR6ClY7V/QuV4DyQ8UwwCqL5V7Le3n4kX11t43ZWFX4ErZuwSb/a1UYURg2nMbt16kJq8+lxfUopMMsHEZhLDan7tLCJ2cJkwa8dv8T8QS9XlRxSyjUfh9r+RbkaFkzoy5Cz501DQ/7URAhmMriuRYuQ/zl9ue/tHAAf7KFc/2yB5id6GFJuE5LA2YkvDG+Hfnje1Gdb5BfTMoGngrnvC7RZmj6ySO976hyrCRtl5chlxZppLxExac6NjbW6mYGitmvL9KN89oNWPcnu1PVv
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2020 14:05:55.7526 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b155bf-9f67-4e09-e591-08d7bde9a927
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0501MB2491
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_060602_357561_A1837AC1 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.83 listed in list.dnswl.org]
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
Cc: linux-rdma@vger.kernel.org, bharat@chelsio.com, nirranjan@chelsio.com,
 hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2/28/2020 1:14 AM, Sagi Grimberg wrote:
>
>>> The patch doesn't say if this is an actual bug you are seeing or
>>> theoretical.
>>
>> I've noticed this issue while running the below fio command:
>> fio --rw=randwrite --name=random --norandommap --ioengine=libaio
>> --size=16m --group_reporting --exitall --fsync_on_close=1 --invalidate=1
>> --direct=1 --filename=/dev/nvme2n1 --iodepth=32 --numjobs=16
>> --unit_base=1 --bs=4m --kb_base=1000
>>
>> Note: here NVMe Host is on SIW & Target is on iw_cxgb4 and the
>> max_pages_per_mr supported by SIW and iw_cxgb4 are 255 and 128
>> respectively.
>
> This needs to be documented in the change log.
>
>>>> The proposed patch enables host to advertise the max_fr_pages(via
>>>> nvme_rdma_cm_req) such that target can allocate that many number of
>>>> RW ctxs(if host's max_fr_pages is higher than target's).
>>>
>>> As mentioned by Jason, this s a non-compatible change, if you want to
>>> introduce this you need to go through the standard and update the
>>> cm private_data layout (would mean that the fmt needs to increment as
>>> well to be backward compatible).
>>
>> Sure, will initiate a discussion at NVMe TWG about CM private_data 
>> format.
>> Will update the response soon.
>>>
>>>
>>> As a stop-gap, nvmet needs to limit the controller mdts to how much
>>> it can allocate based on the HCA capabilities
>>> (max_fast_reg_page_list_len).
>
> Sounds good, please look at capping mdts in the mean time.

guys, see my patches from adding MD support.

I'm setting mdts per ctrl there.

we can merge it meantime for this issue.



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
