Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB381C6BF6
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 10:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7n4yqsaUL1MPC/4dy06u7+2/Xc3FZ4ZOeh0aZ417OvI=; b=XRjy499QAmrWYXg+0sOoGNTn2
	nkK47TL0jdTR9XA0D0iT4kLzfCa9qwcHQd+4wfWvKDL6V/ZKbP7lio/fZEnj+vuSNBeKn6qOuUE0u
	4jVYvFFX1KrOZxy8mFuqdmlhINLpPuXnzKxM0nb8wqHKtu1/+FmGJjQSAxYA7RTK5i9KiJe7v46Lb
	XOIdKGIOponG01l2LpfNb8dMOrrP76t7YG76YW/6Oo2QDyIWxFaZQu1IgCC2i7o94HQFdOrE4w+6f
	BlCfsGxcPyXM6F7oKSDjBzN2dxNN5Wavux0sVSK5nig2GORe6tA9DfcFS/A9R/0WIOdTTv0R6S9xy
	AAc+LZSCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFbD-0001Fs-MS; Wed, 06 May 2020 08:40:15 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFaz-0000ZL-0x
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 08:40:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sy+EtLJ6dcbcoI5OOB5KNAyluXZyvwLJbwYCWL+jGp0PnG5cXODH+OqunV1rmoTr/nB7J2eypCaY87TgY4kEcw2w0qGa+ImwsMK1y5dMjJkUqJ95UJdIv+MNMlodHudU7+fN6x71W4EvPzOoAQ98Xuz0p6iX6DyjePOA4VGIsTRgK65YJYUc/j8ZRFFAmsEhXFFRbw+86J4eGkhU4ljiV+fB0pKOeM0drMV014A161LAofJ3IME8puOUZguKR1M/9O8M23EHs0p1WXxvBCA5cKXEjoWCB6f0zV0qbq2X++j8p5RF+/vIOyDfDot9JiwewpBNA3V65MmD9Vai0/elKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AMSyVmeMDrgLhBPzrh/UfJoUdoK5wNOjmGyX3NQPOaM=;
 b=NLDYrnBdK/p1XpdijV1/qiNNNUApoxdauxTddY03U6b4jDGIRuIHWz8muZE/1RsIcc8MH8W4xIZO+3ejs/W11PyiGDKHFkUps6Ja3kRE1fF/vcwgBeFJPjxHuPIvByDzwRaeObz7HZ3tG0Y9yVfeig0k3jC8MZ0hcDOyx1ZbM4b5vj4fI4Voyw3ZXZdrtXIUUoXkkmUcaMgac8SBzs69tCFK4Xh4MxCKgPvfl7DtPCG0d0kTqZJfOCkMU4lJ+uoCzeWED3Tkf/1y2TXPYGukthnyNP2hVdZjt3CcS6X/r7OICtPPokqUOJNOJHPkKWzEQPtsu2BcrcCV5c+yWKVNNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AMSyVmeMDrgLhBPzrh/UfJoUdoK5wNOjmGyX3NQPOaM=;
 b=W/jLe7m+E9KEl/GoKttLeBJ2rv7yLMgtlQA8Xg5qe936a7GO7DBsYRVnZkO60t3adYMOdBNckS/eBMy5V953+ZHVEJAmThBPrVdcAj9cyBYQ55jyvfoN6RvEDerW435wi2OonSd8QEqTFyk9rhbAqmM0rZYQTVIKJ+Z2kj60pfs=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB5698.eurprd05.prod.outlook.com (2603:10a6:208:113::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Wed, 6 May
 2020 08:39:55 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2979.028; Wed, 6 May 2020
 08:39:55 +0000
Subject: Re: [PATCH 03/16] nvme: introduce NVME_NS_METADATA_SUPPORTED flag
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-4-maxg@mellanox.com>
 <e21354ca-a7bb-cf2d-d427-c8410c797a49@broadcom.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <71c7458e-81cd-7200-2e1b-3563cdddd5ad@mellanox.com>
Date: Wed, 6 May 2020 11:39:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <e21354ca-a7bb-cf2d-d427-c8410c797a49@broadcom.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR02CA0090.eurprd02.prod.outlook.com
 (2603:10a6:208:154::31) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 AM0PR02CA0090.eurprd02.prod.outlook.com (2603:10a6:208:154::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28 via Frontend
 Transport; Wed, 6 May 2020 08:39:53 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f79be23b-8618-4fbf-fc58-08d7f1990d2c
X-MS-TrafficTypeDiagnostic: AM0PR05MB5698:|AM0PR05MB5698:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB5698DDD1E3B22ACF1FEEEEDCB6A40@AM0PR05MB5698.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AMGWcLYkcOv4j/wptba7zc+hrGU3b/b75O9Y6BzYkFBZEXiN+PQHZWrgU0/TLPFC6WnJSE4nYeeuAw5gxERJxrjwlh8jg08lhUVFcCPN8o9oudjF+WbujwB95y/TE4RJ8z+VZgnGnJLQ48HHArMFFHIAEKMU9skmgj5ib98EPdzuGWPVrOavEgkGYIpqFgmcMqwm5JTIY4jwLJrYWuHs2TuyxMVTH828k5RYQ5FuVBelv4lNUNvG+qE8EslDLbsvwa/8UyhJ3ccb9G6zfjtbHhyMrb3fo8TO0N5FFWDx5CbxRa7w+wKlOcne7s3dSXMVkH18mED7d0aT4HpUrBR94JF74i4E3hWKhWoLjA5blk+rYPJE9E6pOAUjJuP31naS98D1C5wVBes46kw6j2Dr/j+jBLtxCvjTSk9ng6ShDu00qWrk9SmHzy+lrYFmwxpdRdEWdfPZvKIS7VhhhaabwjaUlewQ0e7wOJXXoMpbzDw1Yw7MIeH6UjHRVE3XSSueQPpRGBQi+o36q7h85Z0fhGsmRe4xMJmitL7rpCztFfwmxrdm3mzM+ZXNKcH/1Qrh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(33430700001)(8936002)(16576012)(316002)(66476007)(66946007)(956004)(36756003)(66556008)(2616005)(478600001)(26005)(16526019)(5660300002)(86362001)(53546011)(6486002)(31686004)(31696002)(2906002)(186003)(107886003)(33440700001)(4326008)(52116002)(8676002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: DAtK1Bm4uYjTRbID8RSsTWTdR7gIsiom/TjL2ROs5GQBm5f306GLwxX838jXHO62u40w+7f5ZXoM/4oygMauMIOaVjD1oKns9GIEi3Q+92kLJaJy16jcIgUXHvMrzgEVZ/bBVt/Rxx1xMBDjVKyaiKkMN1s/aRbh/Zb4PBDZZGAeIv75B2+bx2RQxLAIrE9qppACqWbYXM9B9DcYxq/2lO5WMz0m+SrPNQ8vJ566pPBBlnRaKfhXd5fFQ/6I4IapRkZ1/S3UrEfxGoliGmTvjBAHE3sufH36yKF3Oizpo5ETujUfRKzXq8fnsVDNqKMVUGwaifx1nd0H4LTU1fsZgEHN2Bxhvn0vBA4mto8lL6eB4JaCHoPfAFsWbbTfrDN6oYZxgWTboX8Qs9RFk46QAeJB6YSulpb/btllyf+bl+7bZ09ZhnkY0zTW9RxQR/qGUqOuXiiMid6URINPf2ZH/lnG+yY9ZVuMRgsLQqk5b0Z9fS6SuiFT40lfcG2aIDcxvOWsKHLWxEsG1ERq81iN+moQDiCAVUz9lJlRT45iadn/HchO81Ssbd7CI8aHYRW+ciAHkY0rkJDtTuhpPVwY/XtToOWEMzpCzGvaZ1mvDg+IQxZ9P+63+143X5DewnEnVKZheJy8Cch5GTFhwIxB5jDXWzPaInmKXx+KbZtyBBrG56hijF47wOsT1x2SMvZK5mT1KnnPXOUKW43goUfJuTEps4UVPfDSxafXRb7QiBNb3NN/3Jci+0DWGoLTggzMjfxy0wJlPqMtVCCj5Q//WNrxb6NJw7EzsAG/cnwt4c0=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f79be23b-8618-4fbf-fc58-08d7f1990d2c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 08:39:55.1495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GH2dljEDF6KteLRMfsNRUYE0i8G5QyanrlLULMaX2Mioo0ULkpVfC0gBYSreih0I77TOBVCU5Wi8JBOt+ffK8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5698
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_014001_172312_8FB77A61 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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

Ck9uIDUvNi8yMDIwIDI6MzMgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+Cj4KPiBPbiA1LzQvMjAy
MCA4OjU3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4+IFRoaXMgaXMgYSBwcmVwYXJhdGlvbiBm
b3IgYWRkaW5nIHN1cHBvcnQgZm9yIG1ldGFkYXRhIGluIGZhYnJpYwo+PiBjb250cm9sbGVycy4g
TmV3IGZsYWcgd2lsbCBpbXBseSB0aGF0IE5WTWUgbmFtZXNwYWNlIHN1cHBvcnRzIGdldHRpbmcK
Pj4gbWV0YWRhdGEgdGhhdCB3YXMgb3JpZ2luYWxseSBnZW5lcmF0ZWQgYnkgaG9zdCdzIGJsb2Nr
IGxheWVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXggR3VydG92b3kgPG1heGdAbWVsbGFub3gu
Y29tPgo+PiBSZXZpZXdlZC1ieTogSXNyYWVsIFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29t
Pgo+PiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4+IC0tLQo+
PiDCoCBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCA0MSAKPj4gKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0KPj4gwqAgZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oIHzC
oCAxICsKPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVy
cy9udm1lL2hvc3QvY29yZS5jCj4+IGluZGV4IDFkMjI2Y2MuLjRiN2ZhZjkgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMKPj4gQEAgLTE4ODIsMTMgKzE4ODIsMjcgQEAgc3RhdGljIHZvaWQgbnZtZV91cGRhdGVf
ZGlza19pbmZvKHN0cnVjdCAKPj4gZ2VuZGlzayAqZGlzaywKPj4gwqDCoMKgwqDCoCBibGtfcXVl
dWVfaW9fbWluKGRpc2stPnF1ZXVlLCBwaHlzX2JzKTsKPj4gwqDCoMKgwqDCoCBibGtfcXVldWVf
aW9fb3B0KGRpc2stPnF1ZXVlLCBpb19vcHQpOwo+PiDCoCAtwqDCoMKgIGlmIChucy0+bXMgJiYg
IShucy0+ZmVhdHVyZXMgJiBOVk1FX05TX0VYVF9MQkFTKSAmJgo+PiAtwqDCoMKgwqDCoMKgwqAg
KG5zLT5jdHJsLT5vcHMtPmZsYWdzICYgTlZNRV9GX01FVEFEQVRBX1NVUFBPUlRFRCkpCj4+IC3C
oMKgwqDCoMKgwqDCoCBudm1lX2luaXRfaW50ZWdyaXR5KGRpc2ssIG5zLT5tcywgbnMtPnBpX3R5
cGUpOwo+PiAtwqDCoMKgIGlmICgobnMtPm1zICYmICFudm1lX25zX2hhc19waShucykgJiYgIWJs
a19nZXRfaW50ZWdyaXR5KGRpc2spKSB8fAo+PiAtwqDCoMKgwqDCoMKgwqAgbnMtPmxiYV9zaGlm
dCA+IFBBR0VfU0hJRlQpCj4+ICvCoMKgwqAgLyoKPj4gK8KgwqDCoMKgICogVGhlIGJsb2NrIGxh
eWVyIGNhbid0IHN1cHBvcnQgTEJBIHNpemVzIGxhcmdlciB0aGFuIHRoZSBwYWdlIAo+PiBzaXpl
Cj4+ICvCoMKgwqDCoCAqIHlldCwgc28gY2F0Y2ggdGhpcyBlYXJseSBhbmQgZG9uJ3QgYWxsb3cg
YmxvY2sgSS9PLgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBpZiAobnMtPmxiYV9zaGlmdCA+
IFBBR0VfU0hJRlQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjYXBhY2l0eSA9IDA7Cj4+IMKgICvC
oMKgwqAgLyoKPj4gK8KgwqDCoMKgICogUmVnaXN0ZXIgYSBtZXRhZGF0YSBwcm9maWxlIGZvciBQ
SSwgb3IgdGhlIHBsYWluIAo+PiBub24taW50ZWdyaXR5IE5WTWUKPj4gK8KgwqDCoMKgICogbWV0
YWRhdGEgbWFzcXVlcmFkaW5nIGFzIFR5cGUgMCBpZiBzdXBwb3J0ZWQsIG90aGVyd2lzZSAKPj4g
cmVqZWN0IGJsb2NrCj4+ICvCoMKgwqDCoCAqIEkvTyB0byBuYW1lc3BhY2VzIHdpdGggbWV0YWRh
dGEgZXhjZXB0IHdoZW4gdGhlIG5hbWVzcGFjZSAKPj4gc3VwcG9ydHMKPj4gK8KgwqDCoMKgICog
UEksIGFzIGl0IGNhbiBzdHJpcC9pbnNlcnQgaW4gdGhhdCBjYXNlLgo+PiArwqDCoMKgwqAgKi8K
Pj4gK8KgwqDCoCBpZiAobnMtPm1zKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoSVNfRU5BQkxF
RChDT05GSUdfQkxLX0RFVl9JTlRFR1JJVFkpICYmCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IChucy0+ZmVhdHVyZXMgJiBOVk1FX05TX01FVEFEQVRBX1NVUFBPUlRFRCkpCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIG52bWVfaW5pdF9pbnRlZ3JpdHkoZGlzaywgbnMtPm1zLCBucy0+cGlf
dHlwZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIGlmICghbnZtZV9uc19oYXNfcGkobnMpKQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXBhY2l0eSA9IDA7Cj4+ICvCoMKgwqAgfQo+PiAr
Cj4gTG9vayBiZWxvdyBmb3IgaG93IEkgaW50ZXJwcmV0IHRoZSBtZWFuaW5nIG9mIHRoZSAKPiBO
Vk1FX05TX01FVEFEQVRBX1NVUFBPUlRFRCBmbGFnLiBJdCdzIGEgcm9sbHVwIG9mIHNldmVyYWwg
Y29uZGl0aW9ucy4gCj4gTm90IGFsbCBvZiB0aG9zZSBjb25kaXRpb25zIGFyZSBjb25zaWRlcmVk
IGluIHRoZSBlbHNlIGNsYXVzZS4KCk5WTUVfTlNfTUVUQURBVEFfU1VQUE9SVEVEIGhhcyAxIG1l
YW5pbmc6CgpzdXBwb3J0IGdldHRpbmcgbWV0YWRhdGEgZnJvbSB0aGUgYmxvY2sgbGF5ZXIuCgpM
aW51eCBibG9jayBpcyBzdXBwbHlpbmcgb25seSAyIHNlcGFyYXRlIHBvaW50ZXJzIGZvciBkYXRh
L21ldGFkYXRhIChha2EgCk5vbi1FeHRlbmRlZCBtb2RlIGluIE5WTWUpLgoKU28gZHJpdmVycyB0
aGF0IGNhbid0IGNvbnZlcnQgYmV0d2VlbiB0aGUgMiB3aWxsIHNldCB0aGlzIGZsYWcgb25seSBp
biAKY2FzZSB0aGVpciBjb250cm9sbGVyIHN1cHBvcnQgc2VwYXJhdGUgYnVmZmVyIG1vZGUuCgpJ
dCBkb2Vzbid0IG1lYW4gdGhlIGNvbnRyb2xsZXIgY2FuJ3QgZ2VuZXJhdGUgdGhlIG1ldGFkYXRh
IGJ5IGhpbXNlbGYuLi4KCk1heWJlIHdlIG1vdmUgdGhlIElTX0VOQUJMRUQoQ09ORklHX0JMS19E
RVZfSU5URUdSSVRZKSB0byB0aGUgcGxhY2UgCndoZXJlIHdlIHN1cHBvc2UgdG8gc2V0IHRoZSBO
Vk1FX05TX01FVEFEQVRBX1NVUFBPUlRFRC4KCndpbGwgaXQgbWFrZSBsaWZlIGVhc2llcjoKCmlm
IChucy0+ZmVhdHVyZXMgJiBOVk1FX05TX01FVEFEQVRBX1NVUFBPUlRFRCkKCiDCoMKgwqAgbnZt
ZV9pbml0X2ludGVncml0eShkaXNrLCBucy0+bXMsIG5zLT5waV90eXBlKTsKCmVsc2UgaWYgKCFu
dm1lX25zX2hhc19waShucykpCgogwqDCoMKgIGNhcGFjaXR5ID0gMDsKCgoKPgo+IFRoZSAiZWxz
ZSBpZiIgY2xhdXNlIGxvb2tzIHRvbyBsaWdodCB0byBhZGRyZXNzIGFsbCB0aGUgY2FzZXMgd2hl
cmUgCj4gY2FwYWNpdHkgc2hvdWxkIGJlIHNldCB0byAwLiBQcm9iYWJseSBzaG91bGRuJ3QgYmUg
YW4gZWxzZS4KPiBFeGFtcGxlczoKPiAtICEgSVNfRU5BQkxFRChDT05GSUdfQkxLX0RFVl9JTlRF
R1JJVFkpICYgbWV0YSBpcyBwacKgwqAgKGFrYSAKPiBudm1lX2hzX2hhc19waSkKPiAtIG1ldGEg
aXMgbm90IHBpICh0aHVzIHBpX3R5cGU9MCBpbiBjYWxsIHRvIG52bWVfaW5pdF9pbnRlZ3JpdHko
KSksIAo+IHdoaWNoIHJlc3VsdHMgaW7CoCAhYmxrX2dldF9pbnRlZ3JpdHkoZGlzaykgd2hpY2gg
aXMgbm90IGNoZWNrZWQuCgpUaGlzIHdpbGwgc2V0IGR1bW15IG5vcF9wcm9maWxlIGFuZCBibGtf
Z2V0X2ludGVncml0eShkaXNrKSB3aWxsIG5vdCAKcmV0dXJuIE5VTEwuCgpJZiB3ZSBpbml0IHRo
ZSBpbnRlZ3JpdHkgaW4gbnZtZV9pbml0X2ludGVncml0eSBpdCB3aWxsIG5vdCByZXR1cm4gTlVM
TCAKYWxzbyBmb3IgdHlwZSAwLgoKCj4gLSBtZXRhIGlzIHBpIGFuZDoKPiDCoCAtICFucy0+Y3Ry
bC0+b3BzLT5mbGFncyAmIE5WTUVfRl9NRVRBREFUQV9TVVBQT1JURUQKPiDCoCAtICFucy0+ZmVh
dHVyZXMgJiBOVk1FX05TX0VYVF9MQkFTCj4KPiBtYXkgYmUgYSBjb3VwbGUgb3RoZXJzLgo+Cj4+
IHNldF9jYXBhY2l0eV9yZXZhbGlkYXRlX2FuZF9ub3RpZnkoZGlzaywgY2FwYWNpdHksIGZhbHNl
KTsKPj4gwqAgwqDCoMKgwqDCoCBudm1lX2NvbmZpZ19kaXNjYXJkKGRpc2ssIG5zKTsKPj4gQEAg
LTE5MjMsMTQgKzE5MzcsMjcgQEAgc3RhdGljIHZvaWQgX19udm1lX3JldmFsaWRhdGVfZGlzayhz
dHJ1Y3QgCj4+IGdlbmRpc2sgKmRpc2ssIHN0cnVjdCBudm1lX2lkX25zICppZCkKPj4gwqAgwqDC
oMKgwqDCoCBucy0+ZmVhdHVyZXMgPSAwOwo+PiDCoMKgwqDCoMKgIG5zLT5tcyA9IGxlMTZfdG9f
Y3B1KGlkLT5sYmFmW2lkLT5mbGJhcyAmIAo+PiBOVk1FX05TX0ZMQkFTX0xCQV9NQVNLXS5tcyk7
Cj4+IC3CoMKgwqAgaWYgKG5zLT5tcyAmJiAoaWQtPmZsYmFzICYgTlZNRV9OU19GTEJBU19NRVRB
X0VYVCkpCj4+IC3CoMKgwqDCoMKgwqDCoCBucy0+ZmVhdHVyZXMgfD0gTlZNRV9OU19FWFRfTEJB
UzsKPj4gwqDCoMKgwqDCoCAvKiB0aGUgUEkgaW1wbGVtZW50YXRpb24gcmVxdWlyZXMgbWV0YWRh
dGEgZXF1YWwgdDEwIHBpIHR1cGxlIAo+PiBzaXplICovCj4+IMKgwqDCoMKgwqAgaWYgKG5zLT5t
cyA9PSBzaXplb2Yoc3RydWN0IHQxMF9waV90dXBsZSkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBu
cy0+cGlfdHlwZSA9IGlkLT5kcHMgJiBOVk1FX05TX0RQU19QSV9NQVNLOwo+PiDCoMKgwqDCoMKg
IGVsc2UKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5zLT5waV90eXBlID0gMDsKPj4gwqAgK8KgwqDC
oCBpZiAobnMtPm1zKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoaWQtPmZsYmFzICYgTlZNRV9O
U19GTEJBU19NRVRBX0VYVCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbnMtPmZlYXR1cmVz
IHw9IE5WTUVfTlNfRVhUX0xCQVM7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qCj4+ICvCoMKg
wqDCoMKgwqDCoMKgICogRm9yIFBDSSwgRXh0ZW5kZWQgbG9naWNhbCBibG9jayB3aWxsIGJlIGdl
bmVyYXRlZCBieSB0aGUKPj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBjb250cm9sbGVyLiBOb24tZXh0
ZW5kZWQgZm9ybWF0IGNhbiBiZSBnZW5lcmF0ZWQgYnkgdGhlCj4+ICvCoMKgwqDCoMKgwqDCoMKg
ICogYmxvY2sgbGF5ZXIuCj4+ICvCoMKgwqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDCoMKgwqDC
oCBpZiAobnMtPmN0cmwtPm9wcy0+ZmxhZ3MgJiBOVk1FX0ZfTUVUQURBVEFfU1VQUE9SVEVEKSB7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghKG5zLT5mZWF0dXJlcyAmIE5WTUVfTlNf
RVhUX0xCQVMpKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5zLT5mZWF0dXJl
cyB8PSBOVk1FX05TX01FVEFEQVRBX1NVUFBPUlRFRDsKCmFuZCBoZXJlIHdlIGNhbiBkbzoKCivC
oMKgwqDCoMKgwqDCoCBpZiAoSVNfRU5BQkxFRChDT05GSUdfQkxLX0RFVl9JTlRFR1JJVFkpICYm
IApucy0+Y3RybC0+b3BzLT5mbGFncyAmIE5WTUVfRl9NRVRBREFUQV9TVVBQT1JURUQpIHsKK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCEobnMtPmZlYXR1cmVzICYgTlZNRV9OU19FWFRfTEJB
UykpCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbnMtPmZlYXR1cmVzIHw9IE5WTUVf
TlNfTUVUQURBVEFfU1VQUE9SVEVEOwoKCj4KPiBTbyBJIGludGVycHJldCB0aGlzIGZsYWcgdG8g
bWVhbjoKPiAxKSBuYW1lc3BhY2UgaGFzIG1ldGFkYXRhLAo+IDIpIGNvbnRyb2xsZXIgdHJhbnNw
b3J0IHN1cHBvcnRzIG1ldGFkYXRhIChhbmQgaW1wbGljaXRseTogc2luY2UgaXQncyAKPiBwY2kg
c28gZmFyIGl0J3MgdmlhIHNlcGFyYXRlIGJ1ZmZlciBvbmx5KQo+IDMpIHRoZSBudm1lIGNvbnRy
b2xsZXIgcmVxdWlyZXMgYSBzZXBhcmF0ZSBtZXRhZGF0YSBidWZmZXIgKHRodXMgaXQgCj4gbWF0
Y2hlcyB0aGUgdHJhbnNwb3J0KS4KPiA0KSBhbmQgaW1wbGljaXRseSwgaWYgd2UncmUgZ29pbmcg
dG8gaGF2ZSBESUYsIHRoZSBibG9jayBsYXllciB3aWxsIAo+IGdpdmUgdXMgYSBzZXBhcmF0ZSBi
dWZmZXIuCj4gbm90ZTogYWxsIGJldHMgYXJlIG9mZiBpZiB0aGUgbWV0YWRhdGEgaXNuJ3QgZm9y
IERJRi4gYnV0IHRoYXQncyBub3QgCj4gaGFuZGxlZCBoZXJlLi4uLi4KPgo+IEkgd2lzaCB0aGUg
Y29tbWVudCBleHBsYWluZWQgdGhhdC4KPgo+IEFuZCBvZiBjb3Vyc2UgdGhlc2Ugd2lsbCBjaGFu
Z2Ugd2l0aCBmYWJyaWNzIGFzIGl0IHdpbGwgYmUgZXhwZWN0ZWQgCj4gdGhhdCBucydzIG9uIGZh
YnJpY3Mgd2lsbCBiZSBucy0+ZmVhdHVyZXMgJiBOVk1FX05TX0VYVF9MQkFTLiBCdXQgLSAKPiB0
aGF0IGlzbid0IHBhcnQgb2YgdGhpcyBjb21taXQuwqAgU28gZG9lc24ndCBjb3VudCBhZ2FpbnN0
IHRoaXMgcGF0Y2guCj4KPj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4gK8KgwqDCoCB9Cj4+ICsKPj4g
wqDCoMKgwqDCoCBpZiAoaW9iKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX3F1ZXVlX2NodW5r
X3NlY3RvcnMobnMtPnF1ZXVlLCByb3VuZGRvd25fcG93X29mX3R3byhpb2IpKTsKPj4gwqDCoMKg
wqDCoCBudm1lX3VwZGF0ZV9kaXNrX2luZm8oZGlzaywgbnMsIGlkKTsKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaCBiL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+PiBp
bmRleCAxMTA1NzdjNy4uMGRkYTE0NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3Qv
bnZtZS5oCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+PiBAQCAtMzY2LDYgKzM2
Niw3IEBAIHN0cnVjdCBudm1lX25zX2hlYWQgewo+PiDCoCDCoCBlbnVtIG52bWVfbnNfZmVhdHVy
ZXMgewo+PiDCoMKgwqDCoMKgIE5WTUVfTlNfRVhUX0xCQVMgPSAxIDw8IDAsIC8qIHN1cHBvcnQg
ZXh0ZW5kZWQgTEJBIGZvcm1hdCAqLwo+PiArwqDCoMKgIE5WTUVfTlNfTUVUQURBVEFfU1VQUE9S
VEVEID0gMSA8PCAxLCAvKiBzdXBwb3J0IGdldHRpbmcgCj4+IGdlbmVyYXRlZCBtZCAqLwo+PiDC
oCB9Owo+PiDCoCDCoCBzdHJ1Y3QgbnZtZV9ucyB7Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
