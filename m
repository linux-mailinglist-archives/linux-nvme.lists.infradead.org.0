Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48FD6D85D
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=nljLWlTvPYxf8+ftB3OBJ4J9RmeXnD2KrInjRG3aW/k=; b=IGMTKY6qjlzZZ+
	fafz6Y2vdr6Y4P4pg2pxeOB8AqbqY/nTFWxW0nRY7ws76sZIsYOrtAhiRHGhayAwpPkxCT7GgB6s3
	9VWD7+NBIVsOY6rwEluHMr4Ps18oL7oPA4Wfx8uhffzGk92Xxe1+FLHK7Ebb2X0o+RKcUesHDRdHN
	Ac19h32apD/R9BEMsvZOiCZ/9Ie0dX0Y9n+xn2s8gl/ppvAl28QayzOGwyrXnRMjRzSTx9f7AHdFQ
	aoMZ7O3K/BE4/j3o2nR5tm8dZER6k82rgFPPVhIYe7cV/1FaoOFLm4XMesR8wtAfrDbhOaKv6Bds+
	JZbpdqi7nTXPW/nJFmoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHdk-0003TM-Li; Fri, 19 Jul 2019 01:24:52 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHda-0003Sv-OL
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563499482; x=1595035482;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=snUzx04Bn3/8dNmbkOPUQhvFIMn/7nFQjg6V8M6YZFU=;
 b=EqZiYrtWsjPb1rzBh7iFQ998Qkjc82YlaCF7mxVZzj1DyGFRgBVuz3LU
 T2Qqjdsz5MdmyZJycbic2G4uZheFjmc9WhsoaeKuRcjblcS6/+PgTn4Wj
 6sJFbR3MTB9ujPNxfqOw1p1R8jjq6j5W7yUeZ3SCYOGE7lX+YvpXUNZ9u
 kOoThcSAiiLIC+2kevKZDi4YAw7+WS2EvueGlextjshPHGTk+vLWyMQuI
 Oh8pE7abyEp0dt7EF0rwxWKlx+dZhnX22RPVp/H/ZPb1mQ0weNnQuAG7M
 uxAWUXysTKsMZVgdQfvVl7XBaZTKk/C0MsdMjiTW8OUqq7zDrWWddXcuY w==;
IronPort-SDR: /Ai3BVNtwemy4acyEm6rw8OFOiFacMFm+A86OI+BLvqQoznZiImgtpYLJm2ilx7Z6lguX7FtMZ
 UVC881jvS5U0NqPntsfLdlK05IQhmrWHmHR/Y9f4oBgCYJTOH0G1/DnTFxPrmd4ZGOl7W2Pp/7
 cKhlGzHcAR50jqr/66NM3PTcp09scH/MISkkxCHgtpH8YHQ2m3IhWUwe5Rfu1T9V91uNAuLo2K
 6MA7nn5zgjfhJvHhYAGlNddjBg3MrIvchtAQgDaoCLVUMPpnlVehsAkhWctrgBWSsstadbVZbH
 ieg=
X-IronPort-AV: E=Sophos;i="5.64,280,1559491200"; d="scan'208";a="219883602"
Received: from mail-bn3nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.52])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jul 2019 09:24:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d0I6WZo5moOyqBeInnwoSovlNeD5dk96vVlGx7/aj/aSs4TWEWd4G0nt3PhHv1JBWEGs4OSSjJ7qWmA2I+miigflmB7DyeBrVFPDu+uBFhT9azf2xVyFz8DXhDLC5662tdKVSkWdKWkKgCp5rknZ+1XDjAFLHgwctqB+1K7Wqnh7WWbDrlvSue4Vmw6+NPdQUm3sFumjhauC9oIJlUdYcHndaTY64ldD4+pK8hfrOqu7bufdjKf23hVRF5MvXLzGdmWfKq22ey32OdaZBK1pxfkAB23TFA9sthhHXNrku9xtXGMk33s85pogNl4VC9ucKR75aCMuE13r3vSPR/5n2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snUzx04Bn3/8dNmbkOPUQhvFIMn/7nFQjg6V8M6YZFU=;
 b=nN5/nc2Hqzlomudbh/Pyv+JTTzu7WJ7HVUYhFK83SAvn5xDVEgVm7vdpAcu01NeWKdGG0dVDtoB8otODB8C7YnzfKo8iKW+xIf5//kxLCuJ94uvK3c0ACqFPHbGfM+6efnmgehNP0hlxI+2y7lPEXlZaMofDUHRXpY/AJwDCKwHCwbtw4XLVbMsqJ+40iPzA/cuwzKIYnRZfjDwlT+yQMu5SiatO7g05mBAFUJ9B6ysWjnpvYYX10up45P+qYUpIzmr9ZgE2MMsj4RBwj8Rvy6mglMTNgo/lXRS26mhk/REficCkIYa/5bUR89LV5M8avnqo4dHeqzQlY8nRowzSZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=snUzx04Bn3/8dNmbkOPUQhvFIMn/7nFQjg6V8M6YZFU=;
 b=U+BJGIN6zoyY0LTSEr8SjX3hS8B1jC7xkvlVsvcNzP+G9gze8FU8Ugzbbl14m7cnyJbMICvhp4hKVzDN2PYfZ8lcSUf9ZuIcct2XJUTu+evFYlSq9erjqUbPg+7/PGsnIyJWP3vQxRVmDaq0nKAgnM14NNyhK01Z5fnjIRGba7Y=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB4535.namprd04.prod.outlook.com (52.135.238.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Fri, 19 Jul 2019 01:24:40 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 01:24:40 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Keith Busch
 <keith.busch@gmail.com>
Subject: Re: Duplicate tag error with 5.2
Thread-Topic: Duplicate tag error with 5.2
Thread-Index: AQHVPQGtycP5nx5l902GqwDALRljIw==
Date: Fri, 19 Jul 2019 01:24:39 +0000
Message-ID: <BYAPR04MB58166A99868B66ABB31CB0DDE7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
 <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <50c35ab3db7745875476c0966bf191ab42de4dd1.camel@kernel.crashing.org>
 <BYAPR04MB58163BC85D7A5351BC053D43E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <5f29b93ba4bf2f7bd8b0a77bc5f82f4cbb9e8f98.camel@kernel.crashing.org>
 <BYAPR04MB58167459AA9933C66694C2D2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <62f188398528c74cfa8352a8cf8a7e3bce50307b.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f59edc1-79be-4055-2a4c-08d70be7dedb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4535; 
x-ms-traffictypediagnostic: BYAPR04MB4535:
x-microsoft-antispam-prvs: <BYAPR04MB45356CEAECFD4CEDFA382027E7CB0@BYAPR04MB4535.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(189003)(199004)(51444003)(71200400001)(71190400001)(76176011)(68736007)(99286004)(53936002)(81156014)(9686003)(81166006)(8936002)(33656002)(186003)(76116006)(6506007)(52536014)(8676002)(316002)(26005)(53546011)(478600001)(7696005)(55016002)(102836004)(25786009)(229853002)(6436002)(6246003)(476003)(66556008)(66476007)(4326008)(446003)(110136005)(7736002)(486006)(66946007)(74316002)(305945005)(2906002)(86362001)(14454004)(5660300002)(66446008)(3846002)(66066001)(6116002)(91956017)(256004)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4535;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e/795N9lXzbAH46Mi5UYZc0Uz2ToQk0xJkg71av0dOEKtfJYfdfbbUEopMzixCRJFbviHuVmMJHPxuhw7tcbTUHOH4wDIC4tOs3NZiyX5zS98YgtNJWVcxD07Et8O9Kb8oloa/aZb8ZO+QOTauYxix5YEKRuAQQkjKGm/ubO/7k/ccLgnwL/c7FAFcyyc8zhV/+6tAqC0eTkuBTVriBJGeswDPXNztnv3y8lVzndat5wyrNcSjJVppLMLd3hP37LIEqixTHMOm27TgIeGCrYU5yt1XAl3VdjgRvhRZOkPuSawArh2vbE7ndt1wt4woKbCj4ngPNN2uLShr0y9y1UNKuYzr2s/kkIBlX7O03sMOSslCLeWcFtT1GkLunrl//jwyGjBKbnuK8B3fPuMM6Z32XMim36iKwjdLZ0CHP4DM4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f59edc1-79be-4055-2a4c-08d70be7dedb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 01:24:39.8531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_182442_915285_D30513E6 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019/07/19 10:20, Benjamin Herrenschmidt wrote:
> On Fri, 2019-07-19 at 01:09 +0000, Damien Le Moal wrote:
>> On 2019/07/19 10:00, Benjamin Herrenschmidt wrote:
>>> On Fri, 2019-07-19 at 00:53 +0000, Damien Le Moal wrote:
>>>>
>>>> If the admin req completion comes in the wrong queue, then the admin queue
>>>> completion queue should not be changing and not need any head/doorbell tweaks.
>>>> It simply stays as is. Since I think that nvme_handle_cqe is used for all
>>>> commands regardless of submission type (normal, polled, sync, etc), this should
>>>> work in all cases. Not sure at all for all this. Some side effects are
>>>> definitely possible. But worth a try I think.
>>>
>>> I've printed the queue I get completions from and they arrive in the
>>> right queues. So that doesn't seem to be the issue.
>>
>> OK... But then how is it possible to get a bad tag error ? if the commands are
>> issued and completes in the correct queues, the tagsets are independent and
>> should not clash in any way. This is really weird.
>>
>>> Apple's implementation is a SW one running on the T2 chip, I suspect
>>> it's just completely broken and they don't care because they have their
>>> own driver.
>>
>> Got it, but if the prints show correct cqueues, Linux normal driver should
>> work... Or is it a problem with a buggy T2 controller implementation resulting
>> in some completions being queued twice ? Really weird HW :)
> 
> No, I think the problem is that Apple implementation (which as I said
> is just a bit of SW running off the PCIe slave bit of the T2 chip, on
> the ARM core), somewhat uses the tags we provide for internal tracking,
> and they don't append the qid to them, so internally they assume all
> tags are unique regardless of what queue they come from. It's crazy but
> that seem to be what they did.

OK. So the device essentially operates with a shared tagset across all queues..
And indeed that does not play well with Linux driver. Looking at the code,
having the admin queue and io queues share the same tagset would be the cleanest
fix, but that would also mean essentially rewriting completely pci.c and
implementing an "apple.c" host driver :)



-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
