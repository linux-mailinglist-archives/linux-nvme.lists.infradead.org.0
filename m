Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C969188509
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 14:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OG/sG6s3HyPdHktV8DZVDZSqcwWVEXZFXQHuZS2kaZ0=; b=ms1iRZkVGx4GUCS4B6L70q6KE
	nNRHhV8iz/vJisaDk+F5gAvhRW2QYovnIlQhUHnwsZY8QS0jQhXk2/+ZCXZBRgknW9hCj2bfX3o3t
	21MAIrrjjy9Hpd5P96iFVVXvXZ5rS7mQaScaubjicdjyuAPic4RFrfBbII5UKt+OTfLyUlhOOivyp
	Y1sTiW7eutVE6WG2u/vqEbSRrs6MzZvBA+w/98rl7Q5S56+8QHBnbT6JGHtgbtPXPF/UTe4S4nTju
	wahtin8HiDrEPO4ia0JSqGIjngOVgDCJqx/RNCkIoZtdO9LacjI+FoPMuqDrBPZvqPhq4hOA2TQGW
	ragRs8tyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEC2J-0003x5-Fe; Tue, 17 Mar 2020 13:13:35 +0000
Received: from mail-eopbgr60057.outbound.protection.outlook.com ([40.107.6.57]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEC2D-0003wh-Ic
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 13:13:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRXslnUnPcAuMth785q9BH6FeaTL+dUfoklQV27J/7Xgv60v07wTwbhdOoFnolJyPfwaUFu9rBULVpB+pm9PHPDrYDXI0XPxOiFsT+ThAMsNvVrx8IMyOrOjr90LG7ItGOacISMaSM7BrYIMcDSCBVnQc9tf7zQI+vuL8346/2CWnwrYWw9Jje+n7j7aNy6RyLd440j+dIhYXeKMO1E2PYHcVbKCWJVHx9s1zwtaFkrmsfbNVXsZx11vDo4vDgPpeCWjPIZ4iaS/VFp9GUBECO4Zp8//J8KZYAC9ACYB6n64uHgU94Q38HcaSpKfutkDi8JeiDdBJdIDdbjlJVJmVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9AjXyF7wVmncQxjhgZSjA74r5+U0344pyCxDDojxuQ=;
 b=dt3lTrZB0TdiwH9bO623IQhSvVgibZbc1PtQaGPYXPS7g99GMTxaXG2QExwgkOyw7jVmlW6LeW7cpM/7x07r3WZQbjlxJxTng0TLtV8jo6QaaZPLMy8C0pF96I9fVYl9Sp1nA52UBJK4rtR4878on5bELrzWhIq0SZ09lv5rS53NWWd0TRp6P2z6D/tCrVRVRxlN0Zu5I9HXorYI71yXw3N0DhM4KBrrpEdN/HPwecGv0/b9jzuDhhqbuNP/R5Ptgt9QoeMOoAwDAYGav6ZjSaMiCNHi8ZXPYHmIYhQ8/w5SX2VsKcH3OjnmQ5nyRUNJVrtPlRKynGAui3bOuH3oXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9AjXyF7wVmncQxjhgZSjA74r5+U0344pyCxDDojxuQ=;
 b=YuYLI94BjWvXbTHdmq06eZXPNnUSUHyYp7BD/D4medFhKw5EEb9KC3njy8376sOJrIaL6/wYBZq7LY7ygmYIPlIgNMxa+q/rYJfUa1X5YW3zy8YRfvrTEYtS35tn8dBgKFmPmjJ2Ljop962hA5eM27s9tDuKgbUAKcztmMhiDgA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=israelr@mellanox.com; 
Received: from AM0PR0502MB3905.eurprd05.prod.outlook.com (52.133.45.151) by
 AM0PR0502MB3617.eurprd05.prod.outlook.com (52.133.45.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Tue, 17 Mar 2020 13:13:26 +0000
Received: from AM0PR0502MB3905.eurprd05.prod.outlook.com
 ([fe80::d0df:a78a:c082:95fe]) by AM0PR0502MB3905.eurprd05.prod.outlook.com
 ([fe80::d0df:a78a:c082:95fe%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 13:13:26 +0000
Subject: Re: [PATCH 4/4] nvme: Fix controller use after free at create_ctrl
 callback
To: Christoph Hellwig <hch@lst.de>
References: <1583938849-5787-1-git-send-email-israelr@mellanox.com>
 <1583938849-5787-5-git-send-email-israelr@mellanox.com>
 <8d294ef5-ca01-4458-441c-b987a173d39c@grimberg.me>
 <e12ed56f-6bfe-dcee-9967-f6f58f06a9f0@mellanox.com>
 <7710cc5f-850a-f260-fb02-423a46867534@grimberg.me>
 <e010bbdf-a28d-5ea5-2764-d624845bfe63@mellanox.com>
 <20200317125633.GG12316@lst.de>
From: Israel Rukshin <israelr@mellanox.com>
Message-ID: <55cc12ab-37bf-96f4-666a-893000d8edff@mellanox.com>
Date: Tue, 17 Mar 2020 15:13:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200317125633.GG12316@lst.de>
Content-Language: en-US
X-ClientProxiedBy: AM0P190CA0015.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::25) To AM0PR0502MB3905.eurprd05.prod.outlook.com
 (2603:10a6:208:1b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.223.3.91] (193.47.165.251) by
 AM0P190CA0015.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16 via Frontend Transport; Tue, 17 Mar 2020 13:13:25 +0000
X-Originating-IP: [193.47.165.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6c9d6bdf-060f-41f9-c6c2-08d7ca74fa79
X-MS-TrafficTypeDiagnostic: AM0PR0502MB3617:|AM0PR0502MB3617:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR0502MB36170BA0219C9F5F2B20D25FD7F60@AM0PR0502MB3617.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(199004)(16526019)(26005)(4326008)(2906002)(66556008)(186003)(31686004)(478600001)(66946007)(53546011)(66476007)(6486002)(5660300002)(54906003)(81166006)(8676002)(16576012)(81156014)(36756003)(8936002)(2616005)(6916009)(316002)(31696002)(107886003)(86362001)(52116002)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0502MB3617;
 H:AM0PR0502MB3905.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h7KBIxWifWc+G2LBRnargIFQ1DfQ4er5Hr5Re5sMS3eqxtJnhZZWA0WTrU//aFNHku0aYHZ6aWjhE3ZL25PUjVB5ey9SAQXQT5bWOJ9gZTtSHdM6aprASua291DKG6wMf/hoRWiBnEajiG1KtS3nWrQt5oSmqbQOUya4gThXCzEvIxps0LBp9NJ/f159FBMoB9CXt+PLo5rmzvgwBiwSy4anPHARDkmijEzO8GReNA05/dVJoqbm98brO6AawtQjjJkoZxjy7PmwJ57ZhBKOzTfE+SLAvzhyS5lM2gUxcWm2q8r3JRl2VmUsp3V7o8yuYlxkAFN0xJDenAVrGiBCEfFZlGGujsHWCppW+LBY5LvTLX7Vlpd3eCtMNSq0f7l+IGsU/sZ6kdKPSM+xa+p9VY8pKnZUEc4CwR6W0LzMOQGNrILViY3oKMQ34Rk5aUce
X-MS-Exchange-AntiSpam-MessageData: QHMmviQ5Dqj4DzXnBAWGuHg6+Jvh0oo9U9nDcGYzxESelS8iEWFuOMvOxlZSSv5fm5yzMQasEwyyOy8CPKMoNOkFytFqRDJzJ1Tdidi800efSJxQ+6SkNq+tXiyGa/ffjCKa0TSG+VDyXxYaaXy5Wg==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9d6bdf-060f-41f9-c6c2-08d7ca74fa79
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 13:13:26.5185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2CavnVxmYCcPGBsR0BbpscxOBP+DRUt6pMQbnWQbJSNHv9Qz7ONS4p5HbL472hlY2+6cJUpiC5zfXxrIB/jbaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0502MB3617
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_061329_622078_CA4ACF53 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMy8xNy8yMDIwIDI6NTYgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9uIFR1ZSwg
TWFyIDE3LCAyMDIwIGF0IDAxOjQ5OjQzUE0gKzAyMDAsIElzcmFlbCBSdWtzaGluIHdyb3RlOgo+
PiBZZXMsIGZvciBleGFtcGxlIHlvdSBjYW4gc2VlIHRoYXQgbnZtZV9yZG1hX2NyZWF0ZV9jdHJs
KCkgY2FsbHMKPj4gbnZtZV9yZG1hX3NldHVwX2N0cmwoKSB3aGljaCBjYWxscyB0byBudm1lX3N0
YXJ0X2N0cmwoKS4KPj4KPj4gQWZ0ZXIgY2FsbGluZyBudm1lX3JkbWFfc2V0dXBfY3RybCgpIHdl
IHRha2UgdGhlIHJlZiBjb3VudCBvbiB0aGUgY3RybCBieQo+PiBjYWxsaW5nIG52bWVfZ2V0X2N0
cmwoKS4KPj4KPj4gSW4gY2FzZSBudm1lX3N5c2ZzX2RlbGV0ZSgpIGlzIGNhbGxlZCBieSB0aGUg
dXNlciBiZWZvcmUgY2FsbGluZwo+PiBudm1lX2dldF9jdHJsKCkgdGhlIGNvbnRyb2xsZXIgcmVm
IGNvdW50Cj4+Cj4+IHJlYWNoIHRvIHplcm8gYW5kIG52bWVfZnJlZV9jdHJsKCkgaXMgY2FsbGVk
Lgo+PiBXZSBjYW4gZml4IHRoaXMgYnkgdGFraW5nIHRoZSByZWYgY291bnQgb24gZWFybGllciBz
dGFnZS4KPiBXaHkgZG9uJ3Qgd2UgZG8gdGhhdD8KCkkgd2lsbCBkbyBpdCBhdCBWMiA6KQoKPgo+
PiBGb3IgZXhhbXBsZSB3ZSBjYW4gdGFrZSBhIHJlZiBjb3VudCBhdCBudm1lX3N0YXJ0X2N0cmwo
KSwgYnV0IGl0IGFmZmVjdHMKPj4gYWxzbyBwY2kgbW9kdWxlIChJIG5lZWQgdG8gY2hlY2sgdGhh
dCksCj4+Cj4+IG9yIHdlIGNhbiB0YWtlIGl0IGJlZm9yZSBjYWxsaW5nIG52bWVfc3RhcnRfY3Ry
bCgpIGF0IHJkbWEvdGNwLiBUaGUgcmVmCj4+IGNvdW50IHNob3VsZCBiZSB0YWtlbiBvbmx5IGlm
wqAgIm5ldyIgaXMgdHJ1ZS4KPiBJIHRoaW5rIHdlIG5lZWQgdGhlIHJlZmVyZW5jZSBhcyBzb29u
IGFzIHRoZSBjb250cm9sbGVyIGlzIGV4dGVybmFsbHkKPiB2aXNpYmxlIGluIGFueSB3YXksIHdo
aWNoIEFGQUlDUyBpcyBkb25lIGJ5IGNkZXZfZGV2aWNlX2FkZCBpbgo+IG52bWVfaW5pdF9jdHJs
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
