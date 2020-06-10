Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACF01F4A48
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 02:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7fwOeo1jW+cwN6tXudoJihQc+bvvDhvj29JFxgs/bvc=; b=Om37n5dEiDprifQSyde4spvCo
	3xIK/KLpMTxYL8cAFhwzyZcELEfrh0AybAIPMxlD/mKMG7YeN2YspC6olW2t+UzVrdz04D5ocsp8s
	52pZZ2jBxx1t4rc1Jwx8iQgTglQZnY2z3yg3FUzZKcJnpeveY0qisQHjEuNlC9lSLEXFM0NPMNEKP
	YNv2Fn94ke9UoKqDkdbaT++jxiDsHdMUMG563ojha4aoP7+h1VcJbJrKS+iDOj+qdXGwm/Vmc0FhV
	QS98g9XDMk5jNyqCvBy44FJhw9nfs7JLwhCXVlc89ydmmNA61izs95FB6SwV465xeBCArJ2Cf8+eD
	Qb1c+8oIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jioHP-0006IX-7t; Wed, 10 Jun 2020 00:07:43 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jioHK-0006Hw-Ia
 for linux-nvme@lists.infradead.org; Wed, 10 Jun 2020 00:07:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYA3nmsiidVcDfhwRHlmMscRxlhzjLMIYGemFZUsDavVmxpAqDEuxllI+QiI1cFJ7fF9JpC/z2ySXEqS3G0ItmnvchO007wz0BBSIEx4gCs7VgHpaG+FlulJ5mqlh4Jxcfws1lTvPRdWNn2Av8bnRwJH3WxvS+4h46+Xt6qv8IN+Ije5W4C8Rq/EeWhTc8EY0MTTBLvP7NIfHE6xDs4nCq+8vpp94DyI5FMo6m+xatrYYxUE8LewH/epm0NhdaUOmyE1X61c9N90u2FgqKja9AVp/Y2dAXFoBgV97hFiPlDX2iqwZWNjzSZJg0lZnI9j/UJlWPPXp/lsYTBZr2HMGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXaU1yFbd/Ny5muts1UQlgQu2SA6gjghlj+5Sd4mQA8=;
 b=PDTWvLiiDEZlM1bJI4OzC58nqjfsviBo2tKtfrYk17Wz6XzUWZJVXJ+57z8Z+f3n19KnynGSx/GZLypsiA2H+X9eOP2OfugqBOeiv3IU+LIHB8la+g77990m97tG/H9ejVT50GfYu4G0HmC592B+ZpU/PaiyHzVsRRjE/sPIx+zTmjxzTRZwXbw11ECqCQcBsUmwjkRtUswl5pCTDj7MPSXhNmaOdfXdSNthfJXDnTrYtIfAitMoxeyiP7CIzEagkjv73FX+HdvQJjKGEwT2ua0UvUAotpdcQw6Jm3L5HmdqHLbw+tOYEtqk0w7qdhvGifs2bmKlXln8jRpvW1XrQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXaU1yFbd/Ny5muts1UQlgQu2SA6gjghlj+5Sd4mQA8=;
 b=Gc0e8j4gMuGqIo27joALBHCLA7RPM4Kgf3bsxsECyrWV97rPVddW3NPqHX/WP4c48db2Qv/pAZfFa/I3QPseqsiPKy52MScpS6WTpxdn2xWaVwxbxwxACZbkfNQF88FIOfaaa2mailEp84bEfFIQszUmBtIXp1TvYoF/I7/rllc=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB4370.eurprd05.prod.outlook.com (2603:10a6:208:5d::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.22; Wed, 10 Jun
 2020 00:07:33 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::d05d:35af:3f2f:9110]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::d05d:35af:3f2f:9110%5]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 00:07:32 +0000
Subject: Re: [PATCH 1/5] nvme: introduce nvme-types header file
To: Christoph Hellwig <hch@lst.de>
References: <20200602131546.51903-1-maxg@mellanox.com>
 <20200602131546.51903-2-maxg@mellanox.com> <20200609135724.GC10669@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <70545678-b026-9886-2e27-8147b85da713@mellanox.com>
Date: Wed, 10 Jun 2020 03:07:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
In-Reply-To: <20200609135724.GC10669@lst.de>
Content-Language: en-US
X-ClientProxiedBy: AM0P190CA0015.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::25) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 AM0P190CA0015.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.19 via Frontend Transport; Wed, 10 Jun 2020 00:07:31 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2b6f2e0f-ed47-4ac1-b91e-08d80cd245c2
X-MS-TrafficTypeDiagnostic: AM0PR05MB4370:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB4370ECAB61E69FD490DCA25FB6830@AM0PR05MB4370.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0430FA5CB7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZDaEXYWmXe9dpobia1dzIY/p6ORWv7//qfR+g2ysFOdohvnrELBHqWixveGT5FHecnaqpx3+kDUOFF88bF1i/ZF6gboqMlkSSzqyAPnECl/eZFebD2+BE9NsvwZEMOQJ+4QFClkLjNcLoZjD91K7j0i7LV7o8JGV4TJYSLSKzApUAfjVRR1l9/mRc17e4y6zH/7r/sq5zcPTF5vftWgcFceRe5FrvsrApd4/NrvtSMgdd7dsQqWHI6Z3Th8zMXb3SdJ5i3AA5yvDgh+nTrDUbOEqAylnjeOrq3YHtr3lFWQBXgz8dYkvzhKCx/eRZbyIuRAOcPmBEfOjTEqDCurTL9RxVXiofS+cZCiux17K7vUp63f1IA8p5zykCOPIc8ql
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39850400004)(366004)(346002)(376002)(396003)(5660300002)(2616005)(16576012)(26005)(6486002)(66476007)(8676002)(316002)(6916009)(186003)(8936002)(4744005)(4326008)(478600001)(16526019)(956004)(36756003)(66556008)(31686004)(6666004)(31696002)(2906002)(52116002)(53546011)(107886003)(86362001)(66946007)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: PShTyCeD6d0vG1ahsGQ3aMwyYvd8inIzXJRsJPBKMo0nQSwc0W3WE+ZhgRqjcYSzazR+QWMVtO4KW1pltCW4TLjP5YdTkfJqYWWpNVk6JV1z6UQwF0tWgMBJi9ZxQ01YpzSXm1/90Q7UdnpFqOKrQ2Hyr6nbRdk+tKEZyU01G3nl1i0VovNEYx/4c6kWEyC64bSXjHeL5Wv0pB6hn+ajwgy+0b40FfxS9EJKkquvPIrL+mCoIkOHGRUBNEZQfAiXCyarzQmWdfGMuE03NqVdQflan7oBhsqOYiOXgZqwbw/h2J5TzVAvmZ9Tsbj6DzRcQuvjhC+hheVhamGvI7XDmty6L4IboPTRv0xDDHQbZCXLqnJGbt+18Aoo3feWti55LsIJ6DXGOg5TLrJ+ZZdyl7wAabTbuMVeGGvW3JDOZH4F+GXifwo+P7XU6GmJSjnzeW7S+uyY4lVVzq+T5mH7w1+jMuNnGSTIXSKk1UuCbOyV7oCYtPyJHiv/qAj1I0cY
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b6f2e0f-ed47-4ac1-b91e-08d80cd245c2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2020 00:07:32.8648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uRFPZ8eJYSPWmylSnaksFcL2beURsBWVU2eAVmEdk04hjS/iPNF1v+mGi/Z6dFK/+AKipuUk1+LX3hNMf1KblQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_170738_669059_E2E95F03 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.80 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org, oren@mellanox.com,
 kbusch@kernel.org, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDYvOS8yMDIwIDQ6NTcgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9uIFR1ZSwg
SnVuIDAyLCAyMDIwIGF0IDA0OjE1OjQyUE0gKzAzMDAsIE1heCBHdXJ0b3ZveSB3cm90ZToKPj4g
Q2VudHJhbGl6ZSB0aGUgbWFwcGluZyBiZXR3ZWVuIG5hbWUgYW5kIHR5cGUgdG8gYSBjb21tb24g
aGVhZGVyIGZpbGUKPj4gaW5zdGVhZCBvZiBkdXBsaWNhdGluZyBsb2dpYyBpbiBib3RoIE5WTWUg
aG9zdCBhbmQgdGFyZ2V0IGRyaXZlcnMuCj4gVGhlIGlkZWEgbG9va3Mgb2sgdG8gbWUsIGJ1dCBu
dm1lX3R5cGVzIHN1Z2dlc3RlZCBhIGhlYWRlciBhbGEKPiA8c3lzL3R5cGVzLmg+IG9yIDxsaW51
eC90eXBlcy5oPiB0byBtZS4gIE5vdCBzdXJlIHdoYXQgYSBnb29kIG5hbWUKPiB3b3VsZCBiZSwg
dGhvdWdoLiAgSSBhbHNvIHN1c3BlY3QgdGhhdCBrZWVwaW5nIGl0IHVuZGVyIGRyaXZlcnMvbnZt
ZS8KPiBpbiBzb21lIGZvcmsgbWlnaHQgbWFrZSBtb3JlIHNlbnNlLgoKaG93IGFib3V0IDxsaW51
eC9udm1lLWNvbW1vbi5oPsKgIHRoYXQgd2lsbCBiZSB1c2VkIGZvciBjb21tb24gY29kZSAKYmV0
d2VlbiBob3N0L3RhcmdldCBzdWJzeXN0ZW1zID8KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbnZtZQo=
