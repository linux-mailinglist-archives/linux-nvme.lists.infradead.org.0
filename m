Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FF81575C
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 03:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=zsRbLP23fbsOYJ+gJJ0K5PafxcpFQ0gkC54mnzwwlg0=; b=Cxv4q8STflWxIQ
	Ba3fr2fAMVux6ybg9SlxTBcfyR3Hsvpen7toNalxexAuOVN0g3eENNMuPMXdl+A/Ywntxx+uy+HvY
	ow/D7e7DAhO9OaUf9dHB0PwabM9apq0n8oHoCK/PeRnwBk+BHabTE1hC3367COn0hywjflhYQyWQS
	CaFeHx7kZjo1m2c9iUYtixM2eKXSg1Rbxy5rz/dm0I5ZRPgJw7KeXFxpDgvFWM/B2L+XGLqidZI+c
	xaeSKM+/14dlvaMHAIJ/LudOPK6RDdJZLg/sZVYQ08HA/AAKWT380quM4ZflEu+mzwhEeL4Vw2if6
	Q6sqpsTpQTxoZ3APRIDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNp3k-0003Ev-8O; Tue, 07 May 2019 01:38:20 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNp3e-0003EI-Ng
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 01:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557193095; x=1588729095;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=xZXKFsJN+A2NZhUL2JTlxYpWO5cQBuXfYqJq3r/n4JY=;
 b=KxTq4oj4r1AbzpPX8kgZF2mgdfTmbkq8YEKg9jqaSEVQdjwxCaTlNeMq
 nJv//75gVydvEOh5rWvgOu7npQST8ii11s0/O2wu1pZZY9xYmCR4losFU
 7dBnT0OePwsBM+JVNwtkCAAO1E+xy8B1uOxGS705mC5arW0pBzDo37V9P
 UhkBlFhqw1jeZ8JdEKWRQK3x0eBsgGbTrfSHpZYwT4wHmWctGxfLce5sH
 wvct/JPHa8X4jw54F0n0DO3JigJbYj8dOvAlMsgyQe7Tba5F3DvjfUin5
 FBDxq3Jex80ZuQj8ILmpRZskirQVCOzXVeYWQcYyiQrK7dOOvCfREk7ye A==;
X-IronPort-AV: E=Sophos;i="5.60,440,1549900800"; d="scan'208";a="107655816"
Received: from mail-dm3nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.56])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 09:38:13 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ar/GNBRm99Wm/fmwJ+HEYaTuLGhaMcgWPRLwzywG0Jk=;
 b=UhnLTv5UzAetweUX2CGuVunVnPysqOGlgRoNN0spdKm/z2Q8Q5U5TS9Icg639BSikqNdeBSW0XioJY0wDo/CggMepROIrs4TaGRbpk/1x3uGaU+/Wzou9+A1I+EjLgjvz5rmB3KIJf6CTh5OuOmk1CNtB3znmD2kEPNE/3G/q5Q=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4879.namprd04.prod.outlook.com (52.135.114.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 01:38:11 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:38:11 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Topic: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
Thread-Index: AQHVA1Q6zH4CttIufkWRxlafayMhPw==
Date: Tue, 7 May 2019 01:38:10 +0000
Message-ID: <SN6PR04MB45270A2BD1C3695F4528CD9286310@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
 <SN6PR04MB45272BEB18B3ADD95DCB42AE86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <cfa4d48d-ce13-0ace-cf5c-a3d0d1f4cca7@gmail.com>
 <SN6PR04MB4527FAD8076A5A5610F6B66786300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <c86fe09e-9964-123a-bc17-e9b9e6a80856@gmail.com>
 <SN6PR04MB45273CEE5FE1DDF38677980F86300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <CAA7jztfU+AdUHp5xo8ssjgvXiBFBXJt0PyQTNA8VQU-T-SpKQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [76.89.205.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b77f8baa-3007-4ecb-963f-08d6d28caa23
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4879; 
x-ms-traffictypediagnostic: SN6PR04MB4879:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB48797757A23041CE6D79D4DD86310@SN6PR04MB4879.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(376002)(346002)(39860400002)(52314003)(199004)(189003)(486006)(66066001)(14444005)(256004)(71200400001)(476003)(71190400001)(8676002)(5660300002)(8936002)(33656002)(72206003)(81166006)(81156014)(68736007)(54906003)(99286004)(53936002)(478600001)(7736002)(966005)(229853002)(25786009)(3846002)(6116002)(73956011)(66946007)(64756008)(66556008)(14454004)(6916009)(76116006)(91956017)(66446008)(6246003)(66476007)(52536014)(4326008)(446003)(26005)(186003)(102836004)(53546011)(6506007)(76176011)(7696005)(316002)(86362001)(305945005)(6306002)(55016002)(9686003)(2906002)(6436002)(74316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4879;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X+8Qt1mezOXFf0+iP0y7TMp0TJTEgBt8ipzJ5tWfOSrwLIczjYOIUfLy1o+uC4KkSd/Kcx7W93zNWB1Po5u3vxM6YNu3Q0VDkTtM4/Q7ob1lchIDnhwY+QcuqGuKQPESFB+PNC958F0lxcamaqZZOVUh7sdBQpEqLg0YVx0RafwwiNLl3atJstmVjUzimhY9nhDAFbJ2bo71J4WRfxsvjAkI2M6vTI5Hrc7TImSZ+NlyKxTB6wkBsVEeQuGgNEzF7eAy+OuOdaZD3cdqh2YxS818ZI3MJ6NR+sL6cEpYJ3zs8I0FyrAVYk8ja415WJDd9iSG53hZpqdQ0kztfzZtIKdyQxViT0QkXmZ3gXy5X0AHT93Vt3yMqIV/doFOVTRk07j6SRfGmgdbNQqtxWXbOg5rRYgtwp6dTkp8bBLopq4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b77f8baa-3007-4ecb-963f-08d6d28caa23
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:38:10.9926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4879
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_183814_814702_C9FB8173 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Keith Busch <keith.busch@intel.com>, Omar Sandoval <osandov@osandov.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/6/19 4:24 PM, Minwoo Im wrote:
>>>> I wasn't clear enough.
>>>>
>>>> It doesn't check for the return value for now. What needs to happen is :-
>>>>
>>>> 1. Get rid of the variable strings which are not part of the discovery
>>>>       log page entries such as Generation counter.
>>>> 2. Validate each log page entry content.
>>> Question again here.
>>> Do you mean that log page entry contents validation should be in bash
>>> level instead of *.out comparison?
>> It has *out level comparison.
Give me sometime I'll get back to you on this.
> I'm not sure I have got what you really meant.  Please correct me if I'm wrong
> here ;)
>
> First of all, removal of variable values in the result of the
> discovery get log page
> looks great to me also.  Maybe those variable values are able to be replaced
> a fixed value like port does (replace port value via sed command to X).
>
> But, it also depends on the outout of the nvme-cli, not return value.
> Anyway, let's discuss about it with Keith also because he discussed it with me
> few weeks ago,I think.
>
>>>> 3. Check the return value.
>>> nvme-cli is currently returning value like:
>>>     > 0 :   failed with nvme status code (but the actual value may not be
>>> the same with status)
>>>     == 0 : done successfully
>>>     < 0 :   failed with -errno
>>>
>>> But, ( > 0) case may be removed from nvme-cli soon due to [1] discuss.
>>> Anyway, if nvme-cli is going to return 0 for both cases: success, error
>>> with nvme status, then test case is going to be hard to check the error
>>> status by a return value.
>> This should not happen as it will break existing scripts which are
>> written on the top the nvme-cli in past few years.
> Agreed.  But, please refer the following comment below ;)
>
>>    It should be with output string parsing which
>>> would be great if it's going to be commonized.
>>>
>> No, we cannot rely on the output string as this problem is a good example.
>>
>> I'm not sure returning == 0 for error case is a good idea. Checking
>> return value prevents us from writing unstable testcases which are bases
>> on the text output and allow us to modify tools as specification moves
>> forward.
> Please refer a discussion on https://github.com/linux-nvme/nvme-cli/pull/489
> Keith and I had a discussion about the return value of the program itself.
> The nvme status value is composed of 16 bits value, by the way, the actual
> return value of the program is in 8bits(signed) which means it's not
> able to carry
> the actual nvme status value out of the program.
>
> If you have any idea about it, Please let me know.  By the way, I really do
> agree with what you mentioned about the return value.  If it's possible,
> I would like to too :)
>
>>> [1] https://github.com/linux-nvme/nvme-cli/pull/492
>>>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
