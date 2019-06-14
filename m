Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCCC46654
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 19:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RYbDtvR19KvIkqVN3rf961ijp5k0DvLjk938bnjju3o=; b=r1MsAxD1eaYYEw
	dLxa9/tHLU/7k5+/kVmioNVHp1RrhHHE4cehJ7pPVb8UdYH20UqxY1fxhE5m6GuR2vMcvuZlAf/hr
	45NHOAu4KVgI7g8yYvSyCmsggpUZ0gaBslYto4/x2EL/zob35uPUsH+2j1+fv+Sz9D+l5qtDjdqOo
	jjF3A/psg1mf6z4D2SJ1hJTlzFhty/vSMYM4HOhSK8t8CTVIWF5xgoUDiQFTfFrBS8e7IF0s79dWv
	bL0EfhS4LyKs5e+2j2y0dVGNKbDdKtsp7MtNHRhJAVHVWShR39GkEDJOtPIRCTrbuozaSwCUh37me
	k1D4YIKGs9LXMfKHYAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqOM-0000nB-IQ; Fri, 14 Jun 2019 17:53:34 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqO6-0000gd-Jx
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 17:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560534799; x=1592070799;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=X802j7dzxsbWiN8xvfoVWK+G5fZuNpmkByuEdLLTVcw=;
 b=aDsr3ZUavhCfDoOQRoO3ewoqUsxT1f7Di/2ubm/1vi5ofcnCOFb0iraT
 TcjIWaoY00T9RuiTHdu+Of++PO6v6hoOVfubhRSYTJWCyTN2TsxAop2wU
 ue/mDyUVBPoZ6jRSHtpk3s+QVya3+jEZreSvkDabKLcD3Bse1r4Lifn3N
 9u2gMvfh5wY5uvv4yJ7Xox6b9gImF3jCYGnS6FCBW4fOG2uI+/Dy4sF1b
 gBxmB+f8mlwnr2DZaZlFFwcPLIENx1aFLN7RWd8a6wgC+S9Wfu/rvMrbr
 kcNsru79TPUkTePNmoyFRGY7YCWf9SrB0OqpiZP3OhbME7k7KoZFjZtsm g==;
X-IronPort-AV: E=Sophos;i="5.63,373,1557158400"; d="scan'208";a="115527544"
Received: from mail-dm3nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.58])
 by ob1.hgst.iphmx.com with ESMTP; 15 Jun 2019 01:53:15 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZvG7Ehw41CiQj1NcHJXcuQOyZUP7W0UEBExAttPvEg=;
 b=PpYvW0QCWFMQNj2nnyY7HZ6lmNu6hJ+a1TAzurImeEJYmeXnJpuTsWRMh7dShKUPEWtvOI1THIcJW7RMgKFqGFPqGxbER9tOcnsU4U8XJVNwOw+6Y8loa9Ay0Wti8u9m8F7cT/lwz4ezEhz4WKZPEwPRnZ6Si5GZ6ZQq6KZSRuc=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4053.namprd04.prod.outlook.com (52.135.215.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 17:53:13 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.1987.012; Fri, 14 Jun 2019
 17:53:13 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Topic: [PATCH v2 2/3] nvmet: Export NVMe namespace attributes
Thread-Index: AQHVH9BeCr9rG+GhmUKxcuJckMDc0g==
Date: Fri, 14 Jun 2019 17:53:13 +0000
Message-ID: <BYAPR04MB57494419BF76E4C3E3439E6D86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-3-bvanassche@acm.org>
 <BYAPR04MB5749D68053F5CAF2456E17FC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <4a104091-5ef2-ee3b-9653-cbb816b39a2e@acm.org>
 <BYAPR04MB57499B4C1225252183F01ADC86EE0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <a296a5c7-33f0-a1a6-07ec-f64dd8006693@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b24292c7-aee8-4d8c-bc99-08d6f0f12bef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4053; 
x-ms-traffictypediagnostic: BYAPR04MB4053:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4053B6B37EA8CA38B382D5A886EE0@BYAPR04MB4053.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(396003)(346002)(366004)(376002)(199004)(189003)(51914003)(74316002)(14454004)(25786009)(86362001)(229853002)(9686003)(2906002)(5660300002)(446003)(55016002)(72206003)(476003)(6246003)(486006)(53936002)(4326008)(73956011)(14444005)(66446008)(64756008)(3846002)(6116002)(68736007)(66556008)(71200400001)(66476007)(33656002)(26005)(81166006)(8936002)(6506007)(53546011)(102836004)(478600001)(186003)(76176011)(66946007)(71190400001)(6436002)(7696005)(99286004)(54906003)(76116006)(66066001)(52536014)(316002)(8676002)(305945005)(110136005)(81156014)(7736002)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4053;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ku33nS6/mzbBWeFV3ZzFblhQ/nau8aeIQb5CbDQXMLByHlkHFyUj7ImVaUtpHbLPDYdY+P//o3VvuSIsDYbSDmaRjKtHyfKkxiYPmdtKb/NvrQzWW9ivZB8+ACyceIUQCXlAs9TCamP+sryOHlHiBWBUu/44JpJGgK6RcAU8ftrxyaAbvL9Z8ICfqpgt2NyR8gKFP1nH8fPR+TtNT+MHaPsUejDoUbPw2emNLu63VT+/nwa9m7AVGDvCq38GxLq/yxq8lbLP+Px8s79fXYSGsP92VELq1pneSocnXEhUnylAA2eD14Aq9QBEJ6I8ffijTZ4gfxAzVoi3y2N1ghqOrl4Y180aoyQ4jafo8R8LHALMNCAVGMPBjmEQokt7xeTZmytvZOfGCYw3dXgmfEk6YA/3gUR/wPADMm1HTDmTbZg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b24292c7-aee8-4d8c-bc99-08d6f0f12bef
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 17:53:13.3980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_105318_772233_0190680F 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>, "Martin
 K . Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 06/14/2019 10:43 AM, Bart Van Assche wrote:
> On 6/14/19 10:18 AM, Chaitanya Kulkarni wrote:
>>>>> +	id->nsfeat |= 1 << 1;
>>>>> +	id->nawun = ppl0b;
>>>>> +	id->nawupf = ppl0b;
>>>>> +	id->nacwu = ppl0b;
>>>> The above 4 assignments are similar to the assignments present in the
>>>> nvmet_file_set_limits() ? If so is it make sense to have a helper to
>>>> reduce the code duplication ?
>>> I don't think that that is a good idea.
>>
>> It will be great learning experience for me if you can educate me about
>> why this
>>
>> is not a good idea, can you please explain  ?
>>
>> The rational behind asking for an explanation is that I've got a comment
>> on my code
>>
>> about not having same copy of the code in the kernel which is right.
>>
>> The situation is same here where this code is operating on same
>> structure doing the
>>
>> same thing across file io-cmd-bdev.c and io-cmd-file.c.
>>
>>
>> My understanding is that if this patch gets applied then we will have
>> same copy of two
>>
>> assignments in the target which are exactly doing the same thing which
>> calls for a nice
>>
>> little helper function.
>
> Hi Chaitanya,
>
> There is no hard rule that code duplication should be avoided at any
> price in the Linux kernel. For this patch I will leave it to the NVMe
> maintainers to decide whether or not they want to move these assignments
> into a helper function.
>
I'll keep in mind from next time.
> Regarding req_op_str(): I had never seen it before if the same
> functionality is needed in two different source files in the same
> subsystem that code got copy/pasted instead of calling a single function
> from all code that needs the functionality. I had asked to avoid to
> duplicate req_op_str() because of the following reasons:
> - If a new request operation would be added having one req_op_str()
> implementation is more convenient than having multiple.
> - An operation like conversion from a request operation into a string
> should not happen inside f2fs. f2fs should call a block layer function
> to do that conversion.
This makes perfect sense, thanks for the great explanation Bart.
>
> Bart.
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
