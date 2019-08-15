Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104958E722
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 10:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dCP/64xglwGHQZsaaUljB0UvMFg5zfWw6TZpOb7ZlbY=; b=bqTMMxtitr2TOvHolJzJ2bmzR
	MOkqQwMBUg0AZIJLyCawJjM64KOlA6b5v8OlugX5PDwxNQCSTdoIHpDcGtlvZny85uFFAA13YuIl+
	jMLvHIfAHmGS20/vHPjG+oouS3aMU+DlYYx4LgbC3rXQ2vDiN6fTlILHkuEWuCvjd2JHeowbCNCJT
	KuFCKGJAcljGfjVGVAKzSc4scZlFctllhdJS+YiP3asVf9QJLXwvUIyevUBpcFCPwFM1nkhwXNrAC
	wGrE2ZT4Db6vxlAZ9/GFyMIBXtmc27sOlJeVPbc/8Fj1/QpTSmfpIffl2ApmL+1nQElB8GJCxkTzo
	+8DRC8KRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBKL-0004hd-0h; Thu, 15 Aug 2019 08:41:45 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBKC-0004hL-S0
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 08:41:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BJI8nyyTVpCvwnRmcBvIkBJCurHuhVN06Oj9lBq/m4yuRyUkfKwPscTDdTYbIf30/T4fB5djijqWS9isGm7E9O6DKq7JF1bwiYJbGnrTwFCiiYR2yJ3tyoPG/yIJ7hUPVXO37N2A7nd3pb22Gx8KJVHwS8SqCHrIMzznKQpmittsFYFe/JvwtIv1HvHK4SZ6Z5KDW7LxJr72UPqft31XI56wa1h7p/Jtp9qrtTVqiMarZ/nYSmEyeYK30fTTD2nw1GFGUrYgVgQfJ5C6MzjCVnr4K8lJlw4EdMOtMwJ2qrwlOcijiMgMbcDzBgNOjCUmgf5dFuINm1B74pj5tdwEDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfvuubehURVLkncMcXGx8R7UMZLlUcHiMuZQ/cYSB5E=;
 b=Aeg+87IOdbUsSFAuaUTNnWl7Y+6vfK1tmBB7yA6x4qvb5vWyGEnTpZoCmwB5rWLS2ub25UCJiq4GQwWkGfrCFX6ARc7thQwx8dagECmcMrC2+qui6q7R+5gHKDtgm85Wf4Fki7N9e6ho0olXyO9XslzBpOmlenGJu6yh3Ou1Pf4/+hkTEWgwXohCrh7DUFX0DIYWCmwuttGmfouf/I3rsDjZxYDV3SY+W081fyz9vwIayC3BYQp7qSNPsKT+cFv81c1pM241b+KWDxVzLTECOwREeeql4Obd7Wu08d35iXvWxftmDLxzHVv+RDjgDH5L6ShmdCmjwoqAtUEH/yDdzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfvuubehURVLkncMcXGx8R7UMZLlUcHiMuZQ/cYSB5E=;
 b=k9CdnHfmu5mnoJ0uFOVD24O0P3A8GlwhapUx0sC91HaJ4EAptGD8BldaYvK6VU5yh0f+F5Mu7wWA7wZODA6MKi3cb4lm9IaVwKqYa/pXw7D2l2OKxZfSS3PrMk1BeDPSZlrQmknVEUVW7u2rMxs/kZrqwDgXgeEutc/CtIoT4C8=
Received: from DB6PR0501CA0047.eurprd05.prod.outlook.com (2603:10a6:4:67::33)
 by HE1PR05MB3483.eurprd05.prod.outlook.com (2603:10a6:7:32::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.21; Thu, 15 Aug
 2019 08:41:32 +0000
Received: from VE1EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by DB6PR0501CA0047.outlook.office365.com
 (2603:10a6:4:67::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Thu, 15 Aug 2019 08:41:32 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT025.mail.protection.outlook.com (10.152.18.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Thu, 15 Aug 2019 08:41:30 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 15 Aug 2019 11:41:29
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 15 Aug 2019 11:41:29 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 15 Aug 2019 11:41:17
 +0300
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
To: Sagi Grimberg <sagi@grimberg.me>, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-2-git-send-email-israelr@mellanox.com>
 <33ddd40f-14a8-9506-01dc-65a049f8bb5f@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <a447b0ba-31ea-6a12-2fb4-6cef0b95da96@mellanox.com>
Date: Thu, 15 Aug 2019 11:41:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <33ddd40f-14a8-9506-01dc-65a049f8bb5f@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(396003)(39860400002)(2980300002)(189003)(199004)(31696002)(36756003)(446003)(2870700001)(2616005)(81166006)(356004)(81156014)(11346002)(106002)(65956001)(6246003)(58126008)(7736002)(47776003)(65826007)(476003)(316002)(86362001)(16576012)(3846002)(16526019)(336012)(2906002)(65806001)(486006)(6116002)(126002)(305945005)(186003)(8676002)(53936002)(478600001)(31686004)(4744005)(5660300002)(26005)(76176011)(23676004)(8936002)(229853002)(110136005)(4326008)(70586007)(2486003)(70206006)(53546011)(50466002)(64126003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR05MB3483; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74503574-f133-47b2-37f5-08d7215c5f6b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR05MB3483; 
X-MS-TrafficTypeDiagnostic: HE1PR05MB3483:
X-Microsoft-Antispam-PRVS: <HE1PR05MB34835CD05CFA982A052E2490B6AC0@HE1PR05MB3483.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 01304918F3
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: EDa0nUGeWXQ4HinzfnEG2NdEF5O3QOE+sek78kwyhAdy6ruWz8iMFnsL7f680TDa52UOUehMzu/pPdSq2rEFMdLdf2DxekcCVMSSBSQvw35W7EC3pb3k+tWm7ObxV4+8PutVss1JVBh/gJBWERO7jhYWIE8r4+0GyYLuZKPuMg+ScpIeetz9n/+Zx07fsQdVwZPZ9GjGPd18h1v4CjMFdbb4i5tZAH2tUVXwSJDtbok9khbVh/GGMSQ48OxI2QPf/0n5SCm8zzdE5Wkpd/KooAbNI3aWbdLufB9Mhtiq9Y7mvp5V8C8/cJQvjq/t9HIMIsWvU0DiNM0q4iIyCMYFoD5BG7aZHl7QJXlF7A5yTcEdzAufjj6QerHxUEMWZgmjLLaIheNzA/3uUo6QR99mntJPd3hMKGR6eZAUdH2533Q=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2019 08:41:30.6215 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74503574-f133-47b2-37f5-08d7215c5f6b
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR05MB3483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_014136_962637_872C06AE 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDgvMTQvMjAxOSA4OjA4IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+IEFkZGVkICd0
b3MnIHRvICdjb25uZWN0JyBjb21tYW5kIHNvIHVzZXJzIGNhbiBzcGVjaWZ5IHRoZSB0eXBlIG9m
IAo+PiBzZXJ2aWNlLgo+Pgo+PiB1c2FnZSBleGFtcGxlczoKPj4gbnZtZSBjb25uZWN0IC0tdG9z
PTAgLS10cmFuc3BvcnQ9cmRtYSAtLXRyYWRkcj0xMC4wLjEuMSAtLW5xbj10ZXN0LW52bWUKPj4g
bnZtZSBjb25uZWN0IC1UIDAgLXQgcmRtYSAtYSAxMC4wLjEuMSAtbiB0ZXN0X252bWUKPgo+IFN0
aWxsIGRvbid0IHNlZSBob3cgdGhpcyBpcyBoYW5kbGVkIGlmIHRoZSBrZXJuZWwgZG9lcyBub3Qg
c3VwcG9ydAo+IHRvcyB5ZXQuCgpob3cgYW55IG90aGVyIGZlYXR1cmUgd2UgYWRkZWQgdG8gY29u
bmVjdCBjb21tYW5kIHdpbGwgYWN0IHdpdGggb2xkIAprZXJuZWwgPyAoZS5nLiBxdWV1ZV9zaXpl
L25yX3F1ZXVlcykKCml0IHdpbGwgZmFpbCB0byBnZXQgdG9rZW4gInRva2VuID0gbWF0Y2hfdG9r
ZW4ocCwgb3B0X3Rva2VucywgYXJncyk7IiAKYW5kIHJldHVybsKgIC1FSU5WQUwuCgpJc3JhZWwg
Y2hlY2tlZCB0aGF0LgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
