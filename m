Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320121D3491
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 17:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ExR5D1/f4tcKo0UpDT5fO7XUQWpttxLKJWNxhG41VG8=; b=OaRPp1ydjHpuJsmtEcJEqw4Fm
	QOCgNiPwqpz8/tq2tPq00n1wc/LN5ceZzAOomCnLynunyFRlNOgJnXJgmAEGw9sCD6WuJ6K57zoPL
	vXgUl29N2Yrh9ZH8tJPfmG+ZluI6Y5yqlSlK3Qca/AJQhRaMehu5z2K7ggsO3Ly+L9qXOAql2Es9m
	3f5gUyNUoJLu8LNipDgT2gj+EwOZWnYll/py6rLIbpYAkn9Q4iijT1So/beMhtorq37eybcvLvKAF
	44Me5D4S7JHDE9dTCKYhe+uaDIIWsY2HfgzZa6JZkyFkNR7STsCvH+Q00kmJs7Q2g61Yiips21uld
	LZ6ZeNhfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFUS-0004h4-07; Thu, 14 May 2020 15:09:40 +0000
Received: from mail-db8eur05on2072.outbound.protection.outlook.com
 ([40.107.20.72] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFUK-0004fK-G3
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 15:09:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CrGe/pOzKYLzQWBWR9JKNrd4Y41yzqTShuelXB4fuae+g5h50NAwzD0AacUT8Qwdcae0oeIR/PBO9JumBqbKSFbzZUFYZGKxAvScuYh3mgPfUqa5YhtEe2z85kPM3eYFK58utcHjcO1iyqalkFBeHnv7al0QEAGbzOI/pAl0yYsY1ObmrPa35ILgBZmxaO1Rwm04bsDhi083oVccIJBKMJbcPGiFnL6nZCGQub9gwS0lWrdsVTHcw0F3ZAEJUjNkx4ovk/8J2q1LRwF1qVFIC6s7fWMQCtk1X4QBjcFmJgzAOPrI02IJkYXDr1UbDnUXmJtaorJhfXxLW0r1Zr6nKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DYqy6OV8qcj8hpyz6FyY9aPITz5Go8mvDp1WKzUQ10=;
 b=BoPDF4gmtraddkrq51XAdcMm612TT/rEvdeY6NfbXYsOefsK6srYGORMHgfiH80JeQZfDv00C6mk/Tl+olgCw7/T0vTSKewUK+65ATecG4xpzr/7Av9OyhMVAtzb+5Ow8xIio0bXurHbwO4F/gipe3jGF0VjEXBGKqJeHU/IdcJpGcqERtQ/ypLzRJ3tAM/YbAgW8yBiQQXN4tK7j05I67FDW0TimmMfNUVcibSpKtlg4/3cTM457kNUJNiHKVz1bwFKVl80OdgXOZIjUrolzxAoz/2ywNZIQqdBc8ygJNITNC9ybc3fV9GFFeswT4ZVhJzg60Icp/hgoO84YxCNfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DYqy6OV8qcj8hpyz6FyY9aPITz5Go8mvDp1WKzUQ10=;
 b=tsAbZ95C68q9nOe1zDQ7xqYssr0hOSpcnQDZIvpxbLREgr6xic/cBxayDZCfrw4SHopd8W413M3rkvCWgTLuJPwT/g19hy9iF7Ibnyq9SYHyZo+8usdT0adWKEcmsGNkHS1BbVLJU0g7VGU6E8JdJSQj+RODXkBp+h+5y3hBwUQ=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB4355.eurprd05.prod.outlook.com (2603:10a6:208:59::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Thu, 14 May
 2020 15:09:29 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2979.033; Thu, 14 May 2020
 15:09:29 +0000
Subject: Re: [PATCH 14/16] nvmet: add metadata/T10-PI support
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-15-maxg@mellanox.com>
 <0599e55c-a9bf-75f6-5df3-9558029712b8@broadcom.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <ff45413c-c43d-010d-68d9-d48b23693cee@mellanox.com>
Date: Thu, 14 May 2020 18:09:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <0599e55c-a9bf-75f6-5df3-9558029712b8@broadcom.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0033.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::13) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 AM0PR10CA0033.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Thu, 14 May 2020 15:09:27 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9cecf65f-a212-4e62-f994-08d7f818cc6a
X-MS-TrafficTypeDiagnostic: AM0PR05MB4355:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB4355A61815BC3C098C8B9D43B6BC0@AM0PR05MB4355.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-Forefront-PRVS: 040359335D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6MIDDsdlXyb/5OzMVRIoMLCFhCJIxDqw5ABpsC+B4L6npRXQuuNxykc57aT2rrbRCgyE8EowZD8uZuGklkGlpDdMkdw5hxc+s3B+uNd5epW/urURnBF0iTFBm5gKyTE9Nr0vHmPcfRyWEFTZGER0yNnrZpkmpF0Rn0pkNB0/YtqFHLrL8XnYm7hgPu+KFTf3vGV/7A1Nx+TsuKb4F7JpA8l1qdFZtWntzHfGBhGM6tbyAvLhT7WCXtdmC2TA9kOnYtFEL3ITEOjiQUSkkT0JjStOmZ/+OSIKaMltWs6hqtmYvCDc5bmP+UZ6wnhqHq7PDdho9n8KJq0CiBuOtGgcSuIpAZnlLJGD76LqE2ybKkz7tR0cRFBnaaEJ63GxYux+vjud1YcplxpgGnHzwu29n18aJS+yRa7ousEuIDOBs7R10UzGVzNckC6DxI8aYICnE+x3WXuQIpJigKN/7Eo4EWR92i0eqqlnPmZcQnlMdosVF6EKS2+FBIoxxtkqY7xr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(86362001)(5660300002)(186003)(31686004)(53546011)(52116002)(36756003)(8936002)(8676002)(316002)(16526019)(2906002)(31696002)(66556008)(2616005)(6486002)(4326008)(26005)(107886003)(66476007)(66946007)(956004)(16576012)(478600001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Z8oDruTvL/QBOg6FH0bBlmFRCZKzztts36DrANed+v8PGrHYfZTWF/mJ/djluyfKVC/IgM5/HGlqOVaMcQQRRnMxtlQMZkjJ0RPmQIFs/Q7ds7eBtLVgl4zvaBLoUZdHm6FQVbg0wBdcmbHZn7/XUE9thz7MA1EOg7ulutkQ/tUZ/vvea28qagbpp4U/EK6Oae5bAARBpCoA0EyaMLWvRzYmX/p1Of6Tj5C8UFBJna/7boNKH+pXDKZpvZ/iBjIuMSGdtVZKqN4xn7kUAHwagkPWdYM8mPSeKV7VNY6pRKdrAccki3WZxnWuM5QNojZXErc+D4RcdQjF0diAXRP/kYio50yhKOU0w4OOjmFeKRacsDb3cpLMxOUaf/uMER65bWZ4N/m29N/Nh8r75HZkk4jL3QXEiXrnzqiJydBZa3enBsr04ewjrbee0iyNIw6j4et3vGM37H5SGN7waoGw8xPy3CvsBg3G0xxIwe7/xUiLc1BxmEZGRtKzyUw7FHNQ
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cecf65f-a212-4e62-f994-08d7f818cc6a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2020 15:09:29.0719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sd6K5bC29+OQNESea152zINZi1mMdIf1bX/yAbSlAQbov2KLLmxBw1rtzxmR1tb3aziNymb7hQIL074nW7885Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080932_600059_7B65A528 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.72 listed in wl.mailspike.net]
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMTMvMjAyMCAxMDo1MSBQTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4KPgo+IE9uIDUvNC8y
MDIwIDg6NTcgQU0sIE1heCBHdXJ0b3ZveSB3cm90ZToKPj4gRnJvbTogSXNyYWVsIFJ1a3NoaW4g
PGlzcmFlbHJAbWVsbGFub3guY29tPgo+Pgo+PiBFeHBvc2UgdGhlIG5hbWVzcGFjZSBtZXRhZGF0
YSBmb3JtYXQgd2hlbiBQSSBpcyBlbmFibGVkLiBUaGUgdXNlciBuZWVkcwo+PiB0byBlbmFibGUg
dGhlIGNhcGFiaWxpdHkgcGVyIHN1YnN5c3RlbSBhbmQgcGVyIHBvcnQuIFRoZSBvdGhlciBtZXRh
ZGF0YQo+PiBwcm9wZXJ0aWVzIGFyZSB0YWtlbiBmcm9tIHRoZSBuYW1lc3BhY2UvYmRldi4KPj4K
Pj4gVXNhZ2UgZXhhbXBsZToKPj4gZWNobyAxID4gL2NvbmZpZy9udm1ldC9zdWJzeXN0ZW1zLyR7
TkFNRX0vYXR0cl9waV9lbmFibGUKPj4gZWNobyAxID4gL2NvbmZpZy9udm1ldC9wb3J0cy8ke1BP
UlRfTlVNfS9wYXJhbV9waV9lbmFibGUKPj4KPj4gU2lnbmVkLW9mZi1ieTogSXNyYWVsIFJ1a3No
aW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXggR3VydG92b3kg
PG1heGdAbWVsbGFub3guY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9udm1lL3RhcmdldC9hZG1p
bi1jbWQuY8KgwqAgfCAyNiArKysrKysrKysrKysrKystLS0KPj4gwqAgZHJpdmVycy9udm1lL3Rh
cmdldC9jb25maWdmcy5jwqDCoMKgIHwgNTggCj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuY8KgwqDCoMKgwqDC
oMKgIHwgMjEgKysrKysrKysrKystLS0KPj4gwqAgZHJpdmVycy9udm1lL3RhcmdldC9mYWJyaWNz
LWNtZC5jIHzCoCA3ICsrKy0tCj4+IMKgIGRyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaMKgwqDC
oMKgwqDCoCB8IDE5ICsrKysrKysrKysrKysKPj4gwqAgNSBmaWxlcyBjaGFuZ2VkLCAxMjEgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252
bWUvdGFyZ2V0L2FkbWluLWNtZC5jIAo+PiBiL2RyaXZlcnMvbnZtZS90YXJnZXQvYWRtaW4tY21k
LmMKPj4gaW5kZXggOTA1YWJhOC4uOWM4YTAwZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1l
L3RhcmdldC9hZG1pbi1jbWQuYwo+PiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2FkbWluLWNt
ZC5jCj4+IEBAIC0zNDEsNiArMzQxLDcgQEAgc3RhdGljIHZvaWQgbnZtZXRfZXhlY3V0ZV9pZGVu
dGlmeV9jdHJsKHN0cnVjdCAKPj4gbnZtZXRfcmVxICpyZXEpCj4+IMKgIHsKPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgbnZtZXRfY3RybCAqY3RybCA9IHJlcS0+c3EtPmN0cmw7Cj4+IMKgwqDCoMKgwqAg
c3RydWN0IG52bWVfaWRfY3RybCAqaWQ7Cj4+ICvCoMKgwqAgdTMyIGNtZF9jYXBzdWxlX3NpemU7
Cj4+IMKgwqDCoMKgwqAgdTE2IHN0YXR1cyA9IDA7Cj4+IMKgIMKgwqDCoMKgwqAgaWQgPSBremFs
bG9jKHNpemVvZigqaWQpLCBHRlBfS0VSTkVMKTsKPj4gQEAgLTQzMyw5ICs0MzQsMTUgQEAgc3Rh
dGljIHZvaWQgbnZtZXRfZXhlY3V0ZV9pZGVudGlmeV9jdHJsKHN0cnVjdCAKPj4gbnZtZXRfcmVx
ICpyZXEpCj4+IMKgIMKgwqDCoMKgwqAgc3RybGNweShpZC0+c3VibnFuLCBjdHJsLT5zdWJzeXMt
PnN1YnN5c25xbiwgCj4+IHNpemVvZihpZC0+c3VibnFuKSk7Cj4+IMKgIC3CoMKgwqAgLyogTWF4
IGNvbW1hbmQgY2Fwc3VsZSBzaXplIGlzIHNxZSArIHNpbmdsZSBwYWdlIG9mIGluLWNhcHN1bGUg
Cj4+IGRhdGEgKi8KPj4gLcKgwqDCoCBpZC0+aW9jY3N6ID0gY3B1X3RvX2xlMzIoKHNpemVvZihz
dHJ1Y3QgbnZtZV9jb21tYW5kKSArCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlcS0+cG9ydC0+aW5saW5lX2RhdGFfc2l6ZSkgLyAxNik7Cj4+ICvCoMKgwqAgLyoKPj4g
K8KgwqDCoMKgICogTWF4IGNvbW1hbmQgY2Fwc3VsZSBzaXplIGlzIHNxZSArIGluLWNhcHN1bGUg
ZGF0YSBzaXplLgo+PiArwqDCoMKgwqAgKiBEaXNhYmxlIGluLWNhcHN1bGUgZGF0YSBmb3IgTWV0
YWRhdGEgY2FwYWJsZSBjb250cm9sbGVycy4KPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgY21k
X2NhcHN1bGVfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5kKTsKPj4gK8KgwqDCoCBp
ZiAoIWN0cmwtPnBpX3N1cHBvcnQpCj4+ICvCoMKgwqDCoMKgwqDCoCBjbWRfY2Fwc3VsZV9zaXpl
ICs9IHJlcS0+cG9ydC0+aW5saW5lX2RhdGFfc2l6ZTsKPj4gK8KgwqDCoCBpZC0+aW9jY3N6ID0g
Y3B1X3RvX2xlMzIoY21kX2NhcHN1bGVfc2l6ZSAvIDE2KTsKPj4gKwo+Cj4gVGhpcyBzZWVtcyBv
ZGQgdG8gbWUsIGFuZCBzaG91bGQgcHJvYmFibHkgYmUgcmVmZXJlbmNpbmcgYXR0cmlidXRlcyBv
ZiAKPiB0aGUgYSB0cmFuc3BvcnQsIHdoaWNoIHNob3VsZCBwcm9iYWJseSBiZSBzZXQgYmFzZWQg
b24gd2hhdCB0cmFuc3BvcnQgCj4gcG9ydCB0aGUgY29tbWFuZCB3YXMgcmVjZWl2ZWQgb24uCgp3
ZSBzZXQgdGhpcyBpbiBhZG1pbl9jb25uZWN0OgoKY3RybC0+cGlfc3VwcG9ydCA9IGN0cmwtPnBv
cnQtPnBpX2VuYWJsZSAmJiBjdHJsLT5zdWJzeXMtPnBpX3N1cHBvcnQ7CgoKPgo+Cj4+IMKgwqDC
oMKgwqAgLyogTWF4IHJlc3BvbnNlIGNhcHN1bGUgc2l6ZSBpcyBjcWUgKi8KPj4gwqDCoMKgwqDC
oCBpZC0+aW9yY3N6ID0gY3B1X3RvX2xlMzIoc2l6ZW9mKHN0cnVjdCBudm1lX2NvbXBsZXRpb24p
IC8gMTYpOwo+PiDCoCBAQCAtNDY1LDYgKzQ3Miw3IEBAIHN0YXRpYyB2b2lkIG52bWV0X2V4ZWN1
dGVfaWRlbnRpZnlfY3RybChzdHJ1Y3QgCj4+IG52bWV0X3JlcSAqcmVxKQo+PiDCoCDCoCBzdGF0
aWMgdm9pZCBudm1ldF9leGVjdXRlX2lkZW50aWZ5X25zKHN0cnVjdCBudm1ldF9yZXEgKnJlcSkK
Pj4gwqAgewo+PiArwqDCoMKgIHN0cnVjdCBudm1ldF9jdHJsICpjdHJsID0gcmVxLT5zcS0+Y3Ry
bDsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgbnZtZXRfbnMgKm5zOwo+PiDCoMKgwqDCoMKgIHN0cnVj
dCBudm1lX2lkX25zICppZDsKPj4gwqDCoMKgwqDCoCB1MTYgc3RhdHVzID0gMDsKPj4gQEAgLTQ4
Miw3ICs0OTAsNyBAQCBzdGF0aWMgdm9pZCBudm1ldF9leGVjdXRlX2lkZW50aWZ5X25zKHN0cnVj
dCAKPj4gbnZtZXRfcmVxICpyZXEpCj4+IMKgwqDCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIC8q
IHJldHVybiBhbiBhbGwgemVyb2VkIGJ1ZmZlciBpZiB3ZSBjYW4ndCBmaW5kIGFuIGFjdGl2ZSAK
Pj4gbmFtZXNwYWNlICovCj4+IC3CoMKgwqAgbnMgPSBudm1ldF9maW5kX25hbWVzcGFjZShyZXEt
PnNxLT5jdHJsLCByZXEtPmNtZC0+aWRlbnRpZnkubnNpZCk7Cj4+ICvCoMKgwqAgbnMgPSBudm1l
dF9maW5kX25hbWVzcGFjZShjdHJsLCByZXEtPmNtZC0+aWRlbnRpZnkubnNpZCk7Cj4+IMKgwqDC
oMKgwqAgaWYgKCFucykKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZG9uZTsKPj4gwqAgQEAg
LTUyNiw2ICs1MzQsMTYgQEAgc3RhdGljIHZvaWQgbnZtZXRfZXhlY3V0ZV9pZGVudGlmeV9ucyhz
dHJ1Y3QgCj4+IG52bWV0X3JlcSAqcmVxKQo+PiDCoCDCoMKgwqDCoMKgIGlkLT5sYmFmWzBdLmRz
ID0gbnMtPmJsa3NpemVfc2hpZnQ7Cj4+IMKgICvCoMKgwqAgaWYgKGN0cmwtPnBpX3N1cHBvcnQg
JiYgbnZtZXRfbnNfaGFzX3BpKG5zKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWQtPmRwYyA9IE5W
TUVfTlNfRFBDX1BJX0ZJUlNUIHwgTlZNRV9OU19EUENfUElfTEFTVCB8Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBOVk1FX05TX0RQQ19QSV9UWVBFMSB8IE5WTUVfTlNfRFBDX1BJX1RZ
UEUyIHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5WTUVfTlNfRFBDX1BJX1RZUEUz
Owo+Cj4gV2h5IGlzIFBJX1RZUEUyIGdldHRpbmcgc2V0IGlmIG52bWV0X2JkZXZfbnNfZW5hYmxl
X2ludGVncml0eSgpIHdvbid0IAo+IHNldCBhIG1ldGFkYXRhIHNpemUgPwoKSXQgd29udDoKCnN0
YXRpYyBpbmxpbmUgYm9vbCBudm1ldF9uc19oYXNfcGkoc3RydWN0IG52bWV0X25zICpucykKewog
wqDCoMKgwqDCoMKgwqAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19CTEtfREVWX0lOVEVHUklUWSkp
CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwogwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIG5zLT5waV90eXBlICYmIG5zLT5tZXRhZGF0YV9zaXplID09IHNpemVvZihz
dHJ1Y3QgCnQxMF9waV90dXBsZSk7Cn0KCj4KPj4gK8KgwqDCoMKgwqDCoMKgIGlkLT5tYyA9IE5W
TUVfTUNfRVhURU5ERURfTEJBOwo+PiArwqDCoMKgwqDCoMKgwqAgaWQtPmRwcyA9IG5zLT5waV90
eXBlOwo+PiArwqDCoMKgwqDCoMKgwqAgaWQtPmZsYmFzID0gTlZNRV9OU19GTEJBU19NRVRBX0VY
VDsKPgo+IEkgZ3Vlc3MgdGhpcyBpcyBvayAtIGFsd2F5cyByZXF1aXJpbmcgZXh0ZW5kZWQgbGJh
cy4gV2lsbCB0aGlzIGV2ZXIgCj4gY2hhbmdlIG92ZXIgdGltZSA/CgpUaGlzIGlzIGFjY29yZGlu
ZyB0byB0aGUgU1BFQyBvZiBOVk1lL0ZhYnJpY3MKCgo+Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZC0+
bGJhZlswXS5tcyA9IG5zLT5tZXRhZGF0YV9zaXplOwo+PiArwqDCoMKgIH0KPj4gKwo+PiDCoMKg
wqDCoMKgIGlmIChucy0+cmVhZG9ubHkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZC0+bnNhdHRy
IHw9ICgxIDw8IDApOwo+PiDCoMKgwqDCoMKgIG52bWV0X3B1dF9uYW1lc3BhY2UobnMpOwo+IC4u
Lgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMgYi9kcml2ZXJzL252
bWUvdGFyZ2V0L2NvcmUuYwo+PiBpbmRleCA1MGRmYzYwLi45ZjZiMGY5IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0
L2NvcmUuYwo+PiBAQCAtMzIyLDEyICszMjIsMjEgQEAgaW50IG52bWV0X2VuYWJsZV9wb3J0KHN0
cnVjdCBudm1ldF9wb3J0ICpwb3J0KQo+PiDCoMKgwqDCoMKgIGlmICghdHJ5X21vZHVsZV9nZXQo
b3BzLT5vd25lcikpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gwqAg
LcKgwqDCoCByZXQgPSBvcHMtPmFkZF9wb3J0KHBvcnQpOwo+PiAtwqDCoMKgIGlmIChyZXQpIHsK
Pj4gLcKgwqDCoMKgwqDCoMKgIG1vZHVsZV9wdXQob3BzLT5vd25lcik7Cj4+IC3CoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIElmIHRoZSB1c2Vy
IHJlcXVlc3RlZCBQSSBzdXBwb3J0IGFuZCB0aGUgdHJhbnNwb3J0IGlzbid0IHBpIAo+PiBjYXBh
YmxlLAo+PiArwqDCoMKgwqAgKiBkb24ndCBlbmFibGUgdGhlIHBvcnQuCj4+ICvCoMKgwqDCoCAq
Lwo+PiArwqDCoMKgIGlmIChwb3J0LT5waV9lbmFibGUgJiYgIW9wcy0+bWV0YWRhdGFfc3VwcG9y
dCkgewo+PiArwqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJUMTAtUEkgaXMgbm90IHN1cHBvcnRlZCBi
eSB0cmFuc3BvcnQgdHlwZSAlZFxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cG9ydC0+ZGlzY19hZGRyLnRydHlwZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFM
Owo+PiArwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfcHV0Owo+PiDCoMKgwqDCoMKgIH0KPj4gwqAg
K8KgwqDCoCByZXQgPSBvcHMtPmFkZF9wb3J0KHBvcnQpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+
ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF9wdXQ7Cj4+ICsKPgo+IG9rIGZvciBub3cgLSBidXQg
aXQncyBnb2luZyB0byBoYXZlIHRvIGJlIGNoYW5nZWQgbGF0ZXIgdG8gY2hlY2sgdGhlIAo+IHBv
cnQgYXR0cmlidXRlcywgbm90IHRoZSB0cmFuc3BvcnQgb3BzLsKgIFNvIGl0J2xsIGdvIGJhY2sg
dG8gYWRkX3BvcnQsIAo+IHRoZW4gdmFsaWRhdGlvbiB3LyBkZWxldGVfcG9ydCBpZiBmYWlscy4K
Pgo+PiDCoMKgwqDCoMKgIC8qIElmIHRoZSB0cmFuc3BvcnQgZGlkbid0IHNldCBpbmxpbmVfZGF0
YV9zaXplLCB0aGVuIGRpc2FibGUgCj4+IGl0LiAqLwo+PiDCoMKgwqDCoMKgIGlmIChwb3J0LT5p
bmxpbmVfZGF0YV9zaXplIDwgMCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBvcnQtPmlubGluZV9k
YXRhX3NpemUgPSAwOwo+PiBAQCAtMzM1LDYgKzM0NCwxMCBAQCBpbnQgbnZtZXRfZW5hYmxlX3Bv
cnQoc3RydWN0IG52bWV0X3BvcnQgKnBvcnQpCj4+IMKgwqDCoMKgwqAgcG9ydC0+ZW5hYmxlZCA9
IHRydWU7Cj4+IMKgwqDCoMKgwqAgcG9ydC0+dHJfb3BzID0gb3BzOwo+PiDCoMKgwqDCoMKgIHJl
dHVybiAwOwo+PiArCj4+ICtvdXRfcHV0Ogo+PiArwqDCoMKgIG1vZHVsZV9wdXQob3BzLT5vd25l
cik7Cj4+ICvCoMKgwqAgcmV0dXJuIHJldDsKPj4gwqAgfQo+PiDCoCDCoCB2b2lkIG52bWV0X2Rp
c2FibGVfcG9ydChzdHJ1Y3QgbnZtZXRfcG9ydCAqcG9ydCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbnZtZS90YXJnZXQvZmFicmljcy1jbWQuYyAKPj4gYi9kcml2ZXJzL252bWUvdGFyZ2V0L2Zh
YnJpY3MtY21kLmMKPj4gaW5kZXggNTJhNmY3MC4uNDJiZDEyYiAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9udm1lL3RhcmdldC9mYWJyaWNzLWNtZC5jCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS90YXJn
ZXQvZmFicmljcy1jbWQuYwo+PiBAQCAtMTk3LDYgKzE5Nyw4IEBAIHN0YXRpYyB2b2lkIG52bWV0
X2V4ZWN1dGVfYWRtaW5fY29ubmVjdChzdHJ1Y3QgCj4+IG52bWV0X3JlcSAqcmVxKQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCArwqDCoMKgIGN0
cmwtPnBpX3N1cHBvcnQgPSBjdHJsLT5wb3J0LT5waV9lbmFibGUgJiYgCj4+IGN0cmwtPnN1YnN5
cy0+cGlfc3VwcG9ydDsKPj4gKwo+PiDCoMKgwqDCoMKgIHV1aWRfY29weSgmY3RybC0+aG9zdGlk
LCAmZC0+aG9zdGlkKTsKPj4gwqAgwqDCoMKgwqDCoCBzdGF0dXMgPSBudm1ldF9pbnN0YWxsX3F1
ZXVlKGN0cmwsIHJlcSk7Cj4+IEBAIC0yMDUsOCArMjA3LDkgQEAgc3RhdGljIHZvaWQgbnZtZXRf
ZXhlY3V0ZV9hZG1pbl9jb25uZWN0KHN0cnVjdCAKPj4gbnZtZXRfcmVxICpyZXEpCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIC3CoMKgwqAgcHJf
aW5mbygiY3JlYXRpbmcgY29udHJvbGxlciAlZCBmb3Igc3Vic3lzdGVtICVzIGZvciBOUU4gJXMu
XG4iLAo+PiAtwqDCoMKgwqDCoMKgwqAgY3RybC0+Y250bGlkLCBjdHJsLT5zdWJzeXMtPnN1YnN5
c25xbiwgY3RybC0+aG9zdG5xbik7Cj4+ICvCoMKgwqAgcHJfaW5mbygiY3JlYXRpbmcgY29udHJv
bGxlciAlZCBmb3Igc3Vic3lzdGVtICVzIGZvciBOUU4gJXMlcy5cbiIsCj4+ICvCoMKgwqDCoMKg
wqDCoCBjdHJsLT5jbnRsaWQsIGN0cmwtPnN1YnN5cy0+c3Vic3lzbnFuLCBjdHJsLT5ob3N0bnFu
LAo+PiArwqDCoMKgwqDCoMKgwqAgY3RybC0+cGlfc3VwcG9ydCA/ICIgVDEwLVBJIGlzIGVuYWJs
ZWQiIDogIiIpOwo+PiDCoMKgwqDCoMKgIHJlcS0+Y3FlLT5yZXN1bHQudTE2ID0gY3B1X3RvX2xl
MTYoY3RybC0+Y250bGlkKTsKPj4gwqAgwqAgb3V0Ogo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
dm1lL3RhcmdldC9udm1ldC5oIGIvZHJpdmVycy9udm1lL3RhcmdldC9udm1ldC5oCj4+IGluZGV4
IGNlZWRhYWYuLjI5ODZlMmMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZt
ZXQuaAo+PiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgKPj4gQEAgLTE0NSw2ICsx
NDUsNyBAQCBzdHJ1Y3QgbnZtZXRfcG9ydCB7Cj4+IMKgwqDCoMKgwqAgYm9vbMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBlbmFibGVkOwo+PiDCoMKgwqDCoMKgIGludMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbmxpbmVfZGF0YV9zaXplOwo+PiDCoMKgwqDCoMKgIGNvbnN0
IHN0cnVjdCBudm1ldF9mYWJyaWNzX29wc8KgwqDCoCAqdHJfb3BzOwo+PiArwqDCoMKgIGJvb2zC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGlfZW5hYmxlOwo+Cj4gb2sgLSBidXQgd291
bGQgaGF2ZSBsaWtlZCB0byBoYXZlIHNlZW4gdGhpcyBnZW5lcmljLWl6ZWQgZm9yIG1ldGFkYXRh
IAo+IHN1cHBvcnQsIHRoZW4gUEkgaW4gdGhlIG1ldGFkYXRhLgo+Cj4KPiAtLSBqYW1lcwo+Cj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
