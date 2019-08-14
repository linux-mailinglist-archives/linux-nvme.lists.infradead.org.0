Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB228CD1A
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 09:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAndHmqHMAjbfnJtE++wbPHFk8QgYagaMHuNx3e5Vyk=; b=nd1Ex7UH6jO5fP
	n/gE3Vsb9dIDE6kGKGG2soK+2TVabpd7wfO7/GnMuoCOkiOs4h83P5wr6iZ1eNzDu7/TSZqlU3STC
	9CcDHKa+eu0pQ1+PLe0VsEZFR8CBYxEvF8mojc4vxkN8pYmGfzgcqoMGSBmOJ5HLZYRDv1GU7dkp8
	ou8FyJOdmy7ryAbP3nlXCEPu8hVA4KjZNw6Ay0rubhfHvmUnVhCD4ugVuj/XixOMnPr/q2hSIgcsM
	3uH/lB05wESJHmJFQr+KODgfKp2srVhANXroOUzWlaonU7IUrnDJpvu3BQBXruukcZAQ+2+fWtI5a
	9Fs3Q1CvcLXM0lCMK8Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnvk-0002xQ-Sb; Wed, 14 Aug 2019 07:42:49 +0000
Received: from mail-eopbgr40040.outbound.protection.outlook.com ([40.107.4.40]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnvV-0002x0-6W
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 07:42:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaPxzqnJO9Vq2m1LsJ/OtKUFRAfjduhhrscnpLmvxC7x79OYvOuQfAx1+XtCgDe/8xMHQzfO+thleng8VO9GCLnXaCmUDNpcgR26gJLqKUWsZMVqDF8de11ezJSVyZnovfm5wBExRY14Wh7NxK+aveBRTgkggy99n+wDGrxjOTALkfqUA9BDW1MNbStY3aGrA8+M72jxxjWngn+9jeiu+u11Ki4a7CN8FhJV1BlpiCk0Hy6SxhQPGqBZ+LhljLrWKUdX18JQHeQHsIFbMR+Cq9QJoPQjnd0Pw8esIETB7/8aZQOY5EBvytNeIyO7TkIyxr9P742jLSs7GL/WdX9NqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YFhJf85AY5Xa+0uDR4/eK/MQKhAaBdU/dixaOsO8Byk=;
 b=VsOt1+XafmiGDyn4N1/YeChnJ3Ft35vRuXfQ/XzrcUtDp5DbN/fl5Wx9DX4+ixChNSF56xzGLOieUYezyomWwCz8PC7qf5YHYXFbIUU9T1+kbHQB1nxLopZBymLuo7qSTzBaMX5IyzornyDX4Xg/4ExaB+jZ9R+TD9CfnOY6FmYsowSHjXTvlb7T+CHovSLS+QPthJXe4RHoy0IVYpSWT6UBTOmkEg8jzBiQHGegKaWM0WvT+ycLkaiWsGOPKDsqofIbTG4AICm8ghvhSgbULXgOjD261/xzEQ3yzO/0IvodUGgL/n3hbcsCrw+puCpWNimmEHcsBzgDspAuThfjhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YFhJf85AY5Xa+0uDR4/eK/MQKhAaBdU/dixaOsO8Byk=;
 b=cJ0tsYG1YyJAHNUjfUqsmQ5vSckIwBDX64Gi7H+U8NT9AO3oQnkcrAugDXSZl1roidH/0D74VFK8YWM/6V9/5bk8FET2DpYY7qs89xkEuM4k8yH9g04Dx2CpyPTmal8Hw/gsqfCT+nLE9Uup686k4SamxjkSSBA1Yt6SBj1R3XA=
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com (52.133.28.22) by
 AM6PR0502MB3766.eurprd05.prod.outlook.com (52.133.22.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 07:42:28 +0000
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3]) by AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 07:42:28 +0000
From: Israel Rukshin <israelr@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Linux-nvme
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
Thread-Topic: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
Thread-Index: AQHVUdmYpOG2UdZH+USaVB/aEtH7rqb5SOUAgAD7CIA=
Date: Wed, 14 Aug 2019 07:42:28 +0000
Message-ID: <b6fa103b-bac4-f0d7-5b43-8a8fff8227b5@mellanox.com>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-2-git-send-email-israelr@mellanox.com>
 <82499575-a1d7-35aa-1cae-32d1fdbc3ab0@grimberg.me>
In-Reply-To: <82499575-a1d7-35aa-1cae-32d1fdbc3ab0@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0010.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::22)
 To AM6PR0502MB4070.eurprd05.prod.outlook.com
 (2603:10a6:209:18::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=israelr@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.165.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51f79912-9e7e-464d-ddb7-08d7208af4c1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0502MB3766; 
x-ms-traffictypediagnostic: AM6PR0502MB3766:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB37660392F370D612B1339E79D7AD0@AM6PR0502MB3766.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(199004)(189003)(476003)(14454004)(3846002)(446003)(186003)(26005)(66446008)(8936002)(14444005)(11346002)(66946007)(64756008)(256004)(4744005)(31696002)(66556008)(5660300002)(2616005)(52116002)(53546011)(386003)(6506007)(486006)(71190400001)(2906002)(6116002)(71200400001)(102836004)(66476007)(86362001)(76176011)(81156014)(4326008)(31686004)(6436002)(54906003)(229853002)(8676002)(107886003)(81166006)(6486002)(478600001)(110136005)(305945005)(36756003)(7736002)(53936002)(25786009)(6512007)(66066001)(99286004)(316002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB3766;
 H:AM6PR0502MB4070.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /50L6ow6j7GiYcg4O8bozH1RKHxCRUabhghvaICMPXcEurL/rSzsDdZEYz5vmLYVQWoEK5zVQbxHeJTESQPmJe6/FPLolzxpWLnYw/Icok6tR5KQzZIup5rfuo6evcEC+Ua+GkCLtCDLIAKNdr6VJYfiqogtpVvDw42us8eOGdcS6u4v70GeH1xFt/C8VRrKLebQrOwo/LlqdYG+JeIvhOQb6dND0LIctN6NIHvum3Pc7NO6kpt24iAB+faetivJzr6z3psTa6bKPGHgdh3YQD+MhcM8/VUNsc3IL18Ekq+zAUBq1HG0uGXl4OGgQfokJg8AFcNJ1Bgv7BQojuwGeGA5KUXojMtP8JdUI6CSrqDRN04nFxOTXyIwiBXXaNgg2vgoTkfucMbBEgsJ7mMFxzwdDumdhUBTKD7UpCTp8BY=
Content-ID: <62C3A6F1B22EDA4D871D6B8734C08C2E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f79912-9e7e-464d-ddb7-08d7208af4c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 07:42:28.1435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: As7a6APjo33y+iaJS9zr1mRMhhU878YtGQyRmL8uvu/SjBC4P+eLdwcYhRAFTjA7QIquv4az/xwPycWaf5i/yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3766
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_004233_310693_824506E0 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/13/2019 7:43 PM, Sagi Grimberg wrote:
>
>> Added 'tos' to 'connect' command so users can specify the type of 
>> service.
>>
>> usage examples:
>> nvme connect --tos=0 --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
>> nvme connect -T 0 -t rdma -a 10.0.1.1 -n test_nvme
>>
>
> What if you run this with a kernel that doesn't support tos yet?
You will get:
nvme_fabrics: unknown parameter or missing value 'tos=0' in ctrl 
creation request
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
