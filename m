Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF1E1C2DF5
	for <lists+linux-nvme@lfdr.de>; Sun,  3 May 2020 18:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ETQf90CqouJbQoFUYGO5PBHwHhZt/Fb5f5dCBX5vVAA=; b=mtcOwYaI9OHt5FZa53SYEUzD9
	zY9IJLZOb/4cake/RKkPdYdQgMfDpdlk5mZ7FgRWJ1PU98F3sBqrXzRVoWHUgxJwyKo20wmadCWrO
	yESb7utHgn76i0ITXETq8/SJduSGZhntXs27XBQhD+21UHDdtMAma1TOpzMeEtvrG1EfuL1QgPY2P
	mNxKHmPwi4ttwI19c5blFh49gCWLFZZczwceUufA3ehxOwfUS7eRTIcB869AEM8QitJK1VRan3VSJ
	v4HS81KKWV9hvgejdybFRk/lsplWy7Csty1cR0fVJZ8skYXInleVQeY9ZOQsUdCpVaNLGt6CkmxrH
	5fARyG0bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVHUd-0003G9-LD; Sun, 03 May 2020 16:29:27 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVHUY-0003Fi-4N
 for linux-nvme@lists.infradead.org; Sun, 03 May 2020 16:29:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/OyWW7tgSm7EDEdwu4QoOJJdJoLPem6HNhVwzdr2fmDrnrJupYWW8IBfEOALSpiK7L2UuMlxDPf0XtX9wp4SsdzM+l3R2L/Fx5DlISlxre66IosPbWQmsYLEWfEr1lJ553hryH6AuTx6L42Ja3+pXMPurGDu/I9Sg/+hyXEFVZG6WbOBqbghaXXSzGYJ28fRmQ46vEFscb2dq7HcVFrTk03oQjITjZfpixu0sT/8ebmMqHxkQ2XtOA5sFpgbdAZKsSHx1xyYb/CcdeXe4RpWent5FivnfDwaJsO9jCNMk6BPu2Wlb57sKjxgujrhBtXSnucHPxJOIDkq4IgEvGZsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5dXhzEnzWpDC2Bjh02sWSqqAVmFyrtHGGbVgYQxodI=;
 b=mrdAeN0slOth+EVnxUckEmvbNtZon+07dJGe0cwyoXwx28fF4Ela+8HMS4Mbov0BRTp2WKq9hj6JwfDZwOP3QpKOmKwQgtt45Ndkx/qrkZ3jgg87fodRsnLRp3bL8uqe0TZ2sQlA3ewXi3jliz0M845AvtrLfiy5M5m6BsJ2/KPhK9OqNfiQKeqPisdB/eTj38VfoEIyXvq6eN6M6JZxpL3b7POR7SO+ynzoYBffQ9GEqt6v3mUhdvFw+MmrHT4MyBOteqXBaQVLO6HcDYXVShSUw7uN5X8acB9hBbOdN2Vj+cio0FW0peLVtn3/dcNn0riy9AOCTqbqZQfiwpNzgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5dXhzEnzWpDC2Bjh02sWSqqAVmFyrtHGGbVgYQxodI=;
 b=DNiQulAJ7D3wj2rh70vdE6MnEgQ7ziCmASF3vmCXBvewAjCkYaatYHNQTQ78il8C6thAFYOwR3i0m5Eit3GkOl7m/tOMZNiqArQjYvl1re1cujjykgmQc9GcEzbdFrIsqz3UtqFzHMamiCqaIqAZ6/Cdy8zb/ntyABlgRFRqEok=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB4529.eurprd05.prod.outlook.com (2603:10a6:208:b9::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Sun, 3 May
 2020 16:29:16 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2958.029; Sun, 3 May 2020
 16:29:16 +0000
Subject: Re: [PATCH 15/15] nvmet-rdma: add metadata/T10-PI support
To: Christoph Hellwig <hch@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-16-maxg@mellanox.com> <20200501164818.GA19607@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <5cbfde4a-871e-51d4-bace-b7b0fbd675ba@mellanox.com>
Date: Sun, 3 May 2020 19:29:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200501164818.GA19607@lst.de>
Content-Language: en-US
X-ClientProxiedBy: AM0PR05CA0083.eurprd05.prod.outlook.com
 (2603:10a6:208:136::23) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 AM0PR05CA0083.eurprd05.prod.outlook.com (2603:10a6:208:136::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Sun, 3 May 2020 16:29:14 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 00a03005-52bd-4853-1e2e-08d7ef7f1f57
X-MS-TrafficTypeDiagnostic: AM0PR05MB4529:|AM0PR05MB4529:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB4529A83B5CC285ACDA062611B6A90@AM0PR05MB4529.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:873;
X-Forefront-PRVS: 0392679D18
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KaAGANPC+X2mCq1oqQZdkjrIgYUIMYfW50qAtDamzoqPIHEQm/ieq/pBR5nHHnso3UEPENUBZyUykDuxrXXxpyCnTURvqs2l5vHT8LiVt0J06GriViMiVTBUofUNkOIh39QI+0PegVq0f1BHdu3w1QlpYtiN8u5bhgYT7YvmLmNDquhuJ793pv8hKR+KgxzlqSHdE3dq942/Tp0x5u0FPazWyShgFSqf4//B+XjhTnFbY65lxzOQGA4LICBD0VMSmUyMbwj8dEdRhU0Ul0Px2O7h0qotF8qgL4iK3dWUT2I1gvavSArxgDX/0pXYjxK/BE85/EN/VcdPcVLtSVxKIhFiwf+tEgHzzLCuqrUy67m6UjujA7o2ftn9D5OHlh6b4hUyPKRHQzQP5s3p/bSy/2nYxQHsZDv1k2WKMUH3ZGc+2V1u7w7LU+nvCh0RUNBh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(52116002)(36756003)(316002)(16576012)(5660300002)(8936002)(8676002)(86362001)(4326008)(53546011)(31696002)(26005)(186003)(16526019)(107886003)(6486002)(66556008)(66476007)(2616005)(66946007)(31686004)(6916009)(2906002)(956004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Tfm1Eziepcz9bPI4nyv/nX/qV/3555AHPguIQ9y0MBAuhHBdVLLbcQbCbAchRYpu89LMsJPtMkK7+jWoGKjJYxHvXF0QZyNrh3fQxnOlEdNvZgJZ+FG/UEqZnF57WMe8zC16Z2k0L3a0YVgST9iXfmk5nWc+mhMAKS2Xv8sWHjLLpYrTX9FnxMJkdZmySSUBz8Tu8xW3v2wVMDjmsoRkVMI1QlUn3Oupf6vVbooiabGq/Ozk8xtFH+cVUujkAGDCzwyRLtDoI/WRc/MywgCnPZEL/ywC4cXAbAgJxgMSNLoJ3NxY3Fd/ppbjrEiHds+aBqkDT/OCMfb6gtd0ssl7UgtQBoIqlMYJsZ9cq/aC7EmbFbQ7NHMa0JGwWobTyuR9ozWlO1YSnT4ia9hz1qRH8iE2/IHQPSavigMPfVCGy4IEHUEiyBl7TAAW7cZgp3+I3faFdLvLw5o7zspSNyZC/XWmBx/HRAty5RtudAMVS6IAzqzL4Uo5bZFgtC453htp0ogcW/TFM2k1zY1Hv+dHUM97EucQBHYQbGLKrNMQdpYujSLnOVKTezABHe3kgdGQLdTgj2saDSlp2SvYb0cGAwMhDrP/f2OpX9lhMtTO6cCHmk/WFWNsBmwtaBzI7IpT8nVCPfH1oqinSHHMJ74UTDYwt8HE6iDze3LwTwS/EIeo0tbf6xB0vdSbyKLs9Sc5XltCwjH86eu9NWTgwqQ21/tEjUGOKrwPx//xlCZQfRD8he9xwCtgofMDXkH57cfccTVaLRPYVocfDDVmGNIjkydW3kSDA4YKpmrWonRoSzU=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00a03005-52bd-4853-1e2e-08d7ef7f1f57
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2020 16:29:16.3631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeSS1+uVTLHa4SKLwcHyWYvzoyOydfy1lqOlAJg6nZ9aEen1XfloiS4BYlYbQ2EoGBqJH6nr2YQqD38Y8j1QEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4529
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_092922_174483_D830B9F1 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.47 listed in wl.mailspike.net]
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMS8yMDIwIDc6NDggUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+PiArc3RhdGlj
IHUxNiBudm1ldF9yZG1hX2NoZWNrX3BpX3N0YXR1cyhzdHJ1Y3QgaWJfbXIgKnNpZ19tcikKPj4g
K3sKPj4gKwlzdHJ1Y3QgaWJfbXJfc3RhdHVzIG1yX3N0YXR1czsKPj4gKwlpbnQgcmV0Owo+PiAr
CXUxNiBzdGF0dXMgPSAwOwo+PiArCj4+ICsJaWYgKCFJU19FTkFCTEVEKENPTkZJR19CTEtfREVW
X0lOVEVHUklUWSkpCj4+ICsJCXJldHVybiAwOwo+IEknZCBleHBlY3QgdGhpcyBpbiB0aGUgY2Fs
bGVycy4uCj4KPj4gK3N0YXRpYyB2b2lkIG52bWV0X3JkbWFfc2V0X3NpZ19kb21haW4oc3RydWN0
IGJsa19pbnRlZ3JpdHkgKmJpLAo+PiArCQlzdHJ1Y3QgbnZtZV9jb21tYW5kICpjbWQsIHN0cnVj
dCBpYl9zaWdfZG9tYWluICpkb21haW4sCj4+ICsJCXUxNiBjb250cm9sKQo+PiArewo+PiArCWRv
bWFpbi0+c2lnX3R5cGUgPSBJQl9TSUdfVFlQRV9UMTBfRElGOwo+PiArCWRvbWFpbi0+c2lnLmRp
Zi5iZ190eXBlID0gSUJfVDEwRElGX0NSQzsKPj4gKyNpZmRlZiBDT05GSUdfQkxLX0RFVl9JTlRF
R1JJVFkKPj4gKwlkb21haW4tPnNpZy5kaWYucGlfaW50ZXJ2YWwgPSAxIDw8IGJpLT5pbnRlcnZh
bF9leHA7Cj4+ICsjZW5kaWYKPiBXaXRoIHRoZSBnZW5oZC5oIHR3ZWFrIEkgc2VudCBpbiByZXNw
b25zZSB0byB0aGUgaG9zdCBjb2RlLCB3ZQo+IHNob3VsZG4ndCBuZWVkIHRoaXMuCj4KPj4gKwlp
ZiAoIUlTX0VOQUJMRUQoQ09ORklHX0JMS19ERVZfSU5URUdSSVRZKSkKPj4gKwkJcmV0dXJuOwo+
IFNhbWUgY29tbWVudCBhcyBhYm92ZS4KPgo+PiArCWlmIChudm1ldF9yZG1hX25lZWRfZGF0YV9v
dXQocnNwKSkgewo+PiArCQlpZiAocnNwLT5yZXEubWRfbGVuKQo+IENhbiB3ZSBoYXZlIGEgaGVs
cGVyIGZvciBtZXRhZGF0YSBsZW4gdGhhdCBhbHNvIHVzZXMKPiBJU19FTkFCTEVEKENPTkZJR19C
TEtfREVWX0lOVEVHUklUWSkgdG8gbGV0IHRoZSBjb21waWxlciBnYXJiYWdlIGNvbGxlY3QKPiB0
aGUgd2hvbGUgY29kZSBpZiBpdCBpcyBjb21waWxlZCBvdXQ/CgpXZSBoYXZlIGl0IGluOgoKc3Rh
dGljIGlubGluZSB1MzIgbnZtZXRfcndfbWV0YWRhdGFfbGVuKHN0cnVjdCBudm1ldF9yZXEgKnJl
cSkKewogwqDCoMKgwqDCoMKgwqAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19CTEtfREVWX0lOVEVH
UklUWSkpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7CiDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gKCh1MzIpbGUxNl90b19jcHUocmVxLT5jbWQtPnJ3Lmxlbmd0aCkgKyAx
KSAqCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcS0+
bnMtPm1ldGFkYXRhX3NpemU7Cn0KCgphbmQKCnJlcS0+bWV0YWRhdGFfbGVuID0gbnZtZXRfcndf
bWV0YWRhdGFfbGVuKHJlcSk7CgppcyBpdCBnb29kIGVub3VnaCBmb3IgdGhlIGNvbXBpbGVyID8K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
