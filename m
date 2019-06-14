Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A0F46585
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 19:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VPVZNNtadiGSYtGRi/YWIh15WtK0EPFLocpQACCqGjw=; b=bZbBG4TfgK1Oj+
	gEmCx5XBLVAr2+h/MaD+9RQkrIrhQf0CM3SYv6iheYIpS0kgAp6XWehHs1VaAHZs0AYF2/NgV0LZV
	UjzoDbvtHfbnrEdZ/mcdlnSxfUYRT5xoMPezcihprd2sOBbpkwOe0gPgmxeBusbRuAmIn/b5vGXXY
	8/jQ7V/X8YxUzfrmrM756LMyyszf6TW3gBzj7CBTJmeR5xY9h2ZHrxo2tWZXWe7u+M0zIqLKPbIjI
	7VUpStbSSmfowz0gmaF5NV34DiL25RmH5347OjB0qjp7p5K7mVUWWt9n9APHfj5w71xb5aFpNtwSO
	lgkvjM8EflNpQPBHGH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpqC-0000Ow-FI; Fri, 14 Jun 2019 17:18:16 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpq7-0000OU-5W
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 17:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560532691; x=1592068691;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Sxh2P0EpxG/EPVeSiwEvmoHPKl5aktWTzjZb7zk6Ib4=;
 b=nRKDNgnyytBbkKrP9SvhbVhn/x9AvhQ8npoEJy3cZM9NQC8lIlhycBzV
 nGGnMcpQQANX8j1S7R7jltq3o6Cdv6npFqiJeEVsyetDA4HGMtfsmmjnW
 sz+9p60k8FeFnsWu4R9Uth3b+XQuD/4iSnEqPUVqe4aWRlCKL7RO8hZ6J
 xsz7V43CAMEUU9rW4C7BZYkui/Vr1XTSFDIh8RJNXp4hCHRC3jYRG0mjh
 dpZZEHkFxdPrimtLE2Xyr16fs6l4OD8/R+hErQI/94SVD3IvXjrXf3vHJ
 Chp0CTzTmL0FXF6sw6Cpcomd2A6Dbs29LI/8XhF12jhbIcV9aph5aJCt5 A==;
X-IronPort-AV: E=Sophos;i="5.63,373,1557158400"; d="scan'208";a="110592330"
Received: from mail-bn3nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.57])
 by ob1.hgst.iphmx.com with ESMTP; 15 Jun 2019 01:18:08 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BDYYxDmhHwP526hCjgZYT3CglIBxQfsruCZi7Xl8Uf4=;
 b=VprfOdoHfw2W7m6lqSu09mSzqScpK3K0w9KVwSgFie5ddYyZTZCP3XHmwFsioVAEuxAbxyU4RwfscrUPJdG1nRFNEUQ/ne1VMYN1C/o1Wb3vwGnbTyWzCEcjyYsYnKBlxcP8dbZiRHu65u6tjTIeBSdXeypB7jngT187q9Id7AM=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4102.namprd04.prod.outlook.com (52.135.215.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 14 Jun 2019 17:18:04 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.1987.012; Fri, 14 Jun 2019
 17:18:04 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Topic: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Index: AQHVH9BeCr9rG+GhmUKxcuJckMDc0g==
Date: Fri, 14 Jun 2019 17:18:04 +0000
Message-ID: <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
 <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <4a104091-5ef2-ee3b-9653-cbb816b39a2e@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f26de36-4aaa-4217-7562-08d6f0ec42e8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4102; 
x-ms-traffictypediagnostic: BYAPR04MB4102:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4102D3E120292C7D786085FA86EE0@BYAPR04MB4102.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(346002)(376002)(396003)(366004)(199004)(189003)(51914003)(68736007)(6246003)(26005)(6436002)(53936002)(478600001)(99286004)(110136005)(14454004)(229853002)(102836004)(33656002)(6506007)(55016002)(54906003)(53546011)(72206003)(9686003)(6116002)(256004)(3846002)(316002)(74316002)(446003)(186003)(2906002)(305945005)(76176011)(5660300002)(7736002)(66066001)(486006)(476003)(7696005)(86362001)(71200400001)(71190400001)(73956011)(8936002)(66476007)(66446008)(76116006)(25786009)(66556008)(66946007)(64756008)(4326008)(52536014)(8676002)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4102;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tCYsYlRFBtKF505Xi7dCK2J9waBHCBvtbKT8MIhS87khJL0vBEcyEs6VZ5hnSCXN1/0Wo5T+erQHfJzSqGKRi9NLiwsUydoIfTl7uIdhAMwvDUoJXMBhAL1523FEgn6WtWRwekv+3+FheGcyewxs1pcaEGEfWH59UE9PuVyECWv4F9Lm/fo2dl2ggPBHTaKbmkkgP9ChhRt7GBUChhOObEPmd81QU9mifSPuIbeAeGI5ZYppIEIdnDH0sTYpLHkBrvrbuk620N3wPvR9ER0FFnucJiF/vwl25sfgQQCiD58NHfPbgaNrVPpuiLXKCxFOvZm5nwaDLsGASgHsAaTaC3TNA47anvxn8kdQIuke5c+hfpFIJbcbc4KonrallLGQh8BHeOCJ1yq8rGp2bjS1l/zuyBsMH2Nrpc11Zu9w1+k=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f26de36-4aaa-4217-7562-08d6f0ec42e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:18:04.4323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_101811_321396_765DAD78 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Bart,

Thanks for the reply. Please see my inline reply, some things I'm not clear
about so asking for explanation which will help me in future to write a
better code.
My goal is to write a better code so it will be easy for maintainers and
reviewers.

On 6/14/19 8:31 AM, Bart Van Assche wrote:
> On 6/13/19 9:42 PM, Chaitanya Kulkarni wrote:
>> On 6/10/19 2:06 PM, Bart Van Assche wrote:
>>> +/* Convert a 32-bit number to a 16-bit 0's based number */
>> Since following function is only helper (and even though it is not in a
>> fast patch can we make it inline ?
> Do you mean declaring that function as inline or inlining the function? 
Not inline the function since it is makes perfect sense to have this
helpers.
> The usual approach for small helper functions in .c files is to not 
> declare these inline and to let the compiler decide whether or not to 
> inline these functions. I don't want to inline that function manually 
> because that would reduce readability.
Okay.
>
>>> +static __le16 to0based(uint32_t a)
>> The code in io-cmd-bdev.c uses u16, in the above line we are using
>> uint32_t. Which one we should follow ? I think either way we should be
>> consistent.
> Are you sure the purpose of both functions is the same? Changing the 
> argument type of this function from uint32_t into uint16_t or u16 is 
> wrong. That would cause any argument larger than or equal to 1 << 16 to 
> be truncated.

Sorry for not being clear, what I meant is uintXXX_t vs uXX. e.g.
instead of uint16_t ->u16

uint32_t ->u32. My comment refereed to the consistency of the data type
and not

changing the size of the variable.

>
>>> +	id->nsfeat |= 1 << 1;
>>> +	id->nawun = ppl0b;
>>> +	id->nawupf = ppl0b;
>>> +	id->nacwu = ppl0b;
>> The above 4 assignments are similar to the assignments present in the
>> nvmet_file_set_limits() ? If so is it make sense to have a helper to
>> reduce the code duplication ?
> I don't think that that is a good idea.

It will be great learning experience for me if you can educate me about
why this

is not a good idea, can you please explain  ?

The rational behind asking for an explanation is that I've got a comment
on my code

about not having same copy of the code in the kernel which is right.

The situation is same here where this code is operating on same
structure doing the

same thing across file io-cmd-bdev.c and io-cmd-file.c.


My understanding is that if this patch gets applied then we will have
same copy of two

assignments in the target which are exactly doing the same thing which
calls for a nice

little helper function.

>
>>> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
>>> +{
>>> +	/* Physical blocks per logical block, 0's based. */
>>> +	const __le16 ppl0b = cpu_to_le16(0);
>>> +
>>> +	/*
>>> +	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
>>> +	 * NAWUPF, and NACWU are defined for this namespace and should be
>>> +	 * used by the host for this namespace instead of the AWUN, AWUPF,
>>> +	 * and ACWU fields in the Identify Controller data structure.
>>> +	 */
>>> +	id->nsfeat |= 1 << 1;
>>> +	id->nawun = ppl0b;
>>> +	id->nawupf = ppl0b;
>>> +	id->nacwu = ppl0b;
>> The above 3 assignments are where we are assigning value = 0, which will
>> be the case any way since caller of this function is using kzalloc() to
>> allocate nvme_id_ns *id(), isn't it ?
> That change would reduce readability of the code.
>
> The reason I wrote the code this way is because I was hoping that a 
> filesystem expert would have a look at this code and tell me whether or 
> not the physical block size is available in e.g. the superblock.

Okay, I understand now thanks again.

>
> Bart.
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
