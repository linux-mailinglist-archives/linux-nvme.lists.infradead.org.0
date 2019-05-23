Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D8C27796
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 10:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bnv178J6uuGn0h1ZrsWVFELIVIdCrlToUxG4DxlH9RA=; b=aNS3ofW2N4S0NFkzInqXiS+1E
	XOiGUZVOkPH43weJ7+yA0a6drfJ4HvAmdkiHZlB03EFFtQzYWhmB43fMMRFCoBq4f51d0ae4s/F+/
	dGEK6FXAkhIfhkD+zX9DLwxZmlf8RLP9YNA2znKS3rz4GgHSLDH8qQ7os8xd5vnqIgjY5+/GB+Fnd
	s3lOWJ+pHgWB6ME85aHtqpwrqplx7pVARCT6Se+9i6Gl63q9ITmSmbNEWoBK+VvbBh4HwfI61zCaP
	ibPs0fGRaUicGA0sWvg4n/hP9bNPSzwJHDXtXJUikkejH69NU66ZX/j26X//NJ3AAC/bUlXo808BY
	DruQxvbUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTify-00021M-12; Thu, 23 May 2019 08:02:10 +0000
Received: from mail-eopbgr50067.outbound.protection.outlook.com ([40.107.5.67]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTifr-0001wp-PD
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 08:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5oCC41tlhlFHvOriEIggVra1uLzOlKiax3LM9K2F/kM=;
 b=FFE7K5Qi5NsWqheC7gLMqt9V8Btqs8bVDcSkMPguh9IWGD/rJfRhxs8fGixV2x6rBK3lWTba35IDoWhO9sNoKibiucvqaT5WuPyZlIelSFYawDNSiHCNfB5rBG7fqw2/tqe1r3awJVImOE++C1BaFKIaDel2Ug1Jp02WlG3C160=
Received: from HE1PR05CA0348.eurprd05.prod.outlook.com (2603:10a6:7:92::43) by
 AM0PR05MB6420.eurprd05.prod.outlook.com (2603:10a6:208:13f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Thu, 23 May
 2019 08:01:59 +0000
Received: from AM5EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by HE1PR05CA0348.outlook.office365.com
 (2603:10a6:7:92::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.17 via Frontend
 Transport; Thu, 23 May 2019 08:01:59 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT021.mail.protection.outlook.com (10.152.16.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 08:01:58 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 11:01:58
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 11:01:58 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 11:01:54
 +0300
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
To: Keith Busch <keith.busch@intel.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <1558543193-24752-10-git-send-email-maxg@mellanox.com>
 <20190522224955.GC5857@localhost.localdomain>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <0c677aa1-aa60-dddd-4a3f-a339545fee63@mellanox.com>
Date: Thu, 23 May 2019 11:01:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522224955.GC5857@localhost.localdomain>
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(396003)(2980300002)(199004)(189003)(6916009)(16526019)(186003)(77096007)(336012)(58126008)(16576012)(6246003)(31696002)(7736002)(65956001)(26005)(54906003)(65806001)(47776003)(86362001)(316002)(31686004)(2906002)(2870700001)(229853002)(486006)(8676002)(476003)(126002)(81156014)(5660300002)(11346002)(2616005)(446003)(6116002)(3846002)(8936002)(81166006)(65826007)(36756003)(23676004)(2486003)(305945005)(53546011)(50466002)(70206006)(70586007)(478600001)(64126003)(76176011)(356004)(106002)(107886003)(67846002)(4326008)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB6420; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a821e02-ab47-4b44-340f-08d6df54ee97
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM0PR05MB6420; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB6420:
X-Microsoft-Antispam-PRVS: <AM0PR05MB64206456766EB8306B62BF09B6010@AM0PR05MB6420.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ATPaBJcPBOQFaWGvbZA14uu+PoKYgQEmuSoH5zfQjcuivwIrkSII0TRg5zdzJ9iq/93ewbyJlJotxHoo5uag6OWg3F77BMs39sLJk76J3lMD8KkSKXOchgPFLt1L7kCjrbi7NHEk17QFXf5z4q94Nk6j7oOn3KBpmUnc3ShGEJiicrXBW2k56Ur8SKu1XBr9OFYhhJ9vkdfVsto6EV9JvIT2cxQ3ds0taLtcDTZqpDArs6iWbIp6h2WmNOYlVfmA9VPrfkwzXCt1FTKlAH+k+/ik9Hzw3KtPGNm7CyeDQ1AWNC+DpGjhMXTSvYFAGZEUDKIYvLQYfhTQQkGxeKdq92xHnfSfNpeA9eUbKEqpEW2Tek1tjDn5uNP6MRkoOGUZcACQ06oUvDY+vJbMm9jxhweMuaS/YZYhehesuvDBHWM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 08:01:58.9454 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a821e02-ab47-4b44-340f-08d6df54ee97
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_010203_828312_079A584F 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjMvMjAxOSAxOjQ5IEFNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBPbiBXZWQsIE1heSAy
MiwgMjAxOSBhdCAwNzozOTo1M1BNICswMzAwLCBNYXggR3VydG92b3kgd3JvdGU6Cj4+IEFkZCBh
biBhc3NvY2lhdGlvbiBiZXR3ZWVuIHN1YnN5c3RlbXMvY3RybHMvbmFtZXNwYWNlcyB1c2luZwo+
PiAibnZtZSBsaXN0LXN1YnN5cyIgY29tbWFuZC4gTm93IHRoaXMgY29tbWFuZCB3aWxsIHNob3cg
dGhlIGZvbGxvd2luZzoKPj4KPj4gbnZtZS1zdWJzeXM0IC0gTlFOPXRlc3RzdWJzeXN0ZW1fMAo+
PiBcCj4+ICAgKy0gbnZtZTQgcmRtYSB0cmFkZHI9MTIuMjEyLjk5Ljg1IHRyc3ZjaWQ9NDQyMCBs
aXZlCj4+ICAgXAo+PiAgICArLSBudm1lNG4xCj4+ICAgICstIG52bWU0bjIKPj4gICAgKy0gbnZt
ZTRuMwo+PiAgICstIG52bWU1IHJkbWEgdHJhZGRyPTEyLjIxMi45OS44NSB0cnN2Y2lkPTQ0MjAg
bGl2ZQo+PiAgIFwKPj4gICAgKy0gbnZtZTVuMQo+PiAgICArLSBudm1lNW4yCj4+ICAgICstIG52
bWU1bjMKPj4KPj4gSW5zdGVhZCBvZjoKPj4gLS0tLS0tLS0tLS0tLS0tLQo+PiBudm1lLXN1YnN5
czQgLSBOUU49dGVzdHN1YnN5c3RlbV8wCj4+IFwKPj4gICArLSBudm1lNCByZG1hIHRyYWRkcj0x
Mi4yMTIuOTkuODUgdHJzdmNpZD00NDIwCj4+ICAgKy0gbnZtZTUgcmRtYSB0cmFkZHI9MTIuMjEy
Ljk5Ljg1IHRyc3ZjaWQ9NDQyMAo+IFRoaXMgaXMgYSB0ZXJyaWZpYyBzdGFydC4gWW91ciBvdXRw
dXQgaW5kaWNhdGVzIHlvdSBhcmUgbm90IHVzaW5nCj4gbnZtZSBuYXRpdmUgbXVsdGlwYXRoaW5n
LCB0aG91Z2guIENvdWxkIHlvdSByZXRyeSB0aGlzIGNvbW1hbmQgd2l0aAo+IHRoYXQgZW5hYmxl
ZCAoSSdsbCB0cnkgaXQgdG9tb3Jyb3cgYXMgd2VsbCk/CgpZdXAgSSdsbCBjb25maWd1cmUgdGhl
IG5hdGl2ZSBtdWx0aXBhdGguIEJ1dCB3aGF0IGlzIGV4cGVjdGVkID8KCnNob3VsZCB3ZSBwcmlu
dCBudm1lNGMxbjEvbnZtZTRjMW4yL252bWU0YzFuMyBmb3IgbnZtZTQKCmFuZCBudm1lNGMybjEv
bnZtZTRjMm4yL252bWU0YzJuMyBmb3IgbnZtZTUgPwoKaWYgc28sIEkgZ3Vlc3MgdGhlIGluZm9y
bWF0aW9uIG9uIHRoZSAiSU8tYmxlIiBkZXZpY2VzIApudm1lNG4xL252bWU0bjIvbnZtZTRuMyB3
aWxsIG5vdCBiZSBwcmludGVkLgoKc29tZXRoaW5nIGxpa2U6Cgpudm1lLXN1YnN5czQgLSBOUU49
dGVzdHN1YnN5c3RlbV8wClwKIMKgKy0gbnZtZTQgcmRtYSB0cmFkZHI9MTIuMjEyLjk5Ljg1IHRy
c3ZjaWQ9NDQyMCBsaXZlCiDCoFwKIMKgICstIG52bWU0YzFuMQogwqAgKy0gbnZtZTRjMW4yCiDC
oCArLSBudm1lNGMxbjMKIMKgKy0gbnZtZTUgcmRtYSB0cmFkZHI9MTIuMjEyLjk5Ljg1IHRyc3Zj
aWQ9NDQyMCBsaXZlCiDCoFwKIMKgICstIG52bWU0YzJuMQogwqAgKy0gbnZtZTRjMm4yCiDCoCAr
LSBudm1lNGMybjMKCgppZiB0aGlzIGlmIGZpbmUgSSdsbCBzZW5kIGEgVjIgd2l0aCBhIHNtYWxs
IGZpeC4KCi1NYXguCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
